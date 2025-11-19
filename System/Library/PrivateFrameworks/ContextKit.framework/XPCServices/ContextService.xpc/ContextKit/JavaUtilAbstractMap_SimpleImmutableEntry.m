@interface JavaUtilAbstractMap_SimpleImmutableEntry
- (BOOL)isEqual:(id)a3;
- (JavaUtilAbstractMap_SimpleImmutableEntry)initWithId:(id)a3 withId:(id)a4;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilAbstractMap_SimpleImmutableEntry

- (JavaUtilAbstractMap_SimpleImmutableEntry)initWithId:(id)a3 withId:(id)a4
{
  JreStrongAssign(&self->key_, a3);
  JreStrongAssign(&self->value_, a4);
  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    key = self->key_;
    v8 = [a3 getKey];
    if (key)
    {
      LODWORD(v5) = [key isEqual:v8];
      if (!v5)
      {
        return v5;
      }
    }

    else if (v8)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

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
  }

  return v5;
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
  v3.super_class = JavaUtilAbstractMap_SimpleImmutableEntry;
  [(JavaUtilAbstractMap_SimpleImmutableEntry *)&v3 dealloc];
}

@end