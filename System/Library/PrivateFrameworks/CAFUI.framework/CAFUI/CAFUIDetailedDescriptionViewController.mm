@interface CAFUIDetailedDescriptionViewController
- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithCoder:(id)coder;
- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)textLayoutManager:(id)manager textLayoutFragmentForLocation:(id)location inTextElement:(id)element;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CAFUIDetailedDescriptionViewController

- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_imageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  CAFUIDetailedDescriptionViewController.viewIsAppearing(_:)(appearing);
}

- (id)textLayoutManager:(id)manager textLayoutFragmentForLocation:(id)location inTextElement:(id)element
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  elementCopy = element;
  selfCopy = self;
  v11 = CAFUIDetailedDescriptionViewController.textLayoutManager(_:textLayoutFragmentFor:in:)(managerCopy, location, elementCopy);

  swift_unknownObjectRelease();

  return v11;
}

- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end