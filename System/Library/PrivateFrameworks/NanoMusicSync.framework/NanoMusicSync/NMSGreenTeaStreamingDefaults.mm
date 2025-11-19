@interface NMSGreenTeaStreamingDefaults
+ (id)sharedInstance;
- (BOOL)_BOOLForKey:(id)a3;
- (NMSGreenTeaStreamingDefaults)init;
@end

@implementation NMSGreenTeaStreamingDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NMSGreenTeaStreamingDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __46__NMSGreenTeaStreamingDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (NMSGreenTeaStreamingDefaults)init
{
  v6.receiver = self;
  v6.super_class = NMSGreenTeaStreamingDefaults;
  v2 = [(NMSGreenTeaStreamingDefaults *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoMusicSync"];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v3;
  }

  return v2;
}

- (BOOL)_BOOLForKey:(id)a3
{
  v3 = self;
  sharedDefaults = self->_sharedDefaults;
  v5 = a3;
  [(NSUserDefaults *)sharedDefaults synchronize];
  LOBYTE(v3) = [(NSUserDefaults *)v3->_sharedDefaults BOOLForKey:v5];

  return v3;
}

@end