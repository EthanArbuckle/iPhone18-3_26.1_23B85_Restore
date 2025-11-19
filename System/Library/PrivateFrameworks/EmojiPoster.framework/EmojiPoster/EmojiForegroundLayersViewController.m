@interface EmojiForegroundLayersViewController
- (_TtC11EmojiPoster35EmojiForegroundLayersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation EmojiForegroundLayersViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmojiForegroundLayersViewController();
  v2 = v5.receiver;
  [(EmojiForegroundLayersViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC11EmojiPoster35EmojiForegroundLayersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end