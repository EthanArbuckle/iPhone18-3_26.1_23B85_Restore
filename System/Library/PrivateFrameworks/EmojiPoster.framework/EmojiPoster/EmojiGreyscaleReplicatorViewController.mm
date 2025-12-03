@interface EmojiGreyscaleReplicatorViewController
- (_TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)adjustScaleWithGesture:(id)gesture;
- (void)viewDidLoad;
@end

@implementation EmojiGreyscaleReplicatorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24A01D410();
}

- (void)adjustScaleWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_24A01E354(gestureCopy);
}

- (_TtC11EmojiPoster38EmojiGreyscaleReplicatorViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return EmojiGreyscaleReplicatorViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end