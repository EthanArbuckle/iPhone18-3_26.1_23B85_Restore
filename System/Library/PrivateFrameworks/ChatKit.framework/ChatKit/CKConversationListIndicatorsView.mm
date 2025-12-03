@interface CKConversationListIndicatorsView
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)verticalOffsetForCenteringVisibleIndicators;
- (double)widthForVisibleIndicators;
- (double)xOriginForCenteringWithTrailingSlot;
- (int64_t)orientation;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIsHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation;
@end

@implementation CKConversationListIndicatorsView

- (void)setOrientation:(int64_t)orientation
{
  v5 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = orientation;
  if (v6 != orientation)
  {
    selfCopy = self;
    [(CKConversationListIndicatorsView *)selfCopy setNeedsLayout];
    [(CKConversationListIndicatorsView *)selfCopy layoutIfNeeded];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_190242A94();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)xOriginForCenteringWithTrailingSlot
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (v4 >> 62)
  {
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v5 + -0.5) * 18.0;
}

- (double)verticalOffsetForCenteringVisibleIndicators
{
  selfCopy = self;
  sub_190242D00();
  v4 = v3;

  return v4;
}

- (double)widthForVisibleIndicators
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  sub_190D52690();

  return v4 * 18.0;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190242FE8();
}

- (int64_t)orientation
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)isHighlighted
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_190C0D600(highlighted);
}

- (CGSize)intrinsicContentSize
{
  [(CKConversationListIndicatorsView *)self sizeThatFits:0.0, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForReuse
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration) = 0;
  selfCopy = self;
  sub_19023EF88(v2, 0);
}

@end