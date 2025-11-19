@interface CCUIPagingViewController
- (BOOL)canDismissPresentedContent;
- (BOOL)contentModuleContainerViewController:(id)a3 canBeginInteractionWithModule:(id)a4;
- (BOOL)iconView:(id)a3 supportsConfigurationForDataSource:(id)a4;
- (BOOL)iconViewDisplaysResizeHandle:(id)a3;
- (BOOL)interpretsLocationAsContent:(CGPoint)a3 in:(id)a4;
- (BOOL)isModuleExpandedForIdentifier:(id)a3;
- (BOOL)isOnDefaultPage;
- (BOOL)rootFolder:(id)a3 canBounceIcon:(id)a4;
- (CCUIPagingViewController)initWithModuleInstanceManager:(id)a3 moduleSettingsManager:(id)a4 controlIntentStore:(id)a5 controlDescriptorProvider:(id)a6 controlExtensionProvider:(id)a7;
- (CCUIPagingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CGPoint)additionalContentOffset;
- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)a3;
- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)a3;
- (CGRect)iconView:(id)a3 contentBoundingRectForConfigurationInteraction:(id)a4;
- (CGSize)contentLayoutSize;
- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)a3;
- (Class)controllerClassForFolder:(id)a3;
- (SBHIconModel)iconModel;
- (SBIconListView)currentIconlistView;
- (SBIconResizeHandleMetrics)resizeHandleMetricsForIconView:(SEL)a3;
- (UIEdgeInsets)additionalContentInsets;
- (UIScrollView)scrollView;
- (UIView)editingAccessoryView;
- (UIView)moduleContainerView;
- (UIView)topmostContentView;
- (UIView)viewForInstallingDismissGestureRecognizers;
- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)a3;
- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)a3 stretchTransformer:(id)a4;
- (id)compactModeSourceViewForContentModuleContainerViewController:(id)a3;
- (id)controlsGalleryViewController:(id)a3 customImageViewControllerForWidgetIcon:(id)a4 withPrimaryAction:(id)a5 contentMetrics:(id)a6;
- (id)controlsGalleryViewController:(id)a3 widgetIconForGalleryItem:(id)a4;
- (id)customApplicationWidgetCollectionsForControlsGalleryViewController:(id)a3;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)draggingDelegateForFolderController:(id)a3;
- (id)gridSizeClassDomainForIconView:(id)a3;
- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4;
- (id)iconDragManager:(id)a3 dragPreviewForIconView:(id)a4;
- (id)iconListViewForIndexPath:(id)a3;
- (id)iconView:(id)a3 configurationInteractionForDataSource:(id)a4;
- (id)iconView:(id)a3 containerViewForConfigurationInteraction:(id)a4;
- (id)moduleViewForIdentifier:(id)a3;
- (id)queryAllTopLevelBlockingGestureRecognizers;
- (id)recycledViewsContainerProviderForViewMap:(id)a3;
- (id)resizeGestureHandlerForIconView:(id)a3;
- (id)rootFolderForIconDragManager:(id)a3;
- (id)rootViewForIconDragManager:(id)a3;
- (id)windowForIconDragPreviewsForIconDragManager:(id)a3 forWindowScene:(id)a4;
- (int64_t)expandedModuleCount;
- (int64_t)iconDragManager:(id)a3 willMoveDragPlaceholderToGridCellIndex:(int64_t)a4 inIconListView:(id)a5 draggedIcons:(id)a6;
- (int64_t)moduleRowCount;
- (int64_t)pageCount;
- (unint64_t)listGridCellInfoOptionsForIconDragManager:(id)a3;
- (void)addIfNecessaryAndScrollToControlMatchingDescriptor:(id)a3 animated:(BOOL)a4;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)buddyCompleted;
- (void)changeGridSizeClassOfIcon:(id)a3 toGridSizeClass:(id)a4;
- (void)contentModuleContainerViewController:(id)a3 didOpenExpandedModule:(id)a4;
- (void)contentModuleContainerViewController:(id)a3 didUpdateContainerViewPlatters:(id)a4;
- (void)contentModuleContainerViewController:(id)a3 willCloseExpandedModule:(id)a4;
- (void)contentModuleContainerViewControllerDismissPresentedContent:(id)a3;
- (void)controlsGalleryViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)controlsGalleryViewController:(id)a3 didFinishWithWidgetIcon:(id)a4;
- (void)controlsGalleryViewControllerDidDismiss:(id)a3;
- (void)controlsGalleryViewControllerWillDismiss:(id)a3;
- (void)controlsGalleryViewControllerWillPresent:(id)a3;
- (void)dismissExpandedModuleAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)displayWillTurnOff;
- (void)enumerateDisplayedModuleViewsWithBlock:(id)a3;
- (void)expandModuleWithIdentifier:(id)a3;
- (void)expandModuleWithIdentifier:(id)a3 uniqueIdentifier:(id)a4;
- (void)extensionsDidChangeForExtensionProvider:(id)a3;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folderControllerDidEndScrolling:(id)a3;
- (void)folderControllerWillBeginScrolling:(id)a3;
- (void)iconCloseBoxTapped:(id)a3;
- (void)iconDragManager:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6;
- (void)iconDragManager:(id)a3 iconView:(id)a4 willBeginDragSession:(id)a5;
- (void)iconDragManager:(id)a3 wantsAutoScrollInDirection:(int64_t)a4;
- (void)iconDragManagerIconDraggingDidChange:(id)a3;
- (void)iconDragManagerUserActiveIconDraggingDidChange:(id)a3;
- (void)iconTapped:(id)a3;
- (void)iconView:(id)a3 configurationDidEndWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationDidUpdateWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationWillBeginWithInteraction:(id)a4;
- (void)invalidateContainerViewsForPlatterTreatmentWithIdentifier:(id)a3;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)performIfDisplayingModuleView:(id)a3 subview:(id)a4 block:(id)a5;
- (void)pointerDidExitContentModuleContainerViewController:(id)a3;
- (void)pointerWillEnterContentModuleContainerViewController:(id)a3;
- (void)resetEndEditingTimerIfNecessary;
- (void)resetToDefaultLayout;
- (void)scrollToDefaultPageAnimated:(BOOL)a3 completion:(id)a4;
- (void)setAdditionalContentInsets:(UIEdgeInsets)a3;
- (void)setAdditionalContentOffset:(CGPoint)a3;
- (void)setContextDelegate:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setIconModel:(id)a3;
- (void)setLongPressToEditGestureRecognizer:(id)a3;
- (void)setPagingDelegate:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation CCUIPagingViewController

