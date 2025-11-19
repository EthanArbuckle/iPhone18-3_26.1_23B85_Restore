@interface CKTapbackPickerBalloonDisplayConfiguration
- (BOOL)isWidthConstrained;
- (BOOL)wantsBottomTail;
- (BOOL)wantsRightTail;
- (CGSize)pickerPillPreferredContentSize;
- (CKTapbackPickerBalloonDisplayConfiguration)init;
- (double)horizontalMarginBetweenBubbleAndEmojiTail;
- (double)sourceX;
- (void)setHorizontalMarginBetweenBubbleAndEmojiTail:(double)a3;
- (void)setIsWidthConstrained:(BOOL)a3;
- (void)setPickerPillPreferredContentSize:(CGSize)a3;
- (void)setSourceX:(double)a3;
- (void)setWantsBottomTail:(BOOL)a3;
- (void)setWantsRightTail:(BOOL)a3;
@end

@implementation CKTapbackPickerBalloonDisplayConfiguration

- (double)sourceX
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSourceX:(double)a3
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)wantsRightTail
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWantsRightTail:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)wantsBottomTail
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWantsBottomTail:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isWidthConstrained
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsWidthConstrained:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)horizontalMarginBetweenBubbleAndEmojiTail
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHorizontalMarginBetweenBubbleAndEmojiTail:(double)a3
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CGSize)pickerPillPreferredContentSize
{
  v2 = (self + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPickerPillPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (CKTapbackPickerBalloonDisplayConfiguration)init
{
  *(&self->super.isa + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX) = 0;
  *(&self->super.isa + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail) = 0;
  *(&self->super.isa + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail) = 1;
  *(&self->super.isa + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained) = 0;
  *(&self->super.isa + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail) = 0;
  v3 = (&self->super.isa + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize);
  v4 = type metadata accessor for TapbackPickerBalloonDisplayConfiguration();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CKTapbackPickerBalloonDisplayConfiguration *)&v6 init];
}

@end