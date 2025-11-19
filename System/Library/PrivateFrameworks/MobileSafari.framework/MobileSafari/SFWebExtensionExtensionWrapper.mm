@interface SFWebExtensionExtensionWrapper
- (BOOL)isEnabled;
- (BOOL)isEnabledInAllNamedProfiles;
- (BOOL)isEnabledInProfile:(id)a3;
- (SFWebExtensionExtensionWrapper)initWithWebExtensionData:(id)a3;
- (id)containingAppDisplayName;
- (id)enabledNamedProfiles;
- (id)enabledProfiles;
- (void)_enableNewTabOverrideExtensionWithPresentingViewController:(id)a3 completionHandler:(id)a4;
- (void)disable;
- (void)enableWithPresentingViewController:(id)a3 completionHandler:(id)a4;
- (void)setAllowedInPrivateBrowsing:(BOOL)a3;
@end

@implementation SFWebExtensionExtensionWrapper

- (SFWebExtensionExtensionWrapper)initWithWebExtensionData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFWebExtensionExtensionWrapper;
  v6 = [(SFWebExtensionExtensionWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webExtension, a3);
    v8 = v7;
  }

  return v7;
}

- (id)containingAppDisplayName
{
  v2 = [(WBSWebExtensionData *)self->_webExtension extension];
  v3 = [v2 safari_localizedContainingAppDisplayName];

  return v3;
}

- (BOOL)isEnabled
{
  v3 = [(WBSWebExtensionData *)self->_webExtension extensionsController];
  v4 = [(WBSWebExtensionData *)self->_webExtension extension];
  v5 = [v3 extensionIsEnabled:v4];

  return v5;
}

- (void)enableWithPresentingViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSWebExtensionData *)self->_webExtension extensionsController];
  webExtension = self->_webExtension;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__SFWebExtensionExtensionWrapper_enableWithPresentingViewController_completionHandler___block_invoke;
  v13[3] = &unk_1E721B628;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  [v10 reportCommandShortcutConflictsIfNecessaryForExtension:webExtension presentingViewController:v12 completionHandler:v13];
}

uint64_t __87__SFWebExtensionExtensionWrapper_enableWithPresentingViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) newTabOverridePageURL];

  v3 = [MEMORY[0x1E69C88D8] sharedController];
  v4 = [v3 managedNewTabPageState];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = [*(*(a1 + 32) + 8) extension];
    [v6 setExtension:v7 isEnabled:1];

    [*(a1 + 32) _postNotificationsToUpdateExtensionState];
    v8 = *(*(a1 + 56) + 16);

    return v8();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);

    return [v10 _enableNewTabOverrideExtensionWithPresentingViewController:v11 completionHandler:v12];
  }
}

- (void)_enableNewTabOverrideExtensionWithPresentingViewController:(id)a3 completionHandler:(id)a4
{
  v29 = a4;
  webExtension = self->_webExtension;
  v30 = a3;
  v7 = [(WBSWebExtensionData *)webExtension extensionsController];
  v8 = [v7 profile];
  v9 = [v8 kind];
  v10 = MEMORY[0x1E69DC650];
  v11 = MEMORY[0x1E696AEC0];
  v28 = v8;
  if (v9)
  {
    v12 = _WBSLocalizedString();
    v13 = [(WBSWebExtensionData *)self->_webExtension displayName];
    v14 = [v8 title];
    v15 = [v11 stringWithFormat:v12, v13, v14, v8, v29];
    v16 = _WBSLocalizedString();
    v17 = [v10 alertControllerWithTitle:v15 message:v16 preferredStyle:1];
  }

  else
  {
    v12 = _WBSLocalizedString();
    v13 = [(WBSWebExtensionData *)self->_webExtension displayName];
    v14 = [v11 stringWithFormat:v12, v13];
    v15 = _WBSLocalizedString();
    v17 = [v10 alertControllerWithTitle:v14 message:v15 preferredStyle:1];
  }

  v18 = MEMORY[0x1E69DC648];
  v19 = _WBSLocalizedString();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __111__SFWebExtensionExtensionWrapper__enableNewTabOverrideExtensionWithPresentingViewController_completionHandler___block_invoke;
  v35[3] = &unk_1E721EF20;
  v20 = v7;
  v36 = v20;
  v37 = self;
  v21 = v29;
  v38 = v21;
  v22 = [v18 actionWithTitle:v19 style:1 handler:v35];
  [v17 addAction:v22];

  v23 = MEMORY[0x1E69DC648];
  v24 = _WBSLocalizedString();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __111__SFWebExtensionExtensionWrapper__enableNewTabOverrideExtensionWithPresentingViewController_completionHandler___block_invoke_2;
  v31[3] = &unk_1E721EF20;
  v32 = v20;
  v33 = self;
  v34 = v21;
  v25 = v21;
  v26 = v20;
  v27 = [v23 actionWithTitle:v24 style:0 handler:v31];

  [v17 addAction:v27];
  [v17 setPreferredAction:v27];
  [v30 presentViewController:v17 animated:1 completion:0];
}

