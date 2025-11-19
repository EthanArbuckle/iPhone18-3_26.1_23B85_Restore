@interface NMSMediaSyncInfo
+ (id)_mediaSyncInfoDirectory;
- (BOOL)_isValid;
- (BOOL)hasContainer:(id)a3;
- (BOOL)hasDownloadableItemsWithinStorageLimitForContainer:(id)a3;
- (BOOL)hasItem:(id)a3;
- (BOOL)hasItemsOverStorageLimit;
- (BOOL)hasItemsOverStorageLimitForContainer:(id)a3;
- (BOOL)hasItemsWaitingWithoutPauseReason;
- (BOOL)hasItemsWaitingWithoutPauseReasonForContainer:(id)a3;
- (BOOL)isItemOverStorageLimit:(id)a3;
- (float)progress;
- (float)progressForContainer:(id)a3;
- (float)progressForItem:(id)a3;
- (id)_identifiersWithKeepLocalStates:(id)a3 modelKind:(id)a4;
- (id)_initWithTarget:(unint64_t)a3 readAndObserveChanges:(BOOL)a4;
- (id)_notificationName;
- (id)_preferencesInfoKey;
- (id)_syncInfoFilePath;
- (id)_syncInfoModelKindForMPModelKind:(id)a3;
- (id)_targetIdentifier;
- (id)allAlbums;
- (id)allPlaylists;
- (id)containers;
- (id)itemsForContainer:(id)a3;
- (id)keepLocalEnabledAlbums;
- (id)keepLocalEnabledPlaylists;
- (id)userInfoForContainer:(id)a3;
- (id)userInfoForItem:(id)a3;
- (unint64_t)downloadPauseReason;
- (unint64_t)downloadPauseReasonForContainer:(id)a3;
- (unint64_t)downloadPauseReasonForItem:(id)a3;
- (unint64_t)itemCount;
- (unint64_t)numberOfItemsOverStorageLimitForContainer:(id)a3;
- (unint64_t)playabilityForContainer:(id)a3;
- (unint64_t)status;
- (unint64_t)statusForContainer:(id)a3;
- (unint64_t)statusForItem:(id)a3;
- (void)_readInfo;
- (void)_registerForInfoChanged;
- (void)dealloc;
@end

@implementation NMSMediaSyncInfo

- (void)_registerForInfoChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_25B27B000, log, OS_LOG_TYPE_ERROR, "Failed to register for notification: %@ with status: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_notificationName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NMSMediaSyncInfo *)self _targetIdentifier];
  v4 = [v2 stringWithFormat:@"com.apple.NMSMediaSyncInfo.%@.changed", v3];

  return v4;
}

- (void)_readInfo
{
  v3 = [(NMSMediaSyncInfo *)self target];
  if (v3 > 2)
  {
    if ((v3 - 3) >= 2)
    {
      return;
    }

    v5 = MEMORY[0x277CBEAC0];
    v7 = [(NMSMediaSyncInfo *)self _syncInfoFilePath];
    v4 = [v5 dictionaryWithContentsOfFile:?];
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v7 = +[NMSyncDefaults sharedDefaults];
      v4 = [v7 podcastsSyncInfo];
    }

    else
    {
      if (v3 != 2)
      {
        return;
      }

      v7 = +[NMSyncDefaults sharedDefaults];
      v4 = [v7 audiobooksSyncInfo];
    }
  }

  else
  {
    v7 = +[NMSyncDefaults sharedDefaults];
    v4 = [v7 musicSyncInfo];
  }

  info = self->_info;
  self->_info = v4;
}

- (id)_preferencesInfoKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NMSMediaSyncInfo *)self _targetIdentifier];
  v4 = [v2 stringWithFormat:@"NMSMediaSyncInfo-%@", v3];

  return v4;
}

- (id)containers
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"containers"];
  v3 = [v2 allKeys];

  return v3;
}

- (id)_initWithTarget:(unint64_t)a3 readAndObserveChanges:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = NMSMediaSyncInfo;
  v6 = [(NMSMediaSyncInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_target = a3;
    v6->_notifyToken = -1;
    if (v4)
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

- (id)itemsForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"itemsIdentifiers"];

  return v7;
}

- (BOOL)hasContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)hasItem:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (unint64_t)statusForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"status"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)statusForItem:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"status"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (float)progressForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"cachedProgress"];
  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (float)progressForItem:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"progressBytes"];
  v8 = [v7 unsignedLongLongValue];
  v9 = [v6 objectForKeyedSubscript:@"totalBytes"];
  *&v8 = v8 / [v9 unsignedLongLongValue];

  return *&v8;
}

- (unint64_t)downloadPauseReasonForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"downloadPauseReason"];
  v8 = [v7 integerValue];

  return v8;
}

- (unint64_t)downloadPauseReasonForItem:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"downloadPauseReason"];
  v8 = [v7 integerValue];

  return v8;
}

- (BOOL)hasItemsWaitingWithoutPauseReasonForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
  LOBYTE(v4) = [v7 BOOLValue];

  return v4;
}

- (unint64_t)playabilityForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"playability"];
  v8 = [v7 integerValue];

  return v8;
}

- (BOOL)hasItemsOverStorageLimitForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"itemsOverStorageLimitCount"];
    v9 = [v8 unsignedIntegerValue] != 0;
  }

  return v9;
}

- (BOOL)isItemOverStorageLimit:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"overStorageLimit"];
  LOBYTE(v4) = [v7 BOOLValue];

  return v4;
}

- (BOOL)hasDownloadableItemsWithinStorageLimitForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"hasDownloadableItemsWithinStorageLimitKey"];
  LOBYTE(v4) = [v7 BOOLValue];

  return v4;
}

- (unint64_t)status
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"status"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)hasItemsWaitingWithoutPauseReason
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasItemsOverStorageLimit
{
  v3 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
  info = self->_info;
  if (v3)
  {
    v5 = [(NSDictionary *)info objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v5 = [(NSDictionary *)info objectForKeyedSubscript:@"itemsOverStorageLimitCount"];
    v6 = [v5 unsignedIntegerValue] != 0;
  }

  return v6;
}

- (id)userInfoForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"userInfo"];

  return v7;
}

- (id)userInfoForItem:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"items"];
  v6 = [v5 objectForKeyedSubscript:v4];

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
    v6 = [v5 count];
LABEL_5:
    v7 = v6;

    return v7;
  }

  v7 = [(NSDictionary *)info objectForKeyedSubscript:@"itemCount"];

  if (v7)
  {
    v5 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"itemCount"];
    v6 = [v5 unsignedIntegerValue];
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)_isValid
{
  v2 = [(NMSMediaSyncInfo *)self info];
  v3 = v2 != 0;

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
  v3 = [objc_opt_class() _mediaSyncInfoDirectory];
  v4 = [(NMSMediaSyncInfo *)self _targetIdentifier];
  v5 = [v4 stringByAppendingString:@".plist"];
  v6 = [v3 stringByAppendingPathComponent:v5];

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

- (unint64_t)numberOfItemsOverStorageLimitForContainer:(id)a3
{
  info = self->_info;
  v4 = a3;
  v5 = [(NSDictionary *)info objectForKeyedSubscript:@"containers"];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"itemsOverStorageLimitCount"];
  v8 = [v7 unsignedIntegerValue];

  return v8;
}

- (id)keepLocalEnabledPlaylists
{
  v3 = [MEMORY[0x277CD5F08] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3A0 modelKind:v3];

  return v4;
}

- (id)keepLocalEnabledAlbums
{
  v3 = [MEMORY[0x277CD5E48] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3B8 modelKind:v3];

  return v4;
}

- (id)allPlaylists
{
  v3 = [MEMORY[0x277CD5F08] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3D0 modelKind:v3];

  return v4;
}

- (id)allAlbums
{
  v3 = [MEMORY[0x277CD5E48] identityKind];
  v4 = [(NMSMediaSyncInfo *)self _identifiersWithKeepLocalStates:&unk_286C8D3E8 modelKind:v3];

  return v4;
}

- (id)_identifiersWithKeepLocalStates:(id)a3 modelKind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(NMSMediaSyncInfo *)self containers];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __73__NMSMediaSyncInfo_NanoMusic___identifiersWithKeepLocalStates_modelKind___block_invoke;
  v18 = &unk_27993E880;
  v19 = self;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  [v9 enumerateObjectsUsingBlock:&v15];

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

- (id)_syncInfoModelKindForMPModelKind:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identityKind];
  v5 = [MEMORY[0x277CD5E48] identityKind];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = &unk_286C8D6E8;
  }

  else
  {
    v8 = [v3 identityKind];
    v9 = [MEMORY[0x277CD5F08] identityKind];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE658];
      v19 = @"modelKind";
      v15 = [v3 identityKind];
      v20[0] = v15;
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