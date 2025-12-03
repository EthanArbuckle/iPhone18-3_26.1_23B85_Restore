@interface FTRecentsListViewController
- (FTRecentsListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)accessibilityCustomActionsForIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)presentingViewControllerForAcceptedContactActionsManager:(id)manager sourceView:(id *)view sourceRect:(CGRect *)rect;
- (void)acceptedContactActionsManager:(id)manager didCreateNewContact:(id)contact;
- (void)acceptedContactActionsManager:(id)manager didRecordRecentEvent:(id)event;
- (void)acceptedContactActionsManagerDidCancel:(id)cancel;
- (void)beginEditing;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configurationChanged;
- (void)deleteButtonAction:(id)action;
- (void)didSelectAccessoryViewForLinkWithSender:(id)sender;
- (void)didSelectAccessoryViewForOngoingCallWithSender:(id)sender;
- (void)didSelectAccessoryViewForRecentCallWithSender:(id)sender;
- (void)didTapNewCallButton;
- (void)didTapNewLinkButtonFrom:(id)from;
- (void)dismissCallFilteringOnboarding;
- (void)dismissContactsModal;
- (void)dismissMoreHelp;
- (void)enableCallFiltering;
- (void)endEditing;
- (void)handleNewFaceTimeMenuAction;
- (void)markAsReadButtonAction:(id)action;
- (void)presentOnboardingViewController;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation FTRecentsListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  RecentsListViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  RecentsListViewController.viewWillAppear(_:)(appear);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  RecentsListViewController.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  RecentsListViewController.viewWillLayoutSubviews()();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  RecentsListViewController.collectionView(_:willDisplay:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  RecentsListViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  RecentsListViewController.viewWillDisappear(_:)(disappear);
}

- (FTRecentsListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  RecentsListViewController.init(nibName:bundle:)();
}

- (id)accessibilityCustomActionsForIndexPath:(id)path
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)handleNewFaceTimeMenuAction
{
  selfCopy = self;
  RecentsListViewController.handleNewFaceTimeMenuAction()();
}

- (void)didSelectAccessoryViewForOngoingCallWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  RecentsListViewController.didSelectAccessoryViewForOngoingCall(sender:)(senderCopy);
}

- (void)didSelectAccessoryViewForRecentCallWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  RecentsListViewController.didSelectAccessoryViewForRecentCall(sender:)(senderCopy);
}

- (void)didSelectAccessoryViewForLinkWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  RecentsListViewController.didSelectAccessoryViewForLink(sender:)(senderCopy);
}

- (void)didTapNewCallButton
{
  selfCopy = self;
  RecentsListViewController.didTapNewCallButton()();
}

- (void)didTapNewLinkButtonFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  RecentsListViewController.didTapNewLinkButton(from:)(fromCopy);
}

- (void)presentOnboardingViewController
{
  selfCopy = self;
  RecentsListViewController.presentOnboardingViewController()();
}

- (void)beginEditing
{
  selfCopy = self;
  RecentsListViewController.beginEditing()();
}

- (void)endEditing
{
  selfCopy = self;
  RecentsListViewController.endEditing()();
}

- (void)enableCallFiltering
{
  selfCopy = self;
  RecentsListViewController.enableCallFiltering()();
}

- (void)dismissCallFilteringOnboarding
{
  selfCopy = self;
  RecentsListViewController.dismissCallFilteringOnboarding()();
}

- (void)configurationChanged
{
  selfCopy = self;
  RecentsListViewController.configurationChanged()();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  RecentsListViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  RecentsListViewController.collectionView(_:didDeselectItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = RecentsListViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(viewCopy, v9);

  return v10;
}

- (void)dismissMoreHelp
{
  selfCopy = self;
  RecentsListViewController.dismissMoreHelp()();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  RecentsListViewController.setEditing(_:animated:)(editing, animated);
}

- (void)deleteButtonAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  RecentsListViewController.deleteButtonAction(_:)(actionCopy);
}

- (void)markAsReadButtonAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  RecentsListViewController.markAsReadButtonAction(_:)();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  RecentsListViewController.scrollViewWillBeginDragging(_:)(selfCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  RecentsListViewController.scrollViewDidEndDecelerating(_:)(selfCopy);
}

- (id)presentingViewControllerForAcceptedContactActionsManager:(id)manager sourceView:(id *)view sourceRect:(CGRect *)rect
{
  managerCopy = manager;
  selfCopy = self;
  v9 = RecentsListViewController.presentingViewController(for:sourceView:sourceRect:)(selfCopy, view);

  return v9;
}

- (void)acceptedContactActionsManager:(id)manager didRecordRecentEvent:(id)event
{
  if (event)
  {
    managerCopy = manager;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    managerCopy2 = manager;
    selfCopy2 = self;
  }

  RecentsListViewController.acceptedContactActionsManager(_:didRecordRecentEvent:)(selfCopy2);

  outlined destroy of CallControlsService?(v10, &_sypSgMd);
}

- (void)acceptedContactActionsManager:(id)manager didCreateNewContact:(id)contact
{
  managerCopy = manager;
  contactCopy = contact;
  selfCopy = self;
  RecentsListViewController.acceptedContactActionsManager(_:didCreateNewContact:)();
}

- (void)acceptedContactActionsManagerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  RecentsListViewController.acceptedContactActionsManagerDidCancel(_:)();
}

- (void)dismissContactsModal
{
  selfCopy = self;
  RecentsListViewController.dismissContactsModal()();
}

@end