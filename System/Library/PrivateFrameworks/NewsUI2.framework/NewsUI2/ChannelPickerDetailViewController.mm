@interface ChannelPickerDetailViewController
- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissVC;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ChannelPickerDetailViewController

- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithCoder:(id)a3
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI233ChannelPickerDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2189D88C8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ChannelPickerDetailViewController *)&v4 viewDidAppear:v3];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ChannelPickerDetailViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_blueprintViewController] view];
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
  [(ChannelPickerDetailViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2189DA2F0();
}

- (void)dismissVC
{
  v2 = self;
  sub_2189D8E2C();
}

@end