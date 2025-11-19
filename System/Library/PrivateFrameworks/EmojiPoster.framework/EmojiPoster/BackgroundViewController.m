@interface BackgroundViewController
- (_TtC11EmojiPoster24BackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BackgroundViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24A01C870();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for BackgroundViewController();
  v2 = v14.receiver;
  [(BackgroundViewController *)&v14 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11EmojiPoster24BackgroundViewController_dimmingLayer];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC11EmojiPoster24BackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return BackgroundViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end