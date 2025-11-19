@interface IDSCacheClearRequestContext
- (IDSCacheClearRequestContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSCacheClearRequestContext

- (void)encodeWithCoder:(id)a3
{
  uris = self->_uris;
  v5 = a3;
  [v5 encodeObject:uris forKey:@"urisKey"];
  [v5 encodeObject:self->_service forKey:@"serviceKey"];
}

- (IDSCacheClearRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSCacheClearRequestContext;
  v5 = [(IDSCacheClearRequestContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"urisKey"];
    uris = v5->_uris;
    v5->_uris = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceKey"];
    service = v5->_service;
    v5->_service = v8;
  }

  return v5;
}

@end