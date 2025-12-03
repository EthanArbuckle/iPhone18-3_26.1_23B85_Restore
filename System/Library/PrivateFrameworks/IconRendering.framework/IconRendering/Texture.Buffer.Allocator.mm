@interface Texture.Buffer.Allocator
- (_TtCCV13IconRendering7Texture6Buffer9Allocator)init;
- (id)newBufferWithLength:(unint64_t)length;
@end

@implementation Texture.Buffer.Allocator

- (id)newBufferWithLength:(unint64_t)length
{
  selfCopy = self;
  v5 = sub_1B161561C(length);

  return v5;
}

- (_TtCCV13IconRendering7Texture6Buffer9Allocator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end