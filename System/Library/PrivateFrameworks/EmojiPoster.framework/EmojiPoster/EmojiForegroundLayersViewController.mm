@interface EmojiForegroundLayersViewController
- (_TtC11EmojiPoster35EmojiForegroundLayersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation EmojiForegroundLayersViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmojiForegroundLayersViewController();
  v2 = v5.receiver;
  [(EmojiForegroundLayersViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC11EmojiPoster35EmojiForegroundLayersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end