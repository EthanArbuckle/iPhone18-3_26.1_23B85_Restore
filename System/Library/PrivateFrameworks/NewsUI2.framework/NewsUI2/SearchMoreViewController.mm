@interface SearchMoreViewController
- (_TtC7NewsUI224SearchMoreViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI224SearchMoreViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchMoreViewController

- (_TtC7NewsUI224SearchMoreViewController)initWithCoder:(id)a3
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI224SearchMoreViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219019490();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2190196B0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_219019880(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(SearchMoreViewController *)&v5 viewWillDisappear:v3];
  swift_getObjectType();
  sub_219BE7534();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(SearchMoreViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_21901AD94();
}

@end