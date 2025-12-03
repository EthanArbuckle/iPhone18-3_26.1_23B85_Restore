@interface OnboardingStackedItemViewController
- (void)nextButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation OnboardingStackedItemViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA111214();
}

- (void)nextButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA111DEC();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1BA1128A4();
  swift_unknownObjectRelease();
}

@end