void __111__SFWebExtensionExtensionWrapper__enableNewTabOverrideExtensionWithPresentingViewController_completionHandler___block_invoke(uint64_t a1)
{
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [*(a1 + 32) tabOverridePreferencesManager];
  v3 = [v2 extensionComposedIdentifierForNewTabPreferenceInDefaults:v9];
  v4 = [*(*(a1 + 40) + 8) composedIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) tabOverridePreferencesManager];
    [v6 clearNewTabBehaviorInDefaults:v9];
  }

  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 40) + 8) extension];
  [v7 setExtension:v8 isEnabled:1];

  [*(a1 + 40) _postNotificationsToUpdateExtensionState];
  (*(*(a1 + 48) + 16))();
}

uint64_t __111__SFWebExtensionExtensionWrapper__enableNewTabOverrideExtensionWithPresentingViewController_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tabOverridePreferencesManager];
  v3 = [*(*(a1 + 40) + 8) composedIdentifier];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setNewTabBehaviorWithExtensionComposedIdentifier:v3 inDefaults:v4];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 8) extension];
  [v5 setExtension:v6 isEnabled:1];

  [*(a1 + 40) _postNotificationsToUpdateExtensionState];
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

- (void)disable
{
  v3 = [(WBSWebExtensionData *)self->_webExtension extensionsController];
  v4 = [(WBSWebExtensionData *)self->_webExtension extension];
  [v3 setExtension:v4 isEnabled:0];

  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
}

- (void)setAllowedInPrivateBrowsing:(BOOL)a3
{
  [(WBSWebExtensionData *)self->_webExtension setAllowedInPrivateBrowsing:a3];

  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
}

- (id)enabledProfiles
{
  v3 = [(WBSWebExtensionData *)self->_webExtension extensionsController];
  v4 = [v3 tabGroupManager];
  v5 = [v4 profiles];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SFWebExtensionExtensionWrapper_enabledProfiles__block_invoke;
  v8[3] = &unk_1E721EED8;
  v8[4] = self;
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

id __49__SFWebExtensionExtensionWrapper_enabledProfiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEnabledInProfile:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)enabledNamedProfiles
{
  v3 = [(WBSWebExtensionData *)self->_webExtension extensionsController];
  v4 = [v3 tabGroupManager];
  v5 = [v4 namedProfiles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SFWebExtensionExtensionWrapper *)self enabledProfiles];
    v8 = [v7 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_147];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __54__SFWebExtensionExtensionWrapper_enabledNamedProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 kind])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEnabledInProfile:(id)a3
{
  webExtension = self->_webExtension;
  v5 = a3;
  v6 = [(WBSWebExtensionData *)webExtension extensionsController];
  v7 = [v5 identifierForExtensions];

  v8 = [v6 webExtensionsControllerForProfileServerID:v7];

  v9 = [(WBSWebExtensionData *)self->_webExtension extension];
  LOBYTE(v7) = [v8 extensionIsEnabled:v9];

  return v7;
}

- (BOOL)isEnabledInAllNamedProfiles
{
  v3 = [(WBSWebExtensionData *)self->_webExtension extensionsController];
  v4 = [(SFWebExtensionExtensionWrapper *)self enabledNamedProfiles];
  v5 = [v4 count];
  v6 = [v3 tabGroupManager];
  v7 = [v6 namedProfiles];
  LOBYTE(v5) = v5 == [v7 count];

  return v5;
}

@end