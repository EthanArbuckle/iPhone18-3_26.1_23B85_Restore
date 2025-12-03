@interface INSendMessageIntent(DBSmartWidget)
- (id)car_action;
@end

@implementation INSendMessageIntent(DBSmartWidget)

- (id)car_action
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [mainBundle localizedStringForKey:@"SMARTWIDGET_MESSAGE" value:&stru_285A57218 table:@"CarPlayApp"];

  return v1;
}

@end