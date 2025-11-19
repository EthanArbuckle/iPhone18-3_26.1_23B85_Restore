@interface SponsoredHeaderViewController
- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4;
- (void)viewDidLoad;
@end

@implementation SponsoredHeaderViewController

- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_headerDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SponsoredHeaderViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = self;
  sub_1D7AF5678(width, height);
  v10 = v9;

  return v10;
}

- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end