@interface HMFPreferences
+ (Class)preferenceClassForPreferenceKey:(id)key;
+ (id)classRegistry;
+ (id)defaultValueForPreferenceKey:(id)key;
+ (id)defaultValues;
+ (id)sharedPreferences;
+ (void)setDefaultValue:(id)value forPreferenceKey:(id)key;
+ (void)setPreferenceClass:(Class)class forPreferenceKey:(id)key;
- (Class)preferenceClassForPreferenceKey:(id)key;
- (HMFPreferences)init;
- (NSArray)preferences;
- (NSString)propertyDescription;
- (id)preferenceForKey:(id)key;
- (void)setPreferenceClass:(Class)class forPreferenceKey:(id)key;
@end

@implementation HMFPreferences

+ (id)sharedPreferences
{
  if (_MergedGlobals_1_2 != -1)
  {
    dispatch_once(&_MergedGlobals_1_2, &__block_literal_global_29);
  }

  v3 = qword_280AFC500;

  return v3;
}

uint64_t __35__HMFPreferences_sharedPreferences__block_invoke()
{
  v0 = objc_alloc_init(HMFPreferences);
  v1 = qword_280AFC500;
  qword_280AFC500 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)classRegistry
{
  if (qword_280AFC508 != -1)
  {
    dispatch_once(&qword_280AFC508, &__block_literal_global_3_0);
  }

  v3 = qword_280AFC510;

  return v3;
}

uint64_t __31__HMFPreferences_classRegistry__block_invoke()
{
  v0 = [[HMFClassRegistry alloc] initWithDefaultClass:objc_opt_class()];
  v1 = qword_280AFC510;
  qword_280AFC510 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (Class)preferenceClassForPreferenceKey:(id)key
{
  keyCopy = key;
  classRegistry = [self classRegistry];
  v6 = [classRegistry classForKey:keyCopy];

  return v6;
}

+ (void)setPreferenceClass:(Class)class forPreferenceKey:(id)key
{
  keyCopy = key;
  classRegistry = [self classRegistry];
  [classRegistry setClass:class forKey:keyCopy];
}

+ (id)defaultValues
{
  if (qword_280AFC518 != -1)
  {
    dispatch_once(&qword_280AFC518, &__block_literal_global_7);
  }

  v3 = qword_280AFC520;

  return v3;
}

uint64_t __31__HMFPreferences_defaultValues__block_invoke()
{
  v0 = objc_alloc_init(HMFMutableThreadSafeDictionary);
  v1 = qword_280AFC520;
  qword_280AFC520 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)defaultValueForPreferenceKey:(id)key
{
  keyCopy = key;
  defaultValues = [self defaultValues];
  v6 = [defaultValues objectForKey:keyCopy];

  return v6;
}

+ (void)setDefaultValue:(id)value forPreferenceKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  defaultValues = [self defaultValues];
  v8 = defaultValues;
  if (valueCopy)
  {
    [defaultValues setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [defaultValues removeObjectForKey:keyCopy];
  }
}

- (HMFPreferences)init
{
  v56 = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = HMFPreferences;
  v2 = [(HMFPreferences *)&v46 init];
  if (!v2)
  {
    goto LABEL_34;
  }

  v3 = objc_alloc_init(HMFClassRegistry);
  classRegistry = v2->_classRegistry;
  v2->_classRegistry = v3;

  v43 = v2;
  v5 = [[HMFActivity alloc] initWithName:@"Load Default Preferences" parent:0 options:1];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_autoreleasePoolPush();
  [(HMFActivity *)v5 markWithReason:@"Determining preference location"];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle URLForResource:@"Preferences" withExtension:@"plist"];

  if (v8)
  {
    v40 = v6;
    v42 = v2;
    v9 = v43;
  }

  else
  {
    v10 = [@"/" stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/HomeKitDaemon.framework"];
    v11 = [MEMORY[0x277CCA8D8] bundleWithPath:v10];
    v8 = [v11 URLForResource:@"Preferences" withExtension:@"plist"];

    v9 = v43;
    if (!v8)
    {
      goto LABEL_33;
    }

    v40 = v6;
    v42 = v2;
  }

  v41 = v5;
  [(HMFActivity *)v5 markWithReason:@"Parsing preferences"];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = v14;
  v16 = *v48;
  do
  {
    v17 = 0;
    v45 = v15;
    do
    {
      if (*v48 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v47 + 1) + 8 * v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v13;
        v20 = [v13 objectForKeyedSubscript:v18];
        v21 = v9;
        v22 = v20;
        v23 = v18;
        v24 = [HMFPreferences defaultValueForPreferenceKey:v23];
        if (!v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v22 objectForKeyedSubscript:@"Value"];
            v25 = [v22 objectForKeyedSubscript:@"Customer"];

            if (v25)
            {
              v26 = [v22 objectForKeyedSubscript:@"Customer"];

              v24 = v26;
            }

            v27 = +[HMFSystemInfo systemInfo];
            productVariant = [v27 productVariant];

            if (productVariant == 3)
            {
              v29 = v22;
              v30 = @"Internal";
              goto LABEL_24;
            }

            if (productVariant == 1)
            {
              v29 = v22;
              v30 = @"Developer";
LABEL_24:
              v34 = [v29 objectForKeyedSubscript:v30];

              if (v34)
              {
                v35 = [v22 objectForKeyedSubscript:v30];

                v24 = v35;
              }
            }

            v9 = v43;
          }

          else
          {
            v24 = v22;
          }
        }

        v36 = [objc_alloc(-[HMFPreferences preferenceClassForPreferenceKey:](v21 preferenceClassForPreferenceKey:{v23)), "initWithKey:options:defaultValue:", v23, 0, v24}];

        if (v36)
        {
          [(NSMutableDictionary *)dictionary setObject:v36 forKeyedSubscript:v23];
        }

        v13 = v19;
        v15 = v45;
        goto LABEL_30;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = HMFGetLogIdentifier(0);
        *buf = 138543618;
        v52 = v33;
        v53 = 2112;
        v54 = v18;
        _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid preference key representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
LABEL_30:
      ++v17;
    }

    while (v15 != v17);
    v15 = [v13 countByEnumeratingWithState:&v47 objects:v55 count:16];
  }

  while (v15);
LABEL_32:

  v5 = v41;
  v2 = v42;
  v6 = v40;
LABEL_33:
  objc_autoreleasePoolPop(v6);
  [(HMFActivity *)v5 invalidate];

  preferences = v9->_preferences;
  v9->_preferences = dictionary;

LABEL_34:
  v38 = *MEMORY[0x277D85DE8];
  return v2;
}

- (NSString)propertyDescription
{
  v2 = MEMORY[0x277CCACA8];
  preferences = [(HMFPreferences *)self preferences];
  v4 = [v2 stringWithFormat:@", Preferences = \n%@", preferences];

  return v4;
}

- (Class)preferenceClassForPreferenceKey:(id)key
{
  keyCopy = key;
  classRegistry = [(HMFPreferences *)self classRegistry];
  v6 = [classRegistry classForKey:keyCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_opt_class() preferenceClassForPreferenceKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (void)setPreferenceClass:(Class)class forPreferenceKey:(id)key
{
  keyCopy = key;
  classRegistry = [(HMFPreferences *)self classRegistry];
  [classRegistry setClass:class forKey:keyCopy];
}

- (NSArray)preferences
{
  os_unfair_recursive_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_preferences allValues];
  os_unfair_recursive_lock_unlock();

  return allValues;
}

- (id)preferenceForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_preferences objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    v6 = objc_alloc([(HMFPreferences *)self preferenceClassForPreferenceKey:keyCopy]);
    v7 = [HMFPreferences defaultValueForPreferenceKey:keyCopy];
    v5 = [v6 initWithKey:keyCopy options:0 defaultValue:v7];

    [(NSMutableDictionary *)self->_preferences setObject:v5 forKeyedSubscript:keyCopy];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(selfCopy);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding new preference: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  os_unfair_recursive_lock_unlock();

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end