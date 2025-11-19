@interface JavaUtilCollections_UnmodifiableMap
- (BOOL)containsKeyWithId:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)entrySet;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableMap

- (BOOL)containsKeyWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsKeyWithId:a3];
}

- (BOOL)containsValueWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsValueWithId:a3];
}

- (id)entrySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilMap *)m entrySet];
  v4 = [JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet alloc];
  JreStrongAssign(&v4->super.super.c_, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEqual:a3];
}

- (id)getWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m getWithId:a3];
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

  v3 = [(JavaUtilMap *)m keySet];
  v4 = [JavaUtilCollections_UnmodifiableSet alloc];
  JreStrongAssign(&v4->super.c_, v3);

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

  v3 = [(JavaUtilMap *)m values];
  v4 = [JavaUtilCollections_UnmodifiableCollection alloc];
  JreStrongAssign(&v4->c_, v3);

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