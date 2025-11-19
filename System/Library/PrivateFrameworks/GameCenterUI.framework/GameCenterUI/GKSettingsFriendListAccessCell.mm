@interface GKSettingsFriendListAccessCell
- (void)controlChanged:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation GKSettingsFriendListAccessCell

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = GKSettingsFriendListAccessCell;
  [(PSSwitchTableCell *)&v29 layoutSubviews];
  v3 = [(GKSettingsFriendListAccessCell *)self contentView];
  [v3 frame];
  v5 = (v4 + -29.0) * 0.5;
  v6 = [(GKSettingsFriendListAccessCell *)self imageView];
  [v6 setFrame:{16.0, v5, 29.0, 29.0}];

  v7 = [(GKSettingsFriendListAccessCell *)self getSwitch];
  [v7 frame];
  v9 = v8;

  v10 = [(GKSettingsFriendListAccessCell *)self imageView];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = [(GKSettingsFriendListAccessCell *)self textLabel];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = v12 + v14 + 16.0;
  v21 = v9 - v20 + -16.0;
  v22 = [(GKSettingsFriendListAccessCell *)self textLabel];
  [v22 setFrame:{v20, v17, v21, v19}];

  v23 = [(GKSettingsFriendListAccessCell *)self detailTextLabel];
  [v23 frame];
  v25 = v24;
  v27 = v26;

  v28 = [(GKSettingsFriendListAccessCell *)self detailTextLabel];
  [v28 setFrame:{v20, v25, v21, v27}];

  [(GKSettingsFriendListAccessCell *)self setSeparatorInset:0.0, 60.0, 0.0, 0.0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  [(GKSettingsFriendListAccessCell *)self setTag:6];
  v5 = [v4 propertyForKey:@"specifier.GKGame"];
  [(GKSettingsFriendListAccessCell *)self setCurrentGame:v5];
  v6 = [v4 propertyForKey:@"specifier.GKGameSettings"];
  [(GKSettingsFriendListAccessCell *)self setCurrentGameSettings:v6];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __67__GKSettingsFriendListAccessCell_refreshCellContentsWithSpecifier___block_invoke;
  v27 = &unk_27966D500;
  v7 = v4;
  v28 = v7;
  v29 = self;
  v8 = [v5 loadIconForStyle:10 withCompletionHandler:&v24];
  v9 = [(GKSettingsFriendListAccessCell *)self detailTextLabel:v24];
  v10 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v9 setTextColor:v10];

  v11 = [(GKSettingsFriendListAccessCell *)self textLabel];
  v12 = [v5 name];
  [v11 setText:v12];

  v13 = [v5 internal];
  v14 = [v13 compatiblePlatforms];

  v15 = [MEMORY[0x277D0C050] currentPlatformServerString];
  v16 = [v14 containsObject:v15];

  if ((v16 & 1) == 0)
  {
    v17 = [(GKSettingsFriendListAccessCell *)self detailTextLabel];
    v18 = MEMORY[0x277D0C048];
    v19 = [v14 allObjects];
    v20 = [v19 firstObject];
    v21 = [v18 platformDisplayString:v20];
    [v17 setText:v21];
  }

  v22 = [(GKSettingsFriendListAccessCell *)self getSwitch];
  v23 = [(GKSettingsFriendListAccessCell *)self currentGameSettings];
  [v22 setOn:{objc_msgSend(v23, "allowFriendListAccess") == 2}];
}

id *__67__GKSettingsFriendListAccessCell_refreshCellContentsWithSpecifier___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] setProperty:a2 forKey:*MEMORY[0x277D3FFC0]];
    v3 = v2[4];
    v4.receiver = v2[5];
    v4.super_class = GKSettingsFriendListAccessCell;
    return objc_msgSendSuper2(&v4, sel_refreshCellContentsWithSpecifier_, v3);
  }

  return result;
}

- (void)controlChanged:(id)a3
{
  v4 = [a3 isOn];
  v5 = [MEMORY[0x277D0C1F8] reporter];
  v6 = *MEMORY[0x277D0BD18];
  v7 = [(GKSettingsFriendListAccessCell *)self currentGameSettings];
  v8 = [v7 bundleID];
  [v5 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:v6 bundleID:v8];

  v9 = @"denied";
  if (v4)
  {
    v9 = @"allowed";
  }

  v10 = v9;
  v11 = [(GKSettingsFriendListAccessCell *)self getSwitch];
  v12 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v13 = [v12 gameServicePrivate];
  v14 = [(GKSettingsFriendListAccessCell *)self currentGameSettings];
  v15 = [v14 bundleID];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__GKSettingsFriendListAccessCell_controlChanged___block_invoke;
  v17[3] = &unk_27966C520;
  v18 = v11;
  v19 = v4;
  v16 = v11;
  [v13 submitFriendListAccess:v15 value:v10 handler:v17];
}

@end