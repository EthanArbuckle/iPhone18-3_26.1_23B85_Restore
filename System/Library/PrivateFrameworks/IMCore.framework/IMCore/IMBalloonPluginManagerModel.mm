@interface IMBalloonPluginManagerModel
- (BOOL)hasCompletedInitialization;
- (BOOL)hasDeferredInstalledAppsChangedNotification;
- (Class)richLinksDataSourceClass;
- (IMBalloonPluginManagerModel)init;
- (NSString)pluginMetaDataFolder;
- (id)extensionMatchingContext;
- (id)highMemoryExtensionMatchingContext;
- (void)setExtensionMatchingContext:(id)context;
- (void)setHasCompletedInitialization:(BOOL)initialization;
- (void)setHasDeferredInstalledAppsChangedNotification:(BOOL)notification;
- (void)setHighMemoryExtensionMatchingContext:(id)context;
- (void)setPluginIDToMetadataCache:(id)cache;
- (void)setPluginMetaDataFolder:(id)folder;
- (void)setPluginsToRemoveAfterExtensionsUpdate:(id)update;
- (void)setRichLinksDataSourceClass:(Class)class;
@end

@implementation IMBalloonPluginManagerModel

- (IMBalloonPluginManagerModel)init
{
  v20.receiver = self;
  v20.super_class = IMBalloonPluginManagerModel;
  v2 = [(IMBalloonPluginManagerModel *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.IMCore.IMBalloonPluginManagerModel", v4);
    v6 = *(v2 + 9);
    *(v2 + 9) = v5;

    v7 = [IMThreadSafeBalloonPluginMap alloc];
    v9 = objc_msgSend_initWithConcurrentDataQueue_(v7, v8, *(v2 + 9));
    v10 = *(v2 + 7);
    *(v2 + 7) = v9;

    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v11, v12);
    v14 = *(v2 + 5);
    *(v2 + 5) = v13;

    v17 = objc_msgSend_set(MEMORY[0x1E695DFD8], v15, v16);
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;
  }

  return v2;
}

- (BOOL)hasCompletedInitialization
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasCompletedInitialization = selfCopy->_hasCompletedInitialization;
  objc_sync_exit(selfCopy);

  return hasCompletedInitialization;
}

- (BOOL)hasDeferredInstalledAppsChangedNotification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasDeferredInstalledAppsChangedNotification = selfCopy->_hasDeferredInstalledAppsChangedNotification;
  objc_sync_exit(selfCopy);

  return hasDeferredInstalledAppsChangedNotification;
}

- (void)setExtensionMatchingContext:(id)context
{
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  extensionMatchingContext = obj->_extensionMatchingContext;
  obj->_extensionMatchingContext = contextCopy;

  objc_sync_exit(obj);
}

- (id)extensionMatchingContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_extensionMatchingContext;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setHighMemoryExtensionMatchingContext:(id)context
{
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  highMemoryExtensionMatchingContext = obj->_highMemoryExtensionMatchingContext;
  obj->_highMemoryExtensionMatchingContext = contextCopy;

  objc_sync_exit(obj);
}

- (id)highMemoryExtensionMatchingContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_highMemoryExtensionMatchingContext;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPluginMetaDataFolder:(id)folder
{
  folderCopy = folder;
  obj = self;
  objc_sync_enter(obj);
  pluginMetaDataFolder = obj->_pluginMetaDataFolder;
  obj->_pluginMetaDataFolder = folderCopy;

  objc_sync_exit(obj);
}

- (NSString)pluginMetaDataFolder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_pluginMetaDataFolder;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPluginsToRemoveAfterExtensionsUpdate:(id)update
{
  updateCopy = update;
  obj = self;
  objc_sync_enter(obj);
  pluginsToRemoveAfterExtensionsUpdate = obj->_pluginsToRemoveAfterExtensionsUpdate;
  obj->_pluginsToRemoveAfterExtensionsUpdate = updateCopy;

  objc_sync_exit(obj);
}

- (void)setPluginIDToMetadataCache:(id)cache
{
  cacheCopy = cache;
  obj = self;
  objc_sync_enter(obj);
  pluginIDToMetadataCache = obj->_pluginIDToMetadataCache;
  obj->_pluginIDToMetadataCache = cacheCopy;

  objc_sync_exit(obj);
}

- (void)setHasCompletedInitialization:(BOOL)initialization
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasCompletedInitialization = initialization;
  objc_sync_exit(obj);
}

- (void)setHasDeferredInstalledAppsChangedNotification:(BOOL)notification
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasDeferredInstalledAppsChangedNotification = notification;
  objc_sync_exit(obj);
}

- (Class)richLinksDataSourceClass
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_richLinksDataSourceClass;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRichLinksDataSourceClass:(Class)class
{
  obj = self;
  objc_sync_enter(obj);
  objc_storeStrong(&obj->_richLinksDataSourceClass, class);
  objc_sync_exit(obj);
}

@end