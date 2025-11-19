@interface FriendRequestComposeViewController
- (_TtC12GameCenterUI34FriendRequestComposeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation FriendRequestComposeViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E240420(a3);
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24E24055C(v6, a4);
}

- (_TtC12GameCenterUI34FriendRequestComposeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  sub_24E240E30();
}

@end