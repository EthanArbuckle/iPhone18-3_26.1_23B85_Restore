@interface HDPluginManager
- (HDDaemon)daemon;
- (HDPluginManager)initWithDaemon:(id)daemon;
- (NSArray)allowablePluginDirectoryPaths;
- (NSArray)notificationInstructionCriteriaClasses;
- (id)_builtInPluginClasses;
- (id)_createPluginsFromClasses:(id)classes;
- (id)_internalPluginsDirectoryPaths;
- (id)_pluginClasses;
- (id)_pluginDirectoryPaths;
- (id)_pluginsDirectoryPath;
- (id)createExtensionsForDaemon:(id)daemon;
- (id)createExtensionsForProfile:(id)profile;
- (id)pluginsConformingToProtocol:(id)protocol;
- (void)notifyPluginsOfDatabaseObliteration;
@end

@implementation HDPluginManager

- (id)_builtInPluginClasses
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDPluginManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  if (!daemonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDPluginManager.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"daemon != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HDPluginManager;
  v6 = [(HDPluginManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_daemon, daemonCopy);
    _pluginClasses = [(HDPluginManager *)v7 _pluginClasses];
    v9 = [(HDPluginManager *)v7 _createPluginsFromClasses:_pluginClasses];
    plugins = v7->_plugins;
    v7->_plugins = v9;
  }

  return v7;
}

- (id)_pluginsDirectoryPath
{
  if (self)
  {
    self = [GSSystemRootDirectory() stringByAppendingPathComponent:@"/System/Library/Health/Plugins"];
    v1 = vars8;
  }

  return self;
}

- (id)_internalPluginsDirectoryPaths
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"/AppleInternal/Library/Health/Plugins"];
    v5[0] = v1;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_pluginDirectoryPaths
{
  v3 = MEMORY[0x277CBEB18];
  _pluginsDirectoryPath = [(HDPluginManager *)self _pluginsDirectoryPath];
  v5 = [v3 arrayWithObject:_pluginsDirectoryPath];

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _internalPluginsDirectoryPaths = [(HDPluginManager *)self _internalPluginsDirectoryPaths];
    [v5 addObjectsFromArray:_internalPluginsDirectoryPaths];
  }

  return v5;
}

- (NSArray)allowablePluginDirectoryPaths
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _pluginsDirectoryPath = [(HDPluginManager *)self _pluginsDirectoryPath];
  [v3 addObject:_pluginsDirectoryPath];

  _internalPluginsDirectoryPaths = [(HDPluginManager *)self _internalPluginsDirectoryPaths];
  [v3 addObjectsFromArray:_internalPluginsDirectoryPaths];

  v6 = [GSSystemRootDirectory() stringByAppendingPathComponent:*MEMORY[0x277CCC640]];
  [v3 addObject:v6];

  return v3;
}

