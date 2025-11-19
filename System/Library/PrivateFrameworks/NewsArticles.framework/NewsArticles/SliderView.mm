@interface SliderView
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (int64_t)semanticContentAttribute;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)panGestureRecognized:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
@end

@implementation SliderView

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SliderView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  [(SliderView *)&v9 setSemanticContentAttribute:a3];
  v7 = *(&v6->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles10SliderView_stackView);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  [v7 setSemanticContentAttribute_];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7D25864();
}

- (NSString)accessibilityValue
{
  sub_1D7D3096C();
  v2 = sub_1D7D3031C();

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles10SliderView_elapsedTrack);
  v3 = self;
  [v2 accessibilityFrame];
  MaxX = CGRectGetMaxX(v9);
  [(SliderView *)v3 accessibilityFrame];
  MidY = CGRectGetMidY(v10);

  v6 = MaxX;
  v7 = MidY;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_1D7D25A64();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_1D7D25B74();
}

- (void)panGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7D25C90(v4);
}

@end