@interface MADPhotosXPCStoreServerEndpointFactory
- (MADPhotosXPCStoreServerEndpointFactory)initWithPhotoLibrary:(id)a3;
- (id)newEndpoint;
@end

@implementation MADPhotosXPCStoreServerEndpointFactory

- (MADPhotosXPCStoreServerEndpointFactory)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADPhotosXPCStoreServerEndpointFactory;
  v6 = [(MADPhotosXPCStoreServerEndpointFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
  }

  return v7;
}

- (id)newEndpoint
{
  v3 = objc_alloc_init(VCPMediaAnalysisService);
  photoLibrary = self->_photoLibrary;
  v7 = 0;
  v5 = [(VCPMediaAnalysisService *)v3 requestAnalysisXPCStoreListenerEndpointWithPhotoLibrary:photoLibrary error:&v7];

  return v5;
}

@end