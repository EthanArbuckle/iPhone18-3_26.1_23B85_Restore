@interface AudioFeedViewController
- (_TtC7NewsUI223AudioFeedViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI223AudioFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioFeedViewController

- (_TtC7NewsUI223AudioFeedViewController)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController____lazy_storage___audioControlBarButtonItem) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI223AudioFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2196D8100();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(AudioFeedViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_blueprintViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
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

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(AudioFeedViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2196DAEF8();
}

- (void)offlineStatusBannerRequestedForceReload
{
  selfCopy = self;
  sub_2196D8AE4();
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:1 dismissKeyboard:?];
}

@end