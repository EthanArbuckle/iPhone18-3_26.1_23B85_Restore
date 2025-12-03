@interface DOCCircularCancelButton
- (BOOL)translatesAutoresizingMaskIntoConstraints;
- (_TtC26DocumentManagerExecutables23DOCCircularCancelButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
@end

@implementation DOCCircularCancelButton

- (BOOL)translatesAutoresizingMaskIntoConstraints
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCCircularCancelButton();
  return [(DOCCircularCancelButton *)&v3 translatesAutoresizingMaskIntoConstraints];
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCircularCancelButton();
  [(DOCCircularCancelButton *)&v4 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v9 = specialized DOCCircularCancelButton.hitTest(_:with:)(x, y);

  return v9;
}

- (_TtC26DocumentManagerExecutables23DOCCircularCancelButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end