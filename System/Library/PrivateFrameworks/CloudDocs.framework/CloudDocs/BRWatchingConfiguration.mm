@interface BRWatchingConfiguration
- (BRWatchingConfiguration)initWithScopes:(id)a3 predicate:(id)a4;
- (id)appLibraryIDToURLMapOfSuppliedAppIDs;
- (id)appLibraryIDToURLMapOfSuppliedURLs;
@end

@implementation BRWatchingConfiguration

- (BRWatchingConfiguration)initWithScopes:(id)a3 predicate:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = BRWatchingConfiguration;
  v8 = [(BRWatchingConfiguration *)&v41 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_30;
  }

  v35 = v7;
  v8->_watchTypes = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  appLibraryIDs = v9->_appLibraryIDs;
  v9->_appLibraryIDs = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  urls = v9->_urls;
  v9->_urls = v12;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = v6;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v17 = *v38;
  v18 = *MEMORY[0x1E696A638];
  v19 = *MEMORY[0x1E696A640];
  v20 = *MEMORY[0x1E696A610];
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v38 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v22 = *(*(&v37 + 1) + 8 * v21);
      if ([v22 isEqual:{v18, v35}])
      {
        v23 = v9->_watchTypes | 4;
LABEL_15:
        v9->_watchTypes = v23;
        goto LABEL_16;
      }

      if ([v22 isEqual:v19])
      {
        v23 = v9->_watchTypes | 8;
        goto LABEL_15;
      }

      if ([v22 isEqual:v20])
      {
        v23 = v9->_watchTypes | 0x20;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSMutableArray *)v9->_urls addObject:v22];
        v23 = 2;
        goto LABEL_15;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = brc_bread_crumbs("[BRWatchingConfiguration initWithScopes:predicate:]", 125);
        v29 = brc_default_log(0, 0);
        if (os_log_type_enabled(v29, 0x90u))
        {
          [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
        }

        v30 = 0;
        v7 = v35;
        v6 = v36;
        goto LABEL_31;
      }

      [(NSMutableArray *)v9->_appLibraryIDs addObject:v22];
LABEL_16:
      ++v21;
    }

    while (v16 != v21);
    v24 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    v16 = v24;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v7 = v35;
  v25 = [v35 br_watchedURL];
  if (v25)
  {
    gatherPrefix = v25;
    [(NSMutableArray *)v9->_urls addObject:v25];
    v27 = 1;
    goto LABEL_28;
  }

  v31 = [v35 br_urlWithWatchedChildren];
  if (v31)
  {
    gatherPrefix = v31;
    [(NSMutableArray *)v9->_urls addObject:v31];
    v27 = 2;
LABEL_28:
    v9->_watchTypes = v27;
  }

  else if ((v9->_watchTypes & 8) != 0)
  {
    v34 = [v35 extractSearchTermFromPredicate];
    gatherPrefix = v9->_gatherPrefix;
    v9->_gatherPrefix = v34;
  }

  else
  {
    gatherPrefix = v9->_gatherPrefix;
    v9->_gatherPrefix = 0;
  }

  v6 = v36;

LABEL_30:
  v30 = v9;
LABEL_31:

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)appLibraryIDToURLMapOfSuppliedAppIDs
{
  v39 = *MEMORY[0x1E69E9840];
  appLibraryIDToURLMapOfSuppliedAppIDs = self->_appLibraryIDToURLMapOfSuppliedAppIDs;
  if (!appLibraryIDToURLMapOfSuppliedAppIDs || ![(NSDictionary *)appLibraryIDToURLMapOfSuppliedAppIDs count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](self->_appLibraryIDs, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_appLibraryIDs;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      v23 = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * v8);
          for (i = 2; i != -1; --i)
          {
            v11 = [MEMORY[0x1E696AC08] defaultManager];
            v12 = [v11 URLForUbiquityContainerIdentifier:v9];

            if (v12)
            {
              break;
            }
          }

          v13 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedAppIDs]", 156);
          v14 = brc_default_log(1, 0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v24 = [v12 path];
            v17 = [v24 fp_obfuscatedPath];
            *buf = 138413058;
            v31 = v9;
            v32 = 2112;
            v33 = v17;
            v34 = 1024;
            v35 = i;
            v36 = 2112;
            v37 = v13;
            _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] BRItemCollectionGatherer - appLibrary %@ with url %@ retries left %d%@", buf, 0x26u);

            v4 = v23;
          }

          if (v12)
          {
            [v4 setObject:v12 forKeyedSubscript:v9];
          }

          else
          {
            v15 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedAppIDs]", 158);
            v16 = brc_default_log(0, 0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v31 = v9;
              v32 = 2112;
              v33 = v15;
              _os_log_fault_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to get container URL for %@%@", buf, 0x16u);
            }
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v6);
    }

    v18 = [v4 copy];
    v19 = self->_appLibraryIDToURLMapOfSuppliedAppIDs;
    self->_appLibraryIDToURLMapOfSuppliedAppIDs = v18;
  }

  v20 = self->_appLibraryIDToURLMapOfSuppliedAppIDs;
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)appLibraryIDToURLMapOfSuppliedURLs
{
  v41 = *MEMORY[0x1E69E9840];
  appLibraryIDToURLMapOfSuppliedURLs = self->_appLibraryIDToURLMapOfSuppliedURLs;
  if (!appLibraryIDToURLMapOfSuppliedURLs)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](self->_urls, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = self;
    obj = self->_urls;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      v25 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = [v9 br_containerID];
          if (v10)
          {
            for (j = 2; j != -1; --j)
            {
              v12 = [MEMORY[0x1E696AC08] defaultManager];
              v13 = [v12 URLForUbiquityContainerIdentifier:v10];

              if (v13)
              {
                break;
              }
            }

            v14 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedURLs]", 189);
            v15 = brc_default_log(1, 0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v26 = [v13 path];
              v19 = [v26 fp_obfuscatedPath];
              *buf = 138413058;
              v33 = v10;
              v34 = 2112;
              v35 = v19;
              v36 = 1024;
              v37 = j;
              v38 = 2112;
              v39 = v14;
              _os_log_debug_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] BRItemCollectionGatherer - appLibrary %@ with url %@ retries left %d%@", buf, 0x26u);

              v4 = v25;
            }

            if (v13)
            {
              [v4 setObject:v13 forKeyedSubscript:v10];
            }

            else
            {
              v17 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedURLs]", 191);
              v18 = brc_default_log(0, 0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v33 = v10;
                v34 = 2112;
                v35 = v17;
                _os_log_fault_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to get container URL for %@%@", buf, 0x16u);
              }
            }
          }

          else
          {
            v13 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedURLs]", 178);
            v16 = brc_default_log(0, 0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v33 = v9;
              v34 = 2112;
              v35 = v13;
              _os_log_fault_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to get app library name for url %@%@", buf, 0x16u);
            }
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v6);
    }

    v20 = [v4 copy];
    v21 = v24->_appLibraryIDToURLMapOfSuppliedURLs;
    v24->_appLibraryIDToURLMapOfSuppliedURLs = v20;

    appLibraryIDToURLMapOfSuppliedURLs = v24->_appLibraryIDToURLMapOfSuppliedURLs;
  }

  v22 = *MEMORY[0x1E69E9840];

  return appLibraryIDToURLMapOfSuppliedURLs;
}

@end