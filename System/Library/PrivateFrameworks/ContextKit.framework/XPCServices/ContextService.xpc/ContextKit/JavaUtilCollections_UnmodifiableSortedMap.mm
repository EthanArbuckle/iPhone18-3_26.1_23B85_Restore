@interface JavaUtilCollections_UnmodifiableSortedMap
- (JavaUtilCollections_UnmodifiableSortedMap)initWithJavaUtilSortedMap:(id)map;
- (id)comparator;
- (id)firstKey;
- (id)headMapWithId:(id)id;
- (id)lastKey;
- (id)subMapWithId:(id)id withId:(id)withId;
- (id)tailMapWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableSortedMap

- (JavaUtilCollections_UnmodifiableSortedMap)initWithJavaUtilSortedMap:(id)map
{
  JreStrongAssign(&self->super.m_, map);
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

- (id)firstKey
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSortedMap *)sm firstKey];
}

- (id)headMapWithId:(id)id
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C241C([(JavaUtilSortedMap *)sm headMapWithId:id]);

  return v4;
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

- (id)subMapWithId:(id)id withId:(id)withId
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v5 = sub_1001C241C([(JavaUtilSortedMap *)sm subMapWithId:id withId:withId]);

  return v5;
}

- (id)tailMapWithId:(id)id
{
  sm = self->sm_;
  if (!sm)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001C241C([(JavaUtilSortedMap *)sm tailMapWithId:id]);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableSortedMap;
  [(JavaUtilCollections_UnmodifiableMap *)&v3 dealloc];
}

@end