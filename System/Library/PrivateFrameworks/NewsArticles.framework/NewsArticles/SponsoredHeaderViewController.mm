@interface SponsoredHeaderViewController
- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection;
- (void)viewDidLoad;
@end

@implementation SponsoredHeaderViewController

- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithCoder:(id)coder
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view addSubview_];
  }

  else
  {
    __break(1u);
  }
}

- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  selfCopy = self;
  sub_1D7AF5678(width, height);
  v10 = v9;

  return v10;
}

- (_TtC12NewsArticles29SponsoredHeaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end