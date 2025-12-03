@interface JavaUtilMapEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilMapEntry)initWithId:(id)id withId:(id)withId;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilMapEntry

- (JavaUtilMapEntry)initWithId:(id)id withId:(id)withId
{
  JreStrongAssign(&self->key_, id);
  JreStrongAssign(&self->value_, withId);
  return self;
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaUtilMapEntry;
  return [(JavaUtilMapEntry *)&v3 clone];
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

- (id)setValueWithId:(id)id
{
  value = self->value_;
  JreStrongAssign(&self->value_, id);
  return value;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilMapEntry;
  [(JavaUtilMapEntry *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilMapEntry *)self clone];

  return clone;
}

@end