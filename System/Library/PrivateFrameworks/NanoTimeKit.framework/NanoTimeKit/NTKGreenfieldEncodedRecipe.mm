@interface NTKGreenfieldEncodedRecipe
- (NTKGreenfieldEncodedRecipe)initWithWatchFaceDataUrl:(id)url watchFaceImage:(id)image watchFaceName:(id)name;
@end

@implementation NTKGreenfieldEncodedRecipe

- (NTKGreenfieldEncodedRecipe)initWithWatchFaceDataUrl:(id)url watchFaceImage:(id)image watchFaceName:(id)name
{
  urlCopy = url;
  imageCopy = image;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = NTKGreenfieldEncodedRecipe;
  v12 = [(NTKGreenfieldEncodedRecipe *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_watchFaceDataUrl, url);
    objc_storeStrong(&v13->_watchFaceImage, image);
    objc_storeStrong(&v13->_watchFaceName, name);
  }

  return v13;
}

@end