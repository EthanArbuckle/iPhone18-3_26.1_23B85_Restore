@interface OnboardingStackedItemViewController
- (void)nextButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation OnboardingStackedItemViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA111214();
}

- (void)nextButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA111DEC();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1BA1128A4();
  swift_unknownObjectRelease();
}

@end