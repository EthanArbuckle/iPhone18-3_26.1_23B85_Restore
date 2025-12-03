@interface CESRSpeechProfileSiteManager
+ (id)defaultManager;
- (BOOL)_enumerateSiteURLsUsingBlock:(id)block;
- (BOOL)_handleUpdatedSets:(id)sets;
- (BOOL)_handleUpdatedSets:(id)sets siteURL:(id)l;
- (BOOL)_loadAllSites;
- (BOOL)_loadOrCreateManagerInfo;
- (BOOL)_loadSiteAtURL:(id)l shouldBootstrap:(BOOL)bootstrap;
- (BOOL)_maintainAllSites:(BOOL)sites shouldDefer:(id)defer;
- (BOOL)_prepareSiteWriterForSiteURL:(id)l site:(id *)site siteWriter:(id *)writer;
- (BOOL)_rebuildAllSites:(id)sites;
- (BOOL)_rebuildAllSitesWithSetEnumerator:(id)enumerator;
- (BOOL)_rebuildSiteAtURL:(id)l shouldDefer:(id)defer;
- (BOOL)_recordGlobalMaintenanceAttempt:(id *)attempt;
- (BOOL)_recordGlobalRebuildAttempt:(id *)attempt;
- (BOOL)_recordGlobalResetAttempt:(id *)attempt;
- (BOOL)_resetAllSites;
- (BOOL)_resetSiteAtURL:(id)l;
- (BOOL)_siteRequiresMaintenance:(id)maintenance;
- (BOOL)_siteRequiresRebuild:(id)rebuild;
- (BOOL)_siteRequiresReset:(id)reset;
- (BOOL)_snapshotSiteAtURL:(id)l locale:(id)locale changeRegistry:(id)registry;
- (BOOL)clearAllState;
- (BOOL)clearSpeechProfileSiteWithUserId:(id)id;
- (BOOL)handleUpdatedSets:(id)sets;
- (BOOL)performMaintenance:(BOOL)maintenance shouldDefer:(id)defer;
- (BOOL)rebuildAllSpeechProfilesWithSetEnumerator:(id)enumerator;
- (BOOL)rebuildSpeechProfileSiteWithUserId:(id)id;
- (CESRSpeechProfileSiteManager)initWithSetEnumerator:(id)enumerator settings:(id)settings;
- (id)_commonSiteURLForPersonaId:(id)id;
- (id)_retrieveOrLoadSiteAtURL:(id)l error:(id *)error;
- (id)_siteURLsForPersonaId:(id)id;
- (id)_userVaultSiteURLForPersonaId:(id)id;
- (void)_handleSysdiagnoseStarted;
- (void)_registerTrialExperimentUpdateHandler;
- (void)_snapshotBookmarksForLocale:(id)locale toPath:(id)path;
- (void)handleNewPersonas:(id)personas;
- (void)handleRemovedPersonas:(id)personas;
- (void)handleSiteAvailableForPersona:(id)persona;
- (void)handleSiteUnavailableSoonForPersona:(id)persona;
- (void)handleSysdiagnoseStarted;
- (void)snapshotBookmarksForLocale:(id)locale toPath:(id)path;
- (void)updateRequiredLocales;
@end

@implementation CESRSpeechProfileSiteManager

- (void)handleRemovedPersonas:(id)personas
{
  personasCopy = personas;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CESRSpeechProfileSiteManager_handleRemovedPersonas___block_invoke;
  v7[3] = &unk_278580398;
  v8 = personasCopy;
  selfCopy = self;
  v6 = personasCopy;
  dispatch_async(queue, v7);
}

