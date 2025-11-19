@interface HomeManager
- (_TtC16HomeEnergyDaemon11HomeManager)init;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HomeManager

- (_TtC16HomeEnergyDaemon11HomeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B2481F4(v4, &unk_283EFD1D8, sub_22B2485FC, &block_descriptor_37_0);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B2481F4(v7, &unk_283EFD160, sub_22B2484E0, &block_descriptor_19);
}

@end