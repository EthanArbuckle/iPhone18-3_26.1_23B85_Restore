@interface CCUIPagingViewController
- (BOOL)canDismissPresentedContent;
- (BOOL)contentModuleContainerViewController:(id)controller canBeginInteractionWithModule:(id)module;
- (BOOL)iconView:(id)view supportsConfigurationForDataSource:(id)source;
- (BOOL)iconViewDisplaysResizeHandle:(id)handle;
- (BOOL)interpretsLocationAsContent:(CGPoint)content in:(id)in;
- (BOOL)isModuleExpandedForIdentifier:(id)identifier;
- (BOOL)isOnDefaultPage;
- (BOOL)rootFolder:(id)folder canBounceIcon:(id)icon;
- (CCUIPagingViewController)initWithModuleInstanceManager:(id)manager moduleSettingsManager:(id)settingsManager controlIntentStore:(id)store controlDescriptorProvider:(id)provider controlExtensionProvider:(id)extensionProvider;
- (CCUIPagingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CGPoint)additionalContentOffset;
- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)controller;
- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)controller;
- (CGRect)iconView:(id)view contentBoundingRectForConfigurationInteraction:(id)interaction;
- (CGSize)contentLayoutSize;
- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)controller;
- (Class)controllerClassForFolder:(id)folder;
- (SBHIconModel)iconModel;
- (SBIconListView)currentIconlistView;
- (SBIconResizeHandleMetrics)resizeHandleMetricsForIconView:(SEL)view;
- (UIEdgeInsets)additionalContentInsets;
- (UIScrollView)scrollView;
- (UIView)editingAccessoryView;
- (UIView)moduleContainerView;
- (UIView)topmostContentView;
- (UIView)viewForInstallingDismissGestureRecognizers;
- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)parameters;
- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)parameters stretchTransformer:(id)transformer;
- (id)compactModeSourceViewForContentModuleContainerViewController:(id)controller;
- (id)controlsGalleryViewController:(id)controller customImageViewControllerForWidgetIcon:(id)icon withPrimaryAction:(id)action contentMetrics:(id)metrics;
- (id)controlsGalleryViewController:(id)controller widgetIconForGalleryItem:(id)item;
- (id)customApplicationWidgetCollectionsForControlsGalleryViewController:(id)controller;
- (id)customImageViewControllerForIconView:(id)view;
- (id)draggingDelegateForFolderController:(id)controller;
- (id)gridSizeClassDomainForIconView:(id)view;
- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view;
- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view;
- (id)iconListViewForIndexPath:(id)path;
- (id)iconView:(id)view configurationInteractionForDataSource:(id)source;
- (id)iconView:(id)view containerViewForConfigurationInteraction:(id)interaction;
- (id)moduleViewForIdentifier:(id)identifier;
- (id)queryAllTopLevelBlockingGestureRecognizers;
- (id)recycledViewsContainerProviderForViewMap:(id)map;
- (id)resizeGestureHandlerForIconView:(id)view;
- (id)rootFolderForIconDragManager:(id)manager;
- (id)rootViewForIconDragManager:(id)manager;
- (id)windowForIconDragPreviewsForIconDragManager:(id)manager forWindowScene:(id)scene;
- (int64_t)expandedModuleCount;
- (int64_t)iconDragManager:(id)manager willMoveDragPlaceholderToGridCellIndex:(int64_t)index inIconListView:(id)view draggedIcons:(id)icons;
- (int64_t)moduleRowCount;
- (int64_t)pageCount;
- (unint64_t)listGridCellInfoOptionsForIconDragManager:(id)manager;
- (void)addIfNecessaryAndScrollToControlMatchingDescriptor:(id)descriptor animated:(BOOL)animated;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)buddyCompleted;
- (void)changeGridSizeClassOfIcon:(id)icon toGridSizeClass:(id)class;
- (void)contentModuleContainerViewController:(id)controller didOpenExpandedModule:(id)module;
- (void)contentModuleContainerViewController:(id)controller didUpdateContainerViewPlatters:(id)platters;
- (void)contentModuleContainerViewController:(id)controller willCloseExpandedModule:(id)module;
- (void)contentModuleContainerViewControllerDismissPresentedContent:(id)content;
- (void)controlsGalleryViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)controlsGalleryViewController:(id)controller didFinishWithWidgetIcon:(id)icon;
- (void)controlsGalleryViewControllerDidDismiss:(id)dismiss;
- (void)controlsGalleryViewControllerWillDismiss:(id)dismiss;
- (void)controlsGalleryViewControllerWillPresent:(id)present;
- (void)dismissExpandedModuleAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)displayWillTurnOff;
- (void)enumerateDisplayedModuleViewsWithBlock:(id)block;
- (void)expandModuleWithIdentifier:(id)identifier;
- (void)expandModuleWithIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folderControllerDidEndScrolling:(id)scrolling;
- (void)folderControllerWillBeginScrolling:(id)scrolling;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session;
- (void)iconDragManager:(id)manager iconView:(id)view willBeginDragSession:(id)session;
- (void)iconDragManager:(id)manager wantsAutoScrollInDirection:(int64_t)direction;
- (void)iconDragManagerIconDraggingDidChange:(id)change;
- (void)iconDragManagerUserActiveIconDraggingDidChange:(id)change;
- (void)iconTapped:(id)tapped;
- (void)iconView:(id)view configurationDidEndWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationDidUpdateWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationWillBeginWithInteraction:(id)interaction;
- (void)invalidateContainerViewsForPlatterTreatmentWithIdentifier:(id)identifier;
- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)performIfDisplayingModuleView:(id)view subview:(id)subview block:(id)block;
- (void)pointerDidExitContentModuleContainerViewController:(id)controller;
- (void)pointerWillEnterContentModuleContainerViewController:(id)controller;
- (void)resetEndEditingTimerIfNecessary;
- (void)resetToDefaultLayout;
- (void)scrollToDefaultPageAnimated:(BOOL)animated completion:(id)completion;
- (void)setAdditionalContentInsets:(UIEdgeInsets)insets;
- (void)setAdditionalContentOffset:(CGPoint)offset;
- (void)setContextDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing;
- (void)setIconModel:(id)model;
- (void)setLongPressToEditGestureRecognizer:(id)recognizer;
- (void)setPagingDelegate:(id)delegate;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation CCUIPagingViewController

