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
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface_0);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x1E696B0D0];
    interfaceProtocol = [selfCopy interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:interfaceProtocol];

    [selfCopy configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface_0, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (void)configureInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel__remote_fetchSeedsForCoordinatorsWithIntent_completion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel__remote_registerObserverMachServiceName_forClientIdentifiers_respondingToSelectors_ argumentIndex:1 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v12 forSelector:sel__remote_registerTransientObserver_forClientIdentifiers_respondingToSelectors_ argumentIndex:1 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel__remote_addObserversForCoordinatorsWithUUIDs_fireObserverMethods_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v18 forSelector:sel__remote_addObserversForDataPromisesWithUUIDs_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v21 forSelector:sel__remote_IXSCoordinatedAppInstall_setInitialODRAssetPromiseUUIDs_completion_ argumentIndex:1 ofReply:0];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v24 forSelector:sel__remote_IXSCoordinatedAppInstall_setEssentialAssetPromiseUUIDs_completion_ argumentIndex:1 ofReply:0];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v27 forSelector:sel__remote_IXSCoordinatedAppInstall_setDataImportPromiseUUIDs_completion_ argumentIndex:1 ofReply:0];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = [v28 setWithObjects:{v29, v30, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v31 forSelector:sel__remote_IXSCoordinatedAppInstall_getInitialODRAssetPromises_ argumentIndex:0 ofReply:1];

  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v35 forSelector:sel__remote_IXSCoordinatedAppInstall_getEssentialAssetPromises_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = [v36 setWithObjects:{v37, v38, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v39 forSelector:sel__remote_IXSCoordinatedAppInstall_getDataImportPromises_ argumentIndex:0 ofReply:1];

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v42 forSelector:sel__remote_IXSPlaceholder_setAppExtensionPlaceholderPromiseUUIDs_completion_ argumentIndex:1 ofReply:0];

  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v45 forSelector:sel__remote_IXSPlaceholder_getAppExtensionPlaceholderPromises_ argumentIndex:0 ofReply:1];

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v49 forSelector:sel__remote_removabilityDataWithCompletion_ argumentIndex:0 ofReply:1];

  v50 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v50 forSelector:sel__remote_defaultAppMetadataForAppIdentity_completion_ argumentIndex:0 ofReply:1];

  v51 = MEMORY[0x1E695DFD8];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v53 forSelector:sel__remote_defaultAppMetadataListWithCompletion_ argumentIndex:0 ofReply:1];

  v54 = MEMORY[0x1E695DFD8];
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = [v54 setWithObjects:{v55, v56, v57, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v58 forSelector:sel__remote_stagingLocationForInstallLocation_completion_ argumentIndex:0 ofReply:0];

  v59 = MEMORY[0x1E695DFD8];
  v60 = objc_opt_class();
  v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v61 forSelector:sel__remote_setKnownOSModuleURLs_options_completion_ argumentIndex:0 ofReply:0];
}

@end