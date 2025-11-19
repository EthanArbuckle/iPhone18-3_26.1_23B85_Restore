@interface FBSSceneSnapshotRequest
- (BOOL)performSnapshotWithContext:(id)a3;
- (FBSSceneSnapshotRequest)initWithSettings:(id)a3 allowsProtectedContent:(BOOL)a4;
- (FBSSceneSnapshotRequest)initWithXPCDictionary:(id)a3;
- (FBSSceneSnapshotRequestDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation FBSSceneSnapshotRequest

- (FBSSceneSnapshotRequest)initWithSettings:(id)a3 allowsProtectedContent:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FBSSceneSnapshotRequest;
  v7 = [(FBSSceneSnapshotRequest *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    settings = v7->_settings;
    v7->_settings = v8;

    v7->_allowsProtectedContent = a4;
  }

  return v7;
}

- (BOOL)performSnapshotWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handled)
  {
    v6 = 0;
  }

  else
  {
    self->_handled = 1;
    v7 = [v4 clientExtendedData];
    if (self->_allowsProtectedContent != [v7 BOOLForSetting:281330800])
    {
      if (![v7 mutableCopy])
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
  v2 = [(FBSSceneSnapshotRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_sceneID withName:@"sceneID"];
  v5 = [v3 appendBool:self->_handled withName:@"handled"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSSceneSnapshotRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneSnapshotRequest *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FBSSceneSnapshotRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (FBSSceneSnapshotRequest)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if ([(FBSSceneSnapshotRequest *)self init])
  {
    BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  a3;
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