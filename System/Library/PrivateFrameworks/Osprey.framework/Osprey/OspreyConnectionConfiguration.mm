@interface OspreyConnectionConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OspreyConnectionConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      connectionUrl = self->_connectionUrl;
      connectionUrl = [(OspreyConnectionConfiguration *)v5 connectionUrl];

      if (connectionUrl == connectionUrl)
      {
        urlSessionConfiguration = self->_urlSessionConfiguration;
        urlSessionConfiguration = [(OspreyConnectionConfiguration *)v5 urlSessionConfiguration];
        v8 = urlSessionConfiguration == urlSessionConfiguration;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(OspreyConnectionConfiguration);
  [(OspreyConnectionConfiguration *)v4 setConnectionUrl:self->_connectionUrl];
  [(OspreyConnectionConfiguration *)v4 setUrlSessionConfiguration:self->_urlSessionConfiguration];
  return v4;
}

@end