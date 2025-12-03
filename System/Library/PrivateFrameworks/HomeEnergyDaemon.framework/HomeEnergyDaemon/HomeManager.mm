@interface HomeManager
- (_TtC16HomeEnergyDaemon11HomeManager)init;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManager

- (_TtC16HomeEnergyDaemon11HomeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_22B2481F4(homesCopy, &unk_283EFD1D8, sub_22B2485FC, &block_descriptor_37_0);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_22B2481F4(homeCopy, &unk_283EFD160, sub_22B2484E0, &block_descriptor_19);
}

@end