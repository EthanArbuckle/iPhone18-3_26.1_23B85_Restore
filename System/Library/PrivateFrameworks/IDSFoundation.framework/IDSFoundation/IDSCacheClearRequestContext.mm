@interface IDSCacheClearRequestContext
- (IDSCacheClearRequestContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSCacheClearRequestContext

- (void)encodeWithCoder:(id)coder
{
  uris = self->_uris;
  coderCopy = coder;
  [coderCopy encodeObject:uris forKey:@"urisKey"];
  [coderCopy encodeObject:self->_service forKey:@"serviceKey"];
}

- (IDSCacheClearRequestContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IDSCacheClearRequestContext;
  v5 = [(IDSCacheClearRequestContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"urisKey"];
    uris = v5->_uris;
    v5->_uris = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceKey"];
    service = v5->_service;
    v5->_service = v8;
  }

  return v5;
}

@end