@interface FBSSceneSnapshotContext
+ (FBSSceneSnapshotContext)contextWithSceneID:(id)d settings:(id)settings;
- (CGRect)frame;
- (FBSSceneSnapshotContext)initWithSceneID:(id)d settings:(id)settings;
- (FBSSceneSnapshotContext)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)setExpirationInterval:(double)interval;
@end

@implementation FBSSceneSnapshotContext

+ (FBSSceneSnapshotContext)contextWithSceneID:(id)d settings:(id)settings
{
  settingsCopy = settings;
  dCopy = d;
  v8 = [[self alloc] initWithSceneID:dCopy settings:settingsCopy];

  return v8;
}

- (FBSSceneSnapshotContext)initWithSceneID:(id)d settings:(id)settings
{
  dCopy = d;
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = FBSSceneSnapshotContext;
  v8 = [(FBSSceneSnapshotContext *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    sceneID = v8->_sceneID;
    v8->_sceneID = v9;

    v11 = [settingsCopy copy];
    settings = v8->_settings;
    v8->_settings = v11;

    [settingsCopy frame];
    BSRectWithSize();
  }

  return 0;
}

- (void)setExpirationInterval:(double)interval
{
  [MEMORY[0x1E695DF00] distantFuture];
  [objc_claimAutoreleasedReturnValue() timeIntervalSinceNow];
  BSFloatGreaterThanOrEqualToFloat();
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneSnapshotContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneSnapshotContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneSnapshotContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FBSSceneSnapshotContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __65__FBSSceneSnapshotContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"sceneID"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"name"];
  v4 = [*(a1 + 32) appendRect:@"frame" withName:{*(*(a1 + 40) + 64), *(*(a1 + 40) + 72), *(*(a1 + 40) + 80), *(*(a1 + 40) + 88)}];
  v5 = [*(a1 + 32) appendFloat:@"scale" withName:0 decimalPrecision:*(*(a1 + 40) + 32)];
  v6 = *(a1 + 40);
  if (*(v6 + 48) > 0.0)
  {
    v7 = [*(a1 + 32) appendFloat:@"expirationInterval" withName:1 decimalPrecision:?];
    v6 = *(a1 + 40);
  }

  v8 = [*(a1 + 32) appendObject:*(v6 + 16) withName:@"requestedSettings"];
  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 40) allObjects];
  [v9 appendArraySection:v10 withName:@"layersToExclude" skipIfEmpty:1];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"clientExtendedData"];
}

- (FBSSceneSnapshotContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(FBSSceneSnapshotContext *)self init])
  {
    BSCreateDeserializedStringFromXPCDictionaryWithKey();
  }

  return 0;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end