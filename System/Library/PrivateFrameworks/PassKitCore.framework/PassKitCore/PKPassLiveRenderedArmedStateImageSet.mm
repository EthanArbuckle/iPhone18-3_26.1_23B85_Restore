@interface PKPassLiveRenderedArmedStateImageSet
- (PKPassLiveRenderedArmedStateImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
@end

@implementation PKPassLiveRenderedArmedStateImageSet

- (PKPassLiveRenderedArmedStateImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = PKPassLiveRenderedArmedStateImageSet;
  v13 = [(PKPassLiveRenderedImageSet *)&v22 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    v16 = [PKImage imageNamed:@"diffuseArmed" inBundle:v15 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setDiffuseMaterialPropertyImage:v16];
    v17 = [PKImage imageNamed:@"normalArmed" inBundle:v15 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setNormalMaterialPropertyImage:v17];
    v18 = [PKImage imageNamed:@"metalnessArmed" inBundle:v15 screenScale:v12 suffix:a5];
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