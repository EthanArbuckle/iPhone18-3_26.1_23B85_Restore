@interface JavaUtilCollections_CheckedSortedMap
- (JavaUtilCollections_CheckedSortedMap)initWithJavaUtilSortedMap:(id)map withIOSClass:(id)class withIOSClass:(id)sClass;
- (id)comparator;
- (id)firstKey;
- (id)headMapWithId:(id)id;
- (id)lastKey;
- (id)subMapWithId:(id)id withId:(id)withId;
- (id)tailMapWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedSortedMap

- (JavaUtilCollections_CheckedSortedMap)initWithJavaUtilSortedMap:(id)map withIOSClass:(id)class withIOSClass:(id)sClass
{
  sub_1001C8940(&self->super.super.isa, map, class, sClass);
  JreStrongAssign(&self->sm_, map);
  return self;
}

- (id)comparator
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedMap *)sm comparator];
}

- (id)subMapWithId:(id)id withId:(id)withId
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1001C2680([(JavaUtilSortedMap *)sm subMapWithId:id withId:withId], self->super.keyType_, self->super.valueType_);

  return v6;
}

- (id)headMapWithId:(id)id
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C2680([(JavaUtilSortedMap *)sm headMapWithId:id], self->super.keyType_, self->super.valueType_);

  return v5;
}

- (id)tailMapWithId:(id)id
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C2680([(JavaUtilSortedMap *)sm tailMapWithId:id], self->super.keyType_, self->super.valueType_);

  return v5;
}

- (id)firstKey
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedMap *)sm firstKey];
}

- (id)lastKey
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedMap *)sm lastKey];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedSortedMap;
  [(JavaUtilCollections_CheckedMap *)&v3 dealloc];
}

@end