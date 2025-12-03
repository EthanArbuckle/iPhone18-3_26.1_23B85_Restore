@interface SFContentBlockerExtensionWrapper
- (BOOL)isEnabledInAllNamedProfiles;
- (BOOL)isEnabledInProfile:(id)profile;
- (SFContentBlockerExtensionWrapper)initWithExtension:(id)extension contentBlockerManager:(id)manager;
- (id)composedIdentifier;
- (id)enabledNamedProfiles;
- (id)enabledProfiles;
- (void)disable;
- (void)enableWithPresentingViewController:(id)controller completionHandler:(id)handler;
- (void)setAllowedInPrivateBrowsing:(BOOL)browsing;
@end

@implementation SFContentBlockerExtensionWrapper

- (SFContentBlockerExtensionWrapper)initWithExtension:(id)extension contentBlockerManager:(id)manager
{
  extensionCopy = extension;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = SFContentBlockerExtensionWrapper;
  v9 = [(SFContentBlockerExtensionWrapper *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, extension);
    objc_storeStrong(&v10->_contentBlockerManager, manager);
    v11 = v10;
  }

  return v10;
}

- (id)composedIdentifier
{
  webExtensionsController = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  v4 = [webExtensionsController composedIdentifierForExtensionStateForExtension:self->_extension];

  return v4;
}

- (void)enableWithPresentingViewController:(id)controller completionHandler:(id)handler
{
  contentBlockerManager = self->_contentBlockerManager;
  extension = self->_extension;
  handlerCopy = handler;
  [(SFContentBlockerManager *)contentBlockerManager setExtension:extension isEnabled:1 byUserGesture:1];
  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
  handlerCopy[2]();
}

- (void)disable
{
  [(SFContentBlockerManager *)self->_contentBlockerManager setExtension:self->_extension isEnabled:0 byUserGesture:1];

  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
}

- (void)setAllowedInPrivateBrowsing:(BOOL)browsing
{
  [(SFContentBlockerManager *)self->_contentBlockerManager setExtension:self->_extension isEnabledInPrivateBrowsing:browsing updateUserContentController:1];

  [(SFExtensionWrapper *)self _postNotificationsToUpdateExtensionState];
}

- (id)enabledProfiles
{
  webExtensionsController = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  tabGroupManager = [webExtensionsController tabGroupManager];
  profiles = [tabGroupManager profiles];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SFContentBlockerExtensionWrapper_enabledProfiles__block_invoke;
  v8[3] = &unk_1E721EED8;
  v8[4] = self;
  v6 = [profiles safari_mapAndFilterObjectsUsingBlock:v8];

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
  webExtensionsController = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  tabGroupManager = [webExtensionsController tabGroupManager];
  namedProfiles = [tabGroupManager namedProfiles];
  v6 = [namedProfiles count];

  if (v6)
  {
    enabledProfiles = [(SFContentBlockerExtensionWrapper *)self enabledProfiles];
    v8 = [enabledProfiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_57];
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

- (BOOL)isEnabledInProfile:(id)profile
{
  selfCopy = self;
  contentBlockerManager = self->_contentBlockerManager;
  profileCopy = profile;
  webExtensionsController = [(SFContentBlockerManager *)contentBlockerManager webExtensionsController];
  identifierForExtensions = [profileCopy identifierForExtensions];

  v8 = [webExtensionsController contentBlockerManagerForProfileServerID:identifierForExtensions];

  LOBYTE(selfCopy) = [v8 extensionIsEnabled:selfCopy->_extension];
  return selfCopy;
}

- (BOOL)isEnabledInAllNamedProfiles
{
  webExtensionsController = [(SFContentBlockerManager *)self->_contentBlockerManager webExtensionsController];
  enabledNamedProfiles = [(SFContentBlockerExtensionWrapper *)self enabledNamedProfiles];
  v5 = [enabledNamedProfiles count];
  tabGroupManager = [webExtensionsController tabGroupManager];
  namedProfiles = [tabGroupManager namedProfiles];
  LOBYTE(v5) = v5 == [namedProfiles count];

  return v5;
}

@end