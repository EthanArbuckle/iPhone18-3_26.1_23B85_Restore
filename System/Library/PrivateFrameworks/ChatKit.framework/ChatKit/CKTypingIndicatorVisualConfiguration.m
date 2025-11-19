@interface CKTypingIndicatorVisualConfiguration
- (CGPoint)largeBubbleAnchorPoint;
- (CGPoint)largeBubbleGrowOffset;
- (CGPoint)mediumBubbleGrowOffset;
- (CGPoint)smallBubbleGrowOffset;
- (CGPoint)thinkingDotsOffset;
- (CGRect)iconImageFrame;
- (CGRect)iconImageSquareFrame;
- (CGRect)largeBubbleFrame;
- (CGRect)mediumBubbleFrame;
- (CGRect)smallBubbleFrame;
- (CGSize)defaultSize;
- (_TtC7ChatKit36CKTypingIndicatorVisualConfiguration)init;
- (id)initWithDefaultSize:(double)a3 defaultBackgroundLayerOutset:(double)a4 defaultBubbleColor:(double)a5 defaultThinkingDotColor:(uint64_t)a6 defaultThinkingDotOpacity:(uint64_t)a7 defaultBubbleOpacity:(void *)a8 smallBubbleFrame:(void *)a9 smallBubbleGrowOffset:(double)a10 mediumBubbleFrame:(double)a11 mediumBubbleGrowOffset:(double)a12 largeBubbleFrame:(uint64_t)a13 largeBubbleGrowOffset:(uint64_t)a14 largeBubbleAnchorPoint:(uint64_t)a15 iconImageFrame:(uint64_t)a16 iconImageSquareFrame:(double)a17 iconImageTrailingSpace:(double)a18 thinkingDotsOffset:(double)a19 thinkingDotDiameter:(uint64_t)a20 thinkingDotSpace:(uint64_t)a21;
@end

@implementation CKTypingIndicatorVisualConfiguration

- (CGSize)defaultSize
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)smallBubbleFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame);
  v4 = *(&self->defaultSize.height + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame);
  v5 = *(&self->defaultBackgroundLayerOutset + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)smallBubbleGrowOffset
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)mediumBubbleFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame);
  v4 = *(&self->defaultSize.height + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame);
  v5 = *(&self->defaultBackgroundLayerOutset + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)mediumBubbleGrowOffset
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)largeBubbleFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame);
  v4 = *(&self->defaultSize.height + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame);
  v5 = *(&self->defaultBackgroundLayerOutset + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)largeBubbleGrowOffset
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)largeBubbleAnchorPoint
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)iconImageFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame);
  v4 = *(&self->defaultSize.height + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame);
  v5 = *(&self->defaultBackgroundLayerOutset + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)iconImageSquareFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame);
  v4 = *(&self->defaultSize.height + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame);
  v5 = *(&self->defaultBackgroundLayerOutset + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)thinkingDotsOffset
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset);
  v3 = *(&self->defaultSize.width + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)initWithDefaultSize:(double)a3 defaultBackgroundLayerOutset:(double)a4 defaultBubbleColor:(double)a5 defaultThinkingDotColor:(uint64_t)a6 defaultThinkingDotOpacity:(uint64_t)a7 defaultBubbleOpacity:(void *)a8 smallBubbleFrame:(void *)a9 smallBubbleGrowOffset:(double)a10 mediumBubbleFrame:(double)a11 mediumBubbleGrowOffset:(double)a12 largeBubbleFrame:(uint64_t)a13 largeBubbleGrowOffset:(uint64_t)a14 largeBubbleAnchorPoint:(uint64_t)a15 iconImageFrame:(uint64_t)a16 iconImageSquareFrame:(double)a17 iconImageTrailingSpace:(double)a18 thinkingDotsOffset:(double)a19 thinkingDotDiameter:(uint64_t)a20 thinkingDotSpace:(uint64_t)a21
{
  v43 = a8;
  v44 = a9;
  return sub_1908258E0(v43, v44, a1, a2, a3, a4, a5, a17, a18, a19, v45, v46, v47, v48, v49, v50, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

- (_TtC7ChatKit36CKTypingIndicatorVisualConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end