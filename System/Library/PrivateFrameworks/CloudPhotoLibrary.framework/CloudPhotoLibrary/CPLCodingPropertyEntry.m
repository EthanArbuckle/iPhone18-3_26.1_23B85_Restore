@interface CPLCodingPropertyEntry
- (SEL)propertyGetter;
- (SEL)propertySetter;
- (id)ivarValueForObject:(id)a3;
- (void)ivarAddrForObject:(id)a3;
- (void)setIvarValue:(id)a3 forObject:(id)a4;
- (void)setPropertyGetter:(SEL)a3;
- (void)setPropertySetter:(SEL)a3;
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

- (void)setPropertySetter:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_propertySetter = v3;
}

- (void)setPropertyGetter:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_propertyGetter = v3;
}

- (void)setIvarValue:(id)a3 forObject:(id)a4
{
  ivar = self->_ivar;
  if (ivar)
  {
    object_setIvar(a4, ivar, a3);
  }
}

- (id)ivarValueForObject:(id)a3
{
  ivar = self->_ivar;
  if (ivar)
  {
    v5 = object_getIvar(a3, ivar);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)ivarAddrForObject:(id)a3
{
  result = self->_ivar;
  if (result)
  {
    return a3 + ivar_getOffset(result);
  }

  return result;
}

@end