@interface MRDNowPlayingObserverState
- (MRDNowPlayingObserverState)initWithPlayerPath:(id)a3;
- (MRNowPlayingState)state;
- (id)_coealesceItems:(id)a3;
- (id)description;
- (void)setContentItems:(id)a3;
- (void)setContentItemsArtwork:(id)a3;
- (void)setPlaybackQueue:(id)a3;
- (void)setPlaybackQueueCapabilities:(unint64_t)a3;
- (void)setPlaybackState:(id)a3;
- (void)setPlayerProperties:(id)a3;
- (void)setSupportedCommands:(id)a3;
@end

@implementation MRDNowPlayingObserverState

- (MRDNowPlayingObserverState)initWithPlayerPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRDNowPlayingObserverState;
  v6 = [(MRDNowPlayingObserverState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerPath, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  supportedCommands = self->_supportedCommands;
  if (supportedCommands)
  {
    [v3 appendFormat:@"  supportedCommands = %lu\n", -[NSArray count](supportedCommands, "count")];
  }

  if (self->_playbackQueue)
  {
    v5 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@" playbackQueue = %@\n", v5];
  }

  if (self->_playbackQueueCapabilities)
  {
    v6 = MRPlaybackQueueCapabilitiesCopyDescription();
    [v3 appendFormat:@" playbackQueueCapabilities = %@\n", v6];
  }

  if (self->_contentItems)
  {
    v7 = MRCreateIndentedDebugDescriptionFromArray();
    [v3 appendFormat:@"  contentItems = %@\n", v7];
  }

  if (self->_contentItemsArtwork)
  {
    v8 = MRCreateIndentedDebugDescriptionFromArray();
    [v3 appendFormat:@"  contentItemArtworks = %@\n", v8];
  }

  playbackState = self->_playbackState;
  if (playbackState)
  {
    [(NSNumber *)playbackState intValue];
    v10 = MRMediaRemoteCopyPlaybackStateDescription();
    [v3 appendFormat:@"  playbackState = %@\n", v10];
  }

  playbackStateTimestamp = self->_playbackStateTimestamp;
  if (playbackStateTimestamp)
  {
    [(NSDate *)self->_playbackStateTimestamp timeIntervalSinceNow];
    [v3 appendFormat:@"  playbackStateTimestamp = %@ (%lf seconds ago)\n", playbackStateTimestamp, v12];
  }

  if (self->_playerProperties)
  {
    v13 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    playerProperties = %@\n", v13];
  }

  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)setPlaybackQueue:(id)a3
{
  v4 = a3;
  v25 = self;
  v5 = [(NSArray *)self->_contentItems mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 contentItems];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v5 containsObject:v11])
        {
          v12 = +[MRUserSettings currentSettings];
          v13 = [v12 verboseNowPlayingStateObserver];

          if (v13)
          {
            v14 = _MRLogForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              playerPath = v25->_playerPath;
              *buf = 138412546;
              v31 = v11;
              v32 = 2112;
              v33 = playerPath;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Removing item %@ item from contentItems because playbackQueue contains item for %@", buf, 0x16u);
            }
          }

          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  playbackQueue = v25->_playbackQueue;
  v17 = +[MRUserSettings currentSettings];
  v18 = [v17 verboseNowPlayingStateObserver];

  if (playbackQueue)
  {
    if (v18)
    {
      v19 = _MRLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v25->_playerPath;
        *buf = 138412546;
        v31 = v4;
        v32 = 2112;
        v33 = v20;
        v21 = "[MRDNowPlayingStateObserver] Updating playbackQueue %@for %@";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0x16u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  else if (v18)
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v25->_playerPath;
      *buf = 138412546;
      v31 = v4;
      v32 = 2112;
      v33 = v22;
      v21 = "[MRDNowPlayingStateObserver] Setting playbackQueue %@ for %@";
      goto LABEL_21;
    }

LABEL_22:
  }

  v23 = [v4 copy];
  v24 = v25->_playbackQueue;
  v25->_playbackQueue = v23;
}

