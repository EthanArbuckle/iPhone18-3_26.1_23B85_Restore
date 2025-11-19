@interface PeoplePickerViewController
- (_TtC15ConversationKit26PeoplePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)menuForPillView:(id)a3;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (id)searchController:(id)a3 contextMenuConfigurationForRecipient:(id)a4;
- (id)searchController:(id)a3 preferredRecipientForRecipient:(id)a4;
- (id)searchController:(id)a3 tintColorForRecipient:(id)a4;
- (unint64_t)searchController:(id)a3 presentationOptionsForRecipient:(id)a4;
- (void)cancelButtonTapped;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4;
- (void)handleIDSStatusChangedWithNotification:(id)a3;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)providersChangedForProviderManager:(id)a3;
- (void)searchController:(id)a3 didAddRecipient:(id)a4;
- (void)searchController:(id)a3 didEndDisplayingRowForRecipient:(id)a4;
- (void)searchController:(id)a3 didRemoveRecipient:(id)a4;
- (void)searchController:(id)a3 didTapTableAccessoryForRecipient:(id)a4;
- (void)searchController:(id)a3 willDisplayRowForRecipient:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissViewAnimated:(BOOL)a3;
@end

@implementation PeoplePickerViewController

- (_TtC15ConversationKit26PeoplePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  PeoplePickerViewController.init(nibName:bundle:)();
}

- (void)viewDidLoad
{
  v2 = self;
  PeoplePickerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  PeoplePickerViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  PeoplePickerViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  PeoplePickerViewController.viewDidDisappear(_:)(a3);
}

- (void)willDismissViewAnimated:(BOOL)a3
{
  v4 = self;
  PeoplePickerViewController.willDismissViewAnimated(_:)(a3);
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.pressesBegan(_:with:)(v6, a4);
}

- (void)handleIDSStatusChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerViewController.handleIDSStatusChanged(notification:)();
}

- (void)cancelButtonTapped
{
  v2 = self;
  PeoplePickerViewController.cancelButtonTapped()();
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerViewController.providersChanged(for:)(v4);
}

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  v8 = PeoplePickerViewController.searchController(_:composeRecipientForAddress:)();

  return v8;
}

- (void)searchController:(id)a3 didAddRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:didAdd:)(v8, v7);
}

- (void)searchController:(id)a3 didRemoveRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:didRemove:)(v8, v7);
}

- (void)searchController:(id)a3 willDisplayRowForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:willDisplayRowFor:)(v8, v7);
}

- (void)searchController:(id)a3 didEndDisplayingRowForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:didEndDisplayingRowFor:)(v8, v7);
}

- (id)searchController:(id)a3 preferredRecipientForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:preferredRecipientFor:)(v8, v7);
  v10 = v9;

  return v10;
}

- (id)searchController:(id)a3 tintColorForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:tintColorFor:)(v8, v7);
  v10 = v9;

  return v10;
}

- (unint64_t)searchController:(id)a3 presentationOptionsForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:presentationOptionsFor:)(v8, v7);
  v10 = v9;

  return v10;
}

- (void)searchController:(id)a3 didTapTableAccessoryForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:didTapTableAccessoryFor:)(v8, v7);
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.didTapTextViewAccessoryButton(for:anchoredTo:)(v8, v7);
}

- (id)searchController:(id)a3 contextMenuConfigurationForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PeoplePickerViewController.searchController(_:contextMenuConfigurationFor:)(v6, v7);

  return 0;
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  PeoplePickerViewController.messageComposeViewController(_:didFinishWith:)(v6, a4);
}

- (id)menuForPillView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PeoplePickerViewController.menu(for:)();

  return v6;
}

@end