- (CGSize)contentLayoutSize
{
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v5 = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    v6 = [v5 folderView];
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

- (void)setAdditionalContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_21E9FD210(top, left, bottom, right);
}

- (void)setAdditionalContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  [(CCUIPagingViewController *)v7 loadViewIfNeeded];
  v5 = *(v7 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    v6 = [v5 folderView];
    sub_21EA8A91C(x, y);
  }

  else
  {
    __break(1u);
  }
}

- (UIView)editingAccessoryView
{
  v2 = self;
  result = [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v4 = *(v2 + OBJC_IVAR___CCUIPagingViewController_addButton);
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

- (void)invalidateContainerViewsForPlatterTreatmentWithIdentifier:(id)a3
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  v7 = self;
  sub_21E9FEF78(v4, v6);
}

- (CCUIPagingViewController)initWithModuleInstanceManager:(id)a3 moduleSettingsManager:(id)a4 controlIntentStore:(id)a5 controlDescriptorProvider:(id)a6 controlExtensionProvider:(id)a7
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = a7;
  sub_21EAA9320();
  swift_unknownObjectRelease();
  sub_21EAA9320();
  swift_unknownObjectRelease();
  v11 = sub_21EA830FC(v14, &v13, a5, a6, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v11;
}

- (void)setPagingDelegate:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  sub_21EA69810();
  swift_unknownObjectRelease();
}

- (void)setContextDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

