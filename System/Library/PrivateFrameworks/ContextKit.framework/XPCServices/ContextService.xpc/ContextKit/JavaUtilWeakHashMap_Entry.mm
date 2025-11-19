@interface JavaUtilWeakHashMap_Entry
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)getKey;
- (id)setValueWithId:(id)a3;
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

- (id)setValueWithId:(id)a3
{
  value = self->value_;
  JreStrongAssign(&self->value_, a3);
  return value;
}

- (BOOL)isEqual:(id)a3
{
  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (a3 && ([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v10.receiver = self;
    v10.super_class = JavaUtilWeakHashMap_Entry;
    v7 = [(JavaLangRefReference *)&v10 get];
    if (v7)
    {
      if (a3)
      {
        LODWORD(v5) = [v7 isEqual:{objc_msgSend(a3, "getKey")}];
        if (!v5)
        {
          return v5;
        }

LABEL_11:
        value = self->value_;
        v5 = [a3 getValue];
        if (value)
        {
          LOBYTE(v5) = [value isEqual:v5];
        }

        else
        {
          LOBYTE(v5) = v5 == 0;
        }

        return v5;
      }
    }

    else if (a3)
    {
      if ([a3 getKey])
      {
        LOBYTE(v5) = 0;
        return v5;
      }

      goto LABEL_11;
    }

    JreThrowNullPointerException();
  }

  return v5;
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