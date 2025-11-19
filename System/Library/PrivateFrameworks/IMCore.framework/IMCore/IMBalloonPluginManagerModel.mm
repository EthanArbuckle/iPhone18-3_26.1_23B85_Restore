@interface IMBalloonPluginManagerModel
- (BOOL)hasCompletedInitialization;
- (BOOL)hasDeferredInstalledAppsChangedNotification;
- (Class)richLinksDataSourceClass;
- (IMBalloonPluginManagerModel)init;
- (NSString)pluginMetaDataFolder;
- (id)extensionMatchingContext;
- (id)highMemoryExtensionMatchingContext;
- (void)setExtensionMatchingContext:(id)a3;
- (void)setHasCompletedInitialization:(BOOL)a3;
- (void)setHasDeferredInstalledAppsChangedNotification:(BOOL)a3;
- (void)setHighMemoryExtensionMatchingContext:(id)a3;
- (void)setPluginIDToMetadataCache:(id)a3;
- (void)setPluginMetaDataFolder:(id)a3;
- (void)setPluginsToRemoveAfterExtensionsUpdate:(id)a3;
- (void)setRichLinksDataSourceClass:(Class)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  hasCompletedInitialization = v2->_hasCompletedInitialization;
  objc_sync_exit(v2);

  return hasCompletedInitialization;
}

- (BOOL)hasDeferredInstalledAppsChangedNotification
{
  v2 = self;
  objc_sync_enter(v2);
  hasDeferredInstalledAppsChangedNotification = v2->_hasDeferredInstalledAppsChangedNotification;
  objc_sync_exit(v2);

  return hasDeferredInstalledAppsChangedNotification;
}

- (void)setExtensionMatchingContext:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  extensionMatchingContext = obj->_extensionMatchingContext;
  obj->_extensionMatchingContext = v4;

  objc_sync_exit(obj);
}

- (id)extensionMatchingContext
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_extensionMatchingContext;
  objc_sync_exit(v2);

  return v3;
}

- (void)setHighMemoryExtensionMatchingContext:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  highMemoryExtensionMatchingContext = obj->_highMemoryExtensionMatchingContext;
  obj->_highMemoryExtensionMatchingContext = v4;

  objc_sync_exit(obj);
}

- (id)highMemoryExtensionMatchingContext
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_highMemoryExtensionMatchingContext;
  objc_sync_exit(v2);

  return v3;
}

- (void)setPluginMetaDataFolder:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  pluginMetaDataFolder = obj->_pluginMetaDataFolder;
  obj->_pluginMetaDataFolder = v4;

  objc_sync_exit(obj);
}

- (NSString)pluginMetaDataFolder
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_pluginMetaDataFolder;
  objc_sync_exit(v2);

  return v3;
}

- (void)setPluginsToRemoveAfterExtensionsUpdate:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  pluginsToRemoveAfterExtensionsUpdate = obj->_pluginsToRemoveAfterExtensionsUpdate;
  obj->_pluginsToRemoveAfterExtensionsUpdate = v4;

  objc_sync_exit(obj);
}

- (void)setPluginIDToMetadataCache:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  pluginIDToMetadataCache = obj->_pluginIDToMetadataCache;
  obj->_pluginIDToMetadataCache = v4;

  objc_sync_exit(obj);
}

- (void)setHasCompletedInitialization:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasCompletedInitialization = a3;
  objc_sync_exit(obj);
}

- (void)setHasDeferredInstalledAppsChangedNotification:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasDeferredInstalledAppsChangedNotification = a3;
  objc_sync_exit(obj);
}

- (Class)richLinksDataSourceClass
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_richLinksDataSourceClass;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRichLinksDataSourceClass:(Class)a3
{
  obj = self;
  objc_sync_enter(obj);
  objc_storeStrong(&obj->_richLinksDataSourceClass, a3);
  objc_sync_exit(obj);
}

@end