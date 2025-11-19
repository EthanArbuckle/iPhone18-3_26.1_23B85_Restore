@interface GDVUEntityClass
+ (id)animal;
+ (id)entity;
+ (id)person;
- (int64_t)hash;
@end

@implementation GDVUEntityClass

- (int64_t)hash
{
  v2 = self;
  v3 = GDVUEntityClass.hash.getter();

  return v3;
}

+ (id)person
{
  static GDVUEntityClass.person()();

  return v2;
}

+ (id)animal
{
  static GDVUEntityClass.animal()();

  return v2;
}

+ (id)entity
{
  static GDVUEntityClass.entity()();

  return v2;
}

@end