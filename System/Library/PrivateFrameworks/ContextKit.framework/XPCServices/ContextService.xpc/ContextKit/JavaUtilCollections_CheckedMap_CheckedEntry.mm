@interface JavaUtilCollections_CheckedMap_CheckedEntry
- (BOOL)isEqual:(id)equal;
- (id)getKey;
- (id)getValue;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedMap_CheckedEntry

- (id)getKey
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)e getKey];
}

- (id)getValue
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)e getValue];
}

- (id)setValueWithId:(id)id
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->valueType_);

  return [(JavaUtilMap_Entry *)e setValueWithId:id];
}

- (BOOL)isEqual:(id)equal
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)e isEqual:equal];
}

- (unint64_t)hash
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)e hash];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap_CheckedEntry;
  [(JavaUtilCollections_CheckedMap_CheckedEntry *)&v3 dealloc];
}

@end