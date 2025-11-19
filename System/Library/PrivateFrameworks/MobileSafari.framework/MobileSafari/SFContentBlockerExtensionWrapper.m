@interface SFContentBlockerExtensionWrapper
- (BOOL)isEnabledInAllNamedProfiles;
- (BOOL)isEnabledInProfile:(id)a3;
- (SFContentBlockerExtensionWrapper)initWithExtension:(id)a3 contentBlockerManager:(id)a4;
- (id)composedIdentifier;
- (id)enabledNamedProfiles;
- (id)enabledProfiles;
- (void)disable;
- (void)enableWithPresentingViewController:(id)a3 completionHandler:(id)a4;
- (void)setAllowedInPrivateBrowsing:(BOOL)a3;
@end

@implementation SFContentBlockerExtensionWrapper

- (SFContentBlockerExtensionWrapper)initWithExtension:(id)a3 contentBlockerManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SFContentBlockerExtensionWrapper;
  v9 = [(SFContentBlockerExtensionWrapper *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, a3);
    objc_storeStrong(&v10->_contentBlockerManager, a4);
    v11 = v10;
  }

  return v10;
}

- (id)composedIdentifier
{
  v3 = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  v4 = [v3 composedIdentifierForExtensionStateForExtension:self->_extension];

  return v4;
}

- (void)enableWithPresentingViewController:(id)a3 completionHandler:(id)a4
{
  contentBlockerManager = self->_contentBlockerManager;
  extension = self->_extension;
  v7 = a4;
  [(SFContentBlockerManager *)contentBlockerManager setExtension:extension isEnabled:1 byUserGesture:1];
  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
  v7[2]();
}

- (void)disable
{
  [(SFContentBlockerManager *)self->_contentBlockerManager setExtension:self->_extension isEnabled:0 byUserGesture:1];

  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
}

- (void)setAllowedInPrivateBrowsing:(BOOL)a3
{
  [(SFContentBlockerManager *)self->_contentBlockerManager setExtension:self->_extension isEnabledInPrivateBrowsing:a3 updateUserContentController:1];

  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
}

- (id)enabledProfiles
{
  v3 = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  v4 = [v3 tabGroupManager];
  v5 = [v4 profiles];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SFContentBlockerExtensionWrapper_enabledProfiles__block_invoke;
  v8[3] = &unk_1E721EED8;
  v8[4] = self;
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

id __51__SFContentBlockerExtensionWrapper_enabledProfiles__block_invoke(uint64_t a1, void *a2)
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
  v3 = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  v4 = [v3 tabGroupManager];
  v5 = [v4 namedProfiles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SFContentBlockerExtensionWrapper *)self enabledProfiles];
    v8 = [v7 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_57];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __56__SFContentBlockerExtensionWrapper_enabledNamedProfiles__block_invoke(uint64_t a1, void *a2)
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
  v3 = self;
  contentBlockerManager = self->_contentBlockerManager;
  v5 = a3;
  v6 = [(SFContentBlockerManager *)contentBlockerManager webExtensionsController];
  v7 = [v5 identifierForExtensions];

  v8 = [v6 contentBlockerManagerForProfileServerID:v7];

  LOBYTE(v3) = [v8 extensionIsEnabled:v3->_extension];
  return v3;
}

- (BOOL)isEnabledInAllNamedProfiles
{
  v3 = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  v4 = [(SFContentBlockerExtensionWrapper *)self enabledNamedProfiles];
  v5 = [v4 count];
  v6 = [v3 tabGroupManager];
  v7 = [v6 namedProfiles];
  LOBYTE(v5) = v5 == [v7 count];

  return v5;
}

@end