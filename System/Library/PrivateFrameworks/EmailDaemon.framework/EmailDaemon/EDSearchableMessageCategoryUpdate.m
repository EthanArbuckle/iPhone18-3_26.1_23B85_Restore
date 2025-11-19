@interface EDSearchableMessageCategoryUpdate
- (EDSearchableMessageCategoryUpdate)init;
- (EDSearchableMessageCategoryUpdate)initWithCategory:(id)a3;
- (void)addToAttributes:(id)a3;
@end

@implementation EDSearchableMessageCategoryUpdate

- (EDSearchableMessageCategoryUpdate)initWithCategory:(id)a3
{
  v3 = (&self->super.isa + OBJC_IVAR___EDSearchableMessageCategoryUpdate__underlying);
  v3[3] = &type metadata for SearchableMessageCategoryUpdate;
  *v3 = a3;
  v6.receiver = self;
  v6.super_class = EDSearchableMessageCategoryUpdate;
  v4 = a3;
  return [(EDSearchableMessageCategoryUpdate *)&v6 init];
}

- (void)addToAttributes:(id)a3
{
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageCategoryUpdate__underlying, v8);
  v5 = a3;
  v6 = self;
  swift_dynamicCast();
  [v5 setMailCategories_];
}

- (EDSearchableMessageCategoryUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end