@interface MRUMediaControlsModuleViewController
- (BOOL)canDismissPresentedContent;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isResizing;
- (BOOL)providesOwnPlatter;
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldExpandModuleOnTouch:(id)touch;
- (BOOL)shouldPerformHoverInteraction;
- (CCUIModuleContentMetrics)contentMetrics;
- (MRUMediaControlsModuleViewController)initWithController:(id)controller;
- (MRUMediaControlsModuleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSArray)containerViewsForPlatterTreatment;
- (double)compactContinuousCornerRadius;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)dismissModuleBlock;
- (int64_t)gridSizeClass;
- (unint64_t)contentRenderingMode;
- (unint64_t)implicitlyExpandedGridSizeClasses;
- (void)didTransitionToExpandedContentMode:(BOOL)mode;
- (void)dismissModule;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentMetrics:(id)metrics;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setDismissModuleBlock:(id)block;
- (void)setExpandModuleBlock:(id)block;
- (void)setGridSizeClass:(int64_t)class;
- (void)setImplicitlyExpandedGridSizeClasses:(unint64_t)classes;
- (void)setInvalidateContainerViewsBlock:(id)block;
- (void)setProvidesOwnPlatter:(BOOL)platter;
- (void)setResizing:(BOOL)resizing;
- (void)setShouldPerformHoverInteraction:(BOOL)interaction;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
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

- (MRUMediaControlsModuleViewController)initWithController:(id)controller
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MediaControlsModulePresenter();
  v5 = *(controller + OBJC_IVAR___MRUMediaControlsModuleController_sessionsController + 8);
  controllerCopy = controller;
  v7 = swift_unknownObjectRetain();
  v8 = sub_1A2255888(v7, v5);
  v9 = (*(ObjectType + 440))(v8);

  swift_deallocPartialClassInstance();
  return v9;
}

- (void)loadView
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x158);
  selfCopy = self;
  v3 = v2();
  [(MRUMediaControlsModuleViewController *)selfCopy setView:v3];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1A22A5418();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A22A594C(coordinator, width, height);
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

- (void)setDismissModuleBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;
  sub_1A210F5C0(v7);
}

- (void)setExpandModuleBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;
  sub_1A210F5C0(v7);
}

- (void)setInvalidateContainerViewsBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;
  sub_1A210F5C0(v7);
}

- (int64_t)gridSizeClass
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGridSizeClass:(int64_t)class
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(self + v5) = class;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0x130);
  selfCopy = self;
  v6(8);
  sub_1A22A8B1C();
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(self + v5) = radius;
  selfCopy = self;
  sub_1A211C9D0();
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentMetrics:(id)metrics
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = metrics;
  metricsCopy = metrics;
  selfCopy = self;

  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *selfCopy) + 0x158))();
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

- (void)setContentRenderingMode:(unint64_t)mode
{
  selfCopy = self;
  sub_1A22A6D08(mode);
}

- (BOOL)isResizing
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResizing:(BOOL)resizing
{
  selfCopy = self;
  sub_1A22A70EC(resizing);
}

- (double)preferredExpandedContentHeight
{
  selfCopy = self;
  v3 = sub_1A22A73C4();

  return v3;
}

- (double)preferredExpandedContentWidth
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x158);
  selfCopy = self;
  v5 = v3();
  LOBYTE(v3) = (*((*v2 & *v5) + 0x190))();

  v6 = (*((*v2 & *selfCopy) + 0x238))();
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

- (void)setProvidesOwnPlatter:(BOOL)platter
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  swift_beginAccess();
  *(self + v5) = platter;
}

- (NSArray)containerViewsForPlatterTreatment
{
  selfCopy = self;
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

- (void)setShouldPerformHoverInteraction:(BOOL)interaction
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  swift_beginAccess();
  *(self + v5) = interaction;
}

- (BOOL)shouldExpandModuleOnTouch:(id)touch
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0x140);
  touchCopy = touch;
  selfCopy = self;
  if ((v5() - 3) >= 3u)
  {
    v9 = (*((*v4 & *selfCopy) + 0x158))();
    v8 = (*((*v4 & *v9) + 0x188))(touchCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  selfCopy = self;
  v3 = sub_1A22A80CC();

  return v3;
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = *((*MEMORY[0x1E69E7D40] & *self) + 0x100);
  selfCopy = self;
  v4(modeCopy);
}

- (void)didTransitionToExpandedContentMode:(BOOL)mode
{
  selfCopy = self;
  sub_1A22ABDA8();
}

- (unint64_t)implicitlyExpandedGridSizeClasses
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImplicitlyExpandedGridSizeClasses:(unint64_t)classes
{
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  *(self + v5) = classes;
}

- (BOOL)canDismissPresentedContent
{
  selfCopy = self;
  v3 = sub_1A22A8510();

  return v3;
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1A22ABEE0(v8, v7);
  sub_1A210F5C0(v8);
}

- (void)dismissModule
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x1C0);
  selfCopy = self;
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

- (MRUMediaControlsModuleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_1A22AB0E4(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

@end