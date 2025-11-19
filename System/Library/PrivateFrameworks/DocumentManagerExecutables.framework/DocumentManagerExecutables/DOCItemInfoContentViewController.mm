@interface DOCItemInfoContentViewController
+ (BOOL)itemTapDrillsIntoNode:(id)a3;
- (BOOL)metadataViewWithShouldDrawSeparator:(id)a3 for:(int64_t)a4;
- (BOOL)showsItemLocation;
- (BOOL)showsShareButton;
- (DOCItemInfoContentViewController)initWithConfiguration:(id)a3 nodes:(id)a4 allowOpenButton:(BOOL)a5 documentManager:(id)a6 actionManager:(id)a7 actionDelegate:(id)a8;
- (DOCItemInfoContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSDirectionalEdgeInsets)layoutMargins;
- (double)layoutHeightForWidth:(double)a3;
- (id)contextMenuForItemsWithNodes:(id)a3;
- (void)didTapAttributionView;
- (void)doc_startPreheatIfNecessary;
- (void)documentPreviewTappedWithSender:(id)a3;
- (void)loadView;
- (void)metadataViewDidFinishPreheat:(id)a3;
- (void)metadataViewWithDidLoadMetadataValues:(id)a3;
- (void)metadataViewWithNodeLocationTapped:(id)a3 metadataView:(id)a4;
- (void)nodeDownloadButton:(id)a3 downloadingNode:(id)a4 encounteredError:(id)a5;
- (void)nodeDownloadButton:(id)a3 requestedOpeningNode:(id)a4;
- (void)openSelectedNode:(id)a3;
- (void)setHandlerFlow:(id)a3 didFailToSetHandlerPreferenceOfType:(unint64_t)a4 toBundle:(id)a5 error:(id)a6;
- (void)setHandlerFlow:(id)a3 didSetHandlerPreferenceOfType:(unint64_t)a4 toBundle:(id)a5;
- (void)setLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setShowsItemLocation:(BOOL)a3;
- (void)setShowsShareButton:(BOOL)a3;
- (void)tagsCollectionItem:(id)a3 didDeleteTag:(id)a4;
- (void)tagsCollectionView:(id)a3 didSelectAddTagButton:(id)a4;
- (void)thumbnailLoaded:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DOCItemInfoContentViewController

- (NSDirectionalEdgeInsets)layoutMargins
{
  v2 = (self + OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)setLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v8 = (self + OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins);
  swift_beginAccess();
  *v8 = top;
  v8[1] = leading;
  v8[2] = bottom;
  v8[3] = trailing;
  [*(self + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) setDirectionalLayoutMargins_];
}

- (BOOL)showsShareButton
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsShareButton:(BOOL)a3
{
  v4 = self;
  DOCItemInfoContentViewController.showsShareButton.setter(a3);
}

- (BOOL)showsItemLocation
{
  v2 = self;
  v3 = DOCItemInfoContentViewController.metadataView.getter();
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))();

  return v4 & 1;
}

- (void)setShowsItemLocation:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v4) + 0xE0))(v3);
}

- (DOCItemInfoContentViewController)initWithConfiguration:(id)a3 nodes:(id)a4 allowOpenButton:(BOOL)a5 documentManager:(id)a6 actionManager:(id)a7 actionDelegate:(id)a8
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a6;
  v15 = a7;
  swift_unknownObjectRetain();
  return DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(v13, v12, a5, a6, a7);
}

- (void)loadView
{
  v2 = self;
  DOCItemInfoContentViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  DOCItemInfoContentViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  DOCItemInfoContentViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DOCItemInfoContentViewController.viewDidLayoutSubviews()();
}

- (double)layoutHeightForWidth:(double)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [*(self + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v3, v4}];
  return v5;
}

