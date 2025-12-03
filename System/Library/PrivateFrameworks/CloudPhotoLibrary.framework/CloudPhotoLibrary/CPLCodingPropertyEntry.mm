@interface CPLCodingPropertyEntry
- (SEL)propertyGetter;
- (SEL)propertySetter;
- (id)ivarValueForObject:(id)object;
- (void)ivarAddrForObject:(id)object;
- (void)setIvarValue:(id)value forObject:(id)object;
- (void)setPropertyGetter:(SEL)getter;
- (void)setPropertySetter:(SEL)setter;
@end

@implementation CPLCodingPropertyEntry

- (SEL)propertyGetter
{
  if (self->_propertyGetter)
  {
    return self->_propertyGetter;
  }

  else
  {
    return 0;
  }
}

- (SEL)propertySetter
{
  if (self->_propertySetter)
  {
    return self->_propertySetter;
  }

  else
  {
    return 0;
  }
}

- (void)setPropertySetter:(SEL)setter
{
  if (setter)
  {
    setterCopy = setter;
  }

  else
  {
    setterCopy = 0;
  }

  self->_propertySetter = setterCopy;
}

- (void)setPropertyGetter:(SEL)getter
{
  if (getter)
  {
    getterCopy = getter;
  }

  else
  {
    getterCopy = 0;
  }

  self->_propertyGetter = getterCopy;
}

- (void)setIvarValue:(id)value forObject:(id)object
{
  ivar = self->_ivar;
  if (ivar)
  {
    object_setIvar(object, ivar, value);
  }
}

- (id)ivarValueForObject:(id)object
{
  ivar = self->_ivar;
  if (ivar)
  {
    v5 = object_getIvar(object, ivar);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)ivarAddrForObject:(id)object
{
  result = self->_ivar;
  if (result)
  {
    return object + ivar_getOffset(result);
  }

  return result;
}

@end