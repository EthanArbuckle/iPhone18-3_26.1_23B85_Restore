@interface SharedWithYouFeedViewController
- (_TtC7NewsUI231SharedWithYouFeedViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI231SharedWithYouFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SharedWithYouFeedViewController

- (_TtC7NewsUI231SharedWithYouFeedViewController)initWithCoder:(id)coder
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI231SharedWithYouFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219146F2C();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(SharedWithYouFeedViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController] view];
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2191475C4(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_219147A60(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(SharedWithYouFeedViewController *)&v5 viewWillDisappear:disappearCopy];
  swift_getObjectType();
  sub_219BE7534();
  sub_219BE6AB4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(SharedWithYouFeedViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_219BE7864();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SharedWithYouFeedViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2191495D4();
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:?];
}

@end