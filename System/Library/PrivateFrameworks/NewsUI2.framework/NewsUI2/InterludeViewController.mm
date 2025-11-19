@interface InterludeViewController
- (_TtC7NewsUI223InterludeViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI223InterludeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation InterludeViewController

- (_TtC7NewsUI223InterludeViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for InterludeContentView()) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI223InterludeViewController_animationContainer;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2199E9940();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(InterludeViewController *)&v3 viewDidLayoutSubviews];
  sub_218D485D4(*&v2[OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView]);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2199E9BA0(a3);
}

- (_TtC7NewsUI223InterludeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end