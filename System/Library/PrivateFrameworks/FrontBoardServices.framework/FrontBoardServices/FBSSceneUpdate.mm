@interface FBSSceneUpdate
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBSSceneUpdate

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[FBSSceneUpdate allocWithZone:](FBSSceneUpdate init];
  v6 = [(FBSSettings *)self->_settings copyWithZone:a3];
  settings = v5->_settings;
  v5->_settings = v6;

  v8 = [(FBSMutableSettings *)self->_mutableSettings copyWithZone:a3];
  mutableSettings = v5->_mutableSettings;
  v5->_mutableSettings = v8;

  v10 = [(FBSSettings *)self->_previousSettings copyWithZone:a3];
  previousSettings = v5->_previousSettings;
  v5->_previousSettings = v10;

  objc_storeStrong(&v5->_diff, self->_diff);
  v12 = [(FBSSceneTransitionContext *)self->_context copyWithZone:a3];
  context = v5->_context;
  v5->_context = v12;

  v14 = [(FBSSceneUpdate *)self->_instigatingUpdate copyWithZone:a3];
  instigatingUpdate = v5->_instigatingUpdate;
  v5->_instigatingUpdate = v14;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [+[FBSMutableSceneUpdate allocWithZone:](FBSMutableSceneUpdate init];
  v6 = [(FBSSettings *)self->_settings mutableCopyWithZone:a3];
  settings = v5->super._settings;
  v5->super._settings = v6;

  v8 = [(FBSMutableSettings *)self->_mutableSettings mutableCopyWithZone:a3];
  mutableSettings = v5->super._mutableSettings;
  v5->super._mutableSettings = v8;

  v10 = [(FBSSettings *)self->_previousSettings mutableCopyWithZone:a3];
  previousSettings = v5->super._previousSettings;
  v5->super._previousSettings = v10;

  objc_storeStrong(&v5->super._diff, self->_diff);
  v12 = [(FBSSettings *)self->_context mutableCopyWithZone:a3];
  context = v5->super._context;
  v5->super._context = v12;

  v14 = [(FBSSceneUpdate *)self->_instigatingUpdate mutableCopyWithZone:a3];
  instigatingUpdate = v5->super._instigatingUpdate;
  v5->super._instigatingUpdate = v14;

  return v5;
}

- (id)succinctDescription
{
  v2 = [(FBSSceneUpdate *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [(FBSSettingsDiff *)self->_diff succinctDescription];
  v5 = [v3 appendObject:v4 withName:@"diff"];

  v6 = [(FBSSceneUpdate *)self->_instigatingUpdate succinctDescription];
  v7 = [v3 appendObject:v6 withName:@"parent" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSSceneUpdate *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [off_1E76BC9B0 builderWithObject:self];
  v5 = [v4 appendObject:self->_settings withName:@"settings" skipIfNil:1];
  v6 = [v4 appendObject:self->_previousSettings withName:@"previousSettings" skipIfNil:1];
  v7 = [v4 appendObject:self->_diff withName:@"diff" skipIfNil:1];
  instigatingUpdate = self->_instigatingUpdate;
  if (instigatingUpdate)
  {
    v9 = [v4 appendPointer:instigatingUpdate withName:@"parentUpdate"];
  }

  return v4;
}

@end