- (UIScrollView)scrollView
{
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  result = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    v4 = [(UIScrollView *)result folderView];
    v5 = [v4 scrollView];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (UIView)viewForInstallingDismissGestureRecognizers
{
  v2 = self;
  result = [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v4 = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 folderView];

    v7 = *&v6[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView];
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
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  result = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    v4 = [(SBIconListView *)result currentIconListView];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (int64_t)pageCount
{
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  result = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    v4 = [result iconListViewCount];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (UIEdgeInsets)additionalContentInsets
{
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v7 = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 folderView];

    v10 = *&v9[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];
    v11 = *&v9[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 8];
    v12 = *&v9[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 16];
    v13 = *&v9[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 24];

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
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v5 = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 folderView];

    v8 = *&v7[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset];
    v9 = *&v7[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset + 8];

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

- (void)setLongPressToEditGestureRecognizer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21EA6A65C(a3);
}

- (BOOL)canDismissPresentedContent
{
  v2 = self;
  v3 = sub_21EA6A8A0();

  return v3 & 1;
}

- (UIView)topmostContentView
{
  v2 = self;
  result = [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v4 = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
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

- (BOOL)interpretsLocationAsContent:(CGPoint)a3 in:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  result = [(CCUIPagingViewController *)v8 loadViewIfNeeded];
  v10 = *(v8 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v10)
  {
    v11 = v10;
    v12 = sub_21EA5ABCC(v7, x, y);

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
  v2 = self;
  result = [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  v4 = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
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

- (void)scrollToDefaultPageAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_21EA6AF1C(a3, v6, v7);
  sub_21E9FFAF0(v6);
}

- (BOOL)isOnDefaultPage
{
  v2 = self;
  v3 = sub_21EA6B140();

  return v3 & 1;
}

- (void)willBecomeActive
{
  v2 = self;
  sub_21EA6B1C4();
}

- (void)willResignActive
{
  v2 = self;
  sub_21EA6B454();
}

- (void)displayWillTurnOff
{
  v2 = self;
  sub_21EA6B6E4();
}

- (int64_t)moduleRowCount
{
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  result = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    v4 = [result currentIconListModel];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 numberOfUsedRows];
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)moduleViewForIdentifier:(id)a3
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  v10 = 0;
  v7 = self;
  sub_21EA83B68(v7, v4, v6, &v10);

  v8 = v10;

  return v8;
}

- (int64_t)expandedModuleCount
{
  v2 = *(self + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers);
  v3 = self;
  v4 = [v2 allObjects];
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

- (BOOL)isModuleExpandedForIdentifier:(id)a3
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_21EA6BDA0(v4, v6);

  return v4 & 1;
}

- (void)expandModuleWithIdentifier:(id)a3
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
  v11 = self;
  sub_21EA753A0(sub_21EA88004, v12);

  sub_21EA488A0(v6, &unk_27CEDCFF0);
}

- (void)expandModuleWithIdentifier:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_21EAA8E00();
  v11 = v10;
  if (a4)
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
  v15 = self;
  sub_21EA753A0(sub_21EA88004, (&v16 - 6));

  sub_21EA488A0(v8, &unk_27CEDCFF0);
}

- (void)enumerateDisplayedModuleViewsWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_21EA83EEC(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)performIfDisplayingModuleView:(id)a3 subview:(id)a4 block:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  sub_21EA84534(a3, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)dismissExpandedModuleAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_21EA6D240(a3, v6, v7);
  sub_21E9FFAF0(v6);
}

- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_21EA6D99C(a3, v6, v7);
  sub_21E9FFAF0(v6);
}

- (SBHIconModel)iconModel
{
  v3 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIconModel:(id)a3
{
  v5 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)addIfNecessaryAndScrollToControlMatchingDescriptor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_21EA6E0C8(v6, v4);
}

- (void)resetToDefaultLayout
{
  v2 = self;
  sub_21EA6F970();
}

- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = self;
  v7 = sub_21EA6FBBC(var0, var1, var2);

  return v7;
}

