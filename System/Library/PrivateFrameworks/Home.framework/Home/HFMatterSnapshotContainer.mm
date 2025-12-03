@interface HFMatterSnapshotContainer
+ (id)fetchCurrent;
+ (void)fetchCurrentWithCompletionHandler:(id)handler;
- (HFMatterSnapshotContainer)init;
@end

@implementation HFMatterSnapshotContainer

- (HFMatterSnapshotContainer)init
{
  *(&self->super.isa + OBJC_IVAR___HFMatterSnapshotContainer_internalContainer) = 0;
  v3.receiver = self;
  v3.super_class = HFMatterSnapshotContainer;
  return [(HFMatterSnapshotContainer *)&v3 init];
}

+ (void)fetchCurrentWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD967D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD94D90;
  v13[5] = v12;
  sub_20DAB35AC(0, 0, v8, &unk_20DD95520, v13);
}

+ (id)fetchCurrent
{
  v2 = _sSo25HFMatterSnapshotContainerC4HomeE12fetchCurrentAByFZ_0();

  return v2;
}

@end