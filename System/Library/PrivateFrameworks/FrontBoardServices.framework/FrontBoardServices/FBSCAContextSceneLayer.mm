@interface FBSCAContextSceneLayer
+ (id)layerWithCAContext:(id)context;
- (FBSCAContextSceneLayer)initWithCAContext:(id)context;
- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)d level:(double)level;
- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)d renderID:(unint64_t)iD level:(double)level;
@end

@implementation FBSCAContextSceneLayer

+ (id)layerWithCAContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithWindowContext:contextCopy];

  return v5;
}

- (FBSCAContextSceneLayer)initWithCAContext:(id)context
{
  v4.receiver = self;
  v4.super_class = FBSCAContextSceneLayer;
  return [(FBSSceneLayer *)&v4 initWithWindowContext:context];
}

- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)d level:(double)level
{
  v5.receiver = self;
  v5.super_class = FBSCAContextSceneLayer;
  return [(FBSSceneLayer *)&v5 initWithContextID:*&d renderID:0 level:level];
}

- (FBSCAContextSceneLayer)initWithCAContextID:(unsigned int)d renderID:(unint64_t)iD level:(double)level
{
  v6.receiver = self;
  v6.super_class = FBSCAContextSceneLayer;
  return [(FBSSceneLayer *)&v6 initWithContextID:*&d renderID:iD level:level];
}

@end