- (id)addModuleStretchSourceWithParameters:(CCUIStretchParameters)a3 stretchTransformer:(id)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = _Block_copy(a4);
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

  v12 = self;
  v13 = sub_21EA6FCB0(v11, v10, var0, var1, var2);
  sub_21E9FFAF0(v11);

  return v13;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21EA6FEF4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21EA71258(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PagingViewController();
  v4 = v5.receiver;
  [(CCUIPagingViewController *)&v5 viewIsAppearing:v3];
  sub_21EA75B44();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PagingViewController();
  v4 = v7.receiver;
  [(CCUIPagingViewController *)&v7 viewDidAppear:v3];
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    [v5 incrementUserInvocationCount];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_21EA714A0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_21EA717AC(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_21EA719B8();
}

- (void)setEditing:(BOOL)a3
{
  v4 = self;
  sub_21EA72858(a3);
}

- (void)resetEndEditingTimerIfNecessary
{
  v2 = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

- (UIView)moduleContainerView
{
  v2 = self;
  [(CCUIPagingViewController *)v2 loadViewIfNeeded];
  result = *(v2 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (result)
  {
    v4 = [(UIView *)result folderView];
    v5 = [v4 scalingView];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)changeGridSizeClassOfIcon:(id)a3 toGridSizeClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21EA79AD4(v6, v7);
}

- (void)buddyCompleted
{
  v2 = self;
  sub_21EA7ABF8();
}

- (CCUIPagingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = self;
    sub_21EA71B0C();
    v9 = v8;
    [v8 longPressToEditDuration];
    v11 = v10;

    [v6 setMinimumPressDuration_];
  }
}

- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)a3
{
  v3 = self;
  _s15ControlCenterUI20PagingViewControllerC07controlB8GridSize3forSo6CGSizeVSo026CCUIContentModuleContainereF0C_tF_0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)compactModeSourceViewForContentModuleContainerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(v4);

  return v6;
}

- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(CCUIPagingViewController *)v5 compactModeSourceViewForContentModuleContainerViewController:v4];
  if (v6)
  {
    v7 = v6;
    v8 = [(CCUIPagingViewController *)v5 bs_presentationContextDefiningViewController];
    if (!v8)
    {
      __break(1u);
      goto LABEL_7;
    }

    v13 = v8;
    [v7 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v13 view];
    [v7 convertRect:v22 toView:{v15, v17, v19, v21}];
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

- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v14 = PagingViewController.expandedModeFrame(for:)(v4);
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

- (BOOL)contentModuleContainerViewController:(id)a3 canBeginInteractionWithModule:(id)a4
{
  v4 = self;
  if ([(CCUIPagingViewController *)v4 isEditing])
  {

    return 0;
  }

  else
  {
    v6 = [*(v4 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) allObjects];
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

- (void)contentModuleContainerViewController:(id)a3 didOpenExpandedModule:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:self didExpand:a3];
    swift_unknownObjectRelease();
  }
}

- (void)contentModuleContainerViewController:(id)a3 willCloseExpandedModule:(id)a4
{
  v5 = *(self + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers);
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  [v5 removeObject_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:v7 willClose:v6];
    swift_unknownObjectRelease();
  }

  sub_21EA75610(0, v6);

  swift_unknownObjectRelease();
}

- (void)contentModuleContainerViewControllerDismissPresentedContent:(id)a3
{
  v3 = self;
  sub_21EA6D99C(1, 0, 0);
}

- (void)pointerWillEnterContentModuleContainerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA7A384(v4);
}

- (void)pointerDidExitContentModuleContainerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  PagingViewController.pointerDidExitContentModuleContainerViewController(_:)(v4);
}

- (void)contentModuleContainerViewController:(id)a3 didUpdateContainerViewPlatters:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_21E9F8880(0, &unk_28125B720);
    v4 = sub_21EAA8EC0();
  }

  v7 = a3;
  v8 = self;
  v10.value._rawValue = v4;
  PagingViewController.contentModuleContainerViewController(_:didUpdateContainerViewPlatters:)(v7, v10);
}

