@interface IDSCacheClearRequest
- (IDSCacheClearRequest)initWithCoder:(id)coder;
@end

@implementation IDSCacheClearRequest

- (IDSCacheClearRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IDSCacheClearRequest;
  v5 = [(IDSCacheClearRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"RequestContextKey"];
    requestContexts = v5->_requestContexts;
    v5->_requestContexts = v6;
  }

  return v5;
}

@end