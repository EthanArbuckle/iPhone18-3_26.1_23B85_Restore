@interface MapsSuggestionsAppGuardian
+ (int64_t)protectionStatusForBundleID:(id)d;
- (BOOL)isBundleIDLocked:(id)locked forSource:(id)source;
- (NSString)uniqueName;
- (id)initFromResourceDepot:(id)depot;
- (void)_add:(id)_add source:(id)source;
- (void)_remove:(id)_remove source:(id)source;
- (void)_removeAllBundleIDsForSource:(id)source;
- (void)appProtectionStatusChanged:(id)changed;
- (void)registerAppTracker:(id)tracker;
- (void)registerBundleID:(id)d withSource:(id)source;
- (void)unregisterAllBundleIDsForSource:(id)source;
- (void)unregisterAppTracker:(id)tracker;
- (void)unregisterBundleID:(id)d withSource:(id)source;
@end

@implementation MapsSuggestionsAppGuardian

- (id)initFromResourceDepot:(id)depot
{
  depotCopy = depot;
  v14.receiver = self;
  v14.super_class = MapsSuggestionsAppGuardian;
  v5 = [(MapsSuggestionsAppGuardian *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MapsSuggestionsAppGuardianQueue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    sources = v5->_sources;
    v5->_sources = strongToStrongObjectsMapTable;

    oneAppProtectionConnector = [depotCopy oneAppProtectionConnector];
    connector = v5->_connector;
    v5->_connector = oneAppProtectionConnector;

    [(MapsSuggestionsAppProtectionConnector *)v5->_connector setDelegate:v5];
    [(MapsSuggestionsAppProtectionConnector *)v5->_connector addMonitor:v5];
  }

  return v5;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_add:(id)_add source:(id)source
{
  _addCopy = _add;
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMapTable *)self->_sources objectForKey:sourceCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  [v7 addObject:_addCopy];
  [(NSMapTable *)self->_sources setObject:v7 forKey:sourceCopy];
}

- (void)_remove:(id)_remove source:(id)source
{
  v14 = *MEMORY[0x1E69E9840];
  _removeCopy = _remove;
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMapTable *)self->_sources objectForKey:sourceCopy];
  v9 = v8;
  if (v8)
  {
    [v8 removeObject:_removeCopy];
    if ([v9 count])
    {
      [(NSMapTable *)self->_sources setObject:v9 forKey:sourceCopy];
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [sourceCopy uniqueName];
        v12 = 138412290;
        v13 = uniqueName;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "No more bundleIDs to monitor for %@", &v12, 0xCu);
      }

      [(NSMapTable *)self->_sources removeObjectForKey:sourceCopy];
    }
  }
}

- (void)_removeAllBundleIDsForSource:(id)source
{
  v10 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMapTable *)self->_sources objectForKey:sourceCopy];

  if (v5)
  {
    [(NSMapTable *)self->_sources removeObjectForKey:sourceCopy];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [sourceCopy uniqueName];
      v8 = 138412290;
      v9 = uniqueName;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Removed all bundleIDs for %@", &v8, 0xCu);
    }
  }
}

