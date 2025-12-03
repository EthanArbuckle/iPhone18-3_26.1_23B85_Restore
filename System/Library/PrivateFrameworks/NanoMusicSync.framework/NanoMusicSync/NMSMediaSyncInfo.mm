@interface NMSMediaSyncInfo
+ (id)_mediaSyncInfoDirectory;
- (BOOL)_isValid;
- (BOOL)hasContainer:(id)container;
- (BOOL)hasDownloadableItemsWithinStorageLimitForContainer:(id)container;
- (BOOL)hasItem:(id)item;
- (BOOL)hasItemsOverStorageLimit;
- (BOOL)hasItemsOverStorageLimitForContainer:(id)container;
- (BOOL)hasItemsWaitingWithoutPauseReason;
- (BOOL)hasItemsWaitingWithoutPauseReasonForContainer:(id)container;
- (BOOL)isItemOverStorageLimit:(id)limit;
- (float)progress;
- (float)progressForContainer:(id)container;
- (float)progressForItem:(id)item;
- (id)_identifiersWithKeepLocalStates:(id)states modelKind:(id)kind;
- (id)_initWithTarget:(unint64_t)target readAndObserveChanges:(BOOL)changes;
- (id)_notificationName;
- (id)_preferencesInfoKey;
- (id)_syncInfoFilePath;
- (id)_syncInfoModelKindForMPModelKind:(id)kind;
- (id)_targetIdentifier;
- (id)allAlbums;
- (id)allPlaylists;
- (id)containers;
- (id)itemsForContainer:(id)container;
- (id)keepLocalEnabledAlbums;
- (id)keepLocalEnabledPlaylists;
- (id)userInfoForContainer:(id)container;
- (id)userInfoForItem:(id)item;
- (unint64_t)downloadPauseReason;
- (unint64_t)downloadPauseReasonForContainer:(id)container;
- (unint64_t)downloadPauseReasonForItem:(id)item;
- (unint64_t)itemCount;
- (unint64_t)numberOfItemsOverStorageLimitForContainer:(id)container;
- (unint64_t)playabilityForContainer:(id)container;
- (unint64_t)status;
- (unint64_t)statusForContainer:(id)container;
- (unint64_t)statusForItem:(id)item;
- (void)_readInfo;
- (void)_registerForInfoChanged;
- (void)dealloc;
@end

@implementation NMSMediaSyncInfo

- (void)_registerForInfoChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_25B27B000, log, OS_LOG_TYPE_ERROR, "Failed to register for notification: %@ with status: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_notificationName
{
  v2 = MEMORY[0x277CCACA8];
  _targetIdentifier = [(NMSMediaSyncInfo *)self _targetIdentifier];
  v4 = [v2 stringWithFormat:@"com.apple.NMSMediaSyncInfo.%@.changed", _targetIdentifier];

  return v4;
}

- (void)_readInfo
{
  target = [(NMSMediaSyncInfo *)self target];
  if (target > 2)
  {
    if ((target - 3) >= 2)
    {
      return;
    }

    v5 = MEMORY[0x277CBEAC0];
    _syncInfoFilePath = [(NMSMediaSyncInfo *)self _syncInfoFilePath];
    podcastsSyncInfo = [v5 dictionaryWithContentsOfFile:?];
  }

  else if (target)
  {
    if (target == 1)
    {
      _syncInfoFilePath = +[NMSyncDefaults sharedDefaults];
      podcastsSyncInfo = [_syncInfoFilePath podcastsSyncInfo];
    }

    else
    {
      if (target != 2)
      {
        return;
      }

      _syncInfoFilePath = +[NMSyncDefaults sharedDefaults];
      podcastsSyncInfo = [_syncInfoFilePath audiobooksSyncInfo];
    }
  }

  else
  {
    _syncInfoFilePath = +[NMSyncDefaults sharedDefaults];
    podcastsSyncInfo = [_syncInfoFilePath musicSyncInfo];
  }

  info = self->_info;
  self->_info = podcastsSyncInfo;
}

- (id)_preferencesInfoKey
{
  v2 = MEMORY[0x277CCACA8];
  _targetIdentifier = [(NMSMediaSyncInfo *)self _targetIdentifier];
  v4 = [v2 stringWithFormat:@"NMSMediaSyncInfo-%@", _targetIdentifier];

  return v4;
}

- (id)containers
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"containers"];
  allKeys = [v2 allKeys];

  return allKeys;
}

