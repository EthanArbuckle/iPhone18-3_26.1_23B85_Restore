@interface DEDHomeKitManager
+ (id)sharedInstance;
- (BOOL)isHomeKitResident;
- (NSString)homeKitIdentifier;
- (id)stringForAirPlayPreference:(id)a3;
- (void)start;
@end

@implementation DEDHomeKitManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DEDHomeKitManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __35__DEDHomeKitManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)start
{
  v3 = [(DEDHomeKitManager *)self homeKitManager];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1A90]) initWithOptions:16];
    homeKitManager = self->_homeKitManager;
    self->_homeKitManager = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (NSString)homeKitIdentifier
{
  v2 = [(DEDHomeKitManager *)self homeKitManager];
  v3 = [v2 currentAccessory];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 UUIDString];

  return v5;
}

- (BOOL)isHomeKitResident
{
  v2 = [(DEDHomeKitManager *)self homeKitManager];
  v3 = [v2 isResidentEnabledForThisDevice];

  return v3;
}

- (id)stringForAirPlayPreference:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.airplay"];
  v6 = [v5 stringForKey:v4];

  return v6;
}

@end