@interface CSDashBoardNotificationVersusPagingScrollSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSDashBoardNotificationVersusPagingScrollSettings

- (void)setDefaultValues
{
  [(CSDashBoardNotificationVersusPagingScrollSettings *)self setColorsBackground:0];
  [(CSDashBoardNotificationVersusPagingScrollSettings *)self setLeadingInset:24.0];

  [(CSDashBoardNotificationVersusPagingScrollSettings *)self setTrailingInset:24.0];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A0] rowWithTitle:@"Colors Background" valueKeyPath:@"colorsBackground"];
  v3 = MEMORY[0x277D43218];
  v19[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v5 = [v3 sectionWithRows:v4];

  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"Leading" valueKeyPath:@"leadingInset"];
  v7 = [v6 between:0.0 and:256.0];

  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Trailing" valueKeyPath:@"trailingInset"];
  v9 = [v8 between:0.0 and:256.0];

  v10 = MEMORY[0x277D43218];
  v18[0] = v7;
  v18[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v12 = [v10 sectionWithRows:v11 title:@"Portrait Phone Values"];

  v13 = MEMORY[0x277D43218];
  v17[0] = v5;
  v17[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v13 moduleWithTitle:@"Dismiss Gesture Settings" contents:v14];

  return v15;
}

@end