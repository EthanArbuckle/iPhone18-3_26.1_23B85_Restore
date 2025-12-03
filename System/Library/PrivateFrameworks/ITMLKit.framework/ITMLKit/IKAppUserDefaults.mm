@interface IKAppUserDefaults
+ (id)sharedUserDefaults;
- (id)dataForKey:(id)key;
- (void)removeDataForKey:(id)key;
- (void)setData:(id)data forKey:(id)key;
@end

@implementation IKAppUserDefaults

+ (id)sharedUserDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__IKAppUserDefaults_sharedUserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedUserDefaults_onceToken != -1)
  {
    dispatch_once(&sharedUserDefaults_onceToken, block);
  }

  v2 = sharedUserDefaults_userDefaults;

  return v2;
}

uint64_t __39__IKAppUserDefaults_sharedUserDefaults__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  sharedUserDefaults_userDefaults = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)dataForKey:(id)key
{
  v3 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:keyCopy];

  return v6;
}

- (void)setData:(id)data forKey:(id)key
{
  v5 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  dataCopy = data;
  standardUserDefaults = [v5 standardUserDefaults];
  [standardUserDefaults setObject:dataCopy forKey:keyCopy];
}

- (void)removeDataForKey:(id)key
{
  v3 = MEMORY[0x277CBEBD0];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults removeObjectForKey:keyCopy];
}

@end