@interface FMPFSKScene
- (CGSize)size;
- (NSString)description;
- (_TtC11FMFindingUI11FMPFSKScene)init;
- (_TtC11FMFindingUI11FMPFSKScene)initWithSize:(CGSize)size;
- (void)setSize:(CGSize)size;
- (void)update:(double)update;
@end

@implementation FMPFSKScene

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)update:(double)update
{
  selfCopy = self;
  sub_24A5D5650(update);
}

- (CGSize)size
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMPFSKScene();
  [(SKScene *)&v4 size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_24A5D602C(width, height);
}

- (_TtC11FMFindingUI11FMPFSKScene)initWithSize:(CGSize)size
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11FMFindingUI11FMPFSKScene)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end