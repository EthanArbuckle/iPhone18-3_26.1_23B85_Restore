@interface GKSettingsFriendListAccessCell
- (void)controlChanged:(id)changed;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation GKSettingsFriendListAccessCell

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = GKSettingsFriendListAccessCell;
  [(PSSwitchTableCell *)&v29 layoutSubviews];
  contentView = [(GKSettingsFriendListAccessCell *)self contentView];
  [contentView frame];
  v5 = (v4 + -29.0) * 0.5;
  imageView = [(GKSettingsFriendListAccessCell *)self imageView];
  [imageView setFrame:{16.0, v5, 29.0, 29.0}];

  getSwitch = [(GKSettingsFriendListAccessCell *)self getSwitch];
  [getSwitch frame];
  v9 = v8;

  imageView2 = [(GKSettingsFriendListAccessCell *)self imageView];
  [imageView2 frame];
  v12 = v11;
  v14 = v13;

  textLabel = [(GKSettingsFriendListAccessCell *)self textLabel];
  [textLabel frame];
  v17 = v16;
  v19 = v18;

  v20 = v12 + v14 + 16.0;
  v21 = v9 - v20 + -16.0;
  textLabel2 = [(GKSettingsFriendListAccessCell *)self textLabel];
  [textLabel2 setFrame:{v20, v17, v21, v19}];

  detailTextLabel = [(GKSettingsFriendListAccessCell *)self detailTextLabel];
  [detailTextLabel frame];
  v25 = v24;
  v27 = v26;

  detailTextLabel2 = [(GKSettingsFriendListAccessCell *)self detailTextLabel];
  [detailTextLabel2 setFrame:{v20, v25, v21, v27}];

  [(GKSettingsFriendListAccessCell *)self setSeparatorInset:0.0, 60.0, 0.0, 0.0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(GKSettingsFriendListAccessCell *)self setTag:6];
  v5 = [specifierCopy propertyForKey:@"specifier.GKGame"];
  [(GKSettingsFriendListAccessCell *)self setCurrentGame:v5];
  v6 = [specifierCopy propertyForKey:@"specifier.GKGameSettings"];
  [(GKSettingsFriendListAccessCell *)self setCurrentGameSettings:v6];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __67__GKSettingsFriendListAccessCell_refreshCellContentsWithSpecifier___block_invoke;
  v27 = &unk_27966D500;
  v7 = specifierCopy;
  v28 = v7;
  selfCopy = self;
  v8 = [v5 loadIconForStyle:10 withCompletionHandler:&v24];
  v9 = [(GKSettingsFriendListAccessCell *)self detailTextLabel:v24];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v9 setTextColor:secondaryLabelColor];

  textLabel = [(GKSettingsFriendListAccessCell *)self textLabel];
  name = [v5 name];
  [textLabel setText:name];

  internal = [v5 internal];
  compatiblePlatforms = [internal compatiblePlatforms];

  currentPlatformServerString = [MEMORY[0x277D0C050] currentPlatformServerString];
  v16 = [compatiblePlatforms containsObject:currentPlatformServerString];

  if ((v16 & 1) == 0)
  {
    detailTextLabel = [(GKSettingsFriendListAccessCell *)self detailTextLabel];
    v18 = MEMORY[0x277D0C048];
    allObjects = [compatiblePlatforms allObjects];
    firstObject = [allObjects firstObject];
    v21 = [v18 platformDisplayString:firstObject];
    [detailTextLabel setText:v21];
  }

  getSwitch = [(GKSettingsFriendListAccessCell *)self getSwitch];
  currentGameSettings = [(GKSettingsFriendListAccessCell *)self currentGameSettings];
  [getSwitch setOn:{objc_msgSend(currentGameSettings, "allowFriendListAccess") == 2}];
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

- (void)controlChanged:(id)changed
{
  isOn = [changed isOn];
  reporter = [MEMORY[0x277D0C1F8] reporter];
  v6 = *MEMORY[0x277D0BD18];
  currentGameSettings = [(GKSettingsFriendListAccessCell *)self currentGameSettings];
  bundleID = [currentGameSettings bundleID];
  [reporter reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:v6 bundleID:bundleID];

  v9 = @"denied";
  if (isOn)
  {
    v9 = @"allowed";
  }

  v10 = v9;
  getSwitch = [(GKSettingsFriendListAccessCell *)self getSwitch];
  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  gameServicePrivate = [proxyForLocalPlayer gameServicePrivate];
  currentGameSettings2 = [(GKSettingsFriendListAccessCell *)self currentGameSettings];
  bundleID2 = [currentGameSettings2 bundleID];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__GKSettingsFriendListAccessCell_controlChanged___block_invoke;
  v17[3] = &unk_27966C520;
  v18 = getSwitch;
  v19 = isOn;
  v16 = getSwitch;
  [gameServicePrivate submitFriendListAccess:bundleID2 value:v10 handler:v17];
}

@end