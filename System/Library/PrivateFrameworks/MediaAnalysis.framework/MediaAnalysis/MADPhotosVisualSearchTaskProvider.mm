@interface MADPhotosVisualSearchTaskProvider
- (MADPhotosVisualSearchTaskProvider)initWithPhotoLibrary:(id)a3 cancelBlock:(id)a4;
@end

@implementation MADPhotosVisualSearchTaskProvider

- (MADPhotosVisualSearchTaskProvider)initWithPhotoLibrary:(id)a3 cancelBlock:(id)a4
{
  v10.receiver = self;
  v10.super_class = MADPhotosVisualSearchTaskProvider;
  v4 = [(MADPhotosTaskProvider *)&v10 initWithPhotoLibrary:a3 cancelBlock:a4];
  if (v4)
  {
    v5 = [VCPObjectPool objectPoolWithAllocator:&stru_100282978];
    servicePool = v4->_servicePool;
    v4->_servicePool = v5;

    v7 = objc_alloc_init(VNSession);
    visionSession = v4->_visionSession;
    v4->_visionSession = v7;
  }

  return v4;
}

@end