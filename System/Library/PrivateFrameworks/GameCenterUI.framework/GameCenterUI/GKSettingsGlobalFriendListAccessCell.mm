@interface GKSettingsGlobalFriendListAccessCell
- (BOOL)globalFriendListAccess;
- (PSSpecifier)specfier;
- (void)controlChanged:(id)changed;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation GKSettingsGlobalFriendListAccessCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(GKSettingsGlobalFriendListAccessCell *)self setTag:6];
  textLabel = [(GKSettingsGlobalFriendListAccessCell *)self textLabel];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  [textLabel setText:v7];

  [(PSTableCell *)self setSpecifier:specifierCopy];
  getSwitch = [(GKSettingsGlobalFriendListAccessCell *)self getSwitch];
  [getSwitch setOn:{-[GKSettingsGlobalFriendListAccessCell globalFriendListAccess](self, "globalFriendListAccess")}];
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  [getSwitch setEnabled:{objc_msgSend(mEMORY[0x277D0C1D8], "isFriendsSharingRestricted") ^ 1}];
}

- (void)controlChanged:(id)changed
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:*MEMORY[0x277D0BD10]];

  [(PSSwitchTableCell *)self setLoading:1];
  getSwitch = [(GKSettingsGlobalFriendListAccessCell *)self getSwitch];
  objc_initWeak(&location, self);
  isOn2 = [getSwitch isOn];
  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  profileServicePrivate = [proxyForLocalPlayer profileServicePrivate];
  v11 = isOn2 ^ 1u;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__GKSettingsGlobalFriendListAccessCell_controlChanged___block_invoke;
  v13[3] = &unk_27966D528;
  objc_copyWeak(&v15, &location);
  v12 = getSwitch;
  v14 = v12;
  v17 = isOn;
  v16 = v11;
  [profileServicePrivate setGlobalFriendListAccess:v11 handler:v13];

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
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  isFriendsSharingRestricted = [mEMORY[0x277D0C1D8] isFriendsSharingRestricted];

  if (isFriendsSharingRestricted)
  {
    return 0;
  }

  local = [MEMORY[0x277D0C138] local];
  internal = [local internal];
  v4 = [internal globalFriendListAccess] == 0;

  return v4;
}

- (PSSpecifier)specfier
{
  WeakRetained = objc_loadWeakRetained(&self->_specfier);

  return WeakRetained;
}

@end