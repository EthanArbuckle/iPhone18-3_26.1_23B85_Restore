@interface ParticipantListViewController
- (_TtC15ConversationKit29ParticipantListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)accessibilityParticipantCollectionView;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ParticipantListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  ParticipantListViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ParticipantListViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  ParticipantListViewController.viewDidLayoutSubviews()();
}

- (id)accessibilityParticipantCollectionView
{
  v2 = ParticipantListViewController.accessibilityParticipantCollectionView()();

  return v2;
}

- (_TtC15ConversationKit29ParticipantListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ParticipantListViewController.init(nibName:bundle:)();
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
  ParticipantListViewController.collectionView(_:willDisplay:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  ParticipantListViewController.collectionView(_:didEndDisplaying:forItemAt:)();

  (*(v9 + 8))(v11, v8);
}

@end