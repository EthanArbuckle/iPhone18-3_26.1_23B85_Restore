@interface GESSAlgModelSimplifyOptions
- (GESSAlgModelSimplifyOptions)init;
@end

@implementation GESSAlgModelSimplifyOptions

- (GESSAlgModelSimplifyOptions)init
{
  v12.receiver = self;
  v12.super_class = GESSAlgModelSimplifyOptions;
  v2 = [(GESSAlgModelSimplifyOptions *)&v12 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setTriangleCount_(v2, v3, 500000, v4);
    objc_msgSend_setTextureResolution_(v5, v6, 2048, v7);
    v8 = objc_alloc_init(GESSTextureTransferOptions);
    objc_msgSend_setTextureTransferOptions_(v5, v9, v8, v10);
  }

  return v5;
}

@end