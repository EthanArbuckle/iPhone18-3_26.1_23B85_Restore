@interface HMHomeManager.DelegateAdapter
- (_TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter)init;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)homeManagerDidUpdatePrimaryHome:(id)a3;
@end

@implementation HMHomeManager.DelegateAdapter

- (_TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A71F90(v4);
}

- (void)homeManagerDidUpdatePrimaryHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A721E8(v4);
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A72628(v6, v7);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A729A4(v6, v7);
}

@end