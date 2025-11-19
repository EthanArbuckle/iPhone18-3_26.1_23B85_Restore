@interface FMPFSKScene
- (CGSize)size;
- (NSString)description;
- (_TtC11FMFindingUI11FMPFSKScene)init;
- (_TtC11FMFindingUI11FMPFSKScene)initWithSize:(CGSize)a3;
- (void)setSize:(CGSize)a3;
- (void)update:(double)a3;
@end

@implementation FMPFSKScene

- (NSString)description
{
  v2 = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)update:(double)a3
{
  v4 = self;
  sub_24A5D5650(a3);
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

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_24A5D602C(width, height);
}

- (_TtC11FMFindingUI11FMPFSKScene)initWithSize:(CGSize)a3
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