- (id)_pluginClasses
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _builtInPluginClasses = [(HDPluginManager *)self _builtInPluginClasses];
  v51 = v3;
  [v3 addObjectsFromArray:_builtInPluginClasses];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [(HDPluginManager *)self _pluginDirectoryPaths];
  v53 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v53)
  {
    v5 = MEMORY[0x277CCC2B0];
    v52 = *v69;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v69 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v68 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if (self)
        {
          *buf = &unk_283CC56F8;
          v9 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        }

        else
        {
          v9 = 0;
        }

        v67 = 0;
        v63 = v9;
        v10 = v7;
        if (self)
        {
          v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
          v12 = [v11 contentsOfDirectoryAtPath:v10 error:&v67];
          if (v12)
          {
            v55 = v11;
            v56 = v8;
            v57 = v6;
            v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v54 = v12;
            v64 = v12;
            v13 = 0x277CCA000uLL;
            v66 = [v64 countByEnumeratingWithState:&v72 objects:v82 count:16];
            if (v66)
            {
              v14 = *v73;
              v59 = v10;
              v62 = *v73;
              do
              {
                v15 = 0;
                do
                {
                  if (*v73 != v14)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v16 = *(*(&v72 + 1) + 8 * v15);
                  v17 = objc_autoreleasePoolPush();
                  pathExtension = [v16 pathExtension];
                  v19 = [pathExtension isEqualToString:@"bundle"];

                  if (v19)
                  {
                    v20 = [v10 stringByAppendingPathComponent:v16];
                    v21 = v63;
                    v22 = v20;
                    v23 = [objc_alloc(*(v13 + 2264)) initWithPath:v22];
                    if (v23)
                    {
                      processHasLoadedUIKit = [MEMORY[0x277CCDD30] processHasLoadedUIKit];
                      v80 = 0;
                      v25 = [v23 loadAndReturnError:&v80];
                      v65 = v80;
                      if (v25)
                      {
                        if ((processHasLoadedUIKit & 1) == 0)
                        {
                          if ([MEMORY[0x277CCDD30] processHasLoadedUIKit])
                          {
                            _HKInitializeLogging();
                            v26 = *v5;
                            if (os_log_type_enabled(*v5, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 138543362;
                              *&buf[4] = v22;
                              _os_log_fault_impl(&dword_228986000, v26, OS_LOG_TYPE_FAULT, "**** IMPROPER LOADING OF UIKIT BY HEALTHD PLUGIN *** (%{public}@)", buf, 0xCu);
                            }
                          }
                        }

                        v61 = v21;
                        principalClass = [v23 principalClass];
                        if (!principalClass)
                        {
                          _HKInitializeLogging();
                          v28 = *v5;
                          if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138543362;
                            *&buf[4] = v22;
                            _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Error: failed to get principal class from bundle %{public}@", buf, 0xCu);
                          }
                        }

                        v29 = v5;
                        v78 = 0u;
                        v79 = 0u;
                        v76 = 0u;
                        v77 = 0u;
                        v30 = v61;
                        v31 = [v30 countByEnumeratingWithState:&v76 objects:buf count:16];
                        if (v31)
                        {
                          v32 = v31;
                          v33 = *v77;
                          while (2)
                          {
                            for (i = 0; i != v32; ++i)
                            {
                              if (*v77 != v33)
                              {
                                objc_enumerationMutation(v30);
                              }

                              if ([principalClass conformsToProtocol:*(*(&v76 + 1) + 8 * i)])
                              {
                                _HKInitializeLogging();
                                v5 = v29;
                                v39 = *v29;
                                if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
                                {
                                  *v83 = 138543362;
                                  v84 = v22;
                                  _os_log_debug_impl(&dword_228986000, v39, OS_LOG_TYPE_DEBUG, "Loaded bundle %{public}@", v83, 0xCu);
                                }

                                v36 = principalClass;

                                v13 = 0x277CCA000;
                                v10 = v59;
                                v21 = v61;
                                goto LABEL_45;
                              }
                            }

                            v32 = [v30 countByEnumeratingWithState:&v76 objects:buf count:16];
                            if (v32)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        _HKInitializeLogging();
                        v5 = v29;
                        v35 = *v29;
                        v13 = 0x277CCA000;
                        v21 = v61;
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          v58 = @"<>";
                          if (principalClass)
                          {
                            v58 = NSStringFromClass(principalClass);
                          }

                          v41 = [v30 hk_map:&__block_literal_global_138];
                          *v83 = 138543874;
                          v84 = v22;
                          v85 = 2114;
                          v86 = v58;
                          v87 = 2114;
                          v88 = v41;
                          _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: principal class %{public}@ doesn't conform to any of: %{public}@", v83, 0x20u);
                          if (principalClass)
                          {
                          }
                        }

                        v36 = 0;
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v38 = *v5;
                        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          *&buf[4] = v22;
                          v90 = 2114;
                          v91 = v65;
                          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: %{public}@", buf, 0x16u);
                        }

                        v36 = 0;
                      }

                      v10 = v59;
LABEL_45:
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v37 = *v5;
                      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        *&buf[4] = v22;
                        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Error: failed to instantiate bundle %{public}@", buf, 0xCu);
                      }

                      v36 = 0;
                    }

                    v40 = v36;
                    if (v36)
                    {
                      [v60 addObject:v36];
                    }

                    v14 = v62;
                  }

                  objc_autoreleasePoolPop(v17);
                  ++v15;
                }

                while (v15 != v66);
                v42 = [v64 countByEnumeratingWithState:&v72 objects:v82 count:16];
                v66 = v42;
              }

              while (v42);
            }

            self = selfCopy;
            v8 = v56;
            v6 = v57;
            v43 = v60;
            v12 = v54;
            v11 = v55;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        v44 = v67;
        if (v43)
        {
          [v51 addObjectsFromArray:v43];
        }

        else if (([v44 hk_isCocoaNoSuchFileError] & 1) == 0)
        {
          _HKInitializeLogging();
          v45 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v10;
            v90 = 2114;
            v91 = v44;
            _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "Failed to load plugins at %{public}@: %{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v6 != v53);
      v46 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      v53 = v46;
    }

    while (v46);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v51;
}

- (id)_createPluginsFromClasses:(id)classes
{
  classesCopy = classes;
  daemon = [(HDPluginManager *)self daemon];
  v6 = &unk_283CC56F8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__HDPluginManager__createPluginsFromClasses___block_invoke;
  v11[3] = &unk_278624070;
  v13 = daemon;
  v14 = sel_shouldLoadPluginForDaemon_;
  v12 = v6;
  v7 = daemon;
  v8 = v6;
  v9 = [classesCopy hk_map:v11];

  return v9;
}

id __45__HDPluginManager__createPluginsFromClasses___block_invoke(void *a1, objc_class *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(objc_class *)a2 conformsToProtocol:a1[4]])
  {
    v4 = a1[6];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(objc_class *)a2 shouldLoadPluginForDaemon:a1[5]]& 1) != 0)
    {
      v5 = objc_alloc_init(a2);
      goto LABEL_8;
    }

    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = NSStringFromClass(a2);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Will NOT load %@", &v11, 0xCu);
    }
  }

  v5 = 0;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)createExtensionsForDaemon:(id)daemon
{
  v21 = *MEMORY[0x277D85DE8];
  daemonCopy = daemon;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_plugins;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 extensionForHealthDaemon:{daemonCopy, v16}];
        if (v12)
        {
          pluginIdentifier = [v11 pluginIdentifier];
          [v5 setObject:v12 forKeyedSubscript:pluginIdentifier];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)createExtensionsForProfile:(id)profile
{
  v21 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_plugins;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 extensionForProfile:{profileCopy, v16}];
        if (v12)
        {
          pluginIdentifier = [v11 pluginIdentifier];
          [v5 setObject:v12 forKeyedSubscript:pluginIdentifier];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)notifyPluginsOfDatabaseObliteration
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_plugins;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 handleDatabaseObliteration];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)pluginsConformingToProtocol:(id)protocol
{
  v22 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  if (!self->_plugins)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDPluginManager.m" lineNumber:155 description:@"Plugins not loaded when looking up plugins for protocol. Plugins should have been loaded during init; what happened?"];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_plugins;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 conformsToProtocol:{protocolCopy, v17}])
        {
          pluginIdentifier = [v12 pluginIdentifier];
          [v6 setObject:v12 forKeyedSubscript:pluginIdentifier];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (NSArray)notificationInstructionCriteriaClasses
{
  v21[2] = *MEMORY[0x277D85DE8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v4 = [v3 mutableCopy];
  v5 = [(HDPluginManager *)self pluginsConformingToProtocol:&unk_283D714F8];
  allValues = [v5 allValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = allValues;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        notificationInstructionCriteriaClasses = [*(*(&v16 + 1) + 8 * i) notificationInstructionCriteriaClasses];
        [v4 addObjectsFromArray:notificationInstructionCriteriaClasses];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end