- (CGSize)contentLayoutSize
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v5 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    folderView = [v5 folderView];
    sub_21E9FCCE8();
    v8 = v7;
    v10 = v9;

    v3 = v8;
    v4 = v10;
  }

  else
  {
    __break(1u);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setAdditionalContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  sub_21E9FD210(top, left, bottom, right);
}

- (void)setAdditionalContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v5 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    folderView = [v5 folderView];
    sub_21EA8A91C(x, y);
  }

  else
  {
    __break(1u);
  }
}

- (UIView)editingAccessoryView
{
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v4 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController_addButton);
  if (v4)
  {
    v5 = v4;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)invalidateContainerViewsForPlatterTreatmentWithIdentifier:(id)identifier
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  selfCopy = self;
  sub_21E9FEF78(v4, v6);
}

- (CCUIPagingViewController)initWithModuleInstanceManager:(id)manager moduleSettingsManager:(id)settingsManager controlIntentStore:(id)store controlDescriptorProvider:(id)provider controlExtensionProvider:(id)extensionProvider
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  extensionProviderCopy = extensionProvider;
  sub_21EAA9320();
  swift_unknownObjectRelease();
  sub_21EAA9320();
  swift_unknownObjectRelease();
  v11 = sub_21EA830FC(v14, &v13, store, provider, extensionProviderCopy);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v11;
}

- (void)setPagingDelegate:(id)delegate
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21EA69810();
  swift_unknownObjectRelease();
}

- (void)setContextDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

