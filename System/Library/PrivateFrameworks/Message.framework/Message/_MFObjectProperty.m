@interface _MFObjectProperty
+ (id)objectPropertyWithClass:(Class)a3 property:(SEL)a4;
- (SEL)property;
- (void)setProperty:(SEL)a3;
@end

@implementation _MFObjectProperty

+ (id)objectPropertyWithClass:(Class)a3 property:(SEL)a4
{
  v6 = objc_alloc_init(_MFObjectProperty);
  [(_MFObjectProperty *)v6 setClass:a3];
  [(_MFObjectProperty *)v6 setProperty:a4];

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

- (void)setProperty:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_property = v3;
}

@end