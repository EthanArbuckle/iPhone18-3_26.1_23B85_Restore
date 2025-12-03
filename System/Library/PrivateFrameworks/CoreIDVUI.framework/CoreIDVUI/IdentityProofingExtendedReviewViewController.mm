@interface IdentityProofingExtendedReviewViewController
- (_TtC9CoreIDVUI44IdentityProofingExtendedReviewViewController)initWithCoder:(id)coder;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation IdentityProofingExtendedReviewViewController

- (_TtC9CoreIDVUI44IdentityProofingExtendedReviewViewController)initWithCoder:(id)coder
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for IdentityProofingExtendedReviewViewController();
  v13.receiver = self;
  v13.super_class = v6;
  selfCopy = self;
  [(IdentityProofingViewController *)&v13 viewDidLoad];
  v8 = sub_245910D64();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_245910D34();
  v9 = selfCopy;
  v10 = sub_245910D24();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_2458B90EC(0, 0, v5, &unk_2459175A8, v11);

  sub_2457BA848();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2457BA734(disappear);
}

@end