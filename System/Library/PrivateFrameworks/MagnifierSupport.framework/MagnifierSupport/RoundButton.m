@interface RoundButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (_TtC16MagnifierSupport11RoundButton)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport11RoundButton)initWithFrame:(CGRect)a3;
@end

@implementation RoundButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  [(RoundButton *)&v8 menuAttachmentPointForConfiguration:a3];
  v5 = v4 + 0.0;
  v7 = v6 + -20.0;
  result.y = v7;
  result.x = v5;
  return result;
}

- (_TtC16MagnifierSupport11RoundButton)initWithCoder:(id)a3
{
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport11RoundButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end