- (void)setContentItems:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        playbackQueue = self->_playbackQueue;
        v11 = [v9 identifier];
        v12 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:v11];

        if (v12)
        {
          v13 = +[MRUserSettings currentSettings];
          v14 = [v13 verboseNowPlayingStateObserver];

          if (v14)
          {
            v15 = _MRLogForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              playerPath = self->_playerPath;
              *buf = 138412546;
              v63 = v9;
              v64 = 2112;
              v65 = playerPath;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Merging item %@ into playbackQueue for %@", buf, 0x16u);
            }
          }

          [v12 mergeFrom:v9];
        }

        else
        {
          [v4 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v42 = [v4 copy];
  v45 = [v42 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v45)
  {
    v44 = *v53;
    do
    {
      v17 = 0;
      do
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = v17;
        v18 = *(*(&v52 + 1) + 8 * v17);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v19 = self->_contentItems;
        v20 = [(NSArray *)v19 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v49;
          do
          {
            for (j = 0; j != v21; j = j + 1)
            {
              if (*v49 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v48 + 1) + 8 * j);
              v25 = [v18 identifier];
              v26 = [v24 identifier];
              v27 = [v25 isEqual:v26];

              if (v27)
              {
                v28 = +[MRUserSettings currentSettings];
                v29 = [v28 verboseNowPlayingStateObserver];

                if (v29)
                {
                  v30 = _MRLogForCategory();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = self->_playerPath;
                    *buf = 138412546;
                    v63 = v18;
                    v64 = 2112;
                    v65 = v31;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Merging item %@ into contentItems for %@", buf, 0x16u);
                  }
                }

                [v24 mergeFrom:v18];
                [v4 removeObject:v18];
              }
            }

            v21 = [(NSArray *)v19 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v21);
        }

        v17 = v46 + 1;
      }

      while ((v46 + 1) != v45);
      v45 = [v42 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v45);
  }

  v32 = [(NSArray *)self->_contentItems count];
  v33 = +[MRUserSettings currentSettings];
  v34 = [v33 verboseNowPlayingStateObserver];

  if (v32)
  {
    if (!v34)
    {
      goto LABEL_44;
    }

    v35 = _MRLogForCategory();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v36 = self->_playerPath;
    *buf = 138412546;
    v63 = v4;
    v64 = 2112;
    v65 = v36;
    v37 = "[MRDNowPlayingStateObserver] Adding contentItems %@ for %@";
    goto LABEL_42;
  }

  if (!v34)
  {
    goto LABEL_44;
  }

  v35 = _MRLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v38 = self->_playerPath;
    *buf = 138412546;
    v63 = v4;
    v64 = 2112;
    v65 = v38;
    v37 = "[MRDNowPlayingStateObserver] Setting contentItems %@ for %@";
LABEL_42:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 0x16u);
  }

LABEL_43:

LABEL_44:
  contentItems = self->_contentItems;
  if (contentItems)
  {
    v40 = [(NSArray *)contentItems arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v40 = v4;
  }

  v41 = self->_contentItems;
  self->_contentItems = v40;
}

- (void)setContentItemsArtwork:(id)a3
{
  v4 = a3;
  contentItemsArtwork = self->_contentItemsArtwork;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseNowPlayingStateObserver];

  if (contentItemsArtwork)
  {
    if (v7)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        playerPath = self->_playerPath;
        v16 = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = playerPath;
        v10 = "[MRDNowPlayingStateObserver] Adding items %@ into contentItemArtworkUpdates for %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v16, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_playerPath;
      v16 = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v11;
      v10 = "[MRDNowPlayingStateObserver] Setting items %@ into contentItemArtworkUpdates for %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  v12 = [[NSSet alloc] initWithArray:self->_contentItemsArtwork];
  v13 = [v12 setByAddingObjectsFromArray:v4];
  v14 = [v13 allObjects];
  v15 = self->_contentItemsArtwork;
  self->_contentItemsArtwork = v14;
}

- (void)setSupportedCommands:(id)a3
{
  v4 = a3;
  supportedCommands = self->_supportedCommands;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseNowPlayingStateObserver];

  if (supportedCommands)
  {
    if (v7)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        playerPath = self->_playerPath;
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = playerPath;
        v10 = "[MRDNowPlayingStateObserver] Updating supportedCommands %@ for %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_playerPath;
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v11;
      v10 = "[MRDNowPlayingStateObserver] Setting supportedCommands %@ for %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  v12 = self->_supportedCommands;
  self->_supportedCommands = v4;
}

