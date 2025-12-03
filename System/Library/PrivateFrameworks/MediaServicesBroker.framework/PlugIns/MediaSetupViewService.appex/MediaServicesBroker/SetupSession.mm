@interface SetupSession
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation SetupSession

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  _s21MediaSetupViewService0B7SessionC25homeManagerDidUpdateHomesyySo06HMHomeG0CF_0();
}

@end