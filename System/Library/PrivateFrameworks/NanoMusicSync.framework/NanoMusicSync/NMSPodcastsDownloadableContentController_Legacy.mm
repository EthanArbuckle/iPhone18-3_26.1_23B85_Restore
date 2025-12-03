@interface NMSPodcastsDownloadableContentController_Legacy
- (BOOL)_changeContainsRelevantChannelChanges:(id)changes;
- (BOOL)_changeContainsRelevantEpisodeChanges:(id)changes;
- (BOOL)_changeContainsRelevantShowChanges:(id)changes;
- (BOOL)_changeContainsRelevantStationChanges:(id)changes;
- (BOOL)_shouldMergeHistoryTransaction:(id)transaction;
- (NMSPodcastsDownloadableContentControllerDelegate_Legacy)delegate;
- (NMSPodcastsDownloadableContentController_Legacy)init;
- (NSPersistentHistoryToken)lastMergedToken;
- (id)_ctx;
- (id)_relevantChannelProperties;
- (id)_relevantEpisodeProperties;
- (id)_relevantShowProperties;
- (id)_relevantStationProperties;
- (void)_handlePersistentStoreRemoteChangeNotification:(id)notification;
- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)notification;
- (void)_notifyDelegateContentDidChange;
- (void)_notifyDelegateContentDidChangeImmediately;
- (void)_processLatestPersistenHistoryChanges;
- (void)_resetPersistentHistoryTokenAndNotifyObservers;
- (void)extensionAccessDidChange;
- (void)setDelegate:(id)delegate;
- (void)setLastMergedToken:(id)token;
@end

@implementation NMSPodcastsDownloadableContentController_Legacy

- (NMSPodcastsDownloadableContentController_Legacy)init
{
  v18.receiver = self;
  v18.super_class = NMSPodcastsDownloadableContentController_Legacy;
  v2 = [(NMSPodcastsDownloadableContentController_Legacy *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NMSPodcastsDownloadableContentObserver.queue", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    objc_initWeak(&location, v2);
    v6 = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, *(v2 + 1));
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    v8 = *(v2 + 2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__NMSPodcastsDownloadableContentController_Legacy_init__block_invoke;
    handler[3] = &unk_27993DC58;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(*(v2 + 2));
    *(v2 + 24) = 0;
    v9 = *(v2 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NMSPodcastsDownloadableContentController_Legacy_init__block_invoke_2;
    block[3] = &unk_27993DC58;
    objc_copyWeak(&v14, &location);
    dispatch_async(v9, block);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handlePersistentStoreRemoteChangeNotification_ name:*MEMORY[0x277CBE260] object:0];
    [defaultCenter addObserver:v2 selector:sel__handlePodcastsPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.podcasts-pinning-selections" object:0];
    mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0] addObserver:v2];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NMSPodcastsDownloadableContentController_Legacy_setDelegate___block_invoke;
  block[3] = &unk_27993DC80;
  objc_copyWeak(&v9, &location);
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NMSPodcastsDownloadableContentControllerDelegate_Legacy)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__NMSPodcastsDownloadableContentController_Legacy_delegate__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)extensionAccessDidChange
{
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver can access PodcastsDB again", buf, 2u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__NMSPodcastsDownloadableContentController_Legacy_extensionAccessDidChange__block_invoke;
    block[3] = &unk_27993DC58;
    objc_copyWeak(&v8, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (NSPersistentHistoryToken)lastMergedToken
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  lastMergedToken = self->_lastMergedToken;
  if (!lastMergedToken)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"NMSPodcastsDownloadableContentObserverPersistentHistoryToken"];

    if (v5)
    {
      v12 = 0;
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
      v7 = v12;
      if (v7)
      {
        p_super = _MTLogCategoryDatabase();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_25B27B000, p_super, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentObserver encountered error trying to fetch previous history token %@", buf, 0xCu);
        }
      }

      else
      {
        v9 = v6;
        p_super = &self->_lastMergedToken->super;
        self->_lastMergedToken = v9;
      }
    }

    else
    {
      v7 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver has never processed persistent history data", buf, 2u);
      }
    }

    lastMergedToken = self->_lastMergedToken;
  }

  v10 = *MEMORY[0x277D85DE8];

  return lastMergedToken;
}

