@interface NTKGreenfieldB640WatchFaceModel
- (NTKGreenfieldB640WatchFaceModel)initWithDecodedRecipe:(id)a3;
@end

@implementation NTKGreenfieldB640WatchFaceModel

- (NTKGreenfieldB640WatchFaceModel)initWithDecodedRecipe:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKGreenfieldB640WatchFaceModel;
  v6 = [(NTKGreenfieldB640WatchFaceModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decodedRecipe, a3);
  }

  return v7;
}

@end