@interface IDSGlobalLinkRequestMetadata
- (IDSGlobalLinkRequestMetadata)initWithStartTime:(double)a3 path:(id)a4 token:(id)a5 linkID:(char)a6 localRAT:(unsigned int)a7 metricsRequest:(id)a8;
@end

@implementation IDSGlobalLinkRequestMetadata

- (IDSGlobalLinkRequestMetadata)initWithStartTime:(double)a3 path:(id)a4 token:(id)a5 linkID:(char)a6 localRAT:(unsigned int)a7 metricsRequest:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = IDSGlobalLinkRequestMetadata;
  v18 = [(IDSGlobalLinkRequestMetadata *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_startTime = a3;
    objc_storeStrong(&v18->_path, a4);
    objc_storeStrong(&v19->_token, a5);
    objc_storeStrong(&v19->_metricsRequest, a8);
    v19->_linkID = a6;
    v19->_localRAT = a7;
  }

  return v19;
}

@end