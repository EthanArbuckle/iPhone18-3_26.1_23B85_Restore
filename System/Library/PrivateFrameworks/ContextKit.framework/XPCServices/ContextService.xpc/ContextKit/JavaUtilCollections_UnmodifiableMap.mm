@interface JavaUtilCollections_UnmodifiableMap
- (BOOL)containsKeyWithId:(id)id;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableMap

- (BOOL)containsKeyWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsKeyWithId:id];
}

- (BOOL)containsValueWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsValueWithId:id];
}

- (id)entrySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  entrySet = [(JavaUtilMap *)m entrySet];
  v4 = [JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet alloc];
  JreStrongAssign(&v4->super.super.c_, entrySet);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEqual:equal];
}

- (id)getWithId:(id)id
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m getWithId:id];
}

- (unint64_t)hash
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m hash];
}

- (BOOL)isEmpty
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEmpty];
}

- (id)keySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  keySet = [(JavaUtilMap *)m keySet];
  v4 = [JavaUtilCollections_UnmodifiableSet alloc];
  JreStrongAssign(&v4->super.c_, keySet);

  return v4;
}

- (int)size
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m size];
}

- (id)values
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  values = [(JavaUtilMap *)m values];
  v4 = [JavaUtilCollections_UnmodifiableCollection alloc];
  JreStrongAssign(&v4->c_, values);

  return v4;
}

- (NSString)description
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableMap;
  [(JavaUtilCollections_UnmodifiableMap *)&v3 dealloc];
}

@end