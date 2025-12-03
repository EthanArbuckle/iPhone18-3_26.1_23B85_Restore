@interface ShareViewController
- (_TtC15ConversationKit19ShareViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ShareViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ShareViewController.viewDidAppear(_:)(appear);
}

- (_TtC15ConversationKit19ShareViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return ShareViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end