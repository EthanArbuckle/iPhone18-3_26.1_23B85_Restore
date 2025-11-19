@interface MRUMediaControlsModuleViewController
- (BOOL)canDismissPresentedContent;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isResizing;
- (BOOL)providesOwnPlatter;
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldExpandModuleOnTouch:(id)a3;
- (BOOL)shouldPerformHoverInteraction;
- (CCUIModuleContentMetrics)contentMetrics;
- (MRUMediaControlsModuleViewController)initWithController:(id)a3;
- (MRUMediaControlsModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)containerViewsForPlatterTreatment;
- (double)compactContinuousCornerRadius;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)dismissModuleBlock;
- (int64_t)gridSizeClass;
- (unint64_t)contentRenderingMode;
- (unint64_t)implicitlyExpandedGridSizeClasses;
- (void)didTransitionToExpandedContentMode:(BOOL)a3;
- (void)dismissModule;
- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setDismissModuleBlock:(id)a3;
- (void)setExpandModuleBlock:(id)a3;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setImplicitlyExpandedGridSizeClasses:(unint64_t)a3;
- (void)setInvalidateContainerViewsBlock:(id)a3;
- (void)setProvidesOwnPlatter:(BOOL)a3;
- (void)setResizing:(BOOL)a3;
- (void)setShouldPerformHoverInteraction:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation MRUMediaControlsModuleViewController

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaControlsModuleViewController();
  v2 = v3.receiver;
  [(MRUMediaControlsModuleViewController *)&v3 viewDidLayoutSubviews];
  sub_1A211C9D0();
}

- (MRUMediaControlsModuleViewController)initWithController:(id)a3
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MediaControlsModulePresenter();
  v5 = *(a3 + OBJC_IVAR___MRUMediaControlsModuleController_sessionsController + 8);
  v6 = a3;
  v7 = swift_unknownObjectRetain();
  v8 = sub_1A2255888(v7, v5);
  v9 = (*(ObjectType + 440))(v8);

  swift_deallocPartialClassInstance();
  return v9;
}

- (void)loadView
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x158);
  v4 = self;
  v3 = v2();
  [(MRUMediaControlsModuleViewController *)v4 setView:v3];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1A22A5418();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1A22A594C(a4, width, height);
  swift_unknownObjectRelease();
}

- (id)dismissModuleBlock
{
  v2 = (self + OBJC_IVAR___MRUMediaControlsModuleViewController_dismissModuleBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A22A5CD0;
    aBlock[3] = &block_descriptor_71;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissModuleBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A22ACBA0;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MRUMediaControlsModuleViewController_dismissModuleBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_1A210F5C0(v7);
}

- (void)setExpandModuleBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A22ACD80;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MRUMediaControlsModuleViewController_expandModuleBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_1A210F5C0(v7);
}

- (void)setInvalidateContainerViewsBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A22ACD80;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MRUMediaControlsModuleViewController_invalidateContainerViewsBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_1A210F5C0(v7);
}

- (int64_t)gridSizeClass
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGridSizeClass:(int64_t)a3
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0x130);
  v7 = self;
  v6(8);
  sub_1A22A8B1C();
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1A211C9D0();
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentMetrics:(id)a3
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x158))();
  v11 = *(self + v5);
  v12 = *((*v9 & *v10) + 0x158);
  v13 = v11;
  v12(v11);
}

- (unint64_t)contentRenderingMode
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v4 = self;
  sub_1A22A6D08(a3);
}

- (BOOL)isResizing
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResizing:(BOOL)a3
{
  v4 = self;
  sub_1A22A70EC(a3);
}

- (double)preferredExpandedContentHeight
{
  v2 = self;
  v3 = sub_1A22A73C4();

  return v3;
}

- (double)preferredExpandedContentWidth
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x158);
  v4 = self;
  v5 = v3();
  LOBYTE(v3) = (*((*v2 & *v5) + 0x190))();

  v6 = (*((*v2 & *v4) + 0x238))();
  v7 = v6;
  if (v3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  v9 = sub_1A211313C(v6, 1, v8);

  return v9;
}

- (BOOL)providesOwnPlatter
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setProvidesOwnPlatter:(BOOL)a3
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)containerViewsForPlatterTreatment
{
  v2 = self;
  v3 = sub_1A22A79E8();

  if (v3)
  {
    sub_1A2115288(0, &qword_1ED94E980);
    v4 = sub_1A22E6738();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldPerformHoverInteraction
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldPerformHoverInteraction:(BOOL)a3
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldExpandModuleOnTouch:(id)a3
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0x140);
  v6 = a3;
  v7 = self;
  if ((v5() - 3) >= 3u)
  {
    v9 = (*((*v4 & *v7) + 0x158))();
    v8 = (*((*v4 & *v9) + 0x188))(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v2 = self;
  v3 = sub_1A22A80CC();

  return v3;
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x100);
  v5 = self;
  v4(v3);
}

- (void)didTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = self;
  sub_1A22ABDA8();
}

- (unint64_t)implicitlyExpandedGridSizeClasses
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImplicitlyExpandedGridSizeClasses:(unint64_t)a3
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)canDismissPresentedContent
{
  v2 = self;
  v3 = sub_1A22A8510();

  return v3;
}

- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_1A211216C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  sub_1A22ABEE0(v8, v7);
  sub_1A210F5C0(v8);
}

- (void)dismissModule
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1C0);
  v5 = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3(0, 0);

    sub_1A210F5C0(v4);
  }

  else
  {
  }
}

- (MRUMediaControlsModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A22AB0E4(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

@end