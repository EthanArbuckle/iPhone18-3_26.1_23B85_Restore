@interface EmojiForegroundReplicatorViewController
- (_TtC11EmojiPoster39EmojiForegroundReplicatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)adjustScaleWithGesture:(id)a3;
- (void)viewDidLoad;
@end

@implementation EmojiForegroundReplicatorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_249FEF084();
}

- (void)adjustScaleWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249FEFC58(v4);
}

- (_TtC11EmojiPoster39EmojiForegroundReplicatorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_24A021698();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return EmojiForegroundReplicatorViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end