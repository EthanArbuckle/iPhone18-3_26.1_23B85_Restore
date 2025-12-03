@interface OspreyChannelRequestOptions
- (OspreyChannelRequestOptions)init;
- (void)applyToOspreyMutableRequest:(id)request;
@end

@implementation OspreyChannelRequestOptions

- (OspreyChannelRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = OspreyChannelRequestOptions;
  result = [(OspreyChannelRequestOptions *)&v3 init];
  if (result)
  {
    *&result->_compressionEnabled = 257;
  }

  return result;
}

- (void)applyToOspreyMutableRequest:(id)request
{
  requestCopy = request;
  [requestCopy setCompressionEnabled:{-[OspreyChannelRequestOptions isCompressionEnabled](self, "isCompressionEnabled")}];
  [requestCopy setForceHTTPv2:{-[OspreyChannelRequestOptions forceHTTPv2](self, "forceHTTPv2")}];
}

@end