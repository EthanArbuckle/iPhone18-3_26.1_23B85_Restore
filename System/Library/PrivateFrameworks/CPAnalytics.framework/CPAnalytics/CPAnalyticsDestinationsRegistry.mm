@interface CPAnalyticsDestinationsRegistry
- (CPAnalyticsDestinationsRegistry)init;
- (id)_destinationClassMap;
- (id)_readConfiguration:(id)configuration;
- (void)_parseDestinationsFromConfig:(id)config cpAnalyticsInstance:(id)instance;
- (void)addDestination:(id)destination;
- (void)removeDestination:(id)destination;
- (void)removePhotoLibraryFromDestinations;
- (void)sendToAllDestinations:(id)destinations;
- (void)setupWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance;
- (void)updateWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance;
@end

@implementation CPAnalyticsDestinationsRegistry

- (CPAnalyticsDestinationsRegistry)init
{
  v6.receiver = self;
  v6.super_class = CPAnalyticsDestinationsRegistry;
  v2 = [(CPAnalyticsDestinationsRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    destinations = v2->_destinations;
    v2->_destinations = v3;
  }

  return v2;
}

- (id)_destinationClassMap
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5[0] = @"devLogging";
  v6[0] = objc_opt_class();
  v5[1] = @"metricsDestination";
  v6[1] = objc_opt_class();
  v5[2] = @"signpost";
  v6[2] = objc_opt_class();
  v5[3] = @"appState";
  v6[3] = objc_opt_class();
  v5[4] = @"knowledgeStore";
  v6[4] = objc_opt_class();
  v5[5] = @"interval";
  v6[5] = objc_opt_class();
  v5[6] = @"log";
  v6[6] = objc_opt_class();
  v5[7] = @"biome";
  v6[7] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:8];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_parseDestinationsFromConfig:(id)config cpAnalyticsInstance:(id)instance
{
  v47 = *MEMORY[0x277D85DE8];
  configCopy = config;
  instanceCopy = instance;
  v30 = configCopy;
  if (configCopy)
  {
    v29 = [configCopy objectForKey:@"destinations"];
    v6 = v29;
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = self->_destinations;
        objc_sync_enter(v7);
        destinations = [(CPAnalyticsDestinationsRegistry *)self destinations];
        v33 = [destinations copy];

        objc_sync_exit(v7);
        _destinationClassMap = [(CPAnalyticsDestinationsRegistry *)self _destinationClassMap];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v9 = v29;
        v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (!v10)
        {
          goto LABEL_39;
        }

        v11 = *v41;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v41 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v40 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 objectForKey:@"enabled"];
              bOOLValue = [v14 BOOLValue];

              if (bOOLValue)
              {
                v16 = [v13 objectForKey:@"name"];
                v17 = [v13 objectForKey:@"config"];
                v36 = 0;
                v37 = &v36;
                v38 = 0x2050000000;
                v39 = [_destinationClassMap objectForKey:v16];
                if (!v37[3])
                {
                  v20 = CPAnalyticsLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v45 = v16;
                    _os_log_error_impl(&dword_24260A000, v20, OS_LOG_TYPE_ERROR, "Error parsing CPAnalytics config file: destination name '%@' not found in mapping.", buf, 0xCu);
                  }

                  goto LABEL_33;
                }

                v35[0] = MEMORY[0x277D85DD0];
                v35[1] = 3221225472;
                v35[2] = __84__CPAnalyticsDestinationsRegistry__parseDestinationsFromConfig_cpAnalyticsInstance___block_invoke;
                v35[3] = &unk_278D61560;
                v35[4] = &v36;
                v18 = [v33 indexOfObjectPassingTest:v35];
                if (v18 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v19 = [objc_alloc(v37[3]) initWithConfig:v17 cpAnalyticsInstance:instanceCopy];
                  v20 = v19;
                  if (v19)
                  {
                    if (([v19 conformsToProtocol:&unk_2854F29B0]& 1) != 0)
                    {
                      if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 disabled])
                      {
                        v21 = CPAnalyticsLog();
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                        {
                          v22 = objc_opt_class();
                          *buf = 138412290;
                          v45 = v22;
                          v28 = v22;
                          _os_log_impl(&dword_24260A000, v21, OS_LOG_TYPE_INFO, "Destination %@ class is disabled.", buf, 0xCu);
                        }

LABEL_31:
                      }

                      else
                      {
                        [(CPAnalyticsDestinationsRegistry *)self addDestination:v20, v28];
                      }

LABEL_33:

                      _Block_object_dispose(&v36, 8);
                      goto LABEL_34;
                    }

                    v21 = CPAnalyticsLog();
                    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_31;
                    }

                    *buf = 138412290;
                    v45 = v16;
                    v24 = v21;
                    v25 = "Destination %@ class does not conform to CPAnalyticsDestination protocol.";
                  }

                  else
                  {
                    v21 = CPAnalyticsLog();
                    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_31;
                    }

                    *buf = 138412290;
                    v45 = v16;
                    v24 = v21;
                    v25 = "Error initializing %@ destination in CPAnalytics";
                  }

                  _os_log_error_impl(&dword_24260A000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
                  goto LABEL_31;
                }

                v20 = [v33 objectAtIndexedSubscript:v18];
                if (objc_opt_respondsToSelector())
                {
                  [v20 updateWithConfig:v17];
                  v23 = CPAnalyticsLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v45 = v16;
                    _os_log_impl(&dword_24260A000, v23, OS_LOG_TYPE_INFO, "Updated %@ destination", buf, 0xCu);
                  }
                }

                else
                {
                  v23 = CPAnalyticsLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v45 = v16;
                    _os_log_error_impl(&dword_24260A000, v23, OS_LOG_TYPE_ERROR, "Cannot update %@ destination. Missing updateWithConfig selector.", buf, 0xCu);
                  }
                }

                goto LABEL_33;
              }
            }

