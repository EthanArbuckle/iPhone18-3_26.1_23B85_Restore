@interface ParticipantListViewController
- (_TtC15ConversationKit29ParticipantListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accessibilityParticipantCollectionView;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ParticipantListViewController

- (void)viewDidLoad
{
  v2 = self;
  ParticipantListViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ParticipantListViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  ParticipantListViewController.viewDidLayoutSubviews()();
}

- (id)accessibilityParticipantCollectionView
{
  v2 = ParticipantListViewController.accessibilityParticipantCollectionView()();

  return v2;
}

- (_TtC15ConversationKit29ParticipantListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ParticipantListViewController.init(nibName:bundle:)();
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
  ParticipantListViewController.collectionView(_:willDisplay:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  ParticipantListViewController.collectionView(_:didEndDisplaying:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

@end