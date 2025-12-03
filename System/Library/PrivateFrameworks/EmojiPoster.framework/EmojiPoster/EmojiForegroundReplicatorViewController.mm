@interface EmojiForegroundReplicatorViewController
- (_TtC11EmojiPoster39EmojiForegroundReplicatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)adjustScaleWithGesture:(id)gesture;
- (void)viewDidLoad;
@end

@implementation EmojiForegroundReplicatorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_249FEF084();
}

- (void)adjustScaleWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_249FEFC58(gestureCopy);
}

- (_TtC11EmojiPoster39EmojiForegroundReplicatorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_24A021698();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return EmojiForegroundReplicatorViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end