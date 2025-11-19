@interface NTKGreenfieldB640Model
- (NTKGreenfieldB640Model)initWithWatchFaceModels:(id)a3 error:(id)a4 bandImagePath:(id)a5 bandImageBundle:(id)a6;
@end

@implementation NTKGreenfieldB640Model

- (NTKGreenfieldB640Model)initWithWatchFaceModels:(id)a3 error:(id)a4 bandImagePath:(id)a5 bandImageBundle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NTKGreenfieldB640Model;
  v15 = [(NTKGreenfieldB640Model *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_watchFaceModels, a3);
    objc_storeStrong(&v16->_bandImagePath, a5);
    objc_storeStrong(&v16->_bandImageBundle, a6);
    objc_storeStrong(&v16->_error, a4);
  }

  return v16;
}

@end