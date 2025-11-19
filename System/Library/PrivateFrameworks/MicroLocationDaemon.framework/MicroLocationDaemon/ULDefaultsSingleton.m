@interface ULDefaultsSingleton
+ (id)shared;
- (ULDefaultsSingleton)init;
- (id)settingsString;
- (void)_defaultsSync;
- (void)resetTemporaryKey:(id)a3;
- (void)updateTemporaryKey:(id)a3 withObject:(id)a4;
@end

@implementation ULDefaultsSingleton

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ULDefaultsSingleton_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_ul_once_token_0 != -1)
  {
    dispatch_once(&shared_ul_once_token_0, block);
  }

  v2 = shared_ul_once_object_0;

  return v2;
}

void __29__ULDefaultsSingleton_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = shared_ul_once_object_0;
  shared_ul_once_object_0 = v1;
}

- (ULDefaultsSingleton)init
{
  v5.receiver = self;
  v5.super_class = ULDefaultsSingleton;
  v2 = [(ULDefaultsSingleton *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.milod"];
    [(ULDefaultsSingleton *)v2 setDefaults:v3];

    [(ULDefaultsSingleton *)v2 refresh];
  }

  return v2;
}

- (id)settingsString
{
  v3 = objc_opt_new();
  v4 = [(ULDefaultsSingleton *)self defaultsDictionary];
  v5 = [v4 allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__ULDefaultsSingleton_settingsString__block_invoke;
  v10[3] = &unk_2798D5070;
  v11 = v3;
  v12 = self;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v10];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ULSettingsOverrides:%@", v6];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_286A60C80];

  return v8;
}

void __37__ULDefaultsSingleton_settingsString__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 hasPrefix:@"UL"])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) defaultsDictionary];
    v6 = [v5 objectForKeyedSubscript:v8];
    v7 = [v3 stringWithFormat:@"%@:%@", v8, v6];
    [v4 addObject:v7];
  }
}

- (void)updateTemporaryKey:(id)a3 withObject:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [(ULDefaultsSingleton *)self defaultsDictionary];
  v12 = [v6 dictionaryWithDictionary:v9];

  v10 = [@"UL" stringByAppendingString:v8];

  [v12 setObject:v7 forKey:v10];
  v11 = [v12 copy];
  [(ULDefaultsSingleton *)self setDefaultsDictionary:v11];
}

- (void)resetTemporaryKey:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [(ULDefaultsSingleton *)self defaultsDictionary];
  v9 = [v4 dictionaryWithDictionary:v6];

  v7 = [@"UL" stringByAppendingString:v5];

  [v9 removeObjectForKey:v7];
  v8 = [v9 copy];
  [(ULDefaultsSingleton *)self setDefaultsDictionary:v8];
}

- (void)_defaultsSync
{
  v5 = [(ULDefaultsSingleton *)self defaults];
  v3 = [v5 dictionaryRepresentation];
  v4 = [v3 copy];
  [(ULDefaultsSingleton *)self setDefaultsDictionary:v4];
}

@end