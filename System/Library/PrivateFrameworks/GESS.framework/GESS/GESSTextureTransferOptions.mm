@interface GESSTextureTransferOptions
- (GESSTextureTransferOptions)init;
@end

@implementation GESSTextureTransferOptions

- (GESSTextureTransferOptions)init
{
  v9.receiver = self;
  v9.super_class = GESSTextureTransferOptions;
  v2 = [(GESSTextureTransferOptions *)&v9 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setInputTangentialSpaceType_(v2, v3, 0, v4);
    objc_msgSend_setOutputTangentialSpaceType_(v5, v6, 0, v7);
  }

  return v5;
}

@end