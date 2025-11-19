@interface EmojiForegroundSpiralLayersViewController
- (_TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation EmojiForegroundSpiralLayersViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_249FF1308();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  v4 = v5.receiver;
  [(EmojiForegroundSpiralLayersViewController *)&v5 viewIsAppearing:v3];
  sub_249FF1754();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  v2 = v3.receiver;
  [(EmojiForegroundSpiralLayersViewController *)&v3 viewDidLayoutSubviews];
  sub_249FF1BCC();
}

- (_TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end