@interface JavaUtilCollections_CheckedMap_CheckedEntry
- (BOOL)isEqual:(id)a3;
- (id)getKey;
- (id)getValue;
- (id)setValueWithId:(id)a3;
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

- (id)setValueWithId:(id)a3
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(a3, self->valueType_);

  return [(JavaUtilMap_Entry *)e setValueWithId:a3];
}

- (BOOL)isEqual:(id)a3
{
  e = self->e_;
  if (!e)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)e isEqual:a3];
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