@interface TSNewsActivityData
+ (int64_t)convertToArticleTraitWithTrait:(int64_t)trait;
- (NSArray)traits;
- (NSString)description;
- (NSString)identifier;
- (TSNewsActivityData)init;
- (TSNewsActivityData)initWithActivity:(int64_t)activity identifier:(id)identifier;
- (TSNewsActivityData)initWithActivity:(int64_t)activity identifier:(id)identifier object:(id)object;
- (TSNewsActivityData)initWithActivity:(int64_t)activity identifier:(id)identifier object:(id)object traits:(id)traits;
- (id)object;
@end

@implementation TSNewsActivityData

- (TSNewsActivityData)initWithActivity:(int64_t)activity identifier:(id)identifier object:(id)object traits:(id)traits
{
  ObjectType = swift_getObjectType();
  v10 = sub_219BF5414();
  v12 = v11;
  sub_21870AD58();
  v13 = sub_219BF5924();
  *(self + OBJC_IVAR___TSNewsActivityData_activity) = activity;
  v14 = (self + OBJC_IVAR___TSNewsActivityData_identifier);
  *v14 = v10;
  v14[1] = v12;
  *(self + OBJC_IVAR___TSNewsActivityData_object) = object;
  *(self + OBJC_IVAR___TSNewsActivityData_traits) = v13;
  v16.receiver = self;
  v16.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(TSNewsActivityData *)&v16 init];
}

- (NSString)identifier
{

  v2 = sub_219BF53D4();

  return v2;
}

- (id)object
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSArray)traits
{
  sub_21870AD58();

  v2 = sub_219BF5904();

  return v2;
}

- (TSNewsActivityData)initWithActivity:(int64_t)activity identifier:(id)identifier
{
  sub_21870AD58();
  identifierCopy = identifier;
  v8 = sub_219BF5904();
  v9 = [(TSNewsActivityData *)self initWithActivity:activity identifier:identifierCopy object:0 traits:v8];

  return v9;
}

- (TSNewsActivityData)initWithActivity:(int64_t)activity identifier:(id)identifier object:(id)object
{
  ObjectType = swift_getObjectType();
  v9 = sub_219BF5414();
  *(self + OBJC_IVAR___TSNewsActivityData_activity) = activity;
  v10 = (self + OBJC_IVAR___TSNewsActivityData_identifier);
  *v10 = v9;
  v10[1] = v11;
  *(self + OBJC_IVAR___TSNewsActivityData_object) = object;
  *(self + OBJC_IVAR___TSNewsActivityData_traits) = MEMORY[0x277D84F90];
  v13.receiver = self;
  v13.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(TSNewsActivityData *)&v13 init];
}

+ (int64_t)convertToArticleTraitWithTrait:(int64_t)trait
{
  result = trait;
  if (trait >= 4)
  {
    result = sub_219BF7974();
    __break(1u);
  }

  return result;
}

- (TSNewsActivityData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  BridgedNewsActivityData.description.getter();

  v3 = sub_219BF53D4();

  return v3;
}

@end