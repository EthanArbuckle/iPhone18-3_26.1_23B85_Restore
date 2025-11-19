@interface FAOSUpdatedActivity
- (FAOSUpdatedActivity)init;
- (FAOSUpdatedActivity)initWithHeartbeatActivityHandler:(id)a3;
- (void)checkinWithCompletionHandler:(id)a3;
- (void)unregister;
@end

@implementation FAOSUpdatedActivity

- (FAOSUpdatedActivity)initWithHeartbeatActivityHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_1B70E4A80(sub_1B70E531C, v4);

  return v5;
}

- (void)checkinWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B715E450();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B7164A28;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B7164A30;
  v12[5] = v11;
  v13 = self;
  sub_1B7105F20(0, 0, v7, &unk_1B7166270, v12);
}

- (void)unregister
{
  v2 = self;
  FAOSUpdatedActivity.unregister()();
}

- (FAOSUpdatedActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end