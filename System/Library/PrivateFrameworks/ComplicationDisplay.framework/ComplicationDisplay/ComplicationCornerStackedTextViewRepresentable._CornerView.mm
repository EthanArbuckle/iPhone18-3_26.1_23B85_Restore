@interface ComplicationCornerStackedTextViewRepresentable._CornerView
- (_TtCV19ComplicationDisplay46ComplicationCornerStackedTextViewRepresentable11_CornerView)initWithFontFallback:(int64_t)fallback;
- (void)layoutSubviews;
@end

@implementation ComplicationCornerStackedTextViewRepresentable._CornerView

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_243D9FA9C;
  *(v5 + 24) = v4;
  v8[4] = sub_243D90D1C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_243DA5F3C;
  v8[3] = &block_descriptor_2;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtCV19ComplicationDisplay46ComplicationCornerStackedTextViewRepresentable11_CornerView)initWithFontFallback:(int64_t)fallback
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView();
  return [(CDRichComplicationCornerStackedTextView *)&v5 initWithFontFallback:fallback];
}

@end