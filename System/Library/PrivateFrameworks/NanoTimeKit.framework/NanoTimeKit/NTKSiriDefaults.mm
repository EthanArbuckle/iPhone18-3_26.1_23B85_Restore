@interface NTKSiriDefaults
+ (id)sharedInstance;
- (BOOL)hasMigratedDataSources;
- (BOOL)isUpNextFaceCurrentlyActive;
- (BOOL)watchHasMigratedAvailableDataSources;
- (NSSet)disabledDataSources;
- (NSSet)phoneThirdPartyDataSources;
- (NSSet)watchThirdPartyDataSources;
- (NTKSiriDefaults)init;
- (id)_domainAccesor;
- (void)_activeDeviceDidChange:(id)change;
- (void)_disabledDataSourcesDidChange;
- (void)_fetchNewFaceCollection;
- (void)_synchronizeDefaultsForKeys:(id)keys;
- (void)_thirdPartyDataSourcesDidChange;
- (void)faceCollectionDidLoad:(id)load;
- (void)migrateIfNecessary;
- (void)setDisabledDataSources:(id)sources;
- (void)setPhoneThirdPartyDataSources:(id)sources;
- (void)setWatchHasMigratedAvailableDataSources:(BOOL)sources;
- (void)setWatchThirdPartyDataSources:(id)sources;
@end

@implementation NTKSiriDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NTKSiriDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, block);
  }

  v2 = sharedInstance___sharedInstance_3;

  return v2;
}

void __33__NTKSiriDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_3;
  sharedInstance___sharedInstance_3 = v1;
}

- (NTKSiriDefaults)init
{
  v9.receiver = self;
  v9.super_class = NTKSiriDefaults;
  v2 = [(NTKSiriDefaults *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(NTKSiriDefaults *)v2 _fetchNewFaceCollection];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__activeDeviceDidChange_ name:*MEMORY[0x277CBB640] object:0];

    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__NTKSiriDefaults_init__block_invoke;
    block[3] = &unk_27877DB10;
    v8 = v3;
    dispatch_async(v5, block);
  }

  return v3;
}

- (void)migrateIfNecessary
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _domainAccesor = [(NTKSiriDefaults *)selfCopy _domainAccesor];
  if ([_domainAccesor BOOLForKey:@"SiriDefaultsWatchHasMigratedDisabledDataSources"])
  {
    v4 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "[Migration] Preferences have already been migrated by watch";
LABEL_7:
      v6 = v4;
      v7 = 2;
LABEL_8:
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    }
  }

  else if ([_domainAccesor BOOLForKey:@"SiriDefaultsPhoneHasMigratedDisabledDataSources"])
  {
    v4 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "[Migration] Preferences have already been migrated by phone";
      goto LABEL_7;
    }
  }

  else
  {
    if (![(NTKFaceCollection *)selfCopy->_faceCollection hasLoaded])
    {
      v4 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      faceCollection = selfCopy->_faceCollection;
      *buf = 138412290;
      v22 = faceCollection;
      v5 = "[Migration] Face collection %@ has not loaded. Will migrate once loaded";
      v6 = v4;
      v7 = 12;
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CBEB58] set];
    v9 = selfCopy->_faceCollection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __37__NTKSiriDefaults_migrateIfNecessary__block_invoke;
    v19[3] = &unk_278780380;
    v10 = v8;
    v20 = v10;
    [(NTKFaceCollection *)v9 enumerateFacesUsingBlock:v19];
    v11 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "[Migration] Propagating disabled data sources to all up next faces %@", buf, 0xCu);
    }

    v12 = selfCopy->_faceCollection;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __37__NTKSiriDefaults_migrateIfNecessary__block_invoke_35;
    v17 = &unk_278780380;
    v4 = v10;
    v18 = v4;
    [(NTKFaceCollection *)v12 enumerateFacesUsingBlock:&v14];
    [_domainAccesor setBool:1 forKey:{@"SiriDefaultsPhoneHasMigratedDisabledDataSources", v14, v15, v16, v17}];
  }

LABEL_15:

  objc_sync_exit(selfCopy);
}

void __37__NTKSiriDefaults_migrateIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 faceStyle] == 21;
  v4 = v10;
  if (v3 || (v3 = [v10 faceStyle] == 221, v4 = v10, v3))
  {
    v5 = [v4 selectedOptionForCustomEditMode:16 slot:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 disabledBundleIdentifiers];
      v7 = [v6 count];

      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = [v5 disabledBundleIdentifiers];
        [v8 unionSet:v9];
      }
    }

    v4 = v10;
  }
}

