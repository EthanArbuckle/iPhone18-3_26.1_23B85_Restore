@interface ChannelPickerDetailViewController
- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissVC;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ChannelPickerDetailViewController

- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithCoder:(id)coder
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2189D88C8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ChannelPickerDetailViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ChannelPickerDetailViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_blueprintViewController] view];
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
  [(ChannelPickerDetailViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2189DA2F0();
}

- (void)dismissVC
{
  selfCopy = self;
  sub_2189D8E2C();
}

@end