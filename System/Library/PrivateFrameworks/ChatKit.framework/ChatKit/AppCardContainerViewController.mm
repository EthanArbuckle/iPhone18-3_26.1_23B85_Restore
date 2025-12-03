@interface AppCardContainerViewController
- (NSString)debugDescription;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (_UIRemoteViewController)_containedRemoteViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)completion;
- (void)dealloc;
- (void)loadView;
- (void)setShowingDarkEffect:(BOOL)effect isInDarkMode:(BOOL)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AppCardContainerViewController

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  selfCopy = self;
  v4 = [v3 init];
  [(AppCardContainerViewController *)selfCopy setView:v4];

  view = [(AppCardContainerViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    clearColor = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    sub_1909E613C();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1909E68E4();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_1909E6FEC();

  return v3;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppCardContainerViewController();
  v6 = v11.receiver;
  windowCopy = window;
  [(AppCardContainerViewController *)&v11 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  v8 = &v6[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(v6, windowCopy, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1909E7160(sub_190851E64, v5);
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  if ([v3 respondsToSelector_])
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_shouldOverrideExceptionsOnDismissal);
    selfCopy = self;
    [v3 forceTearDownRemoteViewOverridingExceptions_];
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AppCardContainerViewController();
  [(AppCardContainerViewController *)&v7 dealloc];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1909E7EB8(disappear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1909E8004(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1909E8134(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1909E8270();
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  v5 = self + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 48);
    selfCopy = self;
    v9 = v7();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AppCardContainerViewController();
  v7 = v9.receiver;
  [(AppCardContainerViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = &v7[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight];
  *v8 = 0;
  v8[8] = 1;
}

- (void)setShowingDarkEffect:(BOOL)effect isInDarkMode:(BOOL)mode
{
  selfCopy = self;
  sub_1909E8F88();
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  selfCopy = self;
  v3 = sub_1909E91A0();

  return v3;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1909E9420();

  v3 = sub_190D56ED0();

  return v3;
}

@end