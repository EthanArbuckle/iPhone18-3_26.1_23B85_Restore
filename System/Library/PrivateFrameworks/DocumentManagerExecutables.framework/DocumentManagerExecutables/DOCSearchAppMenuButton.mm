@interface DOCSearchAppMenuButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIMenu)menu;
- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithFrame:(CGRect)frame;
- (void)setMenu:(id)menu;
@end

@implementation DOCSearchAppMenuButton

- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIMenu)menu
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSearchAppMenuButton();
  menu = [(DOCSearchAppMenuButton *)&v4 menu];

  return menu;
}

- (void)setMenu:(id)menu
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSearchAppMenuButton();
  [(DOCSearchAppMenuButton *)&v4 setMenu:menu];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = objc_opt_self();
  selfCopy = self;
  defaultMetrics = [v4 defaultMetrics];
  traitCollection = [(DOCSearchAppMenuButton *)selfCopy traitCollection];
  [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:44.0];
  v9 = v8;

  v10 = v9;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end