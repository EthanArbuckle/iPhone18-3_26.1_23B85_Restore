@interface SharedWithYouHeaderViewController
- (_TtC12NewsArticles33SharedWithYouHeaderViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles33SharedWithYouHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4;
- (void)viewDidLoad;
@end

@implementation SharedWithYouHeaderViewController

- (_TtC12NewsArticles33SharedWithYouHeaderViewController)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_headerDelegate) = 0;
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
  [(SharedWithYouHeaderViewController *)&v5 viewDidLoad];
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
  width = a3.width;
  __swift_project_boxed_opaque_existential_1((&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_renderer), *(&self->super._view + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_renderer));
  v7 = a4;
  v8 = self;
  sub_1D7CF182C(v8, width);
  v9 = [(SharedWithYouHeaderViewController *)v8 view];
  if (v9)
  {
    v11 = v9;
    [v9 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v21.origin.x = v13;
    v21.origin.y = v15;
    v21.size.width = v17;
    v21.size.height = v19;
    Height = CGRectGetHeight(v21);

    return Height;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC12NewsArticles33SharedWithYouHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end