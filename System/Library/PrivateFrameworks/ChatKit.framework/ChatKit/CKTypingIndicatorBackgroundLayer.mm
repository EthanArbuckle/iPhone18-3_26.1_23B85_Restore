@interface CKTypingIndicatorBackgroundLayer
- (_TtC7ChatKit32CKTypingIndicatorBackgroundLayer)initWithCoder:(id)a3;
- (void)layoutSublayers;
@end

@implementation CKTypingIndicatorBackgroundLayer

- (_TtC7ChatKit32CKTypingIndicatorBackgroundLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_backgroundLayer) = 0;
  v4 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_fillStyle;
  v5 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKTypingIndicatorBackgroundLayer(0);
  v2 = v5.receiver;
  [(CKTypingIndicatorBackgroundLayer *)&v5 layoutSublayers];
  v3 = *&v2[OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_backgroundLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

@end