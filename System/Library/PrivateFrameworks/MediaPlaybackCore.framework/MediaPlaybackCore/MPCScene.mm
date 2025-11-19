@interface MPCScene
- (MPCScene)init;
@end

@implementation MPCScene

- (MPCScene)init
{
  v3.receiver = self;
  v3.super_class = MPCScene;
  result = [(MPCScene *)&v3 init];
  if (result)
  {
    *&result->_endFrame = xmmword_1C6045220;
  }

  return result;
}

@end