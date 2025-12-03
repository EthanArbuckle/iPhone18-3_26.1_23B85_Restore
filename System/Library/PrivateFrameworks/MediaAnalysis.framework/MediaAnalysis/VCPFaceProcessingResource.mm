@interface VCPFaceProcessingResource
+ (id)resourceWithResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource requestDownload:(BOOL)download downloadStatus:(int)status;
- (VCPFaceProcessingResource)initWithResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource requestDownload:(BOOL)download downloadStatus:(int)status;
@end

@implementation VCPFaceProcessingResource

- (VCPFaceProcessingResource)initWithResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource requestDownload:(BOOL)download downloadStatus:(int)status
{
  resourceCopy = resource;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = VCPFaceProcessingResource;
  v15 = [(VCPFaceProcessingResource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resource, resource);
    objc_storeStrong(&v16->_resourceURL, l);
    v16->_isBestResource = bestResource;
    v16->_requestDownload = download;
    v16->_downloadStatus = status;
  }

  return v16;
}

+ (id)resourceWithResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource requestDownload:(BOOL)download downloadStatus:(int)status
{
  v7 = *&status;
  downloadCopy = download;
  bestResourceCopy = bestResource;
  resourceCopy = resource;
  lCopy = l;
  v13 = [[VCPFaceProcessingResource alloc] initWithResource:resourceCopy resourceURL:lCopy isBestResource:bestResourceCopy requestDownload:downloadCopy downloadStatus:v7];

  return v13;
}

@end