@interface DBLiveActivityBannerView
+ (BOOL)dataIsActivityDescriptor:(id)descriptor;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIViewController)viewController;
- (_TtC9DashBoard24DBLiveActivityBannerView)init;
- (_TtC9DashBoard24DBLiveActivityBannerView)initWithIdentifier:(id)identifier minSize:(CGSize)size maxSize:(CGSize)maxSize;
- (void)ensureContentWithCompletion:(id)completion;
@end

@implementation DBLiveActivityBannerView

- (NSString)requesterIdentifier
{
  _s9DashBoard24DBLiveActivityBannerViewC19requesterIdentifierSSSgvg_0();
  if (v2)
  {
    v3 = sub_248383930();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)requestIdentifier
{
  v3 = sub_2483812C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x70);
  selfCopy = self;
  v7();
  sub_2483812A0();

  (*(v4 + 8))(v6, v3);
  v9 = sub_248383930();

  return v9;
}

- (_TtC9DashBoard24DBLiveActivityBannerView)initWithIdentifier:(id)identifier minSize:(CGSize)size maxSize:(CGSize)maxSize
{
  v5 = sub_2483812C0();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24829D8AC(&qword_27EE91780);
  sub_2483813C0();
  return sub_24829D4A8(v7);
}

- (void)ensureContentWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x88);
  selfCopy = self;
  v7 = v6();
  sub_248297394();
  v8 = sub_248383E50();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24825D51C;
  *(v9 + 24) = v5;

  sub_248382800();
}

- (UIViewController)viewController
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x88);
  selfCopy = self;
  v4 = v2();

  return v4;
}

+ (BOOL)dataIsActivityDescriptor:(id)descriptor
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = sub_2483812C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = 1;
  v12(v6, 1, 1, v10);
  sub_24829D8AC(&unk_27EE916B0);
  descriptorCopy = descriptor;
  sub_248384610();

  v15 = (*(v11 + 48))(v6, 1, v10);
  if (v15 != 1)
  {
    (*(v11 + 32))(v9, v6, v10);
    v13 = 0;
  }

  v12(v9, v13, 1, v10);
  sub_24822D578(v9, &qword_27EE936F0);
  return v15 != 1;
}

- (_TtC9DashBoard24DBLiveActivityBannerView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end