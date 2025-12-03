@interface _ComplicationCornerDynamicGaugeView
- (_TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView)initWithFontFallback:(int64_t)fallback;
- (void)handleGaugeProvider:(id)provider leftLabelProvider:(id)labelProvider rightLabelProvider:(id)rightLabelProvider;
@end

@implementation _ComplicationCornerDynamicGaugeView

- (void)handleGaugeProvider:(id)provider leftLabelProvider:(id)labelProvider rightLabelProvider:(id)rightLabelProvider
{
  providerCopy = provider;
  labelProviderCopy = labelProvider;
  rightLabelProviderCopy = rightLabelProvider;
  selfCopy = self;
  sub_243D90518(provider, labelProvider, rightLabelProvider);
}

- (_TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView)initWithFontFallback:(int64_t)fallback
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView_fillStyle) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _ComplicationCornerDynamicGaugeView();
  return [(CDRichComplicationCornerBaseGaugeView *)&v5 initWithFontFallback:fallback];
}

@end