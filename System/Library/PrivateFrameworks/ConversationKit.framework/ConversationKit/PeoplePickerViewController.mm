@interface PeoplePickerViewController
- (_TtC15ConversationKit26PeoplePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)menuForPillView:(id)view;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (id)searchController:(id)controller contextMenuConfigurationForRecipient:(id)recipient;
- (id)searchController:(id)controller preferredRecipientForRecipient:(id)recipient;
- (id)searchController:(id)controller tintColorForRecipient:(id)recipient;
- (unint64_t)searchController:(id)controller presentationOptionsForRecipient:(id)recipient;
- (void)cancelButtonTapped;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
- (void)handleIDSStatusChangedWithNotification:(id)notification;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)providersChangedForProviderManager:(id)manager;
- (void)searchController:(id)controller didAddRecipient:(id)recipient;
- (void)searchController:(id)controller didEndDisplayingRowForRecipient:(id)recipient;
- (void)searchController:(id)controller didRemoveRecipient:(id)recipient;
- (void)searchController:(id)controller didTapTableAccessoryForRecipient:(id)recipient;
- (void)searchController:(id)controller willDisplayRowForRecipient:(id)recipient;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissViewAnimated:(BOOL)animated;
@end

@implementation PeoplePickerViewController

- (_TtC15ConversationKit26PeoplePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  PeoplePickerViewController.init(nibName:bundle:)();
}

- (void)viewDidLoad
{
  selfCopy = self;
  PeoplePickerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  PeoplePickerViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  PeoplePickerViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  PeoplePickerViewController.viewDidDisappear(_:)(disappear);
}

- (void)willDismissViewAnimated:(BOOL)animated
{
  selfCopy = self;
  PeoplePickerViewController.willDismissViewAnimated(_:)(animated);
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  PeoplePickerViewController.pressesBegan(_:with:)(v6, event);
}

- (void)handleIDSStatusChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  PeoplePickerViewController.handleIDSStatusChanged(notification:)();
}

- (void)cancelButtonTapped
{
  selfCopy = self;
  PeoplePickerViewController.cancelButtonTapped()();
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  PeoplePickerViewController.providersChanged(for:)(managerCopy);
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  v8 = PeoplePickerViewController.searchController(_:composeRecipientForAddress:)();

  return v8;
}

- (void)searchController:(id)controller didAddRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:didAdd:)(selfCopy, recipientCopy);
}

- (void)searchController:(id)controller didRemoveRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:didRemove:)(selfCopy, recipientCopy);
}

- (void)searchController:(id)controller willDisplayRowForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:willDisplayRowFor:)(selfCopy, recipientCopy);
}

- (void)searchController:(id)controller didEndDisplayingRowForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:didEndDisplayingRowFor:)(selfCopy, recipientCopy);
}

- (id)searchController:(id)controller preferredRecipientForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:preferredRecipientFor:)(selfCopy, recipientCopy);
  v10 = v9;

  return v10;
}

- (id)searchController:(id)controller tintColorForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:tintColorFor:)(selfCopy, recipientCopy);
  v10 = v9;

  return v10;
}

- (unint64_t)searchController:(id)controller presentationOptionsForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:presentationOptionsFor:)(selfCopy, recipientCopy);
  v10 = v9;

  return v10;
}

- (void)searchController:(id)controller didTapTableAccessoryForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:didTapTableAccessoryFor:)(selfCopy, recipientCopy);
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  PeoplePickerViewController.didTapTextViewAccessoryButton(for:anchoredTo:)(selfCopy, viewCopy);
}

- (id)searchController:(id)controller contextMenuConfigurationForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  PeoplePickerViewController.searchController(_:contextMenuConfigurationFor:)(controllerCopy, recipientCopy);

  return 0;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  PeoplePickerViewController.messageComposeViewController(_:didFinishWith:)(controllerCopy, result);
}

- (id)menuForPillView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = PeoplePickerViewController.menu(for:)();

  return v6;
}

@end