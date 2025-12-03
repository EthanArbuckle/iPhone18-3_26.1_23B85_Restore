@interface PKPassLiveRenderedArmedStateImageSet
- (PKPassLiveRenderedArmedStateImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix;
@end

@implementation PKPassLiveRenderedArmedStateImageSet

- (PKPassLiveRenderedArmedStateImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix
{
  profileCopy = profile;
  lCopy = l;
  suffixCopy = suffix;
  v22.receiver = self;
  v22.super_class = PKPassLiveRenderedArmedStateImageSet;
  v13 = [(PKPassLiveRenderedImageSet *)&v22 initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:suffixCopy suffix:scale];
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
    v16 = [PKImage imageNamed:@"diffuseArmed" inBundle:v15 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setDiffuseMaterialPropertyImage:v16];
    v17 = [PKImage imageNamed:@"normalArmed" inBundle:v15 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setNormalMaterialPropertyImage:v17];
    v18 = [PKImage imageNamed:@"metalnessArmed" inBundle:v15 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setMetalnessMaterialPropertyImage:v18];

    objc_autoreleasePoolPop(v14);
    if (v16 | v17 | v18)
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v20;
}

@end