- (id)recycledViewsContainerProviderForViewMap:(id)a3
{
  v3 = self;
  result = [(CCUIPagingViewController *)v3 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result window];

  if (!v6)
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

- (Class)controllerClassForFolder:(id)a3
{
  type metadata accessor for IconListFolderController();

  return swift_getObjCClassFromMetadata();
}

- (void)folderControllerWillBeginScrolling:(id)a3
{
  v5 = self;
  sub_21EA73CF8(0x63537265646C6F66, 0xEF676E696C6C6F72);
  v3 = *(v5 + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
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

- (void)folderControllerDidEndScrolling:(id)a3
{
  v3 = self;
  sub_21EA73E04(0x63537265646C6F66, 0xEF676E696C6C6F72);
}

- (id)draggingDelegateForFolderController:(id)a3
{
  result = *(self + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PagingViewController.customImageViewController(for:)(v4);

  return v6;
}

- (BOOL)iconViewDisplaysResizeHandle:(id)a3
{
  v3 = a3;
  v4 = [v3 icon];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isPlaceholder];

    return v6 ^ 1;
  }

  else
  {

    return 1;
  }
}

- (SBIconResizeHandleMetrics)resizeHandleMetricsForIconView:(SEL)a3
{
  v6 = a4;
  v7 = self;
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

- (id)resizeGestureHandlerForIconView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PagingViewController.resizeGestureHandler(for:)(v4);

  return v6;
}

- (id)gridSizeClassDomainForIconView:(id)a3
{
  v3 = [objc_opt_self() controlCenterDomain];

  return v3;
}

- (void)iconTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PagingViewController.iconTapped(_:)(v4);
}

- (void)iconCloseBoxTapped:(id)a3
{
  v4 = a3;
  v7 = self;
  if ([(CCUIPagingViewController *)v7 isEditing])
  {
    v5 = [v4 icon];
    if (v5)
    {
      v6 = v5;
      sub_21EA73EF0(v5);
      _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
    }
  }
}

- (BOOL)iconView:(id)a3 supportsConfigurationForDataSource:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_21EA84CF0();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (id)iconView:(id)a3 configurationInteractionForDataSource:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = PagingViewController.iconView(_:configurationInteractionFor:)(v5);

  swift_unknownObjectRelease();

  return v7;
}

- (id)iconView:(id)a3 containerViewForConfigurationInteraction:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong configurationInteractionContainerView_];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = self;
    result = [(CCUIPagingViewController *)v7 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
  }

  return v6;
}

