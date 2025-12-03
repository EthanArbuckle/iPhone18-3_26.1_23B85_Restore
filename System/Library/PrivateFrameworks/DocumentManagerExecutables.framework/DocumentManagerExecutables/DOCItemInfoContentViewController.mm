@interface DOCItemInfoContentViewController
+ (BOOL)itemTapDrillsIntoNode:(id)node;
- (BOOL)metadataViewWithShouldDrawSeparator:(id)separator for:(int64_t)for;
- (BOOL)showsItemLocation;
- (BOOL)showsShareButton;
- (DOCItemInfoContentViewController)initWithConfiguration:(id)configuration nodes:(id)nodes allowOpenButton:(BOOL)button documentManager:(id)manager actionManager:(id)actionManager actionDelegate:(id)delegate;
- (DOCItemInfoContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSDirectionalEdgeInsets)layoutMargins;
- (double)layoutHeightForWidth:(double)width;
- (id)contextMenuForItemsWithNodes:(id)nodes;
- (void)didTapAttributionView;
- (void)doc_startPreheatIfNecessary;
- (void)documentPreviewTappedWithSender:(id)sender;
- (void)loadView;
- (void)metadataViewDidFinishPreheat:(id)preheat;
- (void)metadataViewWithDidLoadMetadataValues:(id)values;
- (void)metadataViewWithNodeLocationTapped:(id)tapped metadataView:(id)view;
- (void)nodeDownloadButton:(id)button downloadingNode:(id)node encounteredError:(id)error;
- (void)nodeDownloadButton:(id)button requestedOpeningNode:(id)node;
- (void)openSelectedNode:(id)node;
- (void)setHandlerFlow:(id)flow didFailToSetHandlerPreferenceOfType:(unint64_t)type toBundle:(id)bundle error:(id)error;
- (void)setHandlerFlow:(id)flow didSetHandlerPreferenceOfType:(unint64_t)type toBundle:(id)bundle;
- (void)setLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setShowsItemLocation:(BOOL)location;
- (void)setShowsShareButton:(BOOL)button;
- (void)tagsCollectionItem:(id)item didDeleteTag:(id)tag;
- (void)tagsCollectionView:(id)view didSelectAddTagButton:(id)button;
- (void)thumbnailLoaded:(id)loaded;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)setLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
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

- (void)setShowsShareButton:(BOOL)button
{
  selfCopy = self;
  DOCItemInfoContentViewController.showsShareButton.setter(button);
}

- (BOOL)showsItemLocation
{
  selfCopy = self;
  v3 = DOCItemInfoContentViewController.metadataView.getter();
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))();

  return v4 & 1;
}

- (void)setShowsItemLocation:(BOOL)location
{
  locationCopy = location;
  selfCopy = self;
  v4 = DOCItemInfoContentViewController.metadataView.getter();
  (*((*MEMORY[0x277D85000] & *v4) + 0xE0))(locationCopy);
}

- (DOCItemInfoContentViewController)initWithConfiguration:(id)configuration nodes:(id)nodes allowOpenButton:(BOOL)button documentManager:(id)manager actionManager:(id)actionManager actionDelegate:(id)delegate
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  configurationCopy = configuration;
  managerCopy = manager;
  actionManagerCopy = actionManager;
  swift_unknownObjectRetain();
  return DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(configurationCopy, v12, button, manager, actionManager);
}

- (void)loadView
{
  selfCopy = self;
  DOCItemInfoContentViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCItemInfoContentViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  DOCItemInfoContentViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DOCItemInfoContentViewController.viewDidLayoutSubviews()();
}

- (double)layoutHeightForWidth:(double)width
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [*(self + OBJC_IVAR___DOCItemInfoContentViewController_rootContentView) systemLayoutSizeFittingSize:width withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v3, v4}];
  return v5;
}

