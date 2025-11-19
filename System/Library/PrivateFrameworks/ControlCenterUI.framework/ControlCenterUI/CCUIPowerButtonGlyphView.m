@interface CCUIPowerButtonGlyphView
- (CCUIPowerButtonGlyphView)initWithCoder:(id)a3;
- (CCUIPowerButtonGlyphView)initWithFrame:(CGRect)a3;
- (CCUIPowerButtonGlyphView)initWithSymbolConfiguration:(id)a3;
- (void)layoutSubviews;
@end

@implementation CCUIPowerButtonGlyphView

- (void)layoutSubviews
{
  v2 = self;
  sub_21E9FA1A8();
}

- (CCUIPowerButtonGlyphView)initWithSymbolConfiguration:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for PowerButtonGlyphView());
  v5 = sub_21EA92644(a3, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (CCUIPowerButtonGlyphView)initWithCoder:(id)a3
{
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (CCUIPowerButtonGlyphView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end