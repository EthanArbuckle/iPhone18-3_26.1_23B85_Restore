@interface RoundButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (_TtC16MagnifierSupport11RoundButton)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport11RoundButton)initWithFrame:(CGRect)frame;
@end

@implementation RoundButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  [(RoundButton *)&v8 menuAttachmentPointForConfiguration:configuration];
  v5 = v4 + 0.0;
  v7 = v6 + -20.0;
  result.y = v7;
  result.x = v5;
  return result;
}

- (_TtC16MagnifierSupport11RoundButton)initWithCoder:(id)coder
{
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport11RoundButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end