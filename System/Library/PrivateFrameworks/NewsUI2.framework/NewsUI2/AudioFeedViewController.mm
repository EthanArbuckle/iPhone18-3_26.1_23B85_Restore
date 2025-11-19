@interface AudioFeedViewController
- (_TtC7NewsUI223AudioFeedViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI223AudioFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioFeedViewController

- (_TtC7NewsUI223AudioFeedViewController)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController____lazy_storage___audioControlBarButtonItem) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI223AudioFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2196D8100();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(AudioFeedViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_blueprintViewController] view];
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
  [(AudioFeedViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2196DAEF8();
}

- (void)offlineStatusBannerRequestedForceReload
{
  v2 = self;
  sub_2196D8AE4();
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:1 dismissKeyboard:?];
}

@end