- (id)_initWithTarget:(unint64_t)target readAndObserveChanges:(BOOL)changes
{
  changesCopy = changes;
  v9.receiver = self;
  v9.super_class = NMSMediaSyncInfo;
  v6 = [(NMSMediaSyncInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_target = target;
    v6->_notifyToken = -1;
    if (changesCopy)
    {
      [(NMSMediaSyncInfo *)v6 _registerForInfoChanged];
      [(NMSMediaSyncInfo *)v7 _readInfo];
    }
  }

  return v7;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_notifyToken))
  {
    notify_cancel(self->_notifyToken);
  }

  v3.receiver = self;
  v3.super_class = NMSMediaSyncInfo;
  [(NMSMediaSyncInfo *)&v3 dealloc];
}

- (id)itemsForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"itemsIdentifiers"];

  return v7;
}

- (BOOL)hasContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  return v6 != 0;
}

- (BOOL)hasItem:(id)item
{
  info = self->_info;
  itemCopy = item;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:itemCopy];

  return v6 != 0;
}

- (unint64_t)statusForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"status"];
  v8 = v7;
  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (unint64_t)statusForItem:(id)item
{
  info = self->_info;
  itemCopy = item;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:itemCopy];

  v7 = [v6 objectForKeyedSubscript:@"status"];
  v8 = v7;
  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (float)progressForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"cachedProgress"];
  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (float)progressForItem:(id)item
{
  info = self->_info;
  itemCopy = item;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:itemCopy];

  v7 = [v6 objectForKeyedSubscript:@"progressBytes"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];
  v9 = [v6 objectForKeyedSubscript:@"totalBytes"];
  *&unsignedLongLongValue = unsignedLongLongValue / [v9 unsignedLongLongValue];

  return *&unsignedLongLongValue;
}

- (unint64_t)downloadPauseReasonForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"downloadPauseReason"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (unint64_t)downloadPauseReasonForItem:(id)item
{
  info = self->_info;
  itemCopy = item;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:itemCopy];

  v7 = [v6 objectForKeyedSubscript:@"downloadPauseReason"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (BOOL)hasItemsWaitingWithoutPauseReasonForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
  LOBYTE(containerCopy) = [v7 BOOLValue];

  return containerCopy;
}

- (unint64_t)playabilityForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"playability"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (BOOL)hasItemsOverStorageLimitForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"itemsOverStorageLimitCount"];
    bOOLValue = [v8 unsignedIntegerValue] != 0;
  }

  return bOOLValue;
}

- (BOOL)isItemOverStorageLimit:(id)limit
{
  info = self->_info;
  limitCopy = limit;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:limitCopy];

  v7 = [v6 objectForKeyedSubscript:@"overStorageLimit"];
  LOBYTE(limitCopy) = [v7 BOOLValue];

  return limitCopy;
}

- (BOOL)hasDownloadableItemsWithinStorageLimitForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"hasDownloadableItemsWithinStorageLimitKey"];
  LOBYTE(containerCopy) = [v7 BOOLValue];

  return containerCopy;
}

- (unint64_t)status
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"status"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (float)progress
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"cachedProgress"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (unint64_t)downloadPauseReason
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"downloadPauseReason"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)hasItemsWaitingWithoutPauseReason
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasItemsOverStorageLimit
{
  v3 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
  info = self->_info;
  if (v3)
  {
    v5 = [(NSDictionary *)info objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v5 = [(NSDictionary *)info objectForKeyedSubscript:@"itemsOverStorageLimitCount"];
    bOOLValue = [v5 unsignedIntegerValue] != 0;
  }

  return bOOLValue;
}

- (id)userInfoForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"userInfo"];

  return v7;
}

- (id)userInfoForItem:(id)item
{
  info = self->_info;
  itemCopy = item;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:itemCopy];

  v7 = [v6 objectForKeyedSubscript:@"userInfo"];

  return v7;
}

- (unint64_t)itemCount
{
  v3 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"items"];

  info = self->_info;
  if (v3)
  {
    v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
    unsignedIntegerValue = [v5 count];
LABEL_5:
    v7 = unsignedIntegerValue;

    return v7;
  }

  v7 = [(NSDictionary *)info objectForKeyedSubscript:@"itemCount"];

  if (v7)
  {
    v5 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"itemCount"];
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_isValid
{
  info = [(NMSMediaSyncInfo *)self info];
  v3 = info != 0;

  return v3;
}

void __43__NMSMediaSyncInfo__registerForInfoChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _readInfo];
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"NMSMediaSyncInfoDidUpdateNotification" object:v3];

    WeakRetained = v3;
  }
}

- (id)_targetIdentifier
{
  target = self->_target;
  if (target > 4)
  {
    return 0;
  }

  else
  {
    return off_27993E3C0[target];
  }
}

