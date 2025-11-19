@interface NTKGreenfieldEncodedRecipe
- (NTKGreenfieldEncodedRecipe)initWithWatchFaceDataUrl:(id)a3 watchFaceImage:(id)a4 watchFaceName:(id)a5;
@end

@implementation NTKGreenfieldEncodedRecipe

- (NTKGreenfieldEncodedRecipe)initWithWatchFaceDataUrl:(id)a3 watchFaceImage:(id)a4 watchFaceName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NTKGreenfieldEncodedRecipe;
  v12 = [(NTKGreenfieldEncodedRecipe *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_watchFaceDataUrl, a3);
    objc_storeStrong(&v13->_watchFaceImage, a4);
    objc_storeStrong(&v13->_watchFaceName, a5);
  }

  return v13;
}

@end