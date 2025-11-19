@interface DCSettings
+ (id)sharedSettings;
- (BOOL)enableViewService;
- (BOOL)enableWindex;
- (BOOL)useDocumentSegmentationRequest;
- (DCSettings)init;
- (double)imageQuality;
- (id)enableViewServiceBoxed;
- (id)enableWindexBoxed;
- (id)finishAfterFirstScanBoxed;
- (id)imageQualityBoxed;
- (id)useDocumentSegmentationRequestBoxed;
- (void)setEnableViewServiceBoxed:(id)a3;
- (void)setEnableWindexBoxed:(id)a3;
- (void)setFinishAfterFirstScanBoxed:(id)a3;
- (void)setImageQualityBoxed:(id)a3;
- (void)setUseDocumentSegmentationRequestBoxed:(id)a3;
@end

@implementation DCSettings

- (DCSettings)init
{
  v6.receiver = self;
  v6.super_class = DCSettings;
  v2 = [(DCSettings *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentCamera"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

+ (id)sharedSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__DCSettings_sharedSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSettings_once != -1)
  {
    dispatch_once(&sharedSettings_once, block);
  }

  v2 = sharedSettings_sharedSettings;

  return v2;
}

void __28__DCSettings_sharedSettings__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedSettings_sharedSettings;
  sharedSettings_sharedSettings = v1;
}

- (BOOL)enableViewService
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"EnableViewService"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = DCDebugInterfaceEnabled();
  }

  v5 = v4;

  return v5;
}

- (BOOL)useDocumentSegmentationRequest
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"UseDocumentSegmentationRequest"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)enableWindex
{
  if (![objc_opt_class() _isSolariumEnabled])
  {
    return 0;
  }

  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"EnableWindex"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)imageQuality
{
  v7[1] = *MEMORY[0x277D85DE8];
  userDefaults = self->_userDefaults;
  v6 = @"DCImageQuality";
  v7[0] = &unk_285C6D228;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(NSUserDefaults *)userDefaults registerDefaults:v4];

  [(NSUserDefaults *)self->_userDefaults doubleForKey:@"DCImageQuality"];
  return result;
}

- (id)enableViewServiceBoxed
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(DCSettings *)self enableViewService];

  return [v2 numberWithBool:v3];
}

- (void)setEnableViewServiceBoxed:(id)a3
{
  userDefaults = self->_userDefaults;
  v5 = a3;
  -[NSUserDefaults setBool:forKey:](userDefaults, "setBool:forKey:", [v5 BOOLValue], @"EnableViewService");
  v6 = *MEMORY[0x277CCA208];
  v7 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:*MEMORY[0x277CCA208]];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKey:@"EnableViewService"];
  [(NSUserDefaults *)self->_userDefaults setPersistentDomain:v8 forName:v6];
}

- (id)finishAfterFirstScanBoxed
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(DCSettings *)self finishAfterFirstScan];

  return [v2 numberWithBool:v3];
}

- (void)setFinishAfterFirstScanBoxed:(id)a3
{
  userDefaults = self->_userDefaults;
  v5 = a3;
  -[NSUserDefaults setBool:forKey:](userDefaults, "setBool:forKey:", [v5 BOOLValue], @"DCFinishAfterFirstScan");
  v6 = *MEMORY[0x277CCA208];
  v7 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:*MEMORY[0x277CCA208]];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKey:@"DCFinishAfterFirstScan"];
  [(NSUserDefaults *)self->_userDefaults setPersistentDomain:v8 forName:v6];
}

- (id)useDocumentSegmentationRequestBoxed
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(DCSettings *)self useDocumentSegmentationRequest];

  return [v2 numberWithBool:v3];
}

- (void)setUseDocumentSegmentationRequestBoxed:(id)a3
{
  userDefaults = self->_userDefaults;
  v5 = a3;
  -[NSUserDefaults setBool:forKey:](userDefaults, "setBool:forKey:", [v5 BOOLValue], @"UseDocumentSegmentationRequest");
  v6 = *MEMORY[0x277CCA208];
  v7 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:*MEMORY[0x277CCA208]];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKey:@"UseDocumentSegmentationRequest"];
  [(NSUserDefaults *)self->_userDefaults setPersistentDomain:v8 forName:v6];
}

- (id)imageQualityBoxed
{
  v2 = MEMORY[0x277CCABB0];
  [(DCSettings *)self imageQuality];

  return [v2 numberWithDouble:?];
}

- (void)setImageQualityBoxed:(id)a3
{
  userDefaults = self->_userDefaults;
  [a3 doubleValue];
  [(NSUserDefaults *)userDefaults setDouble:@"DCImageQuality" forKey:?];
  v5 = *MEMORY[0x277CCA208];
  v6 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:*MEMORY[0x277CCA208]];
  v7 = [v6 mutableCopy];

  [v7 setObject:@"DCImageQuality" forKey:@"DCImageQuality"];
  [(NSUserDefaults *)self->_userDefaults setPersistentDomain:v7 forName:v5];
}

- (id)enableWindexBoxed
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(DCSettings *)self enableWindex];

  return [v2 numberWithBool:v3];
}

- (void)setEnableWindexBoxed:(id)a3
{
  userDefaults = self->_userDefaults;
  v5 = a3;
  -[NSUserDefaults setBool:forKey:](userDefaults, "setBool:forKey:", [v5 BOOLValue], @"EnableWindex");
  v6 = *MEMORY[0x277CCA208];
  v7 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:*MEMORY[0x277CCA208]];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKey:@"EnableWindex"];
  [(NSUserDefaults *)self->_userDefaults setPersistentDomain:v8 forName:v6];
}

@end