@interface SFExtensionWrapper
+ (id)extensionWrapperForContentBlockerWithComposedIdentifier:(id)identifier contentBlockerManager:(id)manager;
+ (id)extensionWrapperForWebExtensionWithComposedIdentifier:(id)identifier webExtensionsController:(id)controller;
- (BOOL)contentBlockerHasSameNameAsWebExtensionFromSameApp:(id)app;
- (BOOL)isEnabledInAnyNamedProfile;
- (BOOL)isEnabledInAnyProfile;
- (NSString)debugDescription;
- (int64_t)localizedCompare:(id)compare;
- (void)_postNotificationsToUpdateExtensionState;
@end

@implementation SFExtensionWrapper

+ (id)extensionWrapperForWebExtensionWithComposedIdentifier:(id)identifier webExtensionsController:(id)controller
{
  v4 = [controller webExtensionForComposedIdentifier:identifier];
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

+ (id)extensionWrapperForContentBlockerWithComposedIdentifier:(id)identifier contentBlockerManager:(id)manager
{
  managerCopy = manager;
  v6 = [managerCopy _contentBlockerWithComposedIdentifier:identifier];
  if (v6)
  {
    v7 = [[SFContentBlockerExtensionWrapper alloc] initWithExtension:v6 contentBlockerManager:managerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)localizedCompare:(id)compare
{
  compareCopy = compare;
  containingAppDisplayName = [(SFExtensionWrapper *)self containingAppDisplayName];
  containingAppDisplayName2 = [compareCopy containingAppDisplayName];
  v7 = [containingAppDisplayName localizedCompare:containingAppDisplayName2];

  if (!v7)
  {
    displayName = [(SFExtensionWrapper *)self displayName];
    displayName2 = [compareCopy displayName];
    v7 = [displayName localizedCompare:displayName2];
  }

  return v7;
}

- (BOOL)contentBlockerHasSameNameAsWebExtensionFromSameApp:(id)app
{
  v29 = *MEMORY[0x1E69E9840];
  appCopy = app;
  if ([(SFExtensionWrapper *)self isContentBlocker])
  {
    extension = [(SFExtensionWrapper *)self extension];
    _plugIn = [extension _plugIn];
    containingUrl = [_plugIn containingUrl];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = appCopy;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = appCopy;
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
            extension2 = [*(*(&v24 + 1) + 8 * i) extension];
            _plugIn2 = [extension2 _plugIn];
            containingUrl2 = [_plugIn2 containingUrl];
            v16 = [containingUrl isEqual:containingUrl2];

            if (v16)
            {
              displayName = [(SFExtensionWrapper *)self displayName];
              displayName2 = [(SFExtensionWrapper *)v12 displayName];
              v19 = [displayName isEqualToString:displayName2];

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
      appCopy = v22;
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
  enabledProfiles = [(SFExtensionWrapper *)self enabledProfiles];
  v3 = [enabledProfiles count] != 0;

  return v3;
}

- (BOOL)isEnabledInAnyNamedProfile
{
  enabledNamedProfiles = [(SFExtensionWrapper *)self enabledNamedProfiles];
  v3 = [enabledNamedProfiles count] != 0;

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  extension = [(SFExtensionWrapper *)self extension];
  v7 = [v3 stringWithFormat:@"<%@: %p extension = %@>", v5, self, extension];;

  return v7;
}

- (void)_postNotificationsToUpdateExtensionState
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69C9A58] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:*MEMORY[0x1E69C9A30] object:self];
}

@end