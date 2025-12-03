@interface DEDHomeKitManager
+ (id)sharedInstance;
- (BOOL)isHomeKitResident;
- (NSString)homeKitIdentifier;
- (id)stringForAirPlayPreference:(id)preference;
- (void)start;
@end

@implementation DEDHomeKitManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DEDHomeKitManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  homeKitManager = [(DEDHomeKitManager *)self homeKitManager];

  if (!homeKitManager)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1A90]) initWithOptions:16];
    homeKitManager = self->_homeKitManager;
    self->_homeKitManager = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (NSString)homeKitIdentifier
{
  homeKitManager = [(DEDHomeKitManager *)self homeKitManager];
  currentAccessory = [homeKitManager currentAccessory];
  uniqueIdentifier = [currentAccessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (BOOL)isHomeKitResident
{
  homeKitManager = [(DEDHomeKitManager *)self homeKitManager];
  isResidentEnabledForThisDevice = [homeKitManager isResidentEnabledForThisDevice];

  return isResidentEnabledForThisDevice;
}

- (id)stringForAirPlayPreference:(id)preference
{
  v3 = MEMORY[0x277CBEBD0];
  preferenceCopy = preference;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.airplay"];
  v6 = [v5 stringForKey:preferenceCopy];

  return v6;
}

@end