@interface INStartAudioCallIntent(DBSmartWidget)
- (id)car_action;
@end

@implementation INStartAudioCallIntent(DBSmartWidget)

- (id)car_action
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 localizedStringForKey:@"SMARTWIDGET_CALL" value:&stru_285A57218 table:@"CarPlayApp"];

  return v1;
}

@end