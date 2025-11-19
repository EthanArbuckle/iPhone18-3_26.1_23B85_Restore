@interface GKSettingsGlobalFriendListAccessCell
- (BOOL)globalFriendListAccess;
- (PSSpecifier)specfier;
- (void)controlChanged:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation GKSettingsGlobalFriendListAccessCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  [(GKSettingsGlobalFriendListAccessCell *)self setTag:6];
  v5 = [(GKSettingsGlobalFriendListAccessCell *)self textLabel];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  [v5 setText:v7];

  [(PSTableCell *)self setSpecifier:v4];
  v9 = [(GKSettingsGlobalFriendListAccessCell *)self getSwitch];
  [v9 setOn:{-[GKSettingsGlobalFriendListAccessCell globalFriendListAccess](self, "globalFriendListAccess")}];
  v8 = [MEMORY[0x277D0C1D8] shared];
  [v9 setEnabled:{objc_msgSend(v8, "isFriendsSharingRestricted") ^ 1}];
}

- (void)controlChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 isOn];
  v6 = [MEMORY[0x277D0C1F8] reporter];
  [v6 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:*MEMORY[0x277D0BD10]];

  [(PSSwitchTableCell *)self setLoading:1];
  v7 = [(GKSettingsGlobalFriendListAccessCell *)self getSwitch];
  objc_initWeak(&location, self);
  v8 = [v7 isOn];
  v9 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v10 = [v9 profileServicePrivate];
  v11 = v8 ^ 1u;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__GKSettingsGlobalFriendListAccessCell_controlChanged___block_invoke;
  v13[3] = &unk_27966D528;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v14 = v12;
  v17 = v5;
  v16 = v11;
  [v10 setGlobalFriendListAccess:v11 handler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __55__GKSettingsGlobalFriendListAccessCell_controlChanged___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLoading:0];

  [*(a1 + 32) setOn:*(a1 + 52) != (a2 != 0)];
  v5 = *(a1 + 48);
  v6 = [MEMORY[0x277D0C138] local];
  v7 = [v6 internal];
  [v7 setGlobalFriendListAccess:v5];

  v10 = objc_loadWeakRetained((a1 + 40));
  v8 = [v10 specifier];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 52)];
  [v8 performSetterWithValue:v9];
}

- (BOOL)globalFriendListAccess
{
  v2 = [MEMORY[0x277D0C1D8] shared];
  v3 = [v2 isFriendsSharingRestricted];

  if (v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277D0C138] local];
  v6 = [v5 internal];
  v4 = [v6 globalFriendListAccess] == 0;

  return v4;
}

- (PSSpecifier)specfier
{
  WeakRetained = objc_loadWeakRetained(&self->_specfier);

  return WeakRetained;
}

@end