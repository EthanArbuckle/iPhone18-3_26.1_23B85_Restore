@interface LinkDetailViewController
- (_TtC15ConversationKit24LinkDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didTapDeleteLinkButton;
- (void)didTapJoin;
- (void)viewDidLoad;
@end

@implementation LinkDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  LinkDetailViewController.viewDidLoad()();
}

- (_TtC15ConversationKit24LinkDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  LinkDetailViewController.init(nibName:bundle:)();
}

- (void)didTapDeleteLinkButton
{
  v2 = self;
  LinkDetailViewController.didTapDeleteLinkButton()();
}

- (void)didTapJoin
{
  v2 = self;
  LinkDetailViewController.didTapJoin()();
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
  LinkDetailViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

@end