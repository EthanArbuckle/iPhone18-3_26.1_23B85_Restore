@interface JavaUtilWeakHashMap_Entry
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)getKey;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilWeakHashMap_Entry

- (id)getKey
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_Entry;
  return [(JavaLangRefReference *)&v3 get];
}

- (id)setValueWithId:(id)id
{
  value = self->value_;
  JreStrongAssign(&self->value_, id);
  return value;
}

- (BOOL)isEqual:(id)equal
{
  LODWORD(getValue) = [JavaUtilMap_Entry_class_() isInstance:equal];
  if (getValue)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (equal && ([v6 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v10.receiver = self;
    v10.super_class = JavaUtilWeakHashMap_Entry;
    v7 = [(JavaLangRefReference *)&v10 get];
    if (v7)
    {
      if (equal)
      {
        LODWORD(getValue) = [v7 isEqual:{objc_msgSend(equal, "getKey")}];
        if (!getValue)
        {
          return getValue;
        }

LABEL_11:
        value = self->value_;
        getValue = [equal getValue];
        if (value)
        {
          LOBYTE(getValue) = [value isEqual:getValue];
        }

        else
        {
          LOBYTE(getValue) = getValue == 0;
        }

        return getValue;
      }
    }

    else if (equal)
    {
      if ([equal getKey])
      {
        LOBYTE(getValue) = 0;
        return getValue;
      }

      goto LABEL_11;
    }

    JreThrowNullPointerException();
  }

  return getValue;
}

- (unint64_t)hash
{
  hash = self->hash__;
  value = self->value_;
  if (value)
  {
    LODWORD(value) = [value hash];
  }

  return value + hash;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = JavaUtilWeakHashMap_Entry;
  v3 = [(JavaLangRefReference *)&v13 get];
  value = self->value_;
  return JreStrcat("@C@", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_Entry;
  [(JavaLangRefReference *)&v3 dealloc];
}

@end