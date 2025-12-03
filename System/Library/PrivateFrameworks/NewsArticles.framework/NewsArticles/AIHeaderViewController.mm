@interface AIHeaderViewController
- (_TtC12NewsArticles22AIHeaderViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles22AIHeaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection;
- (void)viewDidLoad;
@end

@implementation AIHeaderViewController

- (_TtC12NewsArticles22AIHeaderViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_channelName);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles22AIHeaderViewController_headerDelegate) = 0;
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
  [(AIHeaderViewController *)&v5 viewDidLoad];
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
  width = size.width;
  collectionCopy = collection;
  selfCopy = self;
  sub_1D79D8370(width);
  v9 = v8;

  return v9;
}

- (_TtC12NewsArticles22AIHeaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end