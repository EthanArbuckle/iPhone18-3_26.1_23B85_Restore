@interface OspreyConnectionConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OspreyConnectionConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      connectionUrl = self->_connectionUrl;
      v7 = [(OspreyConnectionConfiguration *)v5 connectionUrl];

      if (connectionUrl == v7)
      {
        urlSessionConfiguration = self->_urlSessionConfiguration;
        v10 = [(OspreyConnectionConfiguration *)v5 urlSessionConfiguration];
        v8 = urlSessionConfiguration == v10;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(OspreyConnectionConfiguration);
  [(OspreyConnectionConfiguration *)v4 setConnectionUrl:self->_connectionUrl];
  [(OspreyConnectionConfiguration *)v4 setUrlSessionConfiguration:self->_urlSessionConfiguration];
  return v4;
}

@end