- (void)setLastMergedToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_queue);
  objc_storeStrong(&self->_lastMergedToken, token);
  if (tokenCopy)
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v17];
    v7 = v17;
    standardUserDefaults2 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setObject:v6 forKey:@"NMSPodcastsDownloadableContentObserverPersistentHistoryToken"];

      v10 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = tokenCopy;
        v11 = "NMSPodcastsDownloadableContentObserver set last processed persistent history token %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = standardUserDefaults2;
        v11 = "NMSPodcastsDownloadableContentObserver encountered error archiving last persistent history token %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_25B27B000, v12, v13, v11, buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v14 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver set last processed persistent history token to nil. Removing default.", buf, 2u);
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"NMSPodcastsDownloadableContentObserverPersistentHistoryToken"];
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ctx
{
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  privateQueueContext = [mEMORY[0x277D3DAE8] privateQueueContext];

  return privateQueueContext;
}

- (id)_relevantEpisodeProperties
{
  v13[13] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D3DC98];
  v13[0] = *MEMORY[0x277D3DCD0];
  v13[1] = v3;
  v4 = *MEMORY[0x277D3DC38];
  v13[2] = *MEMORY[0x277D3DCA0];
  v13[3] = v4;
  v5 = *MEMORY[0x277D3DBE0];
  v13[4] = *MEMORY[0x277D3DC20];
  v13[5] = v5;
  v6 = *MEMORY[0x277D3DCC0];
  v13[6] = *MEMORY[0x277D3DC70];
  v13[7] = v6;
  v7 = *MEMORY[0x277D3DC18];
  v13[8] = *MEMORY[0x277D3DC60];
  v13[9] = v7;
  v8 = *MEMORY[0x277D3DC10];
  v13[10] = *MEMORY[0x277D3DCA8];
  v13[11] = v8;
  v13[12] = *MEMORY[0x277D3DC50];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:13];
  v10 = [v2 setWithArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_changeContainsRelevantEpisodeChanges:(id)changes
{
  v25 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DCF8]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v9 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            _relevantEpisodeProperties = [(NMSPodcastsDownloadableContentController_Legacy *)self _relevantEpisodeProperties];
            name2 = [v13 name];
            v16 = [_relevantEpisodeProperties containsObject:name2];

            if (v16)
            {
              v17 = 1;
              goto LABEL_14;
            }
          }

          v10 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_relevantShowProperties
{
  v13[13] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D3DE68];
  v13[0] = *MEMORY[0x277D3DE70];
  v13[1] = v3;
  v4 = *MEMORY[0x277D3DE78];
  v13[2] = *MEMORY[0x277D3DED0];
  v13[3] = v4;
  v5 = *MEMORY[0x277D3DE50];
  v13[4] = *MEMORY[0x277D3DEB0];
  v13[5] = v5;
  v6 = *MEMORY[0x277D3DE38];
  v13[6] = *MEMORY[0x277D3DEA8];
  v13[7] = v6;
  v7 = *MEMORY[0x277D3DEC8];
  v13[8] = *MEMORY[0x277D3DE28];
  v13[9] = v7;
  v8 = *MEMORY[0x277D3DEB8];
  v13[10] = *MEMORY[0x277D3DEC0];
  v13[11] = v8;
  v13[12] = *MEMORY[0x277D3DE58];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:13];
  v10 = [v2 setWithArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_changeContainsRelevantShowChanges:(id)changes
{
  v25 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DD50]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v9 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            _relevantShowProperties = [(NMSPodcastsDownloadableContentController_Legacy *)self _relevantShowProperties];
            name2 = [v13 name];
            v16 = [_relevantShowProperties containsObject:name2];

            if (v16)
            {
              v17 = 1;
              goto LABEL_14;
            }
          }

          v10 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_relevantStationProperties
{
  v11[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D3DE00];
  v11[0] = *MEMORY[0x277D3DE08];
  v11[1] = v3;
  v4 = *MEMORY[0x277D3DDD0];
  v11[2] = *MEMORY[0x277D3DDD8];
  v11[3] = v4;
  v5 = *MEMORY[0x277D3DDF8];
  v11[4] = *MEMORY[0x277D3DDF0];
  v11[5] = v5;
  v6 = *MEMORY[0x277D3DDC0];
  v11[6] = *MEMORY[0x277D3DDC8];
  v11[7] = v6;
  v11[8] = *MEMORY[0x277D3DDE0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:9];
  v8 = [v2 setWithArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_changeContainsRelevantStationChanges:(id)changes
{
  v25 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DD48]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v9 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            _relevantStationProperties = [(NMSPodcastsDownloadableContentController_Legacy *)self _relevantStationProperties];
            name2 = [v13 name];
            v16 = [_relevantStationProperties containsObject:name2];

            if (v16)
            {
              v17 = 1;
              goto LABEL_14;
            }
          }

          v10 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_relevantChannelProperties
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = *MEMORY[0x277D3DBB8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_changeContainsRelevantChannelChanges:(id)changes
{
  v25 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DCE8]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v9 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            _relevantChannelProperties = [(NMSPodcastsDownloadableContentController_Legacy *)self _relevantChannelProperties];
            name2 = [v13 name];
            v16 = [_relevantChannelProperties containsObject:name2];

            if (v16)
            {
              v17 = 1;
              goto LABEL_14;
            }
          }

          v10 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_shouldMergeHistoryTransaction:(id)transaction
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  changes = [transaction changes];
  v5 = [changes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(changes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(NMSPodcastsDownloadableContentController_Legacy *)self _changeContainsRelevantEpisodeChanges:v9]|| [(NMSPodcastsDownloadableContentController_Legacy *)self _changeContainsRelevantShowChanges:v9]|| [(NMSPodcastsDownloadableContentController_Legacy *)self _changeContainsRelevantStationChanges:v9]|| [(NMSPodcastsDownloadableContentController_Legacy *)self _changeContainsRelevantChannelChanges:v9])
        {
          v10 = 1;
          goto LABEL_15;
        }
      }

      v6 = [changes countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_notifyDelegateContentDidChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_delegateNotificationPending)
  {
    v3 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver delegate notification pending.", buf, 2u);
    }
  }

  else
  {
    self->_delegateNotificationPending = 1;
    objc_initWeak(buf, self);
    v4 = dispatch_time(0, 8000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__NMSPodcastsDownloadableContentController_Legacy__notifyDelegateContentDidChange__block_invoke;
    block[3] = &unk_27993DC58;
    objc_copyWeak(&v7, buf);
    dispatch_after(v4, queue, block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (void)_notifyDelegateContentDidChangeImmediately
{
  dispatch_assert_queue_V2(self->_queue);
  self->_delegateNotificationPending = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 podcastsDownloadableContentControllerContentDidChange:self];
  }
}

- (void)_handlePersistentStoreRemoteChangeNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE200]];
    v17 = 138412546;
    v18 = name;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSPodcastsDownloadableContentObserver received %@ with token %@", &v17, 0x16u);
  }

  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    object = [notificationCopy object];
    _ctx = [(NMSPodcastsDownloadableContentController_Legacy *)self _ctx];
    persistentStoreCoordinator = [_ctx persistentStoreCoordinator];

    if (object == persistentStoreCoordinator)
    {
      dispatch_source_merge_data(self->_persistentHistorySource, 1uLL);
    }
  }

  else
  {
    v14 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentObserver cannot open Podcasts DB. Will not respond to notification.", &v17, 2u);
    }

    mEMORY[0x277D3DAF0]2 = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0]2 attemptToFix];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_processLatestPersistenHistoryChanges
{
  v45 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _ctx = [(NMSPodcastsDownloadableContentController_Legacy *)self _ctx];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  lastMergedToken = [(NMSPodcastsDownloadableContentController_Legacy *)self lastMergedToken];
  v4 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v37[5]];
  [v4 setResultType:5];
  [v4 setFetchBatchSize:200];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__0;
  v28[4] = __Block_byref_object_dispose__0;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__NMSPodcastsDownloadableContentController_Legacy__processLatestPersistenHistoryChanges__block_invoke;
  v23[3] = &unk_27993DCD0;
  v26 = v28;
  v5 = _ctx;
  v24 = v5;
  v6 = v4;
  v25 = v6;
  v27 = &v30;
  [v5 performBlockAndWait:v23];
  if (v31[5])
  {
    v7 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v31[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentObserver encountered error trying to fetch store result %@", &buf, 0xCu);
    }

    v9 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentObserver clearing out persistent history token and performing a full persistent history run", &buf, 2u);
    }

    [(NMSPodcastsDownloadableContentController_Legacy *)self setLastMergedToken:0];
    v10 = v31[5];
    v31[5] = 0;

    v11 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:0];

    [v11 setResultType:5];
    [v11 setFetchBatchSize:200];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__NMSPodcastsDownloadableContentController_Legacy__processLatestPersistenHistoryChanges__block_invoke_21;
    v18[3] = &unk_27993DCD0;
    v21 = v28;
    v19 = v5;
    v6 = v11;
    v20 = v6;
    v22 = &v30;
    [v19 performBlockAndWait:v18];
    if (v31[5])
    {
      v12 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v31[5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentObserver encountered error trying to fetch store result after setting to nil %@", &buf, 0xCu);
      }

      goto LABEL_16;
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x2020000000;
  v44 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__NMSPodcastsDownloadableContentController_Legacy__processLatestPersistenHistoryChanges__block_invoke_22;
  v17[3] = &unk_27993DCF8;
  v17[4] = self;
  v17[5] = v28;
  v17[6] = &buf;
  v17[7] = &v36;
  [v5 performBlockAndWait:v17];
  [(NMSPodcastsDownloadableContentController_Legacy *)self setLastMergedToken:v37[5]];
  if (*(*(&buf + 1) + 24) == 1)
  {
    v14 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver notifying delegate", v16, 2u);
    }

    [(NMSPodcastsDownloadableContentController_Legacy *)self _notifyDelegateContentDidChange];
  }

  _Block_object_dispose(&buf, 8);
