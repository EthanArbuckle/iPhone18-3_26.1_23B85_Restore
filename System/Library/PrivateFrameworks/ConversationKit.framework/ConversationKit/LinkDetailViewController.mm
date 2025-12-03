@interface LinkDetailViewController
- (_TtC15ConversationKit24LinkDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didTapDeleteLinkButton;
- (void)didTapJoin;
- (void)viewDidLoad;
@end

@implementation LinkDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  LinkDetailViewController.viewDidLoad()();
}

- (_TtC15ConversationKit24LinkDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  LinkDetailViewController.init(nibName:bundle:)();
}

- (void)didTapDeleteLinkButton
{
  selfCopy = self;
  LinkDetailViewController.didTapDeleteLinkButton()();
}

- (void)didTapJoin
{
  selfCopy = self;
  LinkDetailViewController.didTapJoin()();
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
  LinkDetailViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

@end