@interface FBSSceneClientSettingsCore
+ (id)descriptionOfValue:(id)value forSetting:(id)setting;
+ (void)configureSetting:(id)setting;
- (BSKeyedSettings)layers;
- (FBSSceneIdentityToken)preferredSceneHostIdentity;
- (NSString)preferredSceneHostIdentifier;
- (double)preferredLevel;
- (int64_t)preferredInterfaceOrientation;
- (void)setLayers:(id)layers;
- (void)setPreferredInterfaceOrientation:(int64_t)orientation;
@end

@implementation FBSSceneClientSettingsCore

- (BSKeyedSettings)layers
{
  v2 = [(FBSSceneClientSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__FBSSceneClientSettingsCore_layers__block_invoke;
  v6[3] = &unk_1E76BF678;
  v4 = orderedSet;
  v7 = v4;
  [v2 enumerateKeyedObjectsWithBlock:v6];
  [v4 sortUsingComparator:&__block_literal_global_28];

  return v4;
}

- (double)preferredLevel
{
  v2 = [(FBSSceneClientSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  [v2 bs_CGFloatValue];
  v4 = v3;

  return v4;
}

- (int64_t)preferredInterfaceOrientation
{
  v2 = [(FBSSceneClientSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSString)preferredSceneHostIdentifier
{
  v4 = objc_opt_class();

  return [(FBSSceneClientSettingsCore *)self valueForProperty:a2 expectedClass:v4];
}

- (FBSSceneIdentityToken)preferredSceneHostIdentity
{
  v4 = objc_opt_class();

  return [(FBSSceneClientSettingsCore *)self valueForProperty:a2 expectedClass:v4];
}

+ (id)descriptionOfValue:(id)value forSetting:(id)setting
{
  settingCopy = setting;
  valueCopy = value;
  if ([settingCopy matchesProperty:sel_preferredInterfaceOrientation])
  {
    [valueCopy integerValue];

    BSInterfaceOrientationDescription();
  }

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___FBSSceneClientSettingsCore;
  v8 = objc_msgSendSuper2(&v10, sel_descriptionOfValue_forSetting_, valueCopy, settingCopy);

  return v8;
}

+ (void)configureSetting:(id)setting
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___FBSSceneClientSettingsCore;
  settingCopy = setting;
  objc_msgSendSuper2(&v4, sel_configureSetting_, settingCopy);
  [settingCopy setVolatile:{objc_msgSend(settingCopy, "matchesProperty:", sel_layers, v4.receiver, v4.super_class)}];
}

- (void)setLayers:(id)layers
{
  v16 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  [(FBSSceneClientSettingsCore *)self setValue:0 forProperty:a2];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = layersCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(FBSSceneClientSettingsCore *)self addLayer:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setPreferredInterfaceOrientation:(int64_t)orientation
{
  if (orientation)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(FBSSceneClientSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [FBSSceneClientSettingsCore setValue:"setValue:forProperty:" forProperty:?];
  }
}

@end