- (void)registerBundleID:(id)d withSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__MapsSuggestionsAppGuardian_registerBundleID_withSource___block_invoke;
  v11[3] = &unk_1E81F5410;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = sourceCopy;
  v9 = sourceCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __58__MapsSuggestionsAppGuardian_registerBundleID_withSource___block_invoke(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) uniqueName];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      *v11 = v6;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Registering:%@ for %@", &v8, 0x16u);
    }

    [WeakRetained _add:*(a1 + 32) source:*(a1 + 40)];
  }

  else
  {
    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsAppGuardian.m";
      v10 = 1026;
      *v11 = 105;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsAppGuardian registerBundleID:withSource:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)unregisterBundleID:(id)d withSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MapsSuggestionsAppGuardian_unregisterBundleID_withSource___block_invoke;
  v11[3] = &unk_1E81F5410;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = sourceCopy;
  v9 = sourceCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __60__MapsSuggestionsAppGuardian_unregisterBundleID_withSource___block_invoke(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) uniqueName];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      *v11 = v6;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Unregistering:%@ for %@", &v8, 0x16u);
    }

    [WeakRetained _remove:*(a1 + 32) source:*(a1 + 40)];
  }

  else
  {
    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsAppGuardian.m";
      v10 = 1026;
      *v11 = 116;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsAppGuardian unregisterBundleID:withSource:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)unregisterAllBundleIDsForSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MapsSuggestionsAppGuardian_unregisterAllBundleIDsForSource___block_invoke;
  block[3] = &unk_1E81F4F48;
  objc_copyWeak(&v9, &location);
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__MapsSuggestionsAppGuardian_unregisterAllBundleIDsForSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) uniqueName];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Unregistering all bundleIDs for %@", &v7, 0xCu);
    }

    [WeakRetained _removeAllBundleIDsForSource:*(a1 + 32)];
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsAppGuardian.m";
      v9 = 1026;
      v10 = 126;
      v11 = 2082;
      v12 = "[MapsSuggestionsAppGuardian unregisterAllBundleIDsForSource:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (BOOL)isBundleIDLocked:(id)locked forSource:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  lockedCopy = locked;
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "AppGuardian is not enabled. Not checking for App Protection.", &v9, 2u);
    }

    goto LABEL_9;
  }

  v5 = appForBundleID(lockedCopy);
  if (([v5 isLocked]& 1) == 0 && ![v5 isHidden])
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    v10 = lockedCopy;
    v11 = 1024;
    isLocked = [v5 isLocked];
    v13 = 1024;
    isHidden = [v5 isHidden];
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "%@ is protected. Locked = %d, Hidden = %d", &v9, 0x18u);
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (void)appProtectionStatusChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MapsSuggestionsAppGuardian_appProtectionStatusChanged___block_invoke;
  block[3] = &unk_1E81F4F48;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__MapsSuggestionsAppGuardian_appProtectionStatusChanged___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v3 = *(a1 + 32);
    v23 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v23)
    {
      v4 = *v34;
      v24 = v3;
      v22 = *v34;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v33 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v7 = WeakRetained[3];
          v8 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v30;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v30 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                [*(*(&v29 + 1) + 8 * j) didChangeProtectionStatusForBundleId:v6];
              }

              v9 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v9);
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = [WeakRetained[2] keyEnumerator];
          v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v26;
            while (2)
            {
              for (k = 0; k != v14; ++k)
              {
                if (*v26 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v25 + 1) + 8 * k);
                v18 = [WeakRetained[2] objectForKey:v17];
                if ([v17 conformsToProtocol:&unk_1F4476C68])
                {
                  v19 = v6 == 0;
                }

                else
                {
                  v19 = 1;
                }

                if (!v19 && [v18 containsObject:v6])
                {
                  v20 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                  {
                    v21 = [v17 uniqueName];
                    *buf = 138412546;
                    v41 = v6;
                    v42 = 2112;
                    *v43 = v21;
                    _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "Received App Protection change notification for %@. Refreshing %@", buf, 0x16u);
                  }

                  [v17 updateSuggestionEntriesWithHandler:0];
                  v3 = v24;
                  goto LABEL_35;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v3 = v24;
          v4 = v22;
        }

        v23 = [v24 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v41 = "MapsSuggestionsAppGuardian.m";
      v42 = 1026;
      *v43 = 153;
      *&v43[4] = 2082;
      *&v43[6] = "[MapsSuggestionsAppGuardian appProtectionStatusChanged:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v12;
LABEL_35:
  }
}

- (void)registerAppTracker:(id)tracker
{
  trackerCopy = tracker;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MapsSuggestionsAppGuardian_registerAppTracker___block_invoke;
  block[3] = &unk_1E81F4F48;
  objc_copyWeak(&v9, &location);
  v8 = trackerCopy;
  v6 = trackerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__MapsSuggestionsAppGuardian_registerAppTracker___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
      v6 = v3[3];
      v3[3] = v5;

      v4 = v3[3];
    }

    [v4 addObject:*(a1 + 32)];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsAppGuardian.m";
      v10 = 1026;
      v11 = 179;
      v12 = 2082;
      v13 = "[MapsSuggestionsAppGuardian registerAppTracker:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)unregisterAppTracker:(id)tracker
{
  trackerCopy = tracker;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MapsSuggestionsAppGuardian_unregisterAppTracker___block_invoke;
  block[3] = &unk_1E81F4F48;
  objc_copyWeak(&v9, &location);
  v8 = trackerCopy;
  v6 = trackerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__MapsSuggestionsAppGuardian_unregisterAppTracker___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsAppGuardian.m";
      v7 = 1026;
      v8 = 192;
      v9 = 2082;
      v10 = "[MapsSuggestionsAppGuardian unregisterAppTracker:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

+ (int64_t)protectionStatusForBundleID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (GEOConfigGetBOOL())
  {
    v4 = appForBundleID(dCopy);
    if ([v4 isHidden])
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138412290;
        v9 = dCopy;
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "%@ is hidden", &v8, 0xCu);
      }

      v6 = 3;
    }

    else
    {
      if (![v4 isLocked])
      {
        v6 = 1;
        goto LABEL_10;
      }

      v5 = GEOFindOrCreateLog();
      v6 = 2;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138412290;
        v9 = dCopy;
        v6 = 2;
        _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "%@ is locked", &v8, 0xCu);
      }
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "AppGuardian is not enabled. Not checking for App Protection.", &v8, 2u);
    }

    v6 = 0;
  }

LABEL_10:

  return v6;
}

@end