- (void)setPlayerProperties:(id)a3
{
  v4 = a3;
  playerProperties = self->_playerProperties;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseNowPlayingStateObserver];

  if (playerProperties)
  {
    if (v7)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        playerPath = self->_playerPath;
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = playerPath;
        v10 = "[MRDNowPlayingStateObserver] Updating playerProperties %@ for %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_playerPath;
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v11;
      v10 = "[MRDNowPlayingStateObserver] Setting playerProperties %@ for %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  v12 = self->_playerProperties;
  self->_playerProperties = v4;
}

- (void)setPlaybackState:(id)a3
{
  v4 = a3;
  playbackState = self->_playbackState;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseNowPlayingStateObserver];

  if (playbackState)
  {
    if (v7)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [(NSNumber *)v4 intValue];
        v9 = MRMediaRemoteCopyPlaybackStateDescription();
        playerPath = self->_playerPath;
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = playerPath;
        v11 = "[MRDNowPlayingStateObserver] Updating playbackState %@ for %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(NSNumber *)v4 intValue];
      v9 = MRMediaRemoteCopyPlaybackStateDescription();
      v12 = self->_playerPath;
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v12;
      v11 = "[MRDNowPlayingStateObserver] Setting playbackState %@ for %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  v13 = self->_playbackState;
  self->_playbackState = v4;
}

- (void)setPlaybackQueueCapabilities:(unint64_t)a3
{
  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 verboseNowPlayingStateObserver];

  if (playbackQueueCapabilities)
  {
    if (v7)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MRPlaybackQueueCapabilitiesCopyDescription();
        playerPath = self->_playerPath;
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = playerPath;
        v11 = "[MRDNowPlayingStateObserver] Updating playbackState %@ for %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MRPlaybackQueueCapabilitiesCopyDescription();
      v12 = self->_playerPath;
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v12;
      v11 = "[MRDNowPlayingStateObserver] Setting playbackState %@ for %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  self->_playbackQueueCapabilities = a3;
}

- (MRNowPlayingState)state
{
  if (self->_supportedCommands || self->_playbackQueue || self->_playbackQueueCapabilities || self->_playbackState || self->_playbackStateTimestamp)
  {
    v3 = [MRNowPlayingState alloc];
    v4 = [(MRDNowPlayingObserverState *)self playerPath];
    v5 = [v3 initWithPlayerPath:v4];

    v6 = [(MRDNowPlayingObserverState *)self supportedCommands];
    [v5 setSupportedCommands:v6];

    v7 = [(MRDNowPlayingObserverState *)self playbackQueue];
    [v5 setPlaybackQueue:v7];

    [v5 setPlaybackQueueCapabilities:{-[MRDNowPlayingObserverState playbackQueueCapabilities](self, "playbackQueueCapabilities")}];
    v8 = [(MRDNowPlayingObserverState *)self playbackState];

    if (v8)
    {
      v9 = [(MRDNowPlayingObserverState *)self playbackState];
      [v5 setPlaybackState:{objc_msgSend(v9, "intValue")}];
    }

    v10 = [(MRDNowPlayingObserverState *)self playbackStateTimestamp];

    if (v10)
    {
      v11 = [(MRDNowPlayingObserverState *)self playbackStateTimestamp];
      [v11 timeIntervalSinceReferenceDate];
      [v5 setPlaybackStateTimestamp:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_coealesceItems:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v5;
        v6 = *(*(&v26 + 1) + 8 * v5);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = obj;
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              if (v6 != v12)
              {
                v13 = [v6 identifier];
                v14 = [v12 identifier];
                v15 = [v13 isEqualToString:v14];

                if (v15)
                {
                  [v6 mergeFrom:v12];
                }
              }

              [v4 addObject:{v6, v18}];
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v5 = v21 + 1;
      }

      while ((v21 + 1) != v19);
      v19 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  v16 = [v4 allObjects];

  return v16;
}

@end