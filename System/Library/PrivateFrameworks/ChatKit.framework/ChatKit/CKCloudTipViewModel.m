@interface CKCloudTipViewModel
+ (_TtC7ChatKit19CKCloudTipViewModel)sharedInstance;
+ (void)enableCloudSyncing;
- (_TtC7ChatKit19CKCloudTipViewModel)init;
- (id)onCloudTipChanged;
- (int64_t)displayContext;
- (void)configureCloudTipManagerWithCompletionHandler:(id)a3;
- (void)setCurrentTipDescriptor:(id)a3;
- (void)setDisplayContext:(int64_t)a3;
- (void)setOnCloudTipChanged:(id)a3;
@end

@implementation CKCloudTipViewModel

+ (_TtC7ChatKit19CKCloudTipViewModel)sharedInstance
{
  if (qword_1EAD45C38 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD45C40;

  return v3;
}

- (_TtC7ChatKit19CKCloudTipViewModel)init
{
  *(self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor) = 0;
  v2 = (self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CKCloudTipViewModel();
  return [(CKCloudTipViewModel *)&v4 init];
}

- (void)setOnCloudTipChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_19084CED8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_19022123C(v7);
}

- (void)configureCloudTipManagerWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_190D572E0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_190DD75B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_190DD75C0;
  v12[5] = v11;
  v13 = self;
  sub_190C798DC(0, 0, v7, &unk_190DD75C8, v12);
}

- (void)setCurrentTipDescriptor:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor);
  *(self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor) = a3;
  v3 = a3;
}

- (id)onCloudTipChanged
{
  v2 = (self + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_onCloudTipChanged);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19084156C;
    aBlock[3] = &block_descriptor_5;
    v4 = _Block_copy(aBlock);
    sub_190D50920();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)displayContext
{
  v3 = OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisplayContext:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext;
  swift_beginAccess();
  *(self + v5) = a3;
}

+ (void)enableCloudSyncing
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  if (!v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 isEnabled];

  if (v5)
  {
    return;
  }

  v6 = [v2 sharedInstance];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  [v6 setEnabled_];
}

@end