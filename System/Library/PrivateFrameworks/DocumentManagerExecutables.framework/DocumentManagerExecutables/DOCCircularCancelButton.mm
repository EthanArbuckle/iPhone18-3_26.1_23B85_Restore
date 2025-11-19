@interface DOCCircularCancelButton
- (BOOL)translatesAutoresizingMaskIntoConstraints;
- (_TtC26DocumentManagerExecutables23DOCCircularCancelButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
@end

@implementation DOCCircularCancelButton

- (BOOL)translatesAutoresizingMaskIntoConstraints
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCCircularCancelButton();
  return [(DOCCircularCancelButton *)&v3 translatesAutoresizingMaskIntoConstraints];
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCircularCancelButton();
  [(DOCCircularCancelButton *)&v4 setTranslatesAutoresizingMaskIntoConstraints:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = specialized DOCCircularCancelButton.hitTest(_:with:)(x, y);

  return v9;
}

- (_TtC26DocumentManagerExecutables23DOCCircularCancelButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end