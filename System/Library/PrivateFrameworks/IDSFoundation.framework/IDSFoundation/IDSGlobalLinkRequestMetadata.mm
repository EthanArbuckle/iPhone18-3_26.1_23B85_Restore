@interface IDSGlobalLinkRequestMetadata
- (IDSGlobalLinkRequestMetadata)initWithStartTime:(double)time path:(id)path token:(id)token linkID:(char)d localRAT:(unsigned int)t metricsRequest:(id)request;
@end

@implementation IDSGlobalLinkRequestMetadata

- (IDSGlobalLinkRequestMetadata)initWithStartTime:(double)time path:(id)path token:(id)token linkID:(char)d localRAT:(unsigned int)t metricsRequest:(id)request
{
  pathCopy = path;
  tokenCopy = token;
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = IDSGlobalLinkRequestMetadata;
  v18 = [(IDSGlobalLinkRequestMetadata *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_startTime = time;
    objc_storeStrong(&v18->_path, path);
    objc_storeStrong(&v19->_token, token);
    objc_storeStrong(&v19->_metricsRequest, request);
    v19->_linkID = d;
    v19->_localRAT = t;
  }

  return v19;
}

@end