@interface IKAppUserDefaults
+ (id)sharedUserDefaults;
- (id)dataForKey:(id)a3;
- (void)removeDataForKey:(id)a3;
- (void)setData:(id)a3 forKey:(id)a4;
@end

@implementation IKAppUserDefaults

+ (id)sharedUserDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__IKAppUserDefaults_sharedUserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)dataForKey:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 standardUserDefaults];
  [v8 setObject:v7 forKey:v6];
}

- (void)removeDataForKey:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 removeObjectForKey:v4];
}

@end