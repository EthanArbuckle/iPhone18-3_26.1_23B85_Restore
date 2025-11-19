@interface CIImage(NUImageUtilities)
+ (id)imageWithNUImageBuffer:()NUImageUtilities;
@end

@implementation CIImage(NUImageUtilities)

+ (id)imageWithNUImageBuffer:()NUImageUtilities
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, NUImageUtilitiesCIImageKey);
  if (!v4)
  {
    v4 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:{objc_msgSend(v3, "CVPixelBuffer")}];
    objc_setAssociatedObject(v3, NUImageUtilitiesCIImageKey, v4, 0x301);
  }

  return v4;
}

@end