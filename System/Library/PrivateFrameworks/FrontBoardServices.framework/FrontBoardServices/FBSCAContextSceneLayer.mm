@interface FBSCAContextSceneLayer
+ (id)layerWithCAContext:(id)a3;
- (FBSCAContextSceneLayer)initWithCAContext:(id)a3;
- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)a3 level:(double)a4;
- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)a3 renderID:(unint64_t)a4 level:(double)a5;
@end

@implementation FBSCAContextSceneLayer

+ (id)layerWithCAContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithWindowContext:v4];

  return v5;
}

- (FBSCAContextSceneLayer)initWithCAContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBSCAContextSceneLayer;
  return [(FBSSceneLayer *)&v4 initWithWindowContext:a3];
}

- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)a3 level:(double)a4
{
  v5.receiver = self;
  v5.super_class = FBSCAContextSceneLayer;
  return [(FBSSceneLayer *)&v5 initWithContextID:*&a3 renderID:0 level:a4];
}

- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)a3 renderID:(unint64_t)a4 level:(double)a5
{
  v6.receiver = self;
  v6.super_class = FBSCAContextSceneLayer;
  return [(FBSSceneLayer *)&v6 initWithContextID:*&a3 renderID:a4 level:a5];
}

@end