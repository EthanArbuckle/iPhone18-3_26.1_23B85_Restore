@interface LACMechanismTree
+ (id)mechanismTreeFromError:(id)error;
+ (id)mechanismTreeFromSerializedTree:(id)tree;
- (BOOL)isSatisfiableWithValue:(int64_t)value;
- (BOOL)isValue:(int64_t)value replaceableByValue:(int64_t)byValue;
- (BOOL)isValueRequired:(int64_t)required;
- (LACMechanismTree)init;
- (LACMechanismTree)initWithChildren:(id)children isAndNode:(BOOL)node;
- (LACMechanismTree)initWithValue:(int64_t)value;
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

- (LACMechanismTree)initWithChildren:(id)children isAndNode:(BOOL)node
{
  type metadata accessor for LACMechanismTree(self);
  *(self + OBJC_IVAR___LACMechanismTree_children) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___LACMechanismTree_isAnd) = node;
  *(self + OBJC_IVAR___LACMechanismTree_value) = -1;
  v7.receiver = self;
  v7.super_class = LACMechanismTree;
  return [(LACMechanismTree *)&v7 init];
}

- (LACMechanismTree)initWithValue:(int64_t)value
{
  *(self + OBJC_IVAR___LACMechanismTree_children) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___LACMechanismTree_isAnd) = 0;
  *(self + OBJC_IVAR___LACMechanismTree_value) = value;
  v4.receiver = self;
  v4.super_class = LACMechanismTree;
  return [(LACMechanismTree *)&v4 init];
}

- (NSString)description
{
  selfCopy = self;
  v3 = LACMechanismTree.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (BOOL)isSatisfiableWithValue:(int64_t)value
{
  selfCopy = self;
  LOBYTE(value) = LACMechanismTree.isSatisfiable(withValue:)(value);

  return value & 1;
}

- (BOOL)isValue:(int64_t)value replaceableByValue:(int64_t)byValue
{
  selfCopy = self;
  LOBYTE(byValue) = LACMechanismTree.isValue(_:replaceableByValue:)(value, byValue);

  return byValue & 1;
}

- (BOOL)isValueRequired:(int64_t)required
{
  selfCopy = self;
  LOBYTE(required) = LACMechanismTree.isValueRequired(_:)(required);

  return required & 1;
}

+ (id)mechanismTreeFromSerializedTree:(id)tree
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v8 = 0;
  v6 = static LACMechanismTree.parse(tree:index:)(v3, v5, &v8);

  return v6;
}

+ (id)mechanismTreeFromError:(id)error
{
  swift_getObjCClassMetadata();
  errorCopy = error;
  v5 = static LACMechanismTree.make(from:)(error);

  return v5;
}

- (LACMechanismTree)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end