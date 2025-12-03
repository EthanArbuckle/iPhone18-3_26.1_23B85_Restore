@interface _MFObjectProperty
+ (id)objectPropertyWithClass:(Class)class property:(SEL)property;
- (SEL)property;
- (void)setProperty:(SEL)property;
@end

@implementation _MFObjectProperty

+ (id)objectPropertyWithClass:(Class)class property:(SEL)property
{
  v6 = objc_alloc_init(_MFObjectProperty);
  [(_MFObjectProperty *)v6 setClass:class];
  [(_MFObjectProperty *)v6 setProperty:property];

  return v6;
}

- (SEL)property
{
  if (self->_property)
  {
    return self->_property;
  }

  else
  {
    return 0;
  }
}

- (void)setProperty:(SEL)property
{
  if (property)
  {
    propertyCopy = property;
  }

  else
  {
    propertyCopy = 0;
  }

  self->_property = propertyCopy;
}

@end