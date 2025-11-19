@interface CAFUIDetailedDescriptionViewController
- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithCoder:(id)a3;
- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)textLayoutManager:(id)a3 textLayoutFragmentForLocation:(id)a4 inTextElement:(id)a5;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation CAFUIDetailedDescriptionViewController

- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_textView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI38CAFUIDetailedDescriptionViewController_imageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  CAFUIDetailedDescriptionViewController.viewIsAppearing(_:)(a3);
}

- (id)textLayoutManager:(id)a3 textLayoutFragmentForLocation:(id)a4 inTextElement:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  v11 = CAFUIDetailedDescriptionViewController.textLayoutManager(_:textLayoutFragmentFor:in:)(v8, a4, v9);

  swift_unknownObjectRelease();

  return v11;
}

- (_TtC5CAFUI38CAFUIDetailedDescriptionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end