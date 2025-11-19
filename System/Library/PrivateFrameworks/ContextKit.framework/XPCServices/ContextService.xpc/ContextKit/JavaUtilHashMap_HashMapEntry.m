@interface JavaUtilHashMap_HashMapEntry
- (BOOL)isEqual:(id)a3;
- (JavaUtilHashMap_HashMapEntry)initWithId:(id)a3 withId:(id)a4 withInt:(int)a5 withJavaUtilHashMap_HashMapEntry:(id)a6;
- (id)setValueWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilHashMap_HashMapEntry

- (JavaUtilHashMap_HashMapEntry)initWithId:(id)a3 withId:(id)a4 withInt:(int)a5 withJavaUtilHashMap_HashMapEntry:(id)a6
{
  JreStrongAssign(&self->key_, a3);
  JreStrongAssign(&self->value_, a4);
  self->hash__ = a5;
  JreStrongAssign(&self->next_, a6);
  return self;
}

- (id)setValueWithId:(id)a3
{
  value = self->value_;
  JreStrongAssign(&self->value_, a3);
  return value;
}

- (BOOL)isEqual:(id)a3
{
  if (![JavaUtilMap_Entry_class_() isInstance:a3])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_([a3 getKey], self->key_))
  {
    return 0;
  }

  v6 = [a3 getValue];
  value = self->value_;

  return LibcoreUtilObjects_equalWithId_withId_(v6, value);
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