- (id)_syncInfoFilePath
{
  _mediaSyncInfoDirectory = [objc_opt_class() _mediaSyncInfoDirectory];
  _targetIdentifier = [(NMSMediaSyncInfo *)self _targetIdentifier];
  v5 = [_targetIdentifier stringByAppendingString:@".plist"];
  v6 = [_mediaSyncInfoDirectory stringByAppendingPathComponent:v5];

  return v6;
}

+ (id)_mediaSyncInfoDirectory
{
  if (_mediaSyncInfoDirectory_onceToken != -1)
  {
    +[NMSMediaSyncInfo _mediaSyncInfoDirectory];
  }

  v3 = _mediaSyncInfoDirectory_path;

  return v3;
}

void __43__NMSMediaSyncInfo__mediaSyncInfoDirectory__block_invoke()
{
  v0 = +[NMSPathUtil mediaSyncInfoDirectory];
  v1 = _mediaSyncInfoDirectory_path;
  _mediaSyncInfoDirectory_path = v0;

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 createDirectoryAtPath:_mediaSyncInfoDirectory_path withIntermediateDirectories:1 attributes:0 error:0];
}

- (unint64_t)numberOfItemsOverStorageLimitForContainer:(id)container
{
  info = self->_info;
  containerCopy = container;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:containerCopy];

  v7 = [v6 objectForKeyedSubscript:@"itemsOverStorageLimitCount"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)keepLocalEnabledPlaylists
{
  identityKind = [MEMORY[0x277CD5F08] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3A0 modelKind:identityKind];

  return v4;
}

- (id)keepLocalEnabledAlbums
{
  identityKind = [MEMORY[0x277CD5E48] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3B8 modelKind:identityKind];

  return v4;
}

- (id)allPlaylists
{
  identityKind = [MEMORY[0x277CD5F08] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3D0 modelKind:identityKind];

  return v4;
}

- (id)allAlbums
{
  identityKind = [MEMORY[0x277CD5E48] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3E8 modelKind:identityKind];

  return v4;
}

- (id)_identifiersWithKeepLocalStates:(id)states modelKind:(id)kind
{
  statesCopy = states;
  kindCopy = kind;
  v8 = [MEMORY[0x277CBEB58] set];
  containers = [(NMSMediaSyncInfo *)self containers];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __73__NMSMediaSyncInfo_NanoMusic___identifiersWithKeepLocalStates_modelKind___block_invoke;
  v18 = &unk_27993E880;
  selfCopy = self;
  v20 = statesCopy;
  v21 = kindCopy;
  v22 = v8;
  v10 = v8;
  v11 = kindCopy;
  v12 = statesCopy;
  [containers enumerateObjectsUsingBlock:&v15];

  v13 = [v10 copy];

  return v13;
}

void __73__NMSMediaSyncInfo_NanoMusic___identifiersWithKeepLocalStates_modelKind___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) userInfoForContainer:a2];
  v4 = *(a1 + 40);
  v5 = [v3 objectForKeyedSubscript:@"keepLocal"];
  if (([v4 containsObject:v5] & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = [*(a1 + 32) _syncInfoModelKindForMPModelKind:*(a1 + 48)];
  v7 = [v3 objectForKeyedSubscript:@"modelKind"];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D2B598];
    v10 = [v3 objectForKey:@"midData"];
    v5 = [v9 pidFromMIDData:v10];

    if (v5)
    {
      [*(a1 + 56) addObject:v5];
    }

    else
    {
      v11 = NMLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __73__NMSMediaSyncInfo_NanoMusic___identifiersWithKeepLocalStates_modelKind___block_invoke_cold_1(v3, v11);
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (id)_syncInfoModelKindForMPModelKind:(id)kind
{
  v20[1] = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  identityKind = [kindCopy identityKind];
  identityKind2 = [MEMORY[0x277CD5E48] identityKind];
  v6 = [identityKind isEqual:identityKind2];

  if (v6)
  {
    v7 = &unk_286C8D6E8;
  }

  else
  {
    identityKind3 = [kindCopy identityKind];
    identityKind4 = [MEMORY[0x277CD5F08] identityKind];
    v10 = [identityKind3 isEqual:identityKind4];

    if ((v10 & 1) == 0)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE658];
      v19 = @"modelKind";
      identityKind5 = [kindCopy identityKind];
      v20[0] = identityKind5;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = [v13 exceptionWithName:v14 reason:@"Unsupported modelKind." userInfo:v16];
      v18 = v17;

      objc_exception_throw(v17);
    }

    v7 = &unk_286C8D700;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

void __73__NMSMediaSyncInfo_NanoMusic___identifiersWithKeepLocalStates_modelKind___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "UserInfo is missing MID data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end