@interface EDSearchableMessageCategoryUpdate
- (EDSearchableMessageCategoryUpdate)init;
- (EDSearchableMessageCategoryUpdate)initWithCategory:(id)category;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableMessageCategoryUpdate

- (EDSearchableMessageCategoryUpdate)initWithCategory:(id)category
{
  v3 = (&self->super.isa + OBJC_IVAR___EDSearchableMessageCategoryUpdate__underlying);
  v3[3] = &type metadata for SearchableMessageCategoryUpdate;
  *v3 = category;
  v6.receiver = self;
  v6.super_class = EDSearchableMessageCategoryUpdate;
  categoryCopy = category;
  return [(EDSearchableMessageCategoryUpdate *)&v6 init];
}

- (void)addToAttributes:(id)attributes
{
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageCategoryUpdate__underlying, v8);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  [attributesCopy setMailCategories_];
}

- (EDSearchableMessageCategoryUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end