@interface FBSSceneClientSettingsCore
+ (id)descriptionOfValue:(id)a3 forSetting:(id)a4;
+ (void)configureSetting:(id)a3;
- (BSKeyedSettings)layers;
- (FBSSceneIdentityToken)preferredSceneHostIdentity;
- (NSString)preferredSceneHostIdentifier;
- (double)preferredLevel;
- (int64_t)preferredInterfaceOrientation;
- (void)setLayers:(id)a3;
- (void)setPreferredInterfaceOrientation:(int64_t)a3;
@end

@implementation FBSSceneClientSettingsCore

- (BSKeyedSettings)layers
{
  v2 = [(FBSSceneClientSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__FBSSceneClientSettingsCore_layers__block_invoke;
  v6[3] = &unk_1E76BF678;
  v4 = v3;
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
  v3 = [v2 integerValue];

  return v3;
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

+ (id)descriptionOfValue:(id)a3 forSetting:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 matchesProperty:sel_preferredInterfaceOrientation])
  {
    [v7 integerValue];

    BSInterfaceOrientationDescription();
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___FBSSceneClientSettingsCore;
  v8 = objc_msgSendSuper2(&v10, sel_descriptionOfValue_forSetting_, v7, v6);

  return v8;
}

+ (void)configureSetting:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___FBSSceneClientSettingsCore;
  v3 = a3;
  objc_msgSendSuper2(&v4, sel_configureSetting_, v3);
  [v3 setVolatile:{objc_msgSend(v3, "matchesProperty:", sel_layers, v4.receiver, v4.super_class)}];
}

- (void)setLayers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(FBSSceneClientSettingsCore *)self setValue:0 forProperty:a2];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
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

- (void)setPreferredInterfaceOrientation:(int64_t)a3
{
  if (a3)
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