void __54__CESRSpeechProfileSiteManager_handleRemovedPersonas___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0E8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 136315394;
    v30 = "[CESRSpeechProfileSiteManager handleRemovedPersonas:]_block_invoke";
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Handling removed personas: %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 136315650;
    v23 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = SFSpeechProfileRootDirectoryURL();
        v13 = SFDataSiteURL();

        if (v13)
        {
          v14 = [*(*(a1 + 40) + 16) objectForKey:v13];

          if (v14)
          {
            v15 = *v2;
            if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v30 = "[CESRSpeechProfileSiteManager handleRemovedPersonas:]_block_invoke";
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&dword_225EEB000, v15, OS_LOG_TYPE_INFO, "%s Unloading cached site at URL: %@", buf, 0x16u);
            }

            [*(*(a1 + 40) + 16) removeObjectForKey:{v13, v23}];
          }

          v16 = [MEMORY[0x277CCAA00] defaultManager];
          v24 = 0;
          v17 = [v16 removeItemAtURL:v13 error:&v24];
          v18 = v24;

          v19 = *v2;
          v20 = *v2;
          if (v17)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v30 = "[CESRSpeechProfileSiteManager handleRemovedPersonas:]_block_invoke";
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEFAULT, "%s Deleted site at URL: %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v30 = "[CESRSpeechProfileSiteManager handleRemovedPersonas:]_block_invoke";
            v31 = 2112;
            v32 = v13;
            v33 = 2112;
            v34 = v18;
            _os_log_error_impl(&dword_225EEB000, v19, OS_LOG_TYPE_ERROR, "%s Failed to delete site (%@), error: %@", buf, 0x20u);
          }
        }

        else
        {
          v21 = *v2;
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v30 = "[CESRSpeechProfileSiteManager handleRemovedPersonas:]_block_invoke";
            v31 = 2112;
            v32 = v11;
            _os_log_error_impl(&dword_225EEB000, v21, OS_LOG_TYPE_ERROR, "%s Failed to resolve site URL for removed persona: %@", buf, 0x16u);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleNewPersonas:(id)personas
{
  personasCopy = personas;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CESRSpeechProfileSiteManager_handleNewPersonas___block_invoke;
  v7[3] = &unk_278580398;
  v8 = personasCopy;
  selfCopy = self;
  v6 = personasCopy;
  dispatch_async(queue, v7);
}

void __50__CESRSpeechProfileSiteManager_handleNewPersonas___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v25 = "[CESRSpeechProfileSiteManager handleNewPersonas:]_block_invoke";
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, "%s Handling new personas: %@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 136315394;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [*(a1 + 40) _commonSiteURLForPersonaId:{v10, v16}];
        v12 = v11;
        if (v11)
        {
          v13 = MEMORY[0x277CDCEB0];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __50__CESRSpeechProfileSiteManager_handleNewPersonas___block_invoke_317;
          v17[3] = &unk_278580398;
          v17[4] = *(a1 + 40);
          v18 = v11;
          [v13 runAsPersona:v10 block:v17];
        }

        else
        {
          v14 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v25 = "[CESRSpeechProfileSiteManager handleNewPersonas:]_block_invoke";
            v26 = 2112;
            v27 = v10;
            _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to resolve site URL for new persona: %@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleSiteUnavailableSoonForPersona:(id)persona
{
  personaCopy = persona;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CESRSpeechProfileSiteManager_handleSiteUnavailableSoonForPersona___block_invoke;
  v7[3] = &unk_278580398;
  v8 = personaCopy;
  selfCopy = self;
  v6 = personaCopy;
  dispatch_async(queue, v7);
}

void __68__CESRSpeechProfileSiteManager_handleSiteUnavailableSoonForPersona___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0E8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[CESRSpeechProfileSiteManager handleSiteUnavailableSoonForPersona:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Handling site unavailable soon for persona: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 40) _userVaultSiteURLForPersonaId:*(a1 + 32)];
  if (v5)
  {
    v6 = [*(*(a1 + 40) + 16) objectForKey:v5];

    if (v6)
    {
      v7 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        v9 = 136315394;
        v10 = "[CESRSpeechProfileSiteManager handleSiteUnavailableSoonForPersona:]_block_invoke";
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Unloading cached site at URL: %@", &v9, 0x16u);
      }

      [*(*(a1 + 40) + 16) removeObjectForKey:v5];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleSiteAvailableForPersona:(id)persona
{
  personaCopy = persona;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__CESRSpeechProfileSiteManager_handleSiteAvailableForPersona___block_invoke;
  v7[3] = &unk_278580398;
  v8 = personaCopy;
  selfCopy = self;
  v6 = personaCopy;
  dispatch_async(queue, v7);
}

void __62__CESRSpeechProfileSiteManager_handleSiteAvailableForPersona___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0E8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[CESRSpeechProfileSiteManager handleSiteAvailableForPersona:]_block_invoke";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Handling site available for persona: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 40) _userVaultSiteURLForPersonaId:*(a1 + 32)];
  if (v5)
  {
    v6 = [*(*(a1 + 40) + 16) objectForKey:v5];

    if (v6)
    {
      v7 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v14 = "[CESRSpeechProfileSiteManager handleSiteAvailableForPersona:]_block_invoke";
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s Unloading cached site at URL: %@", buf, 0x16u);
      }

      [*(*(a1 + 40) + 16) removeObjectForKey:v5];
    }

    v8 = MEMORY[0x277CDCEB0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__CESRSpeechProfileSiteManager_handleSiteAvailableForPersona___block_invoke_316;
    v11[3] = &unk_278580398;
    v9 = *(a1 + 32);
    v11[4] = *(a1 + 40);
    v12 = v5;
    [v8 runAsPersona:v9 block:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSysdiagnoseStarted
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__CESRSpeechProfileSiteManager__handleSysdiagnoseStarted__block_invoke;
  v2[3] = &unk_27857F800;
  v2[4] = self;
  [(CESRSpeechProfileSiteManager *)self _enumerateSiteURLsUsingBlock:v2];
}

uint64_t __57__CESRSpeechProfileSiteManager__handleSysdiagnoseStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  v3 = [v2 _prepareSiteWriterForSiteURL:a2 site:&v9 siteWriter:&v8];
  v4 = v9;
  v5 = v8;
  v6 = v5;
  if (v3)
  {
    [v5 logRequiredProfileInstances];
  }

  return v3;
}

- (BOOL)_snapshotSiteAtURL:(id)l locale:(id)locale changeRegistry:(id)registry
{
  v26 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  registryCopy = registry;
  v18 = 0;
  v19 = 0;
  v10 = [(CESRSpeechProfileSiteManager *)self _prepareSiteWriterForSiteURL:l site:&v19 siteWriter:&v18];
  v11 = v19;
  v12 = v18;
  if (v10)
  {
    v13 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      localeIdentifier = [localeCopy localeIdentifier];
      *buf = 136315650;
      v21 = "[CESRSpeechProfileSiteManager _snapshotSiteAtURL:locale:changeRegistry:]";
      v22 = 2112;
      v23 = localeIdentifier;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_225EEB000, v14, OS_LOG_TYPE_INFO, "%s Collecting bookmarks for locale: %@, from site: %@", buf, 0x20u);
    }

    [v12 addBookmarksForLocale:localeCopy toChangeRegistry:registryCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_snapshotBookmarksForLocale:(id)locale toPath:(id)path
{
  v34 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  pathCopy = path;
  lastPathComponent = [pathCopy lastPathComponent];
  v9 = MEMORY[0x277CBEBC0];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v11 = [v9 fileURLWithPath:stringByDeletingLastPathComponent];

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__1922;
    v32 = __Block_byref_object_dispose__1923;
    v25 = 0;
    v12 = [objc_alloc(MEMORY[0x277CF94F0]) initWithFilename:lastPathComponent directory:v11 protectionClass:3 error:&v25];
    v13 = v25;
    v33 = v12;
    if (*(*&buf[8] + 40))
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __67__CESRSpeechProfileSiteManager__snapshotBookmarksForLocale_toPath___block_invoke;
      v22[3] = &unk_27857F878;
      v22[4] = self;
      v23 = localeCopy;
      v24 = buf;
      [(CESRSpeechProfileSiteManager *)self _enumerateSiteURLsUsingBlock:v22];
      v14 = *(*&buf[8] + 40);
      v21 = v13;
      v15 = [v14 commitAllBookmarkUpdates:&v21];
      v16 = v21;

      if ((v15 & 1) == 0)
      {
        v17 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          *v26 = 136315394;
          v27 = "[CESRSpeechProfileSiteManager _snapshotBookmarksForLocale:toPath:]";
          v28 = 2112;
          v29 = v16;
          _os_log_error_impl(&dword_225EEB000, v17, OS_LOG_TYPE_ERROR, "%s Failed to commit change registry transaction: %@", v26, 0x16u);
        }
      }

      v13 = v16;
    }

    else
    {
      v19 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *v26 = 136315394;
        v27 = "[CESRSpeechProfileSiteManager _snapshotBookmarksForLocale:toPath:]";
        v28 = 2112;
        v29 = v13;
        _os_log_error_impl(&dword_225EEB000, v19, OS_LOG_TYPE_ERROR, "%s Failed to initialize change registry, error: %@", v26, 0x16u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[CESRSpeechProfileSiteManager _snapshotBookmarksForLocale:toPath:]";
      *&buf[12] = 2112;
      *&buf[14] = pathCopy;
      _os_log_error_impl(&dword_225EEB000, v18, OS_LOG_TYPE_ERROR, "%s Failed to resolve URL from path: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_prepareSiteWriterForSiteURL:(id)l site:(id *)site siteWriter:(id *)writer
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v15 = 0;
  v9 = [(CESRSpeechProfileSiteManager *)self _retrieveOrLoadSiteAtURL:lCopy error:&v15];
  v10 = v15;
  if (v9)
  {
    if (site)
    {
      v11 = v9;
      *site = v9;
    }

    if (writer)
    {
      *writer = [[CESRSpeechProfileSiteWriter alloc] initWithSpeechProfileSite:v9 settings:self->_settings setEnumerator:self->_setEnumerator];
    }
  }

  else
  {
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "[CESRSpeechProfileSiteManager _prepareSiteWriterForSiteURL:site:siteWriter:]";
      v18 = 2112;
      v19 = lCopy;
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Failed to load site at URL (%@), error: %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

- (BOOL)_handleUpdatedSets:(id)sets siteURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v18 = 0;
  v19 = 0;
  v7 = [(CESRSpeechProfileSiteManager *)self _prepareSiteWriterForSiteURL:l site:&v19 siteWriter:&v18];
  v8 = v19;
  v9 = v18;
  if (!v7)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v10 = MEMORY[0x277CEF0E8];
  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[CESRSpeechProfileSiteManager _handleUpdatedSets:siteURL:]";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = setsCopy;
    _os_log_impl(&dword_225EEB000, v11, OS_LOG_TYPE_INFO, "%s Site (%@) processing update(s) to set(s): %@", buf, 0x20u);
  }

  v12 = [v9 processUpdatesToSets:setsCopy shouldDefer:0];
  v13 = *v10;
  v14 = os_log_type_enabled(*v10, OS_LOG_TYPE_INFO);
  if ((v12 & 1) == 0)
  {
    if (v14)
    {
      *buf = 136315650;
      v21 = "[CESRSpeechProfileSiteManager _handleUpdatedSets:siteURL:]";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = setsCopy;
      _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s Did not update site (%@) with sets: %@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  if (v14)
  {
    *buf = 136315394;
    v21 = "[CESRSpeechProfileSiteManager _handleUpdatedSets:siteURL:]";
    v22 = 2112;
    v23 = v8;
    v15 = 1;
    _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s Finished processing all set updates for site: %@", buf, 0x16u);
  }

  else
  {
    v15 = 1;
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_handleUpdatedSets:(id)sets
{
  v34 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = setsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isInUserVault])
        {
          v13 = array;
        }

        else
        {
          v13 = array2;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  if ([MEMORY[0x277CDCEB0] isCurrentPersonaDefault])
  {
    currentPersonaId = 0;
  }

  else
  {
    currentPersonaId = [MEMORY[0x277CDCEB0] currentPersonaId];
  }

  v15 = MEMORY[0x277CEF0E8];
  v16 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[CESRSpeechProfileSiteManager _handleUpdatedSets:]";
    v29 = 2112;
    v30 = currentPersonaId;
    _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s Handling updated sets for persona: %@", buf, 0x16u);
  }

  v17 = [(CESRSpeechProfileSiteManager *)self _userVaultSiteURLForPersonaId:currentPersonaId, v23];
  v18 = [(CESRSpeechProfileSiteManager *)self _commonSiteURLForPersonaId:currentPersonaId];
  v19 = *v15;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v28 = "[CESRSpeechProfileSiteManager _handleUpdatedSets:]";
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    _os_log_debug_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEBUG, "%s Resolved userVaultSiteURL: %@, commonSiteURL: %@", buf, 0x20u);
    if (!v17)
    {
LABEL_22:
      v20 = 1;
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else if (!v17)
  {
    goto LABEL_22;
  }

  if (![array count])
  {
    goto LABEL_22;
  }

  v20 = [(CESRSpeechProfileSiteManager *)self _handleUpdatedSets:array siteURL:v17];
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_23:
  if ([array2 count])
  {
    v20 &= [(CESRSpeechProfileSiteManager *)self _handleUpdatedSets:array2 siteURL:v18];
  }

LABEL_25:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_maintainAllSites:(BOOL)sites shouldDefer:(id)defer
{
  v24 = *MEMORY[0x277D85DE8];
  deferCopy = defer;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[CESRSpeechProfileSiteManager _maintainAllSites:shouldDefer:]";
    _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s Performing maintenance at all sites...", buf, 0xCu);
  }

  v19 = 0;
  v9 = [(CESRSpeechProfileSiteManager *)self _recordGlobalMaintenanceAttempt:&v19];
  v10 = v19;
  if (!v9)
  {
    v11 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[CESRSpeechProfileSiteManager _maintainAllSites:shouldDefer:]";
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Failed to record global maintenance attempt, error: %@", buf, 0x16u);
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__CESRSpeechProfileSiteManager__maintainAllSites_shouldDefer___block_invoke;
  v16[3] = &unk_27857F850;
  sitesCopy = sites;
  v16[4] = self;
  v17 = deferCopy;
  v12 = deferCopy;
  v13 = [(CESRSpeechProfileSiteManager *)self _enumerateSiteURLsUsingBlock:v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_rebuildSiteAtURL:(id)l shouldDefer:(id)defer
{
  v26 = *MEMORY[0x277D85DE8];
  deferCopy = defer;
  v18 = 0;
  v19 = 0;
  v7 = [(CESRSpeechProfileSiteManager *)self _prepareSiteWriterForSiteURL:l site:&v19 siteWriter:&v18];
  v8 = v19;
  v9 = v18;
  if (v7)
  {
    v10 = MEMORY[0x277CEF0E8];
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[CESRSpeechProfileSiteManager _rebuildSiteAtURL:shouldDefer:]";
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_225EEB000, v11, OS_LOG_TYPE_INFO, "%s Rebuilding site: %@", buf, 0x16u);
    }

    if ([v9 rebuildRequiredProfileInstances:deferCopy])
    {
      v17 = 0;
      LOBYTE(v7) = [v8 recordRebuild:&v17];
      v12 = v17;
      v13 = *v10;
      if (v7)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v21 = "[CESRSpeechProfileSiteManager _rebuildSiteAtURL:shouldDefer:]";
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s Rebuilt all profiles at site: %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[CESRSpeechProfileSiteManager _rebuildSiteAtURL:shouldDefer:]";
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Failed to record rebuild at site (%@), error: %@", buf, 0x20u);
      }
    }

    else
    {
      v14 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[CESRSpeechProfileSiteManager _rebuildSiteAtURL:shouldDefer:]";
        v22 = 2112;
        v23 = v8;
        _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to rebuild site: %@", buf, 0x16u);
      }

      LOBYTE(v7) = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_rebuildAllSites:(id)sites
{
  v21 = *MEMORY[0x277D85DE8];
  sitesCopy = sites;
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[CESRSpeechProfileSiteManager _rebuildAllSites:]";
    _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Rebuilding all sites...", buf, 0xCu);
  }

  v16 = 0;
  v7 = [(CESRSpeechProfileSiteManager *)self _recordGlobalRebuildAttempt:&v16];
  v8 = v16;
  if (!v7)
  {
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[CESRSpeechProfileSiteManager _rebuildAllSites:]";
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Failed to record global rebuild attempt, error: %@", buf, 0x16u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__CESRSpeechProfileSiteManager__rebuildAllSites___block_invoke;
  v14[3] = &unk_27857F828;
  v14[4] = self;
  v15 = sitesCopy;
  v10 = sitesCopy;
  v11 = [(CESRSpeechProfileSiteManager *)self _enumerateSiteURLsUsingBlock:v14];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_rebuildAllSitesWithSetEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v5 = self->_setEnumerator;
  setEnumerator = self->_setEnumerator;
  self->_setEnumerator = enumeratorCopy;
  v7 = enumeratorCopy;

  if ([(CESRSpeechProfileSiteManager *)self _resetAllSites])
  {
    v8 = [(CESRSpeechProfileSiteManager *)self _rebuildAllSites:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = self->_setEnumerator;
  self->_setEnumerator = v5;

  return v8;
}

- (BOOL)_resetSiteAtURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (lCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
      v33 = 2112;
      v34 = lCopy;
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Resetting site at URL: %@", buf, 0x16u);
    }

    [(NSMutableDictionary *)self->_siteForURL removeObjectForKey:lCopy];
    v30 = 0;
    v7 = SFRemoveItemIfExistsAtURL();
    v8 = 0;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      v18 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
        v33 = 2112;
        v34 = lCopy;
        v35 = 2112;
        v36 = v9;
        _os_log_error_impl(&dword_225EEB000, v18, OS_LOG_TYPE_ERROR, "%s Failed to remove site at URL (%@), error: %@", buf, 0x20u);
      }

      v17 = 0;
      goto LABEL_28;
    }

    v29 = v8;
    v10 = SFGetOrCreateDirectoryURL();
    v11 = v29;

    if (!v10)
    {
      v19 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
        v33 = 2112;
        v34 = lCopy;
        v35 = 2112;
        v36 = v11;
        _os_log_error_impl(&dword_225EEB000, v19, OS_LOG_TYPE_ERROR, "%s Failed to create site at URL (%@), error: %@", buf, 0x20u);
      }

      v17 = 0;
      v9 = v11;
      goto LABEL_28;
    }

    v28 = v11;
    v12 = [(CESRSpeechProfileSiteManager *)self _retrieveOrLoadSiteAtURL:lCopy error:&v28];
    v9 = v28;

    if (v12)
    {
      v27 = v9;
      v13 = [v12 recordSchemaVersion:&v27];
      v14 = v27;

      if ((v13 & 1) == 0)
      {
        v23 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
          v33 = 2112;
          v34 = v12;
          v35 = 2112;
          v36 = v14;
          _os_log_error_impl(&dword_225EEB000, v23, OS_LOG_TYPE_ERROR, "%s Failed to record schema version for site (%@), error: %@", buf, 0x20u);
        }

        v17 = 0;
        v9 = v14;
        goto LABEL_27;
      }

      v26 = v14;
      v15 = [v12 recordReset:&v26];
      v9 = v26;

      v16 = *v5;
      if (v15)
      {
        v17 = 1;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
          v33 = 2112;
          v34 = v12;
          v35 = 2112;
          v36 = &unk_283952CA8;
          _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s Site (%@) initialized with schema version: %@", buf, 0x20u);
        }

        goto LABEL_27;
      }

      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v17 = 0;
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      *buf = 136315650;
      v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v9;
      v21 = "%s Failed to record reset for site (%@), error: %@";
      v22 = v16;
    }

    else
    {
      v20 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136315650;
      v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
      v33 = 2112;
      v34 = lCopy;
      v35 = 2112;
      v36 = v9;
      v21 = "%s Failed to load site at URL (%@), error: %@";
      v22 = v20;
    }

    _os_log_error_impl(&dword_225EEB000, v22, OS_LOG_TYPE_ERROR, v21, buf, 0x20u);
    goto LABEL_26;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v32 = "[CESRSpeechProfileSiteManager _resetSiteAtURL:]";
    _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s siteURL cannot be nil.", buf, 0xCu);
  }

  v17 = 0;
LABEL_29:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_resetAllSites
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[CESRSpeechProfileSiteManager _resetAllSites]";
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Resetting all sites...", buf, 0xCu);
  }

  v12 = 0;
  v5 = [(CESRSpeechProfileSiteManager *)self _recordGlobalResetAttempt:&v12];
  v6 = v12;
  if (!v5)
  {
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[CESRSpeechProfileSiteManager _resetAllSites]";
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Failed to record global reset attempt, error: %@", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__CESRSpeechProfileSiteManager__resetAllSites__block_invoke;
  v11[3] = &unk_27857F800;
  v11[4] = self;
  v8 = [(CESRSpeechProfileSiteManager *)self _enumerateSiteURLsUsingBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_loadSiteAtURL:(id)l shouldBootstrap:(BOOL)bootstrap
{
  bootstrapCopy = bootstrap;
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[CESRSpeechProfileSiteManager _loadSiteAtURL:shouldBootstrap:]";
    v21 = 2112;
    v22 = lCopy;
    _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s Loading site at URL: %@", buf, 0x16u);
  }

  v18[1] = 0;
  v9 = SFGetOrCreateDirectoryURL();
  v10 = 0;

  if (v9)
  {
    v18[0] = v10;
    v11 = [(CESRSpeechProfileSiteManager *)self _retrieveOrLoadSiteAtURL:lCopy error:v18];
    v12 = v18[0];

    if (v11 && ![(CESRSpeechProfileSiteManager *)self _siteRequiresReset:v11])
    {
      if (![(CESRSpeechProfileSiteManager *)self _siteRequiresRebuild:v11])
      {
        if (![(CESRSpeechProfileSiteManager *)self _siteRequiresMaintenance:v11])
        {
          LOBYTE(v13) = 1;
          goto LABEL_15;
        }

        v15 = [(CESRSpeechProfileSiteManager *)self _maintainSiteAtURL:lCopy rebuildOnly:0 shouldDefer:0];
LABEL_14:
        LOBYTE(v13) = v15;
LABEL_15:

        v10 = v12;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = [(CESRSpeechProfileSiteManager *)self _resetSiteAtURL:lCopy];
      if (!v13 || !bootstrapCopy)
      {
        goto LABEL_15;
      }
    }

    v15 = [(CESRSpeechProfileSiteManager *)self _rebuildSiteAtURL:lCopy shouldDefer:0];
    goto LABEL_14;
  }

  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v20 = "[CESRSpeechProfileSiteManager _loadSiteAtURL:shouldBootstrap:]";
    v21 = 2112;
    v22 = lCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get/create site at URL (%@), error: %@", buf, 0x20u);
  }

  LOBYTE(v13) = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_loadAllSites
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CESRSpeechProfileSiteManager _loadAllSites]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Loading all sites...", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CESRSpeechProfileSiteManager__loadAllSites__block_invoke;
  v6[3] = &unk_27857F800;
  v6[4] = self;
  result = [(CESRSpeechProfileSiteManager *)self _enumerateSiteURLsUsingBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_enumerateSiteURLsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(CESRSpeechProfileSiteManager *)self _commonSiteURLForPersonaId:0];
  v6 = blockCopy[2](blockCopy, v5);

  return v6;
}

- (BOOL)_siteRequiresMaintenance:(id)maintenance
{
  v26 = *MEMORY[0x277D85DE8];
  maintenanceCopy = maintenance;
  lastRebuild = [maintenanceCopy lastRebuild];
  lastMaintenance = [maintenanceCopy lastMaintenance];
  v7 = CESRLaterDate(lastRebuild, lastMaintenance);

  _lastGlobalMaintenanceAttempt = [(CESRSpeechProfileSiteManager *)self _lastGlobalMaintenanceAttempt];
  v9 = _lastGlobalMaintenanceAttempt;
  v10 = 0;
  if (v7 && _lastGlobalMaintenanceAttempt)
  {
    if ([v7 compare:_lastGlobalMaintenanceAttempt] == -1)
    {
      v11 = *MEMORY[0x277CEF0E8];
      v10 = 1;
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        speechProfileSiteURL = [maintenanceCopy speechProfileSiteURL];
        v14 = CESRISO8601StringForDate(v9);
        v15 = CESRISO8601StringForDate(v7);
        v18 = 136315906;
        v19 = "[CESRSpeechProfileSiteManager _siteRequiresMaintenance:]";
        v20 = 2112;
        v21 = speechProfileSiteURL;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_225EEB000, v12, OS_LOG_TYPE_INFO, "%s Site (%@) missed the last global maintenance attempt (%@), last rebuilt/maintained: %@", &v18, 0x2Au);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_siteRequiresRebuild:(id)rebuild
{
  v23 = *MEMORY[0x277D85DE8];
  rebuildCopy = rebuild;
  lastRebuild = [rebuildCopy lastRebuild];
  _lastGlobalRebuildAttempt = [(CESRSpeechProfileSiteManager *)self _lastGlobalRebuildAttempt];
  v7 = _lastGlobalRebuildAttempt;
  v8 = 0;
  if (lastRebuild && _lastGlobalRebuildAttempt)
  {
    if ([lastRebuild compare:_lastGlobalRebuildAttempt] == -1)
    {
      v9 = *MEMORY[0x277CEF0E8];
      v8 = 1;
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = CESRISO8601StringForDate(v7);
        v12 = CESRISO8601StringForDate(lastRebuild);
        v15 = 136315906;
        v16 = "[CESRSpeechProfileSiteManager _siteRequiresRebuild:]";
        v17 = 2112;
        v18 = rebuildCopy;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s Site (%@) missed the last global rebuild attempt (%@), last rebuilt: %@", &v15, 0x2Au);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_siteRequiresReset:(id)reset
{
  v25 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  schemaVersion = [resetCopy schemaVersion];
  if ([schemaVersion isEqual:&unk_283952CA8])
  {
    lastReset = [resetCopy lastReset];
    _lastGlobalResetAttempt = [(CESRSpeechProfileSiteManager *)self _lastGlobalResetAttempt];
    v8 = _lastGlobalResetAttempt;
    v9 = 0;
    if (lastReset && _lastGlobalResetAttempt)
    {
      if ([lastReset compare:_lastGlobalResetAttempt] == -1)
      {
        v11 = *MEMORY[0x277CEF0E8];
        v9 = 1;
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          v12 = v11;
          v13 = CESRISO8601StringForDate(v8);
          v14 = CESRISO8601StringForDate(lastReset);
          v17 = 136315906;
          v18 = "[CESRSpeechProfileSiteManager _siteRequiresReset:]";
          v19 = 2112;
          v20 = resetCopy;
          v21 = 2112;
          v22 = v13;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&dword_225EEB000, v12, OS_LOG_TYPE_INFO, "%s Site (%@) missed the last global reset attempt (%@), last reset: %@", &v17, 0x2Au);
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF0E8];
    v9 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v17 = 136315906;
      v18 = "[CESRSpeechProfileSiteManager _siteRequiresReset:]";
      v19 = 2112;
      v20 = resetCopy;
      v21 = 2112;
      v22 = schemaVersion;
      v23 = 2112;
      v24 = &unk_283952CA8;
      _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s Site (%@) schema version (%@) is invalid, expected: %@", &v17, 0x2Au);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_retrieveOrLoadSiteAtURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_siteForURL objectForKey:lCopy];
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v16 = 136315394;
    v17 = "[CESRSpeechProfileSiteManager _retrieveOrLoadSiteAtURL:error:]";
    v18 = 2112;
    v19 = v8;
    v10 = "%s Site (%@) retrieved from cache.";
    v11 = v9;
    v12 = 22;
    goto LABEL_9;
  }

  v8 = [CESRSpeechProfileSite speechProfileSiteAtURL:lCopy readOnly:0 error:error];
  if (v8)
  {
    [(NSMutableDictionary *)self->_siteForURL setObject:v8 forKey:lCopy];
    v13 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "[CESRSpeechProfileSiteManager _retrieveOrLoadSiteAtURL:error:]";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = lCopy;
      v10 = "%s Site (%@) loaded from URL: %@";
      v11 = v13;
      v12 = 32;
LABEL_9:
      _os_log_impl(&dword_225EEB000, v11, OS_LOG_TYPE_INFO, v10, &v16, v12);
    }
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_userVaultSiteURLForPersonaId:(id)id
{
  idCopy = id;
  if (idCopy && ([MEMORY[0x277CDCEB0] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "personaMatchesEnrolledUser:", idCopy), v4, v5))
  {
    mEMORY[0x277CDCEE0] = [MEMORY[0x277CDCEE0] sharedInstance];
    v7 = [mEMORY[0x277CDCEE0] containerForPersona:idCopy];
    v8 = [v7 url];

    if (v8)
    {
      v9 = SFDataSiteURL();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_commonSiteURLForPersonaId:(id)id
{
  v3 = SFSpeechProfileRootDirectoryURL();
  v4 = SFDataSiteURL();

  return v4;
}

- (id)_siteURLsForPersonaId:(id)id
{
  v4 = MEMORY[0x277CBEB18];
  idCopy = id;
  array = [v4 array];
  v7 = [(CESRSpeechProfileSiteManager *)self _userVaultSiteURLForPersonaId:idCopy];
  v8 = [(CESRSpeechProfileSiteManager *)self _commonSiteURLForPersonaId:idCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  if (v8)
  {
    [array addObject:v8];
  }

  return array;
}

- (BOOL)_recordGlobalResetAttempt:(id *)attempt
{
  managerInfo = self->_managerInfo;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(attempt) = [(CESRDictionaryLog *)managerInfo writeUpdatedObject:v5 forKey:@"lastGlobalResetAttempt" error:attempt];

  return attempt;
}

- (BOOL)_recordGlobalMaintenanceAttempt:(id *)attempt
{
  managerInfo = self->_managerInfo;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(attempt) = [(CESRDictionaryLog *)managerInfo writeUpdatedObject:v5 forKey:@"lastGlobalMaintenanceAttempt" error:attempt];

  return attempt;
}

- (BOOL)_recordGlobalRebuildAttempt:(id *)attempt
{
  managerInfo = self->_managerInfo;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(attempt) = [(CESRDictionaryLog *)managerInfo writeUpdatedObject:v5 forKey:@"lastGlobalRebuildAttempt" error:attempt];

  return attempt;
}

- (BOOL)_loadOrCreateManagerInfo
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = SFSpeechProfileRootDirectoryURL();
  v14[1] = 0;
  v4 = SFGetOrCreateDirectoryURL();
  v5 = 0;

  if (v4)
  {
    v14[0] = v5;
    v6 = 1;
    v7 = [[CESRDictionaryLog alloc] initWithFilename:@"Manager" protectionClass:4 directory:v3 readOnly:0 create:1 error:v14];
    v8 = v14[0];

    managerInfo = self->_managerInfo;
    self->_managerInfo = v7;

    if (!self->_managerInfo)
    {
      v10 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "[CESRSpeechProfileSiteManager _loadOrCreateManagerInfo]";
        v17 = 2112;
        v18 = v8;
        _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s Failed to load manager info: %@", buf, 0x16u);
      }

      v6 = 0;
    }

    v5 = v8;
  }

  else
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "[CESRSpeechProfileSiteManager _loadOrCreateManagerInfo]";
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Failed to get/create root directory at URL (%@), error: %@", buf, 0x20u);
    }

    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_registerTrialExperimentUpdateHandler
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[CESRSpeechProfileSiteManager _registerTrialExperimentUpdateHandler]";
    v14 = 2112;
    v15 = @"SIRI_SPEECH_SV_SPEECH_PROFILE";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Registering Trial experiment update handler for namespace: %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x277D73660] clientWithIdentifier:111];
  trialClient = self->_trialClient;
  self->_trialClient = v4;

  objc_initWeak(buf, self);
  v6 = self->_trialClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CESRSpeechProfileSiteManager__registerTrialExperimentUpdateHandler__block_invoke;
  v9[3] = &unk_27857F7D8;
  objc_copyWeak(&v11, buf);
  v10 = @"SIRI_SPEECH_SV_SPEECH_PROFILE";
  v7 = [(TRIClient *)v6 addUpdateHandlerForNamespaceName:@"SIRI_SPEECH_SV_SPEECH_PROFILE" usingBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __69__CESRSpeechProfileSiteManager__registerTrialExperimentUpdateHandler__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 136315394;
    v11 = "[CESRSpeechProfileSiteManager _registerTrialExperimentUpdateHandler]_block_invoke";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Trial updates detected for namespace (%@), rebuilding all profiles for personalization experiments.", buf, 0x16u);
  }

  v5 = WeakRetained[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CESRSpeechProfileSiteManager__registerTrialExperimentUpdateHandler__block_invoke_305;
  block[3] = &unk_27857FFE8;
  v9 = WeakRetained;
  v6 = WeakRetained;
  dispatch_sync(v5, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearSpeechProfileSiteWithUserId:(id)id
{
  idCopy = id;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CESRSpeechProfileSiteManager_clearSpeechProfileSiteWithUserId___block_invoke;
  block[3] = &unk_27857F7B0;
  block[4] = self;
  v9 = idCopy;
  v10 = &v11;
  v6 = idCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __65__CESRSpeechProfileSiteManager_clearSpeechProfileSiteWithUserId___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _siteURLsForPersonaId:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _resetSiteAtURL:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearAllState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CESRSpeechProfileSiteManager_clearAllState__block_invoke;
  v5[3] = &unk_27857FB48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__CESRSpeechProfileSiteManager_clearAllState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _resetAllSites];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)rebuildSpeechProfileSiteWithUserId:(id)id
{
  idCopy = id;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CESRSpeechProfileSiteManager_rebuildSpeechProfileSiteWithUserId___block_invoke;
  block[3] = &unk_27857F7B0;
  block[4] = self;
  v9 = idCopy;
  v10 = &v11;
  v6 = idCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __67__CESRSpeechProfileSiteManager_rebuildSpeechProfileSiteWithUserId___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _siteURLsForPersonaId:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _rebuildSiteAtURL:*(*(&v8 + 1) + 8 * v6++) shouldDefer:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)rebuildAllSpeechProfilesWithSetEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CESRSpeechProfileSiteManager_rebuildAllSpeechProfilesWithSetEnumerator___block_invoke;
  block[3] = &unk_27857F7B0;
  v9 = enumeratorCopy;
  v10 = &v11;
  block[4] = self;
  v6 = enumeratorCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __74__CESRSpeechProfileSiteManager_rebuildAllSpeechProfilesWithSetEnumerator___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rebuildAllSitesWithSetEnumerator:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __51__CESRSpeechProfileSiteManager_deleteInactiveSites__block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDCF28];
  v1 = SFSpeechProfileSiteDirectoriesWithUserType();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = SFPersonaIdFromSiteURL();
        if (v7)
        {
          v8 = [MEMORY[0x277CDCEB0] sharedInstance];
          v9 = [v8 personaMatchesEnrolledUser:v7];

          if ((v9 & 1) == 0)
          {
            v10 = [MEMORY[0x277CCAA00] defaultManager];
            v16 = 0;
            v11 = [v10 removeItemAtURL:v6 error:&v16];
            v12 = v16;

            v13 = *MEMORY[0x277CEF0E8];
            v14 = *MEMORY[0x277CEF0E8];
            if (v11)
            {
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v22 = "[CESRSpeechProfileSiteManager deleteInactiveSites]_block_invoke";
                v23 = 2112;
                v24 = v6;
                _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_DEFAULT, "%s Deleted site at URL: %@", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v22 = "[CESRSpeechProfileSiteManager deleteInactiveSites]_block_invoke";
              v23 = 2112;
              v24 = v6;
              v25 = 2112;
              v26 = v12;
              _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Failed to delete site (%@), error: %@", buf, 0x20u);
            }
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)performMaintenance:(BOOL)maintenance shouldDefer:(id)defer
{
  deferCopy = defer;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CESRSpeechProfileSiteManager_performMaintenance_shouldDefer___block_invoke;
  v10[3] = &unk_27857F788;
  v11 = deferCopy;
  v12 = &v14;
  maintenanceCopy = maintenance;
  v10[4] = self;
  v8 = deferCopy;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __63__CESRSpeechProfileSiteManager_performMaintenance_shouldDefer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _maintainAllSites:*(a1 + 56) shouldDefer:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)handleSysdiagnoseStarted
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CESRSpeechProfileSiteManager_handleSysdiagnoseStarted__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)snapshotBookmarksForLocale:(id)locale toPath:(id)path
{
  localeCopy = locale;
  pathCopy = path;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CESRSpeechProfileSiteManager_snapshotBookmarksForLocale_toPath___block_invoke;
  block[3] = &unk_27857FED0;
  block[4] = self;
  v12 = localeCopy;
  v13 = pathCopy;
  v9 = pathCopy;
  v10 = localeCopy;
  dispatch_sync(queue, block);
}

- (void)updateRequiredLocales
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CESRSpeechProfileSiteManager_updateRequiredLocales__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)handleUpdatedSets:(id)sets
{
  setsCopy = sets;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CESRSpeechProfileSiteManager_handleUpdatedSets___block_invoke;
  block[3] = &unk_27857F7B0;
  v9 = setsCopy;
  v10 = &v11;
  block[4] = self;
  v6 = setsCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __50__CESRSpeechProfileSiteManager_handleUpdatedSets___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _handleUpdatedSets:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (CESRSpeechProfileSiteManager)initWithSetEnumerator:(id)enumerator settings:(id)settings
{
  v24 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  settingsCopy = settings;
  if ((AFHasUnlockedSinceBoot() & 1) == 0)
  {
    v18 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[CESRSpeechProfileSiteManager initWithSetEnumerator:settings:]";
      _os_log_impl(&dword_225EEB000, v18, OS_LOG_TYPE_INFO, "%s Site management is only possible after first-unlock.", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v21.receiver = self;
  v21.super_class = CESRSpeechProfileSiteManager;
  self = [(CESRSpeechProfileSiteManager *)&v21 init];
  if (self)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v10 cStringUsingEncoding:4];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = self->_queue;
    self->_queue = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    siteForURL = self->_siteForURL;
    self->_siteForURL = dictionary;

    objc_storeStrong(&self->_setEnumerator, enumerator);
    objc_storeStrong(&self->_settings, settings);
    if ([(CESRSpeechProfileSiteManager *)self _loadOrCreateManagerInfo])
    {
      [(CESRSpeechProfileSiteManager *)self deleteInactiveSites];
      if ([(CESRSpeechProfileSiteManager *)self _loadAllSites])
      {
        [(CESRSpeechProfileSiteManager *)self _registerTrialExperimentUpdateHandler];
        goto LABEL_6;
      }
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

LABEL_6:
  self = self;
  selfCopy = self;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)defaultManager
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [MEMORY[0x277CF94E8] setEnumeratorWithUseCase:@"SpeechProfile"];
  v4 = +[CESRSpeechProfileSettings defaultSettings];
  v5 = [v2 initWithSetEnumerator:v3 settings:v4];

  return v5;
}

@end