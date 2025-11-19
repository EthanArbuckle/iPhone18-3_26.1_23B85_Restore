@interface InCallControlsCollectionViewController
- (_TtC15ConversationKit38InCallControlsCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)blockStatusDidUpdate;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didTapPTTLeaveChannelButton:(id)a3;
- (void)handleContentSizeCategoryDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation InCallControlsCollectionViewController

- (void)viewDidLoad
{
  v2 = self;
  InCallControlsCollectionViewController.viewDidLoad()();
}

- (void)blockStatusDidUpdate
{
  v2 = self;
  InCallControlsCollectionViewController.blockStatusDidUpdate()();
}

- (void)handleContentSizeCategoryDidChange:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
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
  v10 = self;
  InCallControlsCollectionViewController.handleContentSizeCategoryDidChange(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation12NotificationVSgMd);
}

- (_TtC15ConversationKit38InCallControlsCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  InCallControlsCollectionViewController.init(nibName:bundle:)();
}

- (void)didTapPTTLeaveChannelButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsCollectionViewController.didTapPTTLeaveChannelButton(_:)(v4);
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
  InCallControlsCollectionViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

@end