- (CGRect)iconView:(id)a3 contentBoundingRectForConfigurationInteraction:(id)a4
{
  v4 = self;
  v5 = [(CCUIPagingViewController *)v4 view];
  if (v5)
  {
    v10 = v5;
    v11 = [v5 safeAreaLayoutGuide];

    [v11 layoutFrame];
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

- (void)iconView:(id)a3 configurationDidUpdateWithInteraction:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  PagingViewController.iconView(_:configurationDidUpdateWith:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)iconView:(id)a3 configurationWillBeginWithInteraction:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_21EA73CF8(0xD00000000000001FLL, 0x800000021EABD260);
  swift_unknownObjectWeakAssign();
}

- (void)iconView:(id)a3 configurationDidEndWithInteraction:(id)a4
{
  v4 = self;
  sub_21EA73E04(0xD00000000000001FLL, 0x800000021EABD260);
  swift_unknownObjectWeakAssign();
}

- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4
{
  v4 = a4;
  result = [v4 icon];
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

- (void)iconDragManager:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6
{
  v6 = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

- (void)iconDragManagerIconDraggingDidChange:(id)a3
{
  v3 = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 willBeginDragSession:(id)a5
{
  *(self + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 0;
  v5 = self;
  sub_21EA74790();
}

- (void)iconDragManagerUserActiveIconDraggingDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  if (([v4 isTrackingUserActiveIconDrags] & 1) == 0)
  {
    *(v5 + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 1;
    sub_21EA74790();
  }
}

- (int64_t)iconDragManager:(id)a3 willMoveDragPlaceholderToGridCellIndex:(int64_t)a4 inIconListView:(id)a5 draggedIcons:(id)a6
{
  v7 = self;
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();

  return a4;
}

- (id)windowForIconDragPreviewsForIconDragManager:(id)a3 forWindowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21EA84E48(v7);

  return v9;
}

- (id)iconDragManager:(id)a3 dragPreviewForIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21EA84F58(v7);

  return v9;
}

- (id)rootViewForIconDragManager:(id)a3
{
  v3 = self;
  [(CCUIPagingViewController *)v3 loadViewIfNeeded];
  result = *(v3 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
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

- (id)rootFolderForIconDragManager:(id)a3
{
  v3 = self;
  [(CCUIPagingViewController *)v3 loadViewIfNeeded];
  result = *(v3 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
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

- (id)iconListViewForIndexPath:(id)a3
{
  v4 = sub_21EAA85F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA85E0();
  v8 = self;
  v9 = sub_21EA75998();
  v11 = v10;

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (unint64_t)listGridCellInfoOptionsForIconDragManager:(id)a3
{
  v3 = self;
  result = [(CCUIPagingViewController *)v3 loadViewIfNeeded];
  v5 = *(v3 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
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

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v8 = self;
  [(CCUIPagingViewController *)v8 loadViewIfNeeded];
  v6 = *(v8 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (v6)
  {
    v7 = v6;
    [v7 layoutIconListsWithAnimationType:a3 forceRelayout:v4];
  }

  else
  {
    __break(1u);
  }
}

- (void)iconDragManager:(id)a3 wantsAutoScrollInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_21EA851F4(a4);
}

- (BOOL)rootFolder:(id)a3 canBounceIcon:(id)a4
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

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_21E9F8880(0, &qword_28125B730);
    sub_21E9FBE14(&qword_27CEDD6E0, &qword_28125B730);
    v6 = sub_21EAA8F60();
  }

  if (a5)
  {
    sub_21E9F8880(0, &qword_28125B730);
    sub_21E9FBE14(&qword_27CEDD6E0, &qword_28125B730);
    a5 = sub_21EAA8F60();
  }

  v9 = a3;
  v10 = self;
  sub_21EA8536C(v6, a5);
}

- (void)controlsGalleryViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_21EA857BC(a4, a5);
}

- (void)controlsGalleryViewControllerWillPresent:(id)a3
{
  v4 = a3;
  v5 = self;
  _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF11WillPresentyySo013CCUISControlsheF0CF_0();
}

- (void)controlsGalleryViewControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF11WillDismissyySo013CCUISControlsheF0CF_0();
}

- (void)controlsGalleryViewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF10DidDismissyySo013CCUISControlsheF0CF_0();
}

- (id)customApplicationWidgetCollectionsForControlsGalleryViewController:(id)a3
{
  v15 = MEMORY[0x277D84F90];
  v4 = *(self + OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager);
  v5 = *(self + OBJC_IVAR___CCUIPagingViewController_moduleSettingsManager);
  v6 = a3;
  v7 = self;
  v8 = [v4 loadableModuleIdentifiers];
  v9 = sub_21EAA8F60();

  v10 = v7;
  v11 = v4;
  v12 = v5;
  sub_21EA848EC(v9, v10, v11, v12, &v15);

  sub_21E9F8880(0, &unk_27CEDD6D0);
  v13 = sub_21EAA8EB0();

  return v13;
}

- (id)controlsGalleryViewController:(id)a3 customImageViewControllerForWidgetIcon:(id)a4 withPrimaryAction:(id)a5 contentMetrics:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = sub_21EA85E30(v11, v12, v13);

  return v15;
}

- (id)controlsGalleryViewController:(id)a3 widgetIconForGalleryItem:(id)a4
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain_n();
    v8 = a3;
    v9 = self;
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

- (void)controlsGalleryViewController:(id)a3 didFinishWithWidgetIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21EA866FC(v7);
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_21EA86908(&unk_2830199E8, sub_21EA878EC, &block_descriptor_329);
  swift_unknownObjectRelease();
}

- (void)extensionsDidChangeForExtensionProvider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21EA86908(&unk_283019920, sub_21EA878DC, &block_descriptor_312);
}

@end