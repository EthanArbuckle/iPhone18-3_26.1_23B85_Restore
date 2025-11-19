@interface DOCSearchAppMenuButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIMenu)menu;
- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithFrame:(CGRect)a3;
- (void)setMenu:(id)a3;
@end

@implementation DOCSearchAppMenuButton

- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithCoder:(id)a3
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
  v2 = [(DOCSearchAppMenuButton *)&v4 menu];

  return v2;
}

- (void)setMenu:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSearchAppMenuButton();
  [(DOCSearchAppMenuButton *)&v4 setMenu:a3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultMetrics];
  v7 = [(DOCSearchAppMenuButton *)v5 traitCollection];
  [v6 scaledValueForValue:v7 compatibleWithTraitCollection:44.0];
  v9 = v8;

  v10 = v9;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC26DocumentManagerExecutables22DOCSearchAppMenuButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end