LABEL_16:

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"IsInProcessNotification"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v7 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver pinning selections did change", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__NMSPodcastsDownloadableContentController_Legacy__handlePodcastsPinningSelectionsDidChangeNotification___block_invoke;
    block[3] = &unk_27993DD20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_resetPersistentHistoryTokenAndNotifyObservers
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    *v18 = 0;
    v19 = v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    _ctx = [(NMSPodcastsDownloadableContentController_Legacy *)self _ctx];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __97__NMSPodcastsDownloadableContentController_Legacy__resetPersistentHistoryTokenAndNotifyObservers__block_invoke;
    v15 = &unk_27993DCA8;
    v17 = v18;
    v6 = _ctx;
    v16 = v6;
    [v6 performBlockAndWait:&v12];
    [(NMSPodcastsDownloadableContentController_Legacy *)self setLastMergedToken:*(v19 + 5), v12, v13, v14, v15];
    v7 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v19 + 5);
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver resetting persistent history token and notifying observers. Latest token %@", buf, 0xCu);
    }

    [(NMSPodcastsDownloadableContentController_Legacy *)self _notifyDelegateContentDidChange];
    _Block_object_dispose(v18, 8);
  }

  else
  {
    v9 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentObserver cannot open Podcasts DB. Will not reset persistent history.", v18, 2u);
    }

    mEMORY[0x277D3DAF0]2 = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0]2 attemptToFix];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end