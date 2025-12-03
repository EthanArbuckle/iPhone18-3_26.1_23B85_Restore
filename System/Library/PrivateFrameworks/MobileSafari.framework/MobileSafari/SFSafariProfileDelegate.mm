@interface SFSafariProfileDelegate
- (SFSafariProfileDelegate)initWithDataSource:(id)source;
- (id)sfWebExtensionsController:(id)controller forProfileServerID:(id)d;
- (id)sfWebExtensionsControllerAllProfileExtensionsControllers:(id)controllers;
- (id)sfWebExtensionsControllerContentBlockerManager:(id)manager forProfileServerID:(id)d;
- (id)sfWebExtensionsControllerTabGroupManager:(id)manager;
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles;
- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles;
- (void)enumerateContentBlockerManagersUsingBlock:(id)block;
@end

@implementation SFSafariProfileDelegate

- (SFSafariProfileDelegate)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = SFSafariProfileDelegate;
  v6 = [(SFSafariProfileDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = v7;
  }

  return v7;
}

- (id)sfWebExtensionsControllerTabGroupManager:(id)manager
{
  tabGroupManager = [(SFExtensionsProfilesDataSource *)self->_dataSource tabGroupManager];

  return tabGroupManager;
}

- (id)sfWebExtensionsControllerAllProfileExtensionsControllers:(id)controllers
{
  profileServerIDToWebExtensionsControllers = [(SFExtensionsProfilesDataSource *)self->_dataSource profileServerIDToWebExtensionsControllers];
  allValues = [profileServerIDToWebExtensionsControllers allValues];

  return allValues;
}

- (id)sfWebExtensionsController:(id)controller forProfileServerID:(id)d
{
  dCopy = d;
  profileServerIDToWebExtensionsControllers = [(SFExtensionsProfilesDataSource *)self->_dataSource profileServerIDToWebExtensionsControllers];
  v7 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:dCopy];

  return v7;
}

- (id)sfWebExtensionsControllerContentBlockerManager:(id)manager forProfileServerID:(id)d
{
  dCopy = d;
  profileServerIDToContentBlockerManagers = [(SFExtensionsProfilesDataSource *)self->_dataSource profileServerIDToContentBlockerManagers];
  v7 = [profileServerIDToContentBlockerManagers objectForKeyedSubscript:dCopy];

  return v7;
}

- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles
{
  profileServerIDToWebExtensionsControllers = [(SFExtensionsProfilesDataSource *)self->_dataSource profileServerIDToWebExtensionsControllers];
  allValues = [profileServerIDToWebExtensionsControllers allValues];

  return allValues;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles
{
  profileServerIDToContentBlockerManagers = [(SFExtensionsProfilesDataSource *)self->_dataSource profileServerIDToContentBlockerManagers];
  allValues = [profileServerIDToContentBlockerManagers allValues];

  return allValues;
}

- (void)enumerateContentBlockerManagersUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  profileServerIDToContentBlockerManagers = [(SFExtensionsProfilesDataSource *)self->_dataSource profileServerIDToContentBlockerManagers];
  allValues = [profileServerIDToContentBlockerManagers allValues];

  v7 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v7)
  {
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end