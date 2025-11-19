@interface JavaUtilHashtable_HashtableEntry
- (BOOL)isEqual:(id)a3;
- (JavaUtilHashtable_HashtableEntry)initWithId:(id)a3 withId:(id)a4 withInt:(int)a5 withJavaUtilHashtable_HashtableEntry:(id)a6;
- (id)setValueWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilHashtable_HashtableEntry

- (JavaUtilHashtable_HashtableEntry)initWithId:(id)a3 withId:(id)a4 withInt:(int)a5 withJavaUtilHashtable_HashtableEntry:(id)a6
{
  JreStrongAssign(&self->key_, a3);
  JreStrongAssign(&self->value_, a4);
  self->hash__ = a5;
  JreStrongAssign(&self->next_, a6);
  return self;
}

- (id)setValueWithId:(id)a3
{
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    objc_exception_throw(v5);
  }

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
    key = self->key_;
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = self->key_;
  if (!v6)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  if (![v6 isEqual:{objc_msgSend(a3, "getKey")}])
  {
    return 0;
  }

  value = self->value_;
  if (!value)
  {
    goto LABEL_11;
  }

  v8 = [a3 getValue];

  return [value isEqual:v8];
}

- (unint64_t)hash
{
  key = self->key_;
  if (!key || (v4 = [key hash], (value = self->value_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([value hash] ^ v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable_HashtableEntry;
  [(JavaUtilHashtable_HashtableEntry *)&v3 dealloc];
}

@end