void __37__NTKSiriDefaults_migrateIfNecessary__block_invoke_35(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 faceStyle] == 21 || objc_msgSend(v6, "faceStyle") == 221)
  {
    v3 = *(a1 + 32);
    v4 = [v6 device];
    v5 = [NTKUpNextDisabledDataSourcesEditOption optionWithDisabledDataSourceIdentifiers:v3 forDevice:v4];

    [v6 selectOption:v5 forCustomEditMode:16 slot:0];
  }
}

- (BOOL)isUpNextFaceCurrentlyActive
{
  selectedFace = [(NTKFaceCollection *)self->_faceCollection selectedFace];
  faceStyle = [selectedFace faceStyle];

  return faceStyle == 21 || faceStyle == 221;
}

- (BOOL)watchHasMigratedAvailableDataSources
{
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  v3 = [_domainAccesor BOOLForKey:@"SiriDefaultsWatchHasMigratedAvailableDataSources"];

  return v3;
}

- (void)setWatchHasMigratedAvailableDataSources:(BOOL)sources
{
  sourcesCopy = sources;
  v7[1] = *MEMORY[0x277D85DE8];
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  [_domainAccesor setBool:sourcesCopy forKey:@"SiriDefaultsWatchHasMigratedAvailableDataSources"];

  v7[0] = @"SiriDefaultsWatchHasMigratedAvailableDataSources";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(NTKSiriDefaults *)self _synchronizeDefaultsForKeys:v6];
}

- (NSSet)phoneThirdPartyDataSources
{
  v3 = [MEMORY[0x277CBEB98] set];
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  v5 = [_domainAccesor objectForKey:@"SiriDefaultsPhoneThirdPartyDataSources"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

    v3 = v6;
  }

  return v3;
}

- (void)setPhoneThirdPartyDataSources:(id)sources
{
  v15 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = @"SiriDefaultsPhoneThirdPartyDataSources";
    v13 = 2112;
    v14 = sourcesCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Setting data sources for %@ - %@", buf, 0x16u);
  }

  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  v7 = _domainAccesor;
  if (sourcesCopy)
  {
    allObjects = [sourcesCopy allObjects];
    [v7 setObject:allObjects forKey:@"SiriDefaultsPhoneThirdPartyDataSources"];
  }

  else
  {
    [_domainAccesor removeObjectForKey:@"SiriDefaultsPhoneThirdPartyDataSources"];
  }

  v10 = @"SiriDefaultsPhoneThirdPartyDataSources";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(NTKSiriDefaults *)self _synchronizeDefaultsForKeys:v9];

  [(NTKSiriDefaults *)self _thirdPartyDataSourcesDidChange];
}

- (NSSet)watchThirdPartyDataSources
{
  v3 = [MEMORY[0x277CBEB98] set];
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  v5 = [_domainAccesor objectForKey:@"SiriDefaultsWatchThirdPartyDataSources"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

    v3 = v6;
  }

  return v3;
}

- (void)setWatchThirdPartyDataSources:(id)sources
{
  v15 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = @"SiriDefaultsWatchThirdPartyDataSources";
    v13 = 2112;
    v14 = sourcesCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Setting data sources for %@ - %@", buf, 0x16u);
  }

  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  v7 = _domainAccesor;
  if (sourcesCopy)
  {
    allObjects = [sourcesCopy allObjects];
    [v7 setObject:allObjects forKey:@"SiriDefaultsWatchThirdPartyDataSources"];
  }

  else
  {
    [_domainAccesor removeObjectForKey:@"SiriDefaultsWatchThirdPartyDataSources"];
  }

  v10 = @"SiriDefaultsWatchThirdPartyDataSources";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(NTKSiriDefaults *)self _synchronizeDefaultsForKeys:v9];

  [(NTKSiriDefaults *)self _thirdPartyDataSourcesDidChange];
}

- (void)setDisabledDataSources:(id)sources
{
  v20 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = sourcesCopy;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Setting new disabled data sources %@", buf, 0xCu);
  }

  _domainAccesor = [(NTKSiriDefaults *)selfCopy _domainAccesor];
  allObjects = [sourcesCopy allObjects];
  [_domainAccesor setObject:allObjects forKey:@"SiriDefaultsDisabledDataSources"];

  v17 = @"SiriDefaultsDisabledDataSources";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [(NTKSiriDefaults *)selfCopy _synchronizeDefaultsForKeys:v9];

  if (([_domainAccesor BOOLForKey:@"SiriDefaultsWatchHasMigratedDisabledDataSources"] & 1) == 0)
  {
    v10 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Watch has not migrated defaults. Propagating settings to all faces", buf, 2u);
    }

    faceCollection = selfCopy->_faceCollection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__NTKSiriDefaults_setDisabledDataSources___block_invoke;
    v15 = &unk_278780380;
    v16 = sourcesCopy;
    [(NTKFaceCollection *)faceCollection enumerateFacesUsingBlock:&v12];
  }

  [(NTKSiriDefaults *)selfCopy _disabledDataSourcesDidChange:v12];

  objc_sync_exit(selfCopy);
}