- (UIScrollView)scrollView
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    folderView = [(UIScrollView *)result folderView];
    scrollView = [folderView scrollView];

    return scrollView;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (UIView)viewForInstallingDismissGestureRecognizers
{
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v4 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v4)
  {
    v5 = v4;
    folderView = [v5 folderView];

    v7 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView];
    v8 = v7;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (SBIconListView)currentIconlistView
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    currentIconListView = [(SBIconListView *)result currentIconListView];

    return currentIconListView;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (int64_t)pageCount
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    iconListViewCount = [result iconListViewCount];

    return iconListViewCount;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (UIEdgeInsets)additionalContentInsets
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v7 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v7)
  {
    v8 = v7;
    folderView = [v8 folderView];

    v10 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];
    v11 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 8];
    v12 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 16];
    v13 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 24];

    v3 = v10;
    v4 = v11;
    v5 = v12;
    v6 = v13;
  }

  else
  {
    __break(1u);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGPoint)additionalContentOffset
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v5 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    v6 = v5;
    folderView = [v6 folderView];

    v8 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset];
    v9 = *&folderView[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset + 8];

    v3 = v8;
    v4 = v9;
  }

  else
  {
    __break(1u);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setLongPressToEditGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_21EA6A65C(recognizer);
}

- (BOOL)canDismissPresentedContent
{
  selfCopy = self;
  v3 = sub_21EA6A8A0();

  return v3 & 1;
}

- (UIView)topmostContentView
{
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v4 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v4)
  {
    v5 = v4;
    v6 = sub_21EA5A364();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)interpretsLocationAsContent:(CGPoint)content in:(id)in
{
  y = content.y;
  x = content.x;
  inCopy = in;
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v10 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v10)
  {
    v11 = v10;
    v12 = sub_21EA5ABCC(inCopy, x, y);

    return v12 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)queryAllTopLevelBlockingGestureRecognizers
{
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v4 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v4)
  {
    v5 = v4;
    sub_21EA5AEE4();

    sub_21E9F8880(0, &qword_28125B7C0);
    v6 = sub_21EAA8EB0();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)scrollToDefaultPageAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_21EA88000;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_21EA6AF1C(animated, v6, v7);
  sub_21E9FFAF0(v6);
}

- (BOOL)isOnDefaultPage
{
  selfCopy = self;
  v3 = sub_21EA6B140();

  return v3 & 1;
}

- (void)willBecomeActive
{
  selfCopy = self;
  sub_21EA6B1C4();
}

- (void)willResignActive
{
  selfCopy = self;
  sub_21EA6B454();
}

- (void)displayWillTurnOff
{
  selfCopy = self;
  sub_21EA6B6E4();
}

- (int64_t)moduleRowCount
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    currentIconListModel = [result currentIconListModel];
    if (currentIconListModel)
    {
      v5 = currentIconListModel;
      numberOfUsedRows = [currentIconListModel numberOfUsedRows];
    }

    else
    {
      numberOfUsedRows = 0;
    }

    return numberOfUsedRows;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)moduleViewForIdentifier:(id)identifier
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  v10 = 0;
  selfCopy = self;
  sub_21EA83B68(selfCopy, v4, v6, &v10);

  v8 = v10;

  return v8;
}

