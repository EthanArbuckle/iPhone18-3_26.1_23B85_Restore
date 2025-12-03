@interface ULDefaultsSingleton
+ (id)shared;
- (ULDefaultsSingleton)init;
- (id)settingsString;
- (void)_defaultsSync;
- (void)resetTemporaryKey:(id)key;
- (void)updateTemporaryKey:(id)key withObject:(id)object;
@end

@implementation ULDefaultsSingleton

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ULDefaultsSingleton_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  defaultsDictionary = [(ULDefaultsSingleton *)self defaultsDictionary];
  allKeys = [defaultsDictionary allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__ULDefaultsSingleton_settingsString__block_invoke;
  v10[3] = &unk_2798D5070;
  v11 = v3;
  selfCopy = self;
  v6 = v3;
  [allKeys enumerateObjectsUsingBlock:v10];

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

- (void)updateTemporaryKey:(id)key withObject:(id)object
{
  v6 = MEMORY[0x277CBEB38];
  objectCopy = object;
  keyCopy = key;
  defaultsDictionary = [(ULDefaultsSingleton *)self defaultsDictionary];
  v12 = [v6 dictionaryWithDictionary:defaultsDictionary];

  v10 = [@"UL" stringByAppendingString:keyCopy];

  [v12 setObject:objectCopy forKey:v10];
  v11 = [v12 copy];
  [(ULDefaultsSingleton *)self setDefaultsDictionary:v11];
}

- (void)resetTemporaryKey:(id)key
{
  v4 = MEMORY[0x277CBEB38];
  keyCopy = key;
  defaultsDictionary = [(ULDefaultsSingleton *)self defaultsDictionary];
  v9 = [v4 dictionaryWithDictionary:defaultsDictionary];

  v7 = [@"UL" stringByAppendingString:keyCopy];

  [v9 removeObjectForKey:v7];
  v8 = [v9 copy];
  [(ULDefaultsSingleton *)self setDefaultsDictionary:v8];
}

- (void)_defaultsSync
{
  defaults = [(ULDefaultsSingleton *)self defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation copy];
  [(ULDefaultsSingleton *)self setDefaultsDictionary:v4];
}

@end