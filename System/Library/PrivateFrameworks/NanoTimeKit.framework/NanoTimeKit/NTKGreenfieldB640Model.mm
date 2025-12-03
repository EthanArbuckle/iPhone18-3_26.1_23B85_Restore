@interface NTKGreenfieldB640Model
- (NTKGreenfieldB640Model)initWithWatchFaceModels:(id)models error:(id)error bandImagePath:(id)path bandImageBundle:(id)bundle;
@end

@implementation NTKGreenfieldB640Model

- (NTKGreenfieldB640Model)initWithWatchFaceModels:(id)models error:(id)error bandImagePath:(id)path bandImageBundle:(id)bundle
{
  modelsCopy = models;
  errorCopy = error;
  pathCopy = path;
  bundleCopy = bundle;
  v18.receiver = self;
  v18.super_class = NTKGreenfieldB640Model;
  v15 = [(NTKGreenfieldB640Model *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_watchFaceModels, models);
    objc_storeStrong(&v16->_bandImagePath, path);
    objc_storeStrong(&v16->_bandImageBundle, bundle);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

@end