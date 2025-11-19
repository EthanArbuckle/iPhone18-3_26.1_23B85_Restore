@interface EKSHomeManager
- (_TtC16EnergyKitService14EKSHomeManager)init;
- (void)home:(id)a3 didUpdateLocation:(id)a4;
- (void)homeDidUpdateName:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateDataSyncInProgress:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation EKSHomeManager

- (_TtC16EnergyKitService14EKSHomeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100077A14(v4);
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10007D378(v6, "[EKSHomeManager] homeManagerDidAddHome", &unk_1000C0080, sub_10007E100, &unk_1000C0098);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10007D378(v6, "[EKSHomeManager] homeManagerDidRemoveHome", &unk_1000C0008, sub_10007E014, &unk_1000C0020);
}

- (void)homeManagerDidUpdateDataSyncInProgress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007883C(v4);
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10007D71C("[EKSHomeManager] homeDidUpdateName", sub_100078E28, &unk_1000BFEB8);
}

- (void)home:(id)a3 didUpdateLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10007D71C("[EKSHomeManager] homeManagerDidUpdateLocation", sub_1000794AC, &unk_1000BFE18);
}

@end