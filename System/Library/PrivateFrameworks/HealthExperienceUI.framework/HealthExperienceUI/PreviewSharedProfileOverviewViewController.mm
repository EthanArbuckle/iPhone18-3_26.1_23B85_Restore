@interface PreviewSharedProfileOverviewViewController
- (_TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController)initWithCollectionViewLayout:(id)layout;
- (void)closeButtonTapped:(id)tapped;
- (void)ttrButtonTapped;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation PreviewSharedProfileOverviewViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_providedPresentation);
  selfCopy = self;
  sub_1BA4A71E8();
  v10 = v6;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v8 = type metadata accessor for PreviewSharedProfileOverviewViewController();
  v9.receiver = selfCopy;
  v9.super_class = v8;
  [(CompoundDataSourceCollectionViewController *)&v9 viewIsAppearing:appearingCopy];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PreviewSharedProfileOverviewViewController();
  v2 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 viewDidLoad];
  collectionView = [v2 collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    sub_1BA025B64();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BA0259AC();
}

- (void)closeButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(PreviewSharedProfileOverviewViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)ttrButtonTapped
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  selfCopy = self;
  sub_1BA117D3C(0xD000000000000016, 0x80000001BA501C00, sub_1BA3493C0, v3);
}

@end