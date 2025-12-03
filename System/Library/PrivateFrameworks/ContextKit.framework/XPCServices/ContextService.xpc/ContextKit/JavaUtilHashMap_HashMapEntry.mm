@interface JavaUtilHashMap_HashMapEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilHashMap_HashMapEntry)initWithId:(id)id withId:(id)withId withInt:(int)int withJavaUtilHashMap_HashMapEntry:(id)entry;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilHashMap_HashMapEntry

- (JavaUtilHashMap_HashMapEntry)initWithId:(id)id withId:(id)withId withInt:(int)int withJavaUtilHashMap_HashMapEntry:(id)entry
{
  JreStrongAssign(&self->key_, id);
  JreStrongAssign(&self->value_, withId);
  self->hash__ = int;
  JreStrongAssign(&self->next_, entry);
  return self;
}

- (id)setValueWithId:(id)id
{
  value = self->value_;
  JreStrongAssign(&self->value_, id);
  return value;
}

- (BOOL)isEqual:(id)equal
{
  if (![JavaUtilMap_Entry_class_() isInstance:equal])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_([equal getKey], self->key_))
  {
    return 0;
  }

  getValue = [equal getValue];
  value = self->value_;

  return LibcoreUtilObjects_equalWithId_withId_(getValue, value);
}

- (unint64_t)hash
{
  key = self->key_;
  if (key)
  {
    v4 = [key hash];
  }

  else
  {
    v4 = 0;
  }

  value = self->value_;
  if (value)
  {
    LODWORD(value) = [value hash];
  }

  return (value ^ v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap_HashMapEntry;
  [(JavaUtilHashMap_HashMapEntry *)&v3 dealloc];
}

@end