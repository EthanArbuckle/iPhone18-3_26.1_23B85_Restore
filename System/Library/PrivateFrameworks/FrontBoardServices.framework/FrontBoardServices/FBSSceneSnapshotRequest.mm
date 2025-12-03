@interface FBSSceneSnapshotRequest
- (BOOL)performSnapshotWithContext:(id)context;
- (FBSSceneSnapshotRequest)initWithSettings:(id)settings allowsProtectedContent:(BOOL)content;
- (FBSSceneSnapshotRequest)initWithXPCDictionary:(id)dictionary;
- (FBSSceneSnapshotRequestDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSSceneSnapshotRequest

- (FBSSceneSnapshotRequest)initWithSettings:(id)settings allowsProtectedContent:(BOOL)content
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = FBSSceneSnapshotRequest;
  v7 = [(FBSSceneSnapshotRequest *)&v11 init];
  if (v7)
  {
    v8 = [settingsCopy copy];
    settings = v7->_settings;
    v7->_settings = v8;

    v7->_allowsProtectedContent = content;
  }

  return v7;
}

- (BOOL)performSnapshotWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_handled)
  {
    v6 = 0;
  }

  else
  {
    self->_handled = 1;
    clientExtendedData = [contextCopy clientExtendedData];
    if (self->_allowsProtectedContent != [clientExtendedData BOOLForSetting:281330800])
    {
      if (![clientExtendedData mutableCopy])
      {
        v8 = objc_alloc_init(off_1E76BCA00);
      }

      BSSettingFlagIfYes();
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained snapshotRequestAllowSnapshot:self])
    {
      [v5 setSettings:self->_settings];
      v6 = [WeakRetained snapshotRequest:self performWithContext:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneSnapshotRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_sceneID withName:@"sceneID"];
  v5 = [v3 appendBool:self->_handled withName:@"handled"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneSnapshotRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneSnapshotRequest *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FBSSceneSnapshotRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (FBSSceneSnapshotRequest)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(FBSSceneSnapshotRequest *)self init])
  {
    BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionary;
  [FBSSceneSettingsDiff diffFromSettings:0 toSettings:self->_settings];
  objc_claimAutoreleasedReturnValue();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (FBSSceneSnapshotRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end