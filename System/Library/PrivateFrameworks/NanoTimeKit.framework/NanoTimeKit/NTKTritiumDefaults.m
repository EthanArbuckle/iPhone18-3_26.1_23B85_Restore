@interface NTKTritiumDefaults
+ (id)sharedInstance;
- (BOOL)allBundleIDsPrivateInTritium;
- (BOOL)isBundleIdPrivateInTritium:(id)a3;
- (NTKTritiumDefaults)init;
- (id)_privateBundleIDs;
- (void)_observe;
- (void)_synchronize;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAllBundleIDsPrivateInTritium:(BOOL)a3;
- (void)setBundleIDs:(id)a3 privateInTritium:(BOOL)a4;
@end

@implementation NTKTritiumDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NTKTritiumDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_26 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_26, block);
  }

  v2 = sharedInstance___sharedInstance_10;

  return v2;
}

void __36__NTKTritiumDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_10;
  sharedInstance___sharedInstance_10 = v1;
}

- (NTKTritiumDefaults)init
{
  v11.receiver = self;
  v11.super_class = NTKTritiumDefaults;
  v2 = [(NTKTritiumDefaults *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(NTKTritiumDefaults *)v2 _synchronize];
    v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];
    domainAccessor = v3->_domainAccessor;
    v3->_domainAccessor = v4;

    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit"];
    defaults = v3->_defaults;
    v3->_defaults = v6;

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v8;

    [(NTKTritiumDefaults *)v3 _observe];
  }

  return v3;
}

- (void)_synchronize
{
  v2 = [(NTKTritiumDefaults *)self _domainAccessor];
  v3 = [v2 synchronize];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"NTKAllComplicationsPrivate", @"NTKSpecificComplicationsPrivate", 0}];
  v4 = objc_alloc_init(MEMORY[0x277D2BA60]);
  [v4 synchronizeNanoDomain:@"com.apple.NanoTimeKit" keys:v5 cloudEnabled:1];
}

- (BOOL)allBundleIDsPrivateInTritium
{
  v8 = 0;
  v3 = [(NTKTritiumDefaults *)self _domainAccessor];
  LOBYTE(v4) = [v3 BOOLForKey:@"NTKAllComplicationsPrivate" keyExistsAndHasValidFormat:&v8];

  if ((v8 & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"AOTPrivacyEnabled", @"com.apple.system.prefs", &keyExistsAndHasValidFormat))
    {
      v5 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v5 = 1;
    }

    v4 = !v5;
    [(NTKTritiumDefaults *)self setAllBundleIDsPrivateInTritium:v4];
  }

  return v4;
}

- (void)setAllBundleIDsPrivateInTritium:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKTritiumDefaults *)self _domainAccessor];
  [v5 setBool:v3 forKey:@"NTKAllComplicationsPrivate"];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"com.apple.NanoTimeKit.NTKTritiumSettingsDidChangeNotification" object:0];

  [(NTKTritiumDefaults *)self _synchronize];
}

- (BOOL)isBundleIdPrivateInTritium:(id)a3
{
  v4 = a3;
  if ([(NTKTritiumDefaults *)self allBundleIDsPrivateInTritium])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NTKTritiumDefaults *)self _privateBundleIDs];
    v5 = [v6 containsObject:v4];
  }

  return v5;
}

- (void)setBundleIDs:(id)a3 privateInTritium:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v8 = [(NTKTritiumDefaults *)self _privateBundleIDs];
  v12 = [v6 setWithArray:v8];

  if (v4)
  {
    [v12 unionSet:v7];
  }

  else
  {
    [v12 minusSet:v7];
  }

  v9 = [(NTKTritiumDefaults *)self _domainAccessor];
  v10 = [v12 allObjects];
  [v9 setObject:v10 forKey:@"NTKSpecificComplicationsPrivate"];

  [(NTKTritiumDefaults *)self _synchronize];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"com.apple.NanoTimeKit.NTKTritiumSettingsDidChangeNotification" object:0];
}

- (id)_privateBundleIDs
{
  v2 = [(NTKTritiumDefaults *)self _domainAccessor];
  v3 = [v2 objectForKey:@"NTKSpecificComplicationsPrivate"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_observe
{
  [(NSUserDefaults *)self->_defaults addObserver:self forKeyPath:@"NTKSpecificComplicationsPrivate" options:0 context:0];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults addObserver:self forKeyPath:@"NTKAllComplicationsPrivate" options:0 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) tritiumPrivacySettingsDidChange];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end