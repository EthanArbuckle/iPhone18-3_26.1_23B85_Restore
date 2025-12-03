@interface CCUIPowerButtonGlyphView
- (CCUIPowerButtonGlyphView)initWithCoder:(id)coder;
- (CCUIPowerButtonGlyphView)initWithFrame:(CGRect)frame;
- (CCUIPowerButtonGlyphView)initWithSymbolConfiguration:(id)configuration;
- (void)layoutSubviews;
@end

@implementation CCUIPowerButtonGlyphView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21E9FA1A8();
}

- (CCUIPowerButtonGlyphView)initWithSymbolConfiguration:(id)configuration
{
  v4 = objc_allocWithZone(type metadata accessor for PowerButtonGlyphView());
  v5 = sub_21EA92644(configuration, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (CCUIPowerButtonGlyphView)initWithCoder:(id)coder
{
  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

- (CCUIPowerButtonGlyphView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end