@interface CameraScannerFlowViewController
- (_TtC18HealthExperienceUI31CameraScannerFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)tapToRadarButtonTappedWithSender:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CameraScannerFlowViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA407138();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CameraScannerFlowViewController();
  v4 = v6.receiver;
  v5 = [(CameraScannerFlowViewController *)&v6 viewWillAppear:v3];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x120))(v5);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BA407798();
}

- (void)tapToRadarButtonTappedWithSender:(id)a3
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v3);
}

- (_TtC18HealthExperienceUI31CameraScannerFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end