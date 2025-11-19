@interface _MPCQueueControllerBehaviorMusicTransportableExtension
- (BOOL)isSupportedSessionType:(id)a3 reason:(id *)a4;
- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable;
- (_MPCQueueControllerBehaviorMusicTransportableExtension)initWithInvalidatable:(id)a3;
- (id)allKnownSessionTypes;
- (void)_updateAllKnownSessionInfos;
- (void)accountManager:(id)a3 didChangeAccounts:(id)a4;
@end

@implementation _MPCQueueControllerBehaviorMusicTransportableExtension

- (id)allKnownSessionTypes
{
  if (![(NSArray *)self->_accounts count])
  {
    v3 = +[MPCPlaybackAccountManager sharedManager];
    v4 = [v3 accounts];

    if ([v4 count])
    {
      v5 = [v4 copy];
      accounts = self->_accounts;
      self->_accounts = v5;

      [(_MPCQueueControllerBehaviorMusicTransportableExtension *)self _updateAllKnownSessionInfos];
    }
  }

  allKnownSessionInfos = self->_allKnownSessionInfos;

  return [(NSArray *)allKnownSessionInfos msv_map:&__block_literal_global_1245];
}

- (void)_updateAllKnownSessionInfos
{
  v61 = *MEMORY[0x1E69E9840];
  v55 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v50 = self;
  obj = self->_accounts;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  v54 = v3;
  if (v4)
  {
    v5 = v4;
    v53 = 0;
    v6 = *v57;
    v51 = *v57;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v57 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v56 + 1) + 8 * i);
        if ([v8 isFallbackAccount])
        {
          v9 = v8;

          v53 = v9;
        }

        if ([v8 hasCatalogPlaybackCapability])
        {
          v10 = [v8 hasCloudLibraryEnabled];
          if (v10)
          {
            v11 = 0;
          }

          else
          {
            v11 = @"library sync is OFF";
          }
        }

        else
        {
          v10 = 0;
          v11 = @"non-subscriber";
        }

        v12 = [v8 shortHashedDSID];
        v13 = _MPCSessionTypeIdentifierFromHashedDSID(@"com.apple.MediaPlaybackCore.playbackSession-v4.5.opack", v12);
        v14 = [_MPCQCBMSessionTypeInfo infoWithIdentifier:v13 account:v8 supported:v10 supportedReason:v11 exportable:1 exportableReason:0];

        [v55 addObject:v14];
        v15 = [v14 identifier];
        [v3 setObject:v14 forKeyedSubscript:v15];

        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          v16 = [v8 shortHashedDSID];
          v17 = _MPCSessionTypeIdentifierFromHashedDSID(@"com.apple.MediaPlaybackCore.playbackSession-v4.opack", v16);
          v18 = [_MPCQCBMSessionTypeInfo infoWithIdentifier:v17 account:v8 supported:v10 supportedReason:v11 exportable:0 exportableReason:@"cannot export old version"];

          [v55 addObject:v18];
          v19 = [v18 identifier];
          [v54 setObject:v18 forKeyedSubscript:v19];

          v20 = [v8 shortHashedDSID];
          v21 = _MPCSessionTypeIdentifierFromHashedDSID(@"com.apple.MediaPlaybackCore.playbackSession-v3.opack", v20);
          v22 = [_MPCQCBMSessionTypeInfo infoWithIdentifier:v21 account:v8 supported:v10 supportedReason:v11 exportable:0 exportableReason:@"cannot export old version"];

          [v55 addObject:v22];
          v23 = [v22 identifier];
          [v54 setObject:v22 forKeyedSubscript:v23];

          v6 = v51;
          v3 = v54;
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v5);
  }

  else
  {
    v53 = 0;
  }

  v24 = [v53 storeFrontIdentifier];
  v25 = [v24 componentsSeparatedByString:@"-"];
  v26 = [v25 firstObject];
  v27 = v26;
  v28 = &stru_1F454A698;
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  if (MSVDeviceSupportsDelegatedIdentities())
  {
    v30 = 0;
    v31 = @"device supports delegation";
    p_cache = (&OBJC_METACLASS____MPCReportingController + 16);
  }

  else
  {
    p_cache = &OBJC_METACLASS____MPCReportingController.cache;
    if (v53)
    {
      if ([(__CFString *)v29 length])
      {
        v30 = [v53 hasCatalogPlaybackCapability];
        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = @"non-subscriber fallback account";
        }
      }

      else
      {
        v33 = MEMORY[0x1E696AEC0];
        v34 = [v53 storeFrontIdentifier];
        v31 = [v33 stringWithFormat:@"unknown storefront: %@", v34];

        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
      v31 = @"no fallback account";
    }
  }

  v35 = _MPCSessionTypeIdentifierForStorefront(@"com.apple.MediaPlaybackCore.playbackSession-v4.5.opack", v29);
  v36 = [p_cache + 379 infoWithIdentifier:v35 account:v53 supported:v30 supportedReason:v31 exportable:1 exportableReason:0];

  v37 = v53;
  [v55 addObject:v36];
  v38 = [v36 identifier];
  [v54 setObject:v36 forKeyedSubscript:v38];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    _MPCSessionTypeIdentifierForStorefront(@"com.apple.MediaPlaybackCore.playbackSession-v4.opack", v29);
    v40 = v39 = v29;
    v41 = [p_cache + 379 infoWithIdentifier:v40 account:v53 supported:v30 supportedReason:v31 exportable:0 exportableReason:@"cannot export old version"];

    [v55 addObject:v41];
    v42 = [v41 identifier];
    [v54 setObject:v41 forKeyedSubscript:v42];

    v43 = _MPCSessionTypeIdentifierForStorefront(@"com.apple.MediaPlaybackCore.playbackSession-v3.opack", v39);
    v44 = [p_cache + 379 infoWithIdentifier:v43 account:v53 supported:v30 supportedReason:v31 exportable:0 exportableReason:@"cannot export old version"];

    v29 = v39;
    [v55 addObject:v44];
    v45 = [v44 identifier];
    [v54 setObject:v44 forKeyedSubscript:v45];

    v37 = v53;
  }

  v46 = [v55 copy];
  allKnownSessionInfos = v50->_allKnownSessionInfos;
  v50->_allKnownSessionInfos = v46;

  v48 = [v54 copy];
  sessionInfoMap = v50->_sessionInfoMap;
  v50->_sessionInfoMap = v48;
}

- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionTypesInvalidatable);

  return WeakRetained;
}

- (void)accountManager:(id)a3 didChangeAccounts:(id)a4
{
  v8 = a4;
  if (![(NSArray *)self->_accounts isEqualToArray:?])
  {
    v5 = [v8 copy];
    accounts = self->_accounts;
    self->_accounts = v5;

    [(_MPCQueueControllerBehaviorMusicTransportableExtension *)self _updateAllKnownSessionInfos];
    WeakRetained = objc_loadWeakRetained(&self->_sessionTypesInvalidatable);
    [WeakRetained invalidateSessionTypesWithReason:@"accounts changed"];
  }
}

- (BOOL)isSupportedSessionType:(id)a3 reason:(id *)a4
{
  v5 = [(NSDictionary *)self->_sessionInfoMap objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 supported];
    if (a4 && (v7 & 1) == 0)
    {
      *a4 = [v6 supportedReason];
    }

    v8 = [v6 supported];
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      *a4 = @"unknown sessionType [Music]";
    }
  }

  return v8;
}

- (_MPCQueueControllerBehaviorMusicTransportableExtension)initWithInvalidatable:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _MPCQueueControllerBehaviorMusicTransportableExtension;
  v5 = [(_MPCQueueControllerBehaviorMusicTransportableExtension *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sessionTypesInvalidatable, v4);
    v7 = +[MPCPlaybackAccountManager sharedManager];
    [v7 registerObserver:v6];
    allKnownSessionInfos = v6->_allKnownSessionInfos;
    v6->_allKnownSessionInfos = MEMORY[0x1E695E0F0];

    sessionInfoMap = v6->_sessionInfoMap;
    v6->_sessionInfoMap = MEMORY[0x1E695E0F8];

    if ([v7 hasLoadedInitialAccounts])
    {
      v10 = [v7 accounts];
      v11 = [v10 copy];
      accounts = v6->_accounts;
      v6->_accounts = v11;

      [(_MPCQueueControllerBehaviorMusicTransportableExtension *)v6 _updateAllKnownSessionInfos];
    }
  }

  return v6;
}

@end