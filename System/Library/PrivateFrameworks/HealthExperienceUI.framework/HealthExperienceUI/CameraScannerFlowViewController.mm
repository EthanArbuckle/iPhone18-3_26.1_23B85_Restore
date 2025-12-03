@interface CameraScannerFlowViewController
- (_TtC18HealthExperienceUI31CameraScannerFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)tapToRadarButtonTappedWithSender:(id)sender;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CameraScannerFlowViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA407138();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CameraScannerFlowViewController();
  v4 = v6.receiver;
  v5 = [(CameraScannerFlowViewController *)&v6 viewWillAppear:appearCopy];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x120))(v5);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BA407798();
}

- (void)tapToRadarButtonTappedWithSender:(id)sender
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v3);
}

- (_TtC18HealthExperienceUI31CameraScannerFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end