@interface AppCardContainerViewController
- (NSString)debugDescription;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (_UIRemoteViewController)_containedRemoteViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setShowingDarkEffect:(BOOL)a3 isInDarkMode:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AppCardContainerViewController

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v8 = self;
  v4 = [v3 init];
  [(AppCardContainerViewController *)v8 setView:v4];

  v5 = [(AppCardContainerViewController *)v8 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
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
  v2 = self;
  sub_1909E68E4();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_1909E6FEC();

  return v3;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppCardContainerViewController();
  v6 = v11.receiver;
  v7 = a3;
  [(AppCardContainerViewController *)&v11 viewDidMoveToWindow:v7 shouldAppearOrDisappear:v4];
  v8 = &v6[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(v6, v7, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1909E7160(sub_190851E64, v5);
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  if ([v3 respondsToSelector_])
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_shouldOverrideExceptionsOnDismissal);
    v5 = self;
    [v3 forceTearDownRemoteViewOverridingExceptions_];
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AppCardContainerViewController();
  [(AppCardContainerViewController *)&v7 dealloc];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1909E7EB8(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1909E8004(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1909E8134(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1909E8270();
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v5 = self + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_presentationDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 48);
    v8 = self;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AppCardContainerViewController();
  v7 = v9.receiver;
  [(AppCardContainerViewController *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = &v7[OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_cachedCompactDetentHeight];
  *v8 = 0;
  v8[8] = 1;
}

- (void)setShowingDarkEffect:(BOOL)a3 isInDarkMode:(BOOL)a4
{
  v4 = self;
  sub_1909E8F88();
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  v2 = self;
  v3 = sub_1909E91A0();

  return v3;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_1909E9420();

  v3 = sub_190D56ED0();

  return v3;
}

@end