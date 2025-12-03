@interface CKPhotoLibraryUtilities
+ (id)cameraRollMostRecentImage;
@end

@implementation CKPhotoLibraryUtilities

+ (id)cameraRollMostRecentImage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getDCIMImageWellUtilitiesClass_softClass;
  v10 = getDCIMImageWellUtilitiesClass_softClass;
  if (!getDCIMImageWellUtilitiesClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getDCIMImageWellUtilitiesClass_block_invoke;
    v6[3] = &unk_1E72EB968;
    v6[4] = &v7;
    __getDCIMImageWellUtilitiesClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  cameraPreviewWellImage = [v2 cameraPreviewWellImage];

  return cameraPreviewWellImage;
}

@end