LABEL_34:
            ++v12;
          }

          while (v10 != v12);
          v26 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
          v10 = v26;
          if (!v26)
          {
LABEL_39:

            v6 = v29;
            break;
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_readConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  if (configuration)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
    if (v3)
    {
      v10 = 0;
      v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v10];
      v5 = v10;
      if (v5)
      {
        v6 = CPAnalyticsLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v5;
          _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Error parsing CPAnalytics config file: %@", buf, 0xCu);
        }

        v7 = 0;
      }

      else
      {
        v7 = v4;
      }
    }

    else
    {
      v5 = CPAnalyticsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24260A000, v5, OS_LOG_TYPE_ERROR, "Error reading CPAnalytics config file", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v3 = CPAnalyticsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24260A000, v3, OS_LOG_TYPE_ERROR, "Error reading CPAnalytics config: nil", buf, 2u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removePhotoLibraryFromDestinations
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_destinations;
  objc_sync_enter(v3);
  destinations = [(CPAnalyticsDestinationsRegistry *)self destinations];
  v5 = [destinations copy];

  objc_sync_exit(v3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 setPhotoLibrary:{0, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendToAllDestinations:(id)destinations
{
  v18 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = self->_destinations;
  objc_sync_enter(v5);
  destinations = [(CPAnalyticsDestinationsRegistry *)self destinations];
  v7 = [destinations copy];

  objc_sync_exit(v5);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v11++) processEvent:{destinationsCopy, v13}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeDestination:(id)destination
{
  destinationCopy = destination;
  v4 = self->_destinations;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_destinations removeObject:destinationCopy];
  objc_sync_exit(v4);
}

- (void)addDestination:(id)destination
{
  destinationCopy = destination;
  if (destinationCopy)
  {
    v6 = destinationCopy;
    v5 = self->_destinations;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_destinations addObject:v6];
    objc_sync_exit(v5);

    destinationCopy = v6;
  }
}

- (void)updateWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance
{
  instanceCopy = instance;
  v7 = [(CPAnalyticsDestinationsRegistry *)self _readConfiguration:l];
  [(CPAnalyticsDestinationsRegistry *)self _parseDestinationsFromConfig:v7 cpAnalyticsInstance:instanceCopy];
}

- (void)setupWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance
{
  lCopy = l;
  instanceCopy = instance;
  v7 = self->_destinations;
  objc_sync_enter(v7);
  [(NSMutableArray *)self->_destinations removeAllObjects];
  objc_sync_exit(v7);

  [(CPAnalyticsDestinationsRegistry *)self updateWithConfigurationAtURL:lCopy cpAnalyticsInstance:instanceCopy];
}

@end