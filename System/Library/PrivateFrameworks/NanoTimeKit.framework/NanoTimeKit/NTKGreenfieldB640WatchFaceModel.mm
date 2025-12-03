@interface NTKGreenfieldB640WatchFaceModel
- (NTKGreenfieldB640WatchFaceModel)initWithDecodedRecipe:(id)recipe;
@end

@implementation NTKGreenfieldB640WatchFaceModel

- (NTKGreenfieldB640WatchFaceModel)initWithDecodedRecipe:(id)recipe
{
  recipeCopy = recipe;
  v9.receiver = self;
  v9.super_class = NTKGreenfieldB640WatchFaceModel;
  v6 = [(NTKGreenfieldB640WatchFaceModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decodedRecipe, recipe);
  }

  return v7;
}

@end