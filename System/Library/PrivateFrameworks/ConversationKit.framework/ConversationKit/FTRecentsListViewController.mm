@interface FTRecentsListViewController
- (FTRecentsListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accessibilityCustomActionsForIndexPath:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)presentingViewControllerForAcceptedContactActionsManager:(id)a3 sourceView:(id *)a4 sourceRect:(CGRect *)a5;
- (void)acceptedContactActionsManager:(id)a3 didCreateNewContact:(id)a4;
- (void)acceptedContactActionsManager:(id)a3 didRecordRecentEvent:(id)a4;
- (void)acceptedContactActionsManagerDidCancel:(id)a3;
- (void)beginEditing;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configurationChanged;
- (void)deleteButtonAction:(id)a3;
- (void)didSelectAccessoryViewForLinkWithSender:(id)a3;
- (void)didSelectAccessoryViewForOngoingCallWithSender:(id)a3;
- (void)didSelectAccessoryViewForRecentCallWithSender:(id)a3;
- (void)didTapNewCallButton;
- (void)didTapNewLinkButtonFrom:(id)a3;
- (void)dismissCallFilteringOnboarding;
- (void)dismissContactsModal;
- (void)dismissMoreHelp;
- (void)enableCallFiltering;
- (void)endEditing;
- (void)handleNewFaceTimeMenuAction;
- (void)markAsReadButtonAction:(id)a3;
- (void)presentOnboardingViewController;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FTRecentsListViewController

- (void)viewDidLoad
{
  v2 = self;
  RecentsListViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  RecentsListViewController.viewWillAppear(_:)(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.scrollViewDidScroll(_:)(v4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  RecentsListViewController.viewWillLayoutSubviews()();
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  RecentsListViewController.collectionView(_:willDisplay:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  RecentsListViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  RecentsListViewController.viewWillDisappear(_:)(a3);
}

- (FTRecentsListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  RecentsListViewController.init(nibName:bundle:)();
}

- (id)accessibilityCustomActionsForIndexPath:(id)a3
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
  v2 = self;
  RecentsListViewController.handleNewFaceTimeMenuAction()();
}

- (void)didSelectAccessoryViewForOngoingCallWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.didSelectAccessoryViewForOngoingCall(sender:)(v4);
}

- (void)didSelectAccessoryViewForRecentCallWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.didSelectAccessoryViewForRecentCall(sender:)(v4);
}

- (void)didSelectAccessoryViewForLinkWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.didSelectAccessoryViewForLink(sender:)(v4);
}

- (void)didTapNewCallButton
{
  v2 = self;
  RecentsListViewController.didTapNewCallButton()();
}

- (void)didTapNewLinkButtonFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.didTapNewLinkButton(from:)(v4);
}

- (void)presentOnboardingViewController
{
  v2 = self;
  RecentsListViewController.presentOnboardingViewController()();
}

- (void)beginEditing
{
  v2 = self;
  RecentsListViewController.beginEditing()();
}

- (void)endEditing
{
  v2 = self;
  RecentsListViewController.endEditing()();
}

- (void)enableCallFiltering
{
  v2 = self;
  RecentsListViewController.enableCallFiltering()();
}

- (void)dismissCallFilteringOnboarding
{
  v2 = self;
  RecentsListViewController.dismissCallFilteringOnboarding()();
}

- (void)configurationChanged
{
  v2 = self;
  RecentsListViewController.configurationChanged()();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  RecentsListViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  RecentsListViewController.collectionView(_:didDeselectItemAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  RecentsListViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v10 = RecentsListViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v9);

  return v10;
}

- (void)dismissMoreHelp
{
  v2 = self;
  RecentsListViewController.dismissMoreHelp()();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  RecentsListViewController.setEditing(_:animated:)(a3, a4);
}

- (void)deleteButtonAction:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.deleteButtonAction(_:)(v4);
}

- (void)markAsReadButtonAction:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.markAsReadButtonAction(_:)();
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.scrollViewWillBeginDragging(_:)(v5);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.scrollViewDidEndDecelerating(_:)(v5);
}

- (id)presentingViewControllerForAcceptedContactActionsManager:(id)a3 sourceView:(id *)a4 sourceRect:(CGRect *)a5
{
  v7 = a3;
  v8 = self;
  v9 = RecentsListViewController.presentingViewController(for:sourceView:sourceRect:)(v8, a4);

  return v9;
}

- (void)acceptedContactActionsManager:(id)a3 didRecordRecentEvent:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = a3;
    v8 = self;
  }

  RecentsListViewController.acceptedContactActionsManager(_:didRecordRecentEvent:)(v8);

  outlined destroy of CallControlsService?(v10, &_sypSgMd);
}

- (void)acceptedContactActionsManager:(id)a3 didCreateNewContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RecentsListViewController.acceptedContactActionsManager(_:didCreateNewContact:)();
}

- (void)acceptedContactActionsManagerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  RecentsListViewController.acceptedContactActionsManagerDidCancel(_:)();
}

- (void)dismissContactsModal
{
  v2 = self;
  RecentsListViewController.dismissContactsModal()();
}

@end