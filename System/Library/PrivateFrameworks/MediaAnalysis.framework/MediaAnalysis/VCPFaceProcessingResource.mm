@interface VCPFaceProcessingResource
+ (id)resourceWithResource:(id)a3 resourceURL:(id)a4 isBestResource:(BOOL)a5 requestDownload:(BOOL)a6 downloadStatus:(int)a7;
- (VCPFaceProcessingResource)initWithResource:(id)a3 resourceURL:(id)a4 isBestResource:(BOOL)a5 requestDownload:(BOOL)a6 downloadStatus:(int)a7;
@end

@implementation VCPFaceProcessingResource

- (VCPFaceProcessingResource)initWithResource:(id)a3 resourceURL:(id)a4 isBestResource:(BOOL)a5 requestDownload:(BOOL)a6 downloadStatus:(int)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = VCPFaceProcessingResource;
  v15 = [(VCPFaceProcessingResource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resource, a3);
    objc_storeStrong(&v16->_resourceURL, a4);
    v16->_isBestResource = a5;
    v16->_requestDownload = a6;
    v16->_downloadStatus = a7;
  }

  return v16;
}

+ (id)resourceWithResource:(id)a3 resourceURL:(id)a4 isBestResource:(BOOL)a5 requestDownload:(BOOL)a6 downloadStatus:(int)a7
{
  v7 = *&a7;
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = [[VCPFaceProcessingResource alloc] initWithResource:v11 resourceURL:v12 isBestResource:v9 requestDownload:v8 downloadStatus:v7];

  return v13;
}

@end