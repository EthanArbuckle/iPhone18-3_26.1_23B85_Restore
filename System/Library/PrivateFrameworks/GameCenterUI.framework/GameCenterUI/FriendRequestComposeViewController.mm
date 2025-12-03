@interface FriendRequestComposeViewController
- (_TtC12GameCenterUI34FriendRequestComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation FriendRequestComposeViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E240420(appear);
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E24055C(controllerCopy, result);
}

- (_TtC12GameCenterUI34FriendRequestComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  sub_24E240E30();
}

@end