@interface CNFFaceTimeSettingsContainerViewController
- (id)specifierTitle;
@end

@implementation CNFFaceTimeSettingsContainerViewController

- (id)specifierTitle
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"FACETIME" value:&stru_2856D3978 table:v3];

  return v4;
}

@end