- (void)doc_startPreheatIfNecessary
{
  if (*(self + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) == 1)
  {
    v3 = self;
    if (UIViewController.doc_presentationPreheatController.getter())
    {
      DOCPresentationPreheatController.endWithState(_:)(2);
    }
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v6 = v8.receiver;
  v7 = a3;
  [(DOCItemInfoContentViewController *)&v8 viewDidMoveToWindow:v7 shouldAppearOrDisappear:v4];
  if (v7)
  {
    DOCItemInfoContentViewController.updateThumbnail(force:)(0);
  }
}

- (void)thumbnailLoaded:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = self;
  swift_unknownObjectRetain_n();
  v6 = self;
  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCItemInfoContentViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  DOCItemInfoContentViewController.viewDidDisappear(_:)(a3);
}

- (void)documentPreviewTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemInfoContentViewController.documentPreviewTapped(sender:)();
}

- (void)openSelectedNode:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = self;
  specialized DOCItemInfoContentViewController.openSelectedNode(_:)(a3, v6, ObjectType);
  swift_unknownObjectRelease();
}

- (DOCItemInfoContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setHandlerFlow:(id)a3 didSetHandlerPreferenceOfType:(unint64_t)a4 toBundle:(id)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized DOCItemInfoContentViewController.setHandlerFlow(_:didSetHandlerPreferenceOfType:to:)();

  swift_unknownObjectRelease();
}

- (void)setHandlerFlow:(id)a3 didFailToSetHandlerPreferenceOfType:(unint64_t)a4 toBundle:(id)a5 error:(id)a6
{
  v8 = a3;
  swift_unknownObjectRetain();
  v10 = a6;
  v9 = self;
  specialized DOCItemInfoContentViewController.setHandlerFlow(_:didFailToSetHandlerPreferenceOfType:to:error:)();

  swift_unknownObjectRelease();
}

- (BOOL)metadataViewWithShouldDrawSeparator:(id)a3 for:(int64_t)a4
{
  v4 = a4;
  v5 = self;
  v6 = [(DOCItemInfoContentViewController *)v5 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return v4 & 1 | ((v6 & 1) == 0);
}

- (void)metadataViewWithNodeLocationTapped:(id)a3 metadataView:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = self;
    v8 = DOCNode.fpfs_syncFetchFPItem()();
    if (v8)
    {
      v9 = v8;
      [v6 didTapLocationOf_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

- (void)metadataViewWithDidLoadMetadataValues:(id)a3
{
  v3 = self;
  DOCItemInfoContentViewController.updateShowMoreButtonVisibility()();
}

- (void)metadataViewDidFinishPreheat:(id)a3
{
  *(self + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 1;
  v3 = self;
  if (UIViewController.doc_presentationPreheatController.getter())
  {
    DOCPresentationPreheatController.endWithState(_:)(2);
  }
}

- (void)tagsCollectionItem:(id)a3 didDeleteTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:)(v7);
}

- (void)tagsCollectionView:(id)a3 didSelectAddTagButton:(id)a4
{
  v5 = a3;
  v6 = self;
  DOCItemInfoContentViewController.showAddTags(from:)(v5);
}

- (void)nodeDownloadButton:(id)a3 downloadingNode:(id)a4 encounteredError:(id)a5
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  *(v7 + 24) = self;
  v8 = a5;
  v9 = self;
  v10 = v8;
  v11 = v9;
  DOCRunInMainThread(_:)();
}

- (void)nodeDownloadButton:(id)a3 requestedOpeningNode:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized DOCItemInfoContentViewController.nodeDownloadButton(_:requestedOpening:)(a4);

  swift_unknownObjectRelease();
}

+ (BOOL)itemTapDrillsIntoNode:(id)a3
{
  swift_unknownObjectRetain();
  if ([a3 isFolder])
  {
    v4 = [a3 doc_isCollaborationInvitation];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

- (void)didTapAttributionView
{
  v2 = self;
  DOCItemInfoContentViewController.didTapAttributionView()();
}

- (id)contextMenuForItemsWithNodes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v4 >> 62)
  {
    v12 = v4;
    v13 = __CocoaSet.count.getter();
    v4 = v12;
    if (v13 == 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_3:
    v5 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    v6 = v4;
    swift_beginAccess();
    v7 = *(self + v5);
    v8 = self;
    v9 = v7;
    v10 = specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(v6, 0);

    v11 = v10;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

@end