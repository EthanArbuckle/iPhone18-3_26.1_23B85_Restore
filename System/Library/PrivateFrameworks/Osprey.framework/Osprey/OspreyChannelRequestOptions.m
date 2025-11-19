@interface OspreyChannelRequestOptions
- (OspreyChannelRequestOptions)init;
- (void)applyToOspreyMutableRequest:(id)a3;
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

- (void)applyToOspreyMutableRequest:(id)a3
{
  v4 = a3;
  [v4 setCompressionEnabled:{-[OspreyChannelRequestOptions isCompressionEnabled](self, "isCompressionEnabled")}];
  [v4 setForceHTTPv2:{-[OspreyChannelRequestOptions forceHTTPv2](self, "forceHTTPv2")}];
}

@end