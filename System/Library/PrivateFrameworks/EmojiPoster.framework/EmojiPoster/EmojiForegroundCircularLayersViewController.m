@interface EmojiForegroundCircularLayersViewController
- (_TtC11EmojiPoster43EmojiForegroundCircularLayersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation EmojiForegroundCircularLayersViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_249FE609C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  v4 = v5.receiver;
  [(EmojiForegroundCircularLayersViewController *)&v5 viewIsAppearing:v3];
  sub_249FE64E8();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmojiForegroundCircularLayersViewController();
  v2 = v3.receiver;
  [(EmojiForegroundCircularLayersViewController *)&v3 viewDidLayoutSubviews];
  sub_249FE6930();
}

- (_TtC11EmojiPoster43EmojiForegroundCircularLayersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end