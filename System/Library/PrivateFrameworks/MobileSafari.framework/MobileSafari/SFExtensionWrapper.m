@interface SFExtensionWrapper
+ (id)extensionWrapperForContentBlockerWithComposedIdentifier:(id)a3 contentBlockerManager:(id)a4;
+ (id)extensionWrapperForWebExtensionWithComposedIdentifier:(id)a3 webExtensionsController:(id)a4;
- (BOOL)contentBlockerHasSameNameAsWebExtensionFromSameApp:(id)a3;
- (BOOL)isEnabledInAnyNamedProfile;
- (BOOL)isEnabledInAnyProfile;
- (NSString)debugDescription;
- (int64_t)localizedCompare:(id)a3;
- (void)_postNotificationsToUpdateExtensionState;
@end

@implementation SFExtensionWrapper

+ (id)extensionWrapperForWebExtensionWithComposedIdentifier:(id)a3 webExtensionsController:(id)a4
{
  v4 = [a4 webExtensionForComposedIdentifier:a3];
  if (v4)
  {
    v5 = [[SFWebExtensionExtensionWrapper alloc] initWithWebExtensionData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)extensionWrapperForContentBlockerWithComposedIdentifier:(id)a3 contentBlockerManager:(id)a4
{
  v5 = a4;
  v6 = [v5 _contentBlockerWithComposedIdentifier:a3];
  if (v6)
  {
    v7 = [[SFContentBlockerExtensionWrapper alloc] initWithExtension:v6 contentBlockerManager:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)localizedCompare:(id)a3
{
  v4 = a3;
  v5 = [(SFExtensionWrapper *)self containingAppDisplayName];
  v6 = [v4 containingAppDisplayName];
  v7 = [v5 localizedCompare:v6];

  if (!v7)
  {
    v8 = [(SFExtensionWrapper *)self displayName];
    v9 = [v4 displayName];
    v7 = [v8 localizedCompare:v9];
  }

  return v7;
}

- (BOOL)contentBlockerHasSameNameAsWebExtensionFromSameApp:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SFExtensionWrapper *)self isContentBlocker])
  {
    v5 = [(SFExtensionWrapper *)self extension];
    v6 = [v5 _plugIn];
    v23 = [v6 containingUrl];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = v4;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if (v12 != self)
          {
            v13 = [*(*(&v24 + 1) + 8 * i) extension];
            v14 = [v13 _plugIn];
            v15 = [v14 containingUrl];
            v16 = [v23 isEqual:v15];

            if (v16)
            {
              v17 = [(SFExtensionWrapper *)self displayName];
              v18 = [(SFExtensionWrapper *)v12 displayName];
              v19 = [v17 isEqualToString:v18];

              if (v19)
              {
                v20 = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_15:
      v4 = v22;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEnabledInAnyProfile
{
  v2 = [(SFExtensionWrapper *)self enabledProfiles];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isEnabledInAnyNamedProfile
{
  v2 = [(SFExtensionWrapper *)self enabledNamedProfiles];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SFExtensionWrapper *)self extension];
  v7 = [v3 stringWithFormat:@"<%@: %p extension = %@>", v5, self, v6];;

  return v7;
}

- (void)_postNotificationsToUpdateExtensionState
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E69C9A58] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x1E69C9A30] object:self];
}

@end