- (void)doc_startPreheatIfNecessary
{
  if (*(self + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) == 1)
  {
    selfCopy = self;
    if (UIViewController.doc_presentationPreheatController.getter())
    {
      DOCPresentationPreheatController.endWithState(_:)(2);
    }
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v6 = v8.receiver;
  windowCopy = window;
  [(DOCItemInfoContentViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    DOCItemInfoContentViewController.updateThumbnail(force:)(0);
  }
}

- (void)thumbnailLoaded:(id)loaded
{
  v5 = swift_allocObject();
  *(v5 + 16) = loaded;
  *(v5 + 24) = self;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DOCItemInfoContentViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCItemInfoContentViewController.viewDidDisappear(_:)(disappear);
}

- (void)documentPreviewTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  specialized DOCItemInfoContentViewController.documentPreviewTapped(sender:)();
}

- (void)openSelectedNode:(id)node
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemInfoContentViewController.openSelectedNode(_:)(node, selfCopy, ObjectType);
  swift_unknownObjectRelease();
}

- (DOCItemInfoContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setHandlerFlow:(id)flow didSetHandlerPreferenceOfType:(unint64_t)type toBundle:(id)bundle
{
  flowCopy = flow;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemInfoContentViewController.setHandlerFlow(_:didSetHandlerPreferenceOfType:to:)();

  swift_unknownObjectRelease();
}

- (void)setHandlerFlow:(id)flow didFailToSetHandlerPreferenceOfType:(unint64_t)type toBundle:(id)bundle error:(id)error
{
  flowCopy = flow;
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  specialized DOCItemInfoContentViewController.setHandlerFlow(_:didFailToSetHandlerPreferenceOfType:to:error:)();

  swift_unknownObjectRelease();
}

- (BOOL)metadataViewWithShouldDrawSeparator:(id)separator for:(int64_t)for
{
  forCopy = for;
  selfCopy = self;
  traitCollection = [(DOCItemInfoContentViewController *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return forCopy & 1 | ((traitCollection & 1) == 0);
}

- (void)metadataViewWithNodeLocationTapped:(id)tapped metadataView:(id)view
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    selfCopy = self;
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

- (void)metadataViewWithDidLoadMetadataValues:(id)values
{
  selfCopy = self;
  DOCItemInfoContentViewController.updateShowMoreButtonVisibility()();
}

- (void)metadataViewDidFinishPreheat:(id)preheat
{
  *(self + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 1;
  selfCopy = self;
  if (UIViewController.doc_presentationPreheatController.getter())
  {
    DOCPresentationPreheatController.endWithState(_:)(2);
  }
}

- (void)tagsCollectionItem:(id)item didDeleteTag:(id)tag
{
  itemCopy = item;
  tagCopy = tag;
  selfCopy = self;
  specialized DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:)(tagCopy);
}

- (void)tagsCollectionView:(id)view didSelectAddTagButton:(id)button
{
  viewCopy = view;
  selfCopy = self;
  DOCItemInfoContentViewController.showAddTags(from:)(viewCopy);
}

- (void)nodeDownloadButton:(id)button downloadingNode:(id)node encounteredError:(id)error
{
  v7 = swift_allocObject();
  *(v7 + 16) = error;
  *(v7 + 24) = self;
  errorCopy = error;
  selfCopy = self;
  v10 = errorCopy;
  v11 = selfCopy;
  DOCRunInMainThread(_:)();
}

- (void)nodeDownloadButton:(id)button requestedOpeningNode:(id)node
{
  buttonCopy = button;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemInfoContentViewController.nodeDownloadButton(_:requestedOpening:)(node);

  swift_unknownObjectRelease();
}

+ (BOOL)itemTapDrillsIntoNode:(id)node
{
  swift_unknownObjectRetain();
  if ([node isFolder])
  {
    doc_isCollaborationInvitation = [node doc_isCollaborationInvitation];
    swift_unknownObjectRelease();
    if ((doc_isCollaborationInvitation & 1) == 0)
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
  selfCopy = self;
  DOCItemInfoContentViewController.didTapAttributionView()();
}

- (id)contextMenuForItemsWithNodes:(id)nodes
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
    selfCopy = self;
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