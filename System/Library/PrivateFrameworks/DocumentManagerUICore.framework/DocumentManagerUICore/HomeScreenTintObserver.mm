@interface HomeScreenTintObserver
- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change;
@end

@implementation HomeScreenTintObserver

- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change
{
  serviceCopy = service;
  changeCopy = change;

  sub_249D01820(changeCopy);
}

@end