@interface UIImage(CKTransparencyTrimmer)
- (id)__ck_imageWithTrimmedTransparency;
@end

@implementation UIImage(CKTransparencyTrimmer)

- (id)__ck_imageWithTrimmedTransparency
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(CKImageTransparencyTrimmer);
  v4 = [(CKImageTransparencyTrimmer *)v3 trimTransparencyFromImage:a1];

  objc_autoreleasePoolPop(v2);

  return v4;
}

@end