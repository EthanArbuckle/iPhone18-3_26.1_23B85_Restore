@interface CKMomentSharePlaceholderAsset
+ (CKMomentSharePlaceholderAsset)sharedInstance;
+ (id)placeholderImage;
- (CGRect)bestCropRectForAspectRatio:(double)a3;
- (CGSize)size;
- (CKMomentSharePlaceholderAsset)init;
- (Class)defaultImageProviderClass;
- (UIImage)placeholderImage;
- (double)aspectRatio;
- (int64_t)isContentEqualTo:(id)a3;
@end

@implementation CKMomentSharePlaceholderAsset

+ (CKMomentSharePlaceholderAsset)sharedInstance
{
  if (sharedInstance_predicate != -1)
  {
    +[CKMomentSharePlaceholderAsset sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

void __47__CKMomentSharePlaceholderAsset_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKMomentSharePlaceholderAsset);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;
}

- (CKMomentSharePlaceholderAsset)init
{
  v3.receiver = self;
  v3.super_class = CKMomentSharePlaceholderAsset;
  return [(CKMomentSharePlaceholderAsset *)&v3 init];
}

- (Class)defaultImageProviderClass
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (int64_t)isContentEqualTo:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)placeholderImage
{
  if (placeholderImage_predicate != -1)
  {
    +[CKMomentSharePlaceholderAsset placeholderImage];
  }

  v3 = placeholderImage__placeholderImage;

  return v3;
}

void __49__CKMomentSharePlaceholderAsset_placeholderImage__block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v0 = [MEMORY[0x1E69DCAB8] px_imageFromSolidColor:v2];
  v1 = placeholderImage__placeholderImage;
  placeholderImage__placeholderImage = v0;
}

- (UIImage)placeholderImage
{
  v2 = objc_opt_class();

  return [v2 placeholderImage];
}

- (CGRect)bestCropRectForAspectRatio:(double)a3
{
  [(CKMomentSharePlaceholderAsset *)self size];
  PXRectWithAspectRatioFittingRect();

  PXRectNormalize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)size
{
  v2 = [(CKMomentSharePlaceholderAsset *)self placeholderImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)aspectRatio
{
  [(CKMomentSharePlaceholderAsset *)self size];
  result = v2 / v3;
  if (v3 <= 0.0)
  {
    return 1.0;
  }

  return result;
}

@end