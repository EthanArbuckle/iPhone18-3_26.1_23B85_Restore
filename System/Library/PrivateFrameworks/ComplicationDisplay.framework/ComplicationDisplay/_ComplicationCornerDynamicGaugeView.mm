@interface _ComplicationCornerDynamicGaugeView
- (_TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView)initWithFontFallback:(int64_t)a3;
- (void)handleGaugeProvider:(id)a3 leftLabelProvider:(id)a4 rightLabelProvider:(id)a5;
@end

@implementation _ComplicationCornerDynamicGaugeView

- (void)handleGaugeProvider:(id)a3 leftLabelProvider:(id)a4 rightLabelProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_243D90518(a3, a4, a5);
}

- (_TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView)initWithFontFallback:(int64_t)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView_fillStyle) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _ComplicationCornerDynamicGaugeView();
  return [(CDRichComplicationCornerBaseGaugeView *)&v5 initWithFontFallback:a3];
}

@end