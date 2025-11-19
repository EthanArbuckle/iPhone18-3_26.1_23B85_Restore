@interface FBSMutableSceneDefinition
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FBSMutableSceneDefinition

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FBSSceneDefinition allocWithZone:?]];
  [(FBSSceneDefinition *)v4 setIdentity:self->super._identity];
  [(FBSSceneDefinition *)v4 setClientIdentity:self->super._clientIdentity];
  [(FBSSceneDefinition *)v4 setSpecification:self->super._specification];
  return v4;
}

@end