- (int64_t)expandedModuleCount
{
  v2 = *(self + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers);
  selfCopy = self;
  allObjects = [v2 allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v5 = sub_21EAA8EC0();

  if (v5 >> 62)
  {
    v6 = sub_21EAA9380();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (BOOL)isModuleExpandedForIdentifier:(id)identifier
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_21EA6BDA0(v4, v6);

  return v4 & 1;
}

- (void)expandModuleWithIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  v7 = sub_21EAA8E00();
  v9 = v8;
  v10 = sub_21EAA8530();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v13 = v7;
  v14 = v9;
  v15 = v6;
  selfCopy = self;
  sub_21EA753A0(sub_21EA88004, v12);

  sub_21EA488A0(v6, &unk_27CEDCFF0);
}

- (void)expandModuleWithIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_21EAA8E00();
  v11 = v10;
  if (uniqueIdentifier)
  {
    sub_21EAA8510();
    v12 = sub_21EAA8530();
    v13 = (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v14 = sub_21EAA8530();
    v13 = (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  MEMORY[0x28223BE20](v13);
  *(&v16 - 4) = v9;
  *(&v16 - 3) = v11;
  *(&v16 - 2) = v8;
  selfCopy = self;
  sub_21EA753A0(sub_21EA88004, (&v16 - 6));

  sub_21EA488A0(v8, &unk_27CEDCFF0);
}

- (void)enumerateDisplayedModuleViewsWithBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_21EA83EEC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)performIfDisplayingModuleView:(id)view subview:(id)subview block:(id)block
{
  v8 = _Block_copy(block);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  subviewCopy = subview;
  selfCopy = self;
  sub_21EA84534(view, subview, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)dismissExpandedModuleAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_21EA88000;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_21EA6D240(animated, v6, v7);
  sub_21E9FFAF0(v6);
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_21EA87860;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_21EA6D99C(animated, v6, v7);
  sub_21E9FFAF0(v6);
}

- (SBHIconModel)iconModel
{
  v3 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIconModel:(id)model
{
  v5 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = model;
  modelCopy = model;
}

- (void)addIfNecessaryAndScrollToControlMatchingDescriptor:(id)descriptor animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_21EA6E0C8(descriptorCopy, animatedCopy);
}

- (void)resetToDefaultLayout
{
  selfCopy = self;
  sub_21EA6F970();
}

- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)parameters
{
  var2 = parameters.var2;
  var1 = parameters.var1;
  var0 = parameters.var0;
  selfCopy = self;
  v7 = sub_21EA6FBBC(var0, var1, var2);

  return v7;
}

- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)parameters stretchTransformer:(id)transformer
{
  var2 = parameters.var2;
  var1 = parameters.var1;
  var0 = parameters.var0;
  v8 = _Block_copy(transformer);
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = sub_21EA8783C;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  selfCopy = self;
  v13 = sub_21EA6FCB0(v11, v10, var0, var1, var2);
  sub_21E9FFAF0(v11);

  return v13;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21EA6FEF4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21EA71258(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PagingViewController();
  v4 = v5.receiver;
  [(CCUIPagingViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_21EA75B44();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PagingViewController();
  v4 = v7.receiver;
  [(CCUIPagingViewController *)&v7 viewDidAppear:appearCopy];
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v6 = sharedInstance;
    [sharedInstance incrementUserInvocationCount];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21EA714A0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21EA717AC(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_21EA719B8();
}

- (void)setEditing:(BOOL)editing
{
  selfCopy = self;
  sub_21EA72858(editing);
}

- (void)resetEndEditingTimerIfNecessary
{
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

- (UIView)moduleContainerView
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    folderView = [(UIView *)result folderView];
    scalingView = [folderView scalingView];

    return scalingView;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)changeGridSizeClassOfIcon:(id)icon toGridSizeClass:(id)class
{
  iconCopy = icon;
  classCopy = class;
  selfCopy = self;
  sub_21EA79AD4(iconCopy, classCopy);
}

- (void)buddyCompleted
{
  selfCopy = self;
  sub_21EA7ABF8();
}

- (CCUIPagingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    selfCopy = self;
    sub_21EA71B0C();
    v9 = v8;
    [v8 longPressToEditDuration];
    v11 = v10;

    [v6 setMinimumPressDuration_];
  }
}

- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)controller
{
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC07controlB8GridSize3forSo6CGSizeVSo026CCUIContentModuleContainereF0C_tF_0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)compactModeSourceViewForContentModuleContainerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(controllerCopy);

  return v6;
}

- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = [(CCUIPagingViewController *)selfCopy compactModeSourceViewForContentModuleContainerViewController:controllerCopy];
  if (v6)
  {
    v7 = v6;
    bs_presentationContextDefiningViewController = [(CCUIPagingViewController *)selfCopy bs_presentationContextDefiningViewController];
    if (!bs_presentationContextDefiningViewController)
    {
      __break(1u);
      goto LABEL_7;
    }

    v13 = bs_presentationContextDefiningViewController;
    [v7 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    view = [v13 view];
    [v7 convertRect:view toView:{v15, v17, v19, v21}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
  }

  else
  {

    v24 = 0.0;
    v26 = 0.0;
    v28 = 0.0;
    v30 = 0.0;
  }

  v9 = v24;
  v10 = v26;
  v11 = v28;
  v12 = v30;
LABEL_7:
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v14 = PagingViewController.expandedModeFrame(for:)(controllerCopy);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (BOOL)contentModuleContainerViewController:(id)controller canBeginInteractionWithModule:(id)module
{
  selfCopy = self;
  if ([(CCUIPagingViewController *)selfCopy isEditing])
  {

    return 0;
  }

  else
  {
    allObjects = [*(selfCopy + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) allObjects];
    sub_21E9F8880(0, &qword_28125B748);
    v7 = sub_21EAA8EC0();

    if (v7 >> 62)
    {
      v8 = sub_21EAA9380();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v8 == 0;
  }
}

- (void)contentModuleContainerViewController:(id)controller didOpenExpandedModule:(id)module
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:self didExpand:controller];
    swift_unknownObjectRelease();
  }
}

- (void)contentModuleContainerViewController:(id)controller willCloseExpandedModule:(id)module
{
  v5 = *(self + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers);
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  [v5 removeObject_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:selfCopy willClose:controllerCopy];
    swift_unknownObjectRelease();
  }

  sub_21EA75610(0, controllerCopy);

  swift_unknownObjectRelease();
}

