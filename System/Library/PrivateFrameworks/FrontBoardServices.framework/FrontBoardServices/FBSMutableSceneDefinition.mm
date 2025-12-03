@interface FBSMutableSceneDefinition
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FBSMutableSceneDefinition

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FBSSceneDefinition allocWithZone:?]];
  [(FBSSceneDefinition *)v4 setIdentity:self->super._identity];
  [(FBSSceneDefinition *)v4 setClientIdentity:self->super._clientIdentity];
  [(FBSSceneDefinition *)v4 setSpecification:self->super._specification];
  return v4;
}

@end