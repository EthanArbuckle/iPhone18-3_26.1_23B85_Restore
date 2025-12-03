@interface HMHomeManager.DelegateAdapter
- (_TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter)init;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)homeManagerDidUpdatePrimaryHome:(id)home;
@end

@implementation HMHomeManager.DelegateAdapter

- (_TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_1D1A71F90(homesCopy);
}

- (void)homeManagerDidUpdatePrimaryHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_1D1A721E8(homeCopy);
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_1D1A72628(managerCopy, homeCopy);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_1D1A729A4(managerCopy, homeCopy);
}

@end