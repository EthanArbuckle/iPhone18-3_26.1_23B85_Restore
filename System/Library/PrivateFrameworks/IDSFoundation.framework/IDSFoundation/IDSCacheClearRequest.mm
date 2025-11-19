@interface IDSCacheClearRequest
- (IDSCacheClearRequest)initWithCoder:(id)a3;
@end

@implementation IDSCacheClearRequest

- (IDSCacheClearRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSCacheClearRequest;
  v5 = [(IDSCacheClearRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"RequestContextKey"];
    requestContexts = v5->_requestContexts;
    v5->_requestContexts = v6;
  }

  return v5;
}

@end