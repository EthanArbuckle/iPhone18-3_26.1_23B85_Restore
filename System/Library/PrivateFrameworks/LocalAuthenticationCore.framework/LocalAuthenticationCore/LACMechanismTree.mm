@interface LACMechanismTree
+ (id)mechanismTreeFromError:(id)a3;
+ (id)mechanismTreeFromSerializedTree:(id)a3;
- (BOOL)isSatisfiableWithValue:(int64_t)a3;
- (BOOL)isValue:(int64_t)a3 replaceableByValue:(int64_t)a4;
- (BOOL)isValueRequired:(int64_t)a3;
- (LACMechanismTree)init;
- (LACMechanismTree)initWithChildren:(id)a3 isAndNode:(BOOL)a4;
- (LACMechanismTree)initWithValue:(int64_t)a3;
- (NSArray)children;
- (NSString)description;
@end

@implementation LACMechanismTree

- (NSArray)children
{
  v2 = *(self + OBJC_IVAR___LACMechanismTree_children);
  type metadata accessor for LACMechanismTree(self);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (LACMechanismTree)initWithChildren:(id)a3 isAndNode:(BOOL)a4
{
  type metadata accessor for LACMechanismTree(self);
  *(self + OBJC_IVAR___LACMechanismTree_children) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___LACMechanismTree_isAnd) = a4;
  *(self + OBJC_IVAR___LACMechanismTree_value) = -1;
  v7.receiver = self;
  v7.super_class = LACMechanismTree;
  return [(LACMechanismTree *)&v7 init];
}

- (LACMechanismTree)initWithValue:(int64_t)a3
{
  *(self + OBJC_IVAR___LACMechanismTree_children) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___LACMechanismTree_isAnd) = 0;
  *(self + OBJC_IVAR___LACMechanismTree_value) = a3;
  v4.receiver = self;
  v4.super_class = LACMechanismTree;
  return [(LACMechanismTree *)&v4 init];
}

- (NSString)description
{
  v2 = self;
  v3 = LACMechanismTree.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (BOOL)isSatisfiableWithValue:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = LACMechanismTree.isSatisfiable(withValue:)(a3);

  return a3 & 1;
}

- (BOOL)isValue:(int64_t)a3 replaceableByValue:(int64_t)a4
{
  v6 = self;
  LOBYTE(a4) = LACMechanismTree.isValue(_:replaceableByValue:)(a3, a4);

  return a4 & 1;
}

- (BOOL)isValueRequired:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = LACMechanismTree.isValueRequired(_:)(a3);

  return a3 & 1;
}

+ (id)mechanismTreeFromSerializedTree:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v8 = 0;
  v6 = static LACMechanismTree.parse(tree:index:)(v3, v5, &v8);

  return v6;
}

+ (id)mechanismTreeFromError:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static LACMechanismTree.make(from:)(a3);

  return v5;
}

- (LACMechanismTree)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end