- (void)contentModuleContainerViewControllerDismissPresentedContent:(id)content
{
  selfCopy = self;
  sub_21EA6D99C(1, 0, 0);
}

- (void)pointerWillEnterContentModuleContainerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21EA7A384(controllerCopy);
}

- (void)pointerDidExitContentModuleContainerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  PagingViewController.pointerDidExitContentModuleContainerViewController(_:)(controllerCopy);
}

- (void)contentModuleContainerViewController:(id)controller didUpdateContainerViewPlatters:(id)platters
{
  plattersCopy = platters;
  if (platters)
  {
    sub_21E9F8880(0, &unk_28125B720);
    plattersCopy = sub_21EAA8EC0();
  }

  controllerCopy = controller;
  selfCopy = self;
  v10.value._rawValue = plattersCopy;
  PagingViewController.contentModuleContainerViewController(_:didUpdateContainerViewPlatters:)(controllerCopy, v10);
}

- (id)recycledViewsContainerProviderForViewMap:(id)map
{
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  window = [result window];

  if (!window)
  {
    goto LABEL_5;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (Class)controllerClassForFolder:(id)folder
{
  type metadata accessor for IconListFolderController();

  return swift_getObjCClassFromMetadata();
}

- (void)folderControllerWillBeginScrolling:(id)scrolling
{
  selfCopy = self;
  sub_21EA73CF8(0x63537265646C6F66, 0xEF676E696C6C6F72);
  v3 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (v3)
  {
    v4 = v3;
    [v4 noteFolderBeganScrolling];
  }

  else
  {
    __break(1u);
  }
}

- (void)folderControllerDidEndScrolling:(id)scrolling
{
  selfCopy = self;
  sub_21EA73E04(0x63537265646C6F66, 0xEF676E696C6C6F72);
}

- (id)draggingDelegateForFolderController:(id)controller
{
  result = *(self + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (id)customImageViewControllerForIconView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = PagingViewController.customImageViewController(for:)(viewCopy);

  return v6;
}

- (BOOL)iconViewDisplaysResizeHandle:(id)handle
{
  handleCopy = handle;
  icon = [handleCopy icon];
  if (icon)
  {
    v5 = icon;
    isPlaceholder = [icon isPlaceholder];

    return isPlaceholder ^ 1;
  }

  else
  {

    return 1;
  }
}

- (SBIconResizeHandleMetrics)resizeHandleMetricsForIconView:(SEL)view
{
  v6 = a4;
  selfCopy = self;
  PagingViewController.resizeHandleMetrics(for:)(&v14, v6);
  var4 = v14.var4;
  var5 = v14.var5;

  v11 = *&v14.var2;
  v12 = *&v14.var6.top;
  v13 = *&v14.var6.bottom;
  *&retstr->var0 = *&v14.var0;
  *&retstr->var2 = v11;
  retstr->var4 = var4;
  retstr->var5 = var5;
  *&retstr->var6.top = v12;
  *&retstr->var6.bottom = v13;
  return result;
}

- (id)resizeGestureHandlerForIconView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = PagingViewController.resizeGestureHandler(for:)(viewCopy);

  return v6;
}

- (id)gridSizeClassDomainForIconView:(id)view
{
  controlCenterDomain = [objc_opt_self() controlCenterDomain];

  return controlCenterDomain;
}

- (void)iconTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PagingViewController.iconTapped(_:)(tappedCopy);
}

- (void)iconCloseBoxTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  if ([(CCUIPagingViewController *)selfCopy isEditing])
  {
    icon = [tappedCopy icon];
    if (icon)
    {
      v6 = icon;
      sub_21EA73EF0(icon);
      _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
    }
  }
}

- (BOOL)iconView:(id)view supportsConfigurationForDataSource:(id)source
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_21EA84CF0();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (id)iconView:(id)view configurationInteractionForDataSource:(id)source
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = PagingViewController.iconView(_:configurationInteractionFor:)(viewCopy);

  swift_unknownObjectRelease();

  return v7;
}

- (id)iconView:(id)view containerViewForConfigurationInteraction:(id)interaction
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    configurationInteractionContainerView_ = [Strong configurationInteractionContainerView_];
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy = self;
    result = [(CCUIPagingViewController *)selfCopy view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    configurationInteractionContainerView_ = result;
  }

  return configurationInteractionContainerView_;
}

- (CGRect)iconView:(id)view contentBoundingRectForConfigurationInteraction:(id)interaction
{
  selfCopy = self;
  view = [(CCUIPagingViewController *)selfCopy view];
  if (view)
  {
    v10 = view;
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];

    [safeAreaLayoutGuide layoutFrame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v6 = v13;
    v7 = v15;
    v8 = v17;
    v9 = v19;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)iconView:(id)view configurationDidUpdateWithInteraction:(id)interaction
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  PagingViewController.iconView(_:configurationDidUpdateWith:)(viewCopy, interaction);

  swift_unknownObjectRelease();
}

- (void)iconView:(id)view configurationWillBeginWithInteraction:(id)interaction
{
  viewCopy = view;
  selfCopy = self;
  sub_21EA73CF8(0xD00000000000001FLL, 0x800000021EABD260);
  swift_unknownObjectWeakAssign();
}

- (void)iconView:(id)view configurationDidEndWithInteraction:(id)interaction
{
  selfCopy = self;
  sub_21EA73E04(0xD00000000000001FLL, 0x800000021EABD260);
  swift_unknownObjectWeakAssign();
}

- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view
{
  viewCopy = view;
  result = [viewCopy icon];
  if (result)
  {
    v6 = result;
    v7 = sub_21EAA8DC0();
    v8 = SBHIconDragItemWithIconAndIconView();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21EAB6F60;
    *(v9 + 32) = v8;

    sub_21E9F8880(0, &qword_27CEDD6E8);
    v10 = sub_21EAA8EB0();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session
{
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

- (void)iconDragManagerIconDraggingDidChange:(id)change
{
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

- (void)iconDragManager:(id)manager iconView:(id)view willBeginDragSession:(id)session
{
  *(self + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 0;
  selfCopy = self;
  sub_21EA74790();
}

- (void)iconDragManagerUserActiveIconDraggingDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if (([changeCopy isTrackingUserActiveIconDrags] & 1) == 0)
  {
    *(selfCopy + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 1;
    sub_21EA74790();
  }
}

- (int64_t)iconDragManager:(id)manager willMoveDragPlaceholderToGridCellIndex:(int64_t)index inIconListView:(id)view draggedIcons:(id)icons
{
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();

  return index;
}

- (id)windowForIconDragPreviewsForIconDragManager:(id)manager forWindowScene:(id)scene
{
  managerCopy = manager;
  sceneCopy = scene;
  selfCopy = self;
  v9 = sub_21EA84E48(sceneCopy);

  return v9;
}

- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view
{
  managerCopy = manager;
  viewCopy = view;
  selfCopy = self;
  v9 = sub_21EA84F58(viewCopy);

  return v9;
}

- (id)rootViewForIconDragManager:(id)manager
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;

  return v5;
}

- (id)rootFolderForIconDragManager:(id)manager
{
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  result = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result folder];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();

  return v5;
}

- (id)iconListViewForIndexPath:(id)path
{
  v4 = sub_21EAA85F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA85E0();
  selfCopy = self;
  v9 = sub_21EA75998();
  v11 = v10;

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (unint64_t)listGridCellInfoOptionsForIconDragManager:(id)manager
{
  selfCopy = self;
  result = [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v5 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    v6 = [objc_opt_self() gridCellInfoOptionsWithInterfaceOrientation:objc_msgSend(v5 reversedLayout:{sel_orientation), 0}];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  selfCopy = self;
  [(CCUIPagingViewController *)selfCopy loadViewIfNeeded];
  v6 = *(selfCopy + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v6)
  {
    v7 = v6;
    [v7 layoutIconListsWithAnimationType:type forceRelayout:relayoutCopy];
  }

  else
  {
    __break(1u);
  }
}

- (void)iconDragManager:(id)manager wantsAutoScrollInDirection:(int64_t)direction
{
  managerCopy = manager;
  selfCopy = self;
  sub_21EA851F4(direction);
}

- (BOOL)rootFolder:(id)folder canBounceIcon:(id)icon
{
  v4 = *(self + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (v4)
  {
    LOBYTE(v4) = [v4 isIconDragging];
  }

  else
  {
    __break(1u);
  }

  return v4;
}

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  iconsCopy = icons;
  if (icons)
  {
    sub_21E9F8880(0, &qword_28125B730);
    sub_21E9FBE14(&qword_27CEDD6E0, &qword_28125B730);
    iconsCopy = sub_21EAA8F60();
  }

  if (removedIcons)
  {
    sub_21E9F8880(0, &qword_28125B730);
    sub_21E9FBE14(&qword_27CEDD6E0, &qword_28125B730);
    removedIcons = sub_21EAA8F60();
  }

  folderCopy = folder;
  selfCopy = self;
  sub_21EA8536C(iconsCopy, removedIcons);
}

- (void)controlsGalleryViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_21EA857BC(result, error);
}

- (void)controlsGalleryViewControllerWillPresent:(id)present
{
  presentCopy = present;
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF11WillPresentyySo013CCUISControlsheF0CF_0();
}

- (void)controlsGalleryViewControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF11WillDismissyySo013CCUISControlsheF0CF_0();
}

- (void)controlsGalleryViewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF10DidDismissyySo013CCUISControlsheF0CF_0();
}

- (id)customApplicationWidgetCollectionsForControlsGalleryViewController:(id)controller
{
  v15 = MEMORY[0x277D84F90];
  v4 = *(self + OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager);
  v5 = *(self + OBJC_IVAR___CCUIPagingViewController_moduleSettingsManager);
  controllerCopy = controller;
  selfCopy = self;
  loadableModuleIdentifiers = [v4 loadableModuleIdentifiers];
  v9 = sub_21EAA8F60();

  v10 = selfCopy;
  v11 = v4;
  v12 = v5;
  sub_21EA848EC(v9, v10, v11, v12, &v15);

  sub_21E9F8880(0, &unk_27CEDD6D0);
  v13 = sub_21EAA8EB0();

  return v13;
}

- (id)controlsGalleryViewController:(id)controller customImageViewControllerForWidgetIcon:(id)icon withPrimaryAction:(id)action contentMetrics:(id)metrics
{
  controllerCopy = controller;
  iconCopy = icon;
  actionCopy = action;
  metricsCopy = metrics;
  selfCopy = self;
  v15 = sub_21EA85E30(iconCopy, actionCopy, metricsCopy);

  return v15;
}

- (id)controlsGalleryViewController:(id)controller widgetIconForGalleryItem:(id)item
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain_n();
    controllerCopy = controller;
    selfCopy = self;
    [v7 preferredGallerySizeClass];
    v10 = SBHIconGridSizeClassForCCUIGridSizeClass();
    sub_21E9F8880(0, &unk_27CEDCDA0);
    v11 = sub_21EAA8FA0();
    [v11 addIconDataSource_];
    [v11 setGridSizeClass_];

    swift_unknownObjectRelease_n();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)controlsGalleryViewController:(id)controller didFinishWithWidgetIcon:(id)icon
{
  controllerCopy = controller;
  iconCopy = icon;
  selfCopy = self;
  sub_21EA866FC(iconCopy);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21EA86908(&unk_2830199E8, sub_21EA878EC, &block_descriptor_329);
  swift_unknownObjectRelease();
}

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_21EA86908(&unk_283019920, sub_21EA878DC, &block_descriptor_312);
}

@end