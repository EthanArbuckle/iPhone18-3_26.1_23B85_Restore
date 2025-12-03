@interface _MPCQueueControllerBehaviorMusicTransportableExtension
- (BOOL)isSupportedSessionType:(id)type reason:(id *)reason;
- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable;
- (_MPCQueueControllerBehaviorMusicTransportableExtension)initWithInvalidatable:(id)invalidatable;
- (id)allKnownSessionTypes;
- (void)_updateAllKnownSessionInfos;
- (void)accountManager:(id)manager didChangeAccounts:(id)accounts;
@end

@implementation _MPCQueueControllerBehaviorMusicTransportableExtension

- (id)allKnownSessionTypes
{
  if (![(NSArray *)self->_accounts count])
  {
    v3 = +[MPCPlaybackAccountManager sharedManager];
    accounts = [v3 accounts];

    if ([accounts count])
    {
      v5 = [accounts copy];
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
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  obj = self->_accounts;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  v54 = dictionary;
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
          hasCloudLibraryEnabled = [v8 hasCloudLibraryEnabled];
          if (hasCloudLibraryEnabled)
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
          hasCloudLibraryEnabled = 0;
          v11 = @"non-subscriber";
        }

        shortHashedDSID = [v8 shortHashedDSID];
        v13 = _MPCSessionTypeIdentifierFromHashedDSID(@"com.apple.MediaPlaybackCore.playbackSession-v4.5.opack", shortHashedDSID);
        v14 = [_MPCQCBMSessionTypeInfo infoWithIdentifier:v13 account:v8 supported:hasCloudLibraryEnabled supportedReason:v11 exportable:1 exportableReason:0];

        [array addObject:v14];
        identifier = [v14 identifier];
        [dictionary setObject:v14 forKeyedSubscript:identifier];

        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          shortHashedDSID2 = [v8 shortHashedDSID];
          v17 = _MPCSessionTypeIdentifierFromHashedDSID(@"com.apple.MediaPlaybackCore.playbackSession-v4.opack", shortHashedDSID2);
          v18 = [_MPCQCBMSessionTypeInfo infoWithIdentifier:v17 account:v8 supported:hasCloudLibraryEnabled supportedReason:v11 exportable:0 exportableReason:@"cannot export old version"];

          [array addObject:v18];
          identifier2 = [v18 identifier];
          [v54 setObject:v18 forKeyedSubscript:identifier2];

          shortHashedDSID3 = [v8 shortHashedDSID];
          v21 = _MPCSessionTypeIdentifierFromHashedDSID(@"com.apple.MediaPlaybackCore.playbackSession-dictionary.opack", shortHashedDSID3);
          v22 = [_MPCQCBMSessionTypeInfo infoWithIdentifier:v21 account:v8 supported:hasCloudLibraryEnabled supportedReason:v11 exportable:0 exportableReason:@"cannot export old version"];

          [array addObject:v22];
          identifier3 = [v22 identifier];
          [v54 setObject:v22 forKeyedSubscript:identifier3];

          v6 = v51;
          dictionary = v54;
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

  storeFrontIdentifier = [v53 storeFrontIdentifier];
  v25 = [storeFrontIdentifier componentsSeparatedByString:@"-"];
  firstObject = [v25 firstObject];
  v27 = firstObject;
  v28 = &stru_1F454A698;
  if (firstObject)
  {
    v28 = firstObject;
  }

  v29 = v28;

  if (MSVDeviceSupportsDelegatedIdentities())
  {
    hasCatalogPlaybackCapability = 0;
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
        hasCatalogPlaybackCapability = [v53 hasCatalogPlaybackCapability];
        if (hasCatalogPlaybackCapability)
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
        storeFrontIdentifier2 = [v53 storeFrontIdentifier];
        v31 = [v33 stringWithFormat:@"unknown storefront: %@", storeFrontIdentifier2];

        hasCatalogPlaybackCapability = 0;
      }
    }

    else
    {
      hasCatalogPlaybackCapability = 0;
      v31 = @"no fallback account";
    }
  }

  v35 = _MPCSessionTypeIdentifierForStorefront(@"com.apple.MediaPlaybackCore.playbackSession-v4.5.opack", v29);
  v36 = [p_cache + 379 infoWithIdentifier:v35 account:v53 supported:hasCatalogPlaybackCapability supportedReason:v31 exportable:1 exportableReason:0];

  v37 = v53;
  [array addObject:v36];
  identifier4 = [v36 identifier];
  [v54 setObject:v36 forKeyedSubscript:identifier4];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    _MPCSessionTypeIdentifierForStorefront(@"com.apple.MediaPlaybackCore.playbackSession-v4.opack", v29);
    v40 = v39 = v29;
    v41 = [p_cache + 379 infoWithIdentifier:v40 account:v53 supported:hasCatalogPlaybackCapability supportedReason:v31 exportable:0 exportableReason:@"cannot export old version"];

    [array addObject:v41];
    identifier5 = [v41 identifier];
    [v54 setObject:v41 forKeyedSubscript:identifier5];

    v43 = _MPCSessionTypeIdentifierForStorefront(@"com.apple.MediaPlaybackCore.playbackSession-dictionary.opack", v39);
    v44 = [p_cache + 379 infoWithIdentifier:v43 account:v53 supported:hasCatalogPlaybackCapability supportedReason:v31 exportable:0 exportableReason:@"cannot export old version"];

    v29 = v39;
    [array addObject:v44];
    identifier6 = [v44 identifier];
    [v54 setObject:v44 forKeyedSubscript:identifier6];

    v37 = v53;
  }

  v46 = [array copy];
  allKnownSessionInfos = selfCopy->_allKnownSessionInfos;
  selfCopy->_allKnownSessionInfos = v46;

  v48 = [v54 copy];
  sessionInfoMap = selfCopy->_sessionInfoMap;
  selfCopy->_sessionInfoMap = v48;
}

- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionTypesInvalidatable);

  return WeakRetained;
}

- (void)accountManager:(id)manager didChangeAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (![(NSArray *)self->_accounts isEqualToArray:?])
  {
    v5 = [accountsCopy copy];
    accounts = self->_accounts;
    self->_accounts = v5;

    [(_MPCQueueControllerBehaviorMusicTransportableExtension *)self _updateAllKnownSessionInfos];
    WeakRetained = objc_loadWeakRetained(&self->_sessionTypesInvalidatable);
    [WeakRetained invalidateSessionTypesWithReason:@"accounts changed"];
  }
}

- (BOOL)isSupportedSessionType:(id)type reason:(id *)reason
{
  v5 = [(NSDictionary *)self->_sessionInfoMap objectForKeyedSubscript:type];
  v6 = v5;
  if (v5)
  {
    supported = [v5 supported];
    if (reason && (supported & 1) == 0)
    {
      *reason = [v6 supportedReason];
    }

    supported2 = [v6 supported];
  }

  else
  {
    supported2 = 0;
    if (reason)
    {
      *reason = @"unknown sessionType [Music]";
    }
  }

  return supported2;
}

- (_MPCQueueControllerBehaviorMusicTransportableExtension)initWithInvalidatable:(id)invalidatable
{
  invalidatableCopy = invalidatable;
  v14.receiver = self;
  v14.super_class = _MPCQueueControllerBehaviorMusicTransportableExtension;
  v5 = [(_MPCQueueControllerBehaviorMusicTransportableExtension *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sessionTypesInvalidatable, invalidatableCopy);
    v7 = +[MPCPlaybackAccountManager sharedManager];
    [v7 registerObserver:v6];
    allKnownSessionInfos = v6->_allKnownSessionInfos;
    v6->_allKnownSessionInfos = MEMORY[0x1E695E0F0];

    sessionInfoMap = v6->_sessionInfoMap;
    v6->_sessionInfoMap = MEMORY[0x1E695E0F8];

    if ([v7 hasLoadedInitialAccounts])
    {
      accounts = [v7 accounts];
      v11 = [accounts copy];
      accounts = v6->_accounts;
      v6->_accounts = v11;

      [(_MPCQueueControllerBehaviorMusicTransportableExtension *)v6 _updateAllKnownSessionInfos];
    }
  }

  return v6;
}

@end