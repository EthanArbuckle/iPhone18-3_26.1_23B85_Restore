@interface AudioPlaylistFeedViewController
- (_TtC7NewsUI231AudioPlaylistFeedViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI231AudioPlaylistFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioPlaylistFeedViewController

- (_TtC7NewsUI231AudioPlaylistFeedViewController)initWithCoder:(id)a3
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI231AudioPlaylistFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219B89CC8();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(AudioPlaylistFeedViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_blueprintViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(AudioPlaylistFeedViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_219B8B7D0();
}

@end