@interface SliderView
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (int64_t)semanticContentAttribute;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)panGestureRecognized:(id)recognized;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation SliderView

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SliderView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(SliderView *)&v9 setSemanticContentAttribute:attribute];
  v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles10SliderView_stackView);
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [v7 setSemanticContentAttribute_];
}

- (void)layoutSubviews
{
  selfCopy = self;
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
  selfCopy = self;
  [v2 accessibilityFrame];
  MaxX = CGRectGetMaxX(v9);
  [(SliderView *)selfCopy accessibilityFrame];
  MidY = CGRectGetMidY(v10);

  v6 = MaxX;
  v7 = MidY;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)accessibilityIncrement
{
  selfCopy = self;
  sub_1D7D25A64();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_1D7D25B74();
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_1D7D25C90(recognizedCopy);
}

@end