void __42__NTKSiriDefaults_setDisabledDataSources___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 faceStyle] == 21 || objc_msgSend(v6, "faceStyle") == 221)
  {
    v3 = *(a1 + 32);
    v4 = [v6 device];
    v5 = [NTKUpNextDisabledDataSourcesEditOption optionWithDisabledDataSourceIdentifiers:v3 forDevice:v4];

    [v6 selectOption:v5 forCustomEditMode:16 slot:0];
  }
}

- (BOOL)hasMigratedDataSources
{
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  if ([_domainAccesor BOOLForKey:@"SiriDefaultsWatchHasMigratedDisabledDataSources"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [_domainAccesor BOOLForKey:@"SiriDefaultsPhoneHasMigratedDisabledDataSources"];
  }

  return v3;
}

- (NSSet)disabledDataSources
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = [MEMORY[0x277CBEB58] set];
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  if ([_domainAccesor BOOLForKey:@"SiriDefaultsWatchHasMigratedDisabledDataSources"])
  {
    v4 = [_domainAccesor objectForKey:@"SiriDefaultsDisabledDataSources"];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
      v6 = v14[5];
      v14[5] = v5;
    }

    v7 = [v14[5] copy];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Watch has not migrated defaults. Fetching sum set from all up next faces", buf, 2u);
    }

    faceCollection = self->_faceCollection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__NTKSiriDefaults_disabledDataSources__block_invoke;
    v11[3] = &unk_2787803A8;
    v11[4] = &v13;
    [(NTKFaceCollection *)faceCollection enumerateFacesUsingBlock:v11];
    v7 = [v14[5] copy];
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __38__NTKSiriDefaults_disabledDataSources__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 faceStyle] == 21;
  v4 = v8;
  if (v3 || (v3 = [v8 faceStyle] == 221, v4 = v8, v3))
  {
    v5 = [v4 selectedOptionForCustomEditMode:16 slot:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v7 = [v5 disabledBundleIdentifiers];
      [v6 unionSet:v7];
    }

    v4 = v8;
  }
}

- (void)faceCollectionDidLoad:(id)load
{
  v10 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = loadCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[Migration] Face collection %@ has loaded. Attempt migration", buf, 0xCu);
  }

  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NTKSiriDefaults_faceCollectionDidLoad___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)_activeDeviceDidChange:(id)change
{
  v4 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "[Migration] Active device did change. Attempt migration", buf, 2u);
  }

  [(NTKSiriDefaults *)self _fetchNewFaceCollection];
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NTKSiriDefaults__activeDeviceDidChange___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(v5, block);
}

- (id)_domainAccesor
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];

  return v2;
}

- (void)_synchronizeDefaultsForKeys:(id)keys
{
  keysCopy = keys;
  _domainAccesor = [(NTKSiriDefaults *)self _domainAccesor];
  synchronize = [_domainAccesor synchronize];

  v8 = objc_opt_new();
  v7 = [MEMORY[0x277CBEB98] setWithArray:keysCopy];

  [v8 synchronizeNanoDomain:@"com.apple.NanoTimeKit" keys:v7 cloudEnabled:1];
}

- (void)_disabledDataSourcesDidChange
{
  v3 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Disabled data sources did change. Posting notification", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.NanoTimeKit.NPS.NTKSiriDefaultsDisabledDataSourcesDidChangeNotification", self, 0, 1u);
}

- (void)_thirdPartyDataSourcesDidChange
{
  v3 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Siri defaults did change. Posting notification", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.NanoTimeKit.NPS.NTKSiriDefaultsThirdPartyDataSourcesDidChangeNotification", self, 0, 1u);
}

- (void)_fetchNewFaceCollection
{
  faceCollection = self->_faceCollection;
  if (faceCollection)
  {
    [(NTKFaceCollection *)faceCollection removeObserver:self];
    v4 = self->_faceCollection;
    self->_faceCollection = 0;
  }

  v5 = [NTKPersistentFaceCollection alloc];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  pairingID = [currentDevice pairingID];
  v8 = [(NTKPersistentFaceCollection *)v5 initWithCollectionIdentifier:@"LibraryFaces" deviceUUID:pairingID];
  v9 = self->_faceCollection;
  self->_faceCollection = v8;

  v10 = self->_faceCollection;

  [(NTKFaceCollection *)v10 addObserver:self];
}

@end