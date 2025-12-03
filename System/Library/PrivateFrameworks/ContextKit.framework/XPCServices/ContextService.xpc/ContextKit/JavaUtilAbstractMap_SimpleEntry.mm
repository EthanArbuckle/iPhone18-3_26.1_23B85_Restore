@interface JavaUtilAbstractMap_SimpleEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilAbstractMap_SimpleEntry)initWithId:(id)id withId:(id)withId;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilAbstractMap_SimpleEntry

- (JavaUtilAbstractMap_SimpleEntry)initWithId:(id)id withId:(id)withId
{
  JreStrongAssign(&self->key_, id);
  JreStrongAssign(&self->value_, withId);
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
  if (self == equal)
  {
    LOBYTE(getValue) = 1;
    return getValue;
  }

  LODWORD(getValue) = [JavaUtilMap_Entry_class_() isInstance:equal];
  if (getValue)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (!equal)
    {
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    key = self->key_;
    getKey = [equal getKey];
    if (key)
    {
      LODWORD(getValue) = [key isEqual:getKey];
      if (!getValue)
      {
        return getValue;
      }
    }

    else if (getKey)
    {
      LOBYTE(getValue) = 0;
      return getValue;
    }

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
  }

  return getValue;
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
  v3.super_class = JavaUtilAbstractMap_SimpleEntry;
  [(JavaUtilAbstractMap_SimpleEntry *)&v3 dealloc];
}

@end