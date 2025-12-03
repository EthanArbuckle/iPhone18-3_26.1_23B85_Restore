@interface InCallControlsCollectionViewController
- (_TtC15ConversationKit38InCallControlsCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)blockStatusDidUpdate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didTapPTTLeaveChannelButton:(id)button;
- (void)handleContentSizeCategoryDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation InCallControlsCollectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  InCallControlsCollectionViewController.viewDidLoad()();
}

- (void)blockStatusDidUpdate
{
  selfCopy = self;
  InCallControlsCollectionViewController.blockStatusDidUpdate()();
}

- (void)handleContentSizeCategoryDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (change)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Notification();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  InCallControlsCollectionViewController.handleContentSizeCategoryDidChange(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation12NotificationVSgMd);
}

- (_TtC15ConversationKit38InCallControlsCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  InCallControlsCollectionViewController.init(nibName:bundle:)();
}

- (void)didTapPTTLeaveChannelButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsCollectionViewController.didTapPTTLeaveChannelButton(_:)(buttonCopy);
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
  InCallControlsCollectionViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

@end