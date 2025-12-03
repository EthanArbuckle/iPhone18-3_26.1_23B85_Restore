@interface FBSSceneUpdate
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBSSceneUpdate

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[FBSSceneUpdate allocWithZone:](FBSSceneUpdate init];
  v6 = [(FBSSettings *)self->_settings copyWithZone:zone];
  settings = v5->_settings;
  v5->_settings = v6;

  v8 = [(FBSMutableSettings *)self->_mutableSettings copyWithZone:zone];
  mutableSettings = v5->_mutableSettings;
  v5->_mutableSettings = v8;

  v10 = [(FBSSettings *)self->_previousSettings copyWithZone:zone];
  previousSettings = v5->_previousSettings;
  v5->_previousSettings = v10;

  objc_storeStrong(&v5->_diff, self->_diff);
  v12 = [(FBSSceneTransitionContext *)self->_context copyWithZone:zone];
  context = v5->_context;
  v5->_context = v12;

  v14 = [(FBSSceneUpdate *)self->_instigatingUpdate copyWithZone:zone];
  instigatingUpdate = v5->_instigatingUpdate;
  v5->_instigatingUpdate = v14;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[FBSMutableSceneUpdate allocWithZone:](FBSMutableSceneUpdate init];
  v6 = [(FBSSettings *)self->_settings mutableCopyWithZone:zone];
  settings = v5->super._settings;
  v5->super._settings = v6;

  v8 = [(FBSMutableSettings *)self->_mutableSettings mutableCopyWithZone:zone];
  mutableSettings = v5->super._mutableSettings;
  v5->super._mutableSettings = v8;

  v10 = [(FBSSettings *)self->_previousSettings mutableCopyWithZone:zone];
  previousSettings = v5->super._previousSettings;
  v5->super._previousSettings = v10;

  objc_storeStrong(&v5->super._diff, self->_diff);
  v12 = [(FBSSettings *)self->_context mutableCopyWithZone:zone];
  context = v5->super._context;
  v5->super._context = v12;

  v14 = [(FBSSceneUpdate *)self->_instigatingUpdate mutableCopyWithZone:zone];
  instigatingUpdate = v5->super._instigatingUpdate;
  v5->super._instigatingUpdate = v14;

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneUpdate *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  succinctDescription = [(FBSSettingsDiff *)self->_diff succinctDescription];
  v5 = [v3 appendObject:succinctDescription withName:@"diff"];

  succinctDescription2 = [(FBSSceneUpdate *)self->_instigatingUpdate succinctDescription];
  v7 = [v3 appendObject:succinctDescription2 withName:@"parent" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneUpdate *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
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