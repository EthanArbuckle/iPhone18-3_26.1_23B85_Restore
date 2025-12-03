@interface IXClientProtocolInterface
+ (id)interface;
+ (id)new;
+ (void)configureInterface:(id)interface;
- (IXClientProtocolInterface)init;
@end

@implementation IXClientProtocolInterface

- (IXClientProtocolInterface)init
{
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)new
{
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)interface
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_100121E88);
  if (!WeakRetained)
  {
    interfaceProtocol = [selfCopy interfaceProtocol];
    WeakRetained = [NSXPCInterface interfaceWithProtocol:interfaceProtocol];

    [selfCopy configureInterface:WeakRetained];
    objc_storeWeak(&qword_100121E88, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (void)configureInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [interfaceCopy setClasses:v5 forSelector:"_remote_fetchSeedsForCoordinatorsWithIntent:completion:" argumentIndex:0 ofReply:1];

  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [interfaceCopy setClasses:v7 forSelector:"_remote_registerObserverMachServiceName:forClientIdentifiers:respondingToSelectors:" argumentIndex:1 ofReply:0];

  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  [interfaceCopy setClasses:v9 forSelector:"_remote_registerTransientObserver:forClientIdentifiers:respondingToSelectors:" argumentIndex:1 ofReply:0];

  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  [interfaceCopy setClasses:v11 forSelector:"_remote_addObserversForCoordinatorsWithUUIDs:fireObserverMethods:" argumentIndex:0 ofReply:0];

  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
  [interfaceCopy setClasses:v13 forSelector:"_remote_addObserversForDataPromisesWithUUIDs:" argumentIndex:0 ofReply:0];

  v14 = objc_opt_class();
  v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
  [interfaceCopy setClasses:v15 forSelector:"_remote_IXSCoordinatedAppInstall:setInitialODRAssetPromiseUUIDs:completion:" argumentIndex:1 ofReply:0];

  v16 = objc_opt_class();
  v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
  [interfaceCopy setClasses:v17 forSelector:"_remote_IXSCoordinatedAppInstall:setEssentialAssetPromiseUUIDs:completion:" argumentIndex:1 ofReply:0];

  v18 = objc_opt_class();
  v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
  [interfaceCopy setClasses:v19 forSelector:"_remote_IXSCoordinatedAppInstall:setDataImportPromiseUUIDs:completion:" argumentIndex:1 ofReply:0];

  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v20, v21, objc_opt_class(), 0];
  [interfaceCopy setClasses:v22 forSelector:"_remote_IXSCoordinatedAppInstall:getInitialODRAssetPromises:" argumentIndex:0 ofReply:1];

  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [NSSet setWithObjects:v23, v24, objc_opt_class(), 0];
  [interfaceCopy setClasses:v25 forSelector:"_remote_IXSCoordinatedAppInstall:getEssentialAssetPromises:" argumentIndex:0 ofReply:1];

  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [NSSet setWithObjects:v26, v27, objc_opt_class(), 0];
  [interfaceCopy setClasses:v28 forSelector:"_remote_IXSCoordinatedAppInstall:getDataImportPromises:" argumentIndex:0 ofReply:1];

  v29 = objc_opt_class();
  v30 = [NSSet setWithObjects:v29, objc_opt_class(), 0];
  [interfaceCopy setClasses:v30 forSelector:"_remote_IXSPlaceholder:setAppExtensionPlaceholderPromiseUUIDs:completion:" argumentIndex:1 ofReply:0];

  v31 = objc_opt_class();
  v32 = [NSSet setWithObjects:v31, objc_opt_class(), 0];
  [interfaceCopy setClasses:v32 forSelector:"_remote_IXSPlaceholder:getAppExtensionPlaceholderPromises:" argumentIndex:0 ofReply:1];

  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [NSSet setWithObjects:v33, v34, objc_opt_class(), 0];
  [interfaceCopy setClasses:v35 forSelector:"_remote_removabilityDataWithCompletion:" argumentIndex:0 ofReply:1];

  v36 = [NSSet setWithObjects:objc_opt_class(), 0];
  [interfaceCopy setClasses:v36 forSelector:"_remote_defaultAppMetadataForAppIdentity:completion:" argumentIndex:0 ofReply:1];

  v37 = objc_opt_class();
  v38 = [NSSet setWithObjects:v37, objc_opt_class(), 0];
  [interfaceCopy setClasses:v38 forSelector:"_remote_defaultAppMetadataListWithCompletion:" argumentIndex:0 ofReply:1];

  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = [NSSet setWithObjects:v39, v40, v41, objc_opt_class(), 0];
  [interfaceCopy setClasses:v42 forSelector:"_remote_stagingLocationForInstallLocation:completion:" argumentIndex:0 ofReply:0];

  v43 = objc_opt_class();
  v44 = [NSSet setWithObjects:v43, objc_opt_class(), 0];
  [interfaceCopy setClasses:v44 forSelector:"_remote_setKnownOSModuleURLs:options:completion:" argumentIndex:0 ofReply:0];
}

@end