@interface CalDefaultReminderKitProvider
+ (CalDefaultReminderKitProvider)sharedInstance;
- (id)newSaveRequestWithStore:(id)store;
- (void)setDefaultReminderListIdentifier:(id)identifier;
@end

@implementation CalDefaultReminderKitProvider

+ (CalDefaultReminderKitProvider)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CalDefaultReminderKitProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __47__CalDefaultReminderKitProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)newSaveRequestWithStore:(id)store
{
  storeCopy = store;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getREMSaveRequestClass_softClass;
  v12 = getREMSaveRequestClass_softClass;
  if (!getREMSaveRequestClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getREMSaveRequestClass_block_invoke;
    v8[3] = &unk_278D6D390;
    v8[4] = &v9;
    __getREMSaveRequestClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithStore:storeCopy];

  return v6;
}

- (void)setDefaultReminderListIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getREMUserDefaultsClass_softClass;
  v11 = getREMUserDefaultsClass_softClass;
  if (!getREMUserDefaultsClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getREMUserDefaultsClass_block_invoke;
    v7[3] = &unk_278D6D390;
    v7[4] = &v8;
    __getREMUserDefaultsClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  daemonUserDefaults = [v4 daemonUserDefaults];
  [daemonUserDefaults setPreferredDefaultListID:identifierCopy];
}

@end