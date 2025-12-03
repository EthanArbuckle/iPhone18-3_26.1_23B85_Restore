@interface _KSiCloudDeviceListMonitor
+ (id)iCloudDeviceListMonitor;
- (BOOL)canMigrateToCloudKit;
- (BOOL)isSWVersionCloudKitSyncCompatible:(id)compatible;
- (_KSiCloudDeviceListMonitor)init;
- (void)dealloc;
- (void)fetchCloudKitDevicesWithCompletionBlock:(id)block;
- (void)fetchICloudDevicesWithCompletionBlock:(id)block;
- (void)isAccountCompatibleForCloudKitSyncingWithCompletionBlock:(id)block;
- (void)queryMigrationState;
- (void)resetDataNoAccount;
@end

@implementation _KSiCloudDeviceListMonitor

+ (id)iCloudDeviceListMonitor
{
  if (iCloudDeviceListMonitor_onceToken != -1)
  {
    +[_KSiCloudDeviceListMonitor iCloudDeviceListMonitor];
  }

  v3 = iCloudDeviceListMonitor_sharedInstance;

  return v3;
}

- (_KSiCloudDeviceListMonitor)init
{
  v11.receiver = self;
  v11.super_class = _KSiCloudDeviceListMonitor;
  v2 = [(_KSiCloudDeviceListMonitor *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    +[_KSTextReplacementHelper fetchConfigurationPlistIfNeeded];
    v5 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = +[_KSUtilities userDefaultsSuiteName];
    v7 = [v5 initWithSuiteName:v6];

    aa_primaryAppleAccount = [(ACAccountStore *)v2->_accountStore aa_primaryAppleAccount];
    account = v2->_account;
    v2->_account = aa_primaryAppleAccount;

    -[_KSiCloudDeviceListMonitor setMajorVersForCloudKitSynciOS:](v2, "setMajorVersForCloudKitSynciOS:", [v7 integerForKey:@"iOSMajorVersForCloudKitSync"]);
    -[_KSiCloudDeviceListMonitor setMinorVersForCloudKitSynciOS:](v2, "setMinorVersForCloudKitSynciOS:", [v7 integerForKey:@"iOSMinorVersForCloudKitSync"]);
    -[_KSiCloudDeviceListMonitor setMajorVersForCloudKitSyncMacOS:](v2, "setMajorVersForCloudKitSyncMacOS:", [v7 integerForKey:@"osxMajorVersForCloudKitSync"]);
    -[_KSiCloudDeviceListMonitor setMinorVersForCloudKitSyncMacOS:](v2, "setMinorVersForCloudKitSyncMacOS:", [v7 integerForKey:@"osxMinorVersForCloudKitSync"]);
    -[_KSiCloudDeviceListMonitor setMinorSubversionForCloudKitSyncMacOS:](v2, "setMinorSubversionForCloudKitSyncMacOS:", [v7 integerForKey:@"osxMinorSubversionForCloudKitSync"]);
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSiCloudDeviceListMonitor;
  [(_KSiCloudDeviceListMonitor *)&v4 dealloc];
}

- (void)resetDataNoAccount
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[_KSUtilities userDefaultsSuiteName];
  v4 = [v2 initWithSuiteName:v3];

  [v4 setBool:0 forKey:@"_KSTRCloudKitMigratable"];
  [v4 removeObjectForKey:@"_KSCKMigrationPreviousCheckDate"];
}

- (BOOL)isSWVersionCloudKitSyncCompatible:(id)compatible
{
  compatibleCopy = compatible;
  v5 = compatibleCopy;
  if (compatibleCopy)
  {
    if (([compatibleCopy containsString:@"OSX"] & 1) != 0 || objc_msgSend(v5, "containsString:", @"iOS"))
    {
      v6 = [v5 hasPrefix:@"OSX"];
      if (v6)
      {
        majorVersForCloudKitSyncMacOS = [(_KSiCloudDeviceListMonitor *)self majorVersForCloudKitSyncMacOS];
        minorVersForCloudKitSyncMacOS = [(_KSiCloudDeviceListMonitor *)self minorVersForCloudKitSyncMacOS];
        minorSubversionForCloudKitSyncMacOS = [(_KSiCloudDeviceListMonitor *)self minorSubversionForCloudKitSyncMacOS];
      }

      else
      {
        majorVersForCloudKitSyncMacOS = [(_KSiCloudDeviceListMonitor *)self majorVersForCloudKitSynciOS];
        minorVersForCloudKitSyncMacOS = [(_KSiCloudDeviceListMonitor *)self minorVersForCloudKitSynciOS];
        minorSubversionForCloudKitSyncMacOS = 0;
      }

      v11 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v5];
      decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      invertedSet = [decimalDigitCharacterSet invertedSet];
      [v11 setCharactersToBeSkipped:invertedSet];

      v16 = 0;
      v15 = 0;
      v10 = [v11 scanInt:&v16 + 4] && objc_msgSend(v11, "scanInt:", &v16) && (majorVersForCloudKitSyncMacOS < SHIDWORD(v16) || majorVersForCloudKitSyncMacOS == SHIDWORD(v16) && (((minorVersForCloudKitSyncMacOS <= v16) & ~v6) != 0 || minorVersForCloudKitSyncMacOS < v16 || minorVersForCloudKitSyncMacOS == v16 && (!minorSubversionForCloudKitSyncMacOS || objc_msgSend(v11, "scanInt:", &v15) && minorSubversionForCloudKitSyncMacOS <= v15)));
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canMigrateToCloudKit
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = +[_KSUtilities userDefaultsSuiteName];
  v5 = [v3 initWithSuiteName:v4];

  v6 = [v5 BOOLForKey:@"_KSTRCloudKitMigratable"];
  if ((v6 & 1) == 0)
  {
    v7 = [v5 objectForKey:@"_KSCKMigrationPreviousCheckDate"];
    v8 = v7;
    if (!v7 || ([v7 timeIntervalSinceNow], fabs(v9) > 216000.0))
    {
      [(_KSiCloudDeviceListMonitor *)self queryMigrationState];
    }
  }

  return v6;
}

- (void)fetchCloudKitDevicesWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x277CEC778]);
  account = [(_KSiCloudDeviceListMonitor *)self account];
  v7 = [v5 initWithAccount:account];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke;
  v9[3] = &unk_2797F6400;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 performRequestWithHandler:v9];
}

- (void)fetchICloudDevicesWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x277CEC7C8]);
  account = [(_KSiCloudDeviceListMonitor *)self account];
  v7 = [v5 initWithAccount:account];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68___KSiCloudDeviceListMonitor_fetchICloudDevicesWithCompletionBlock___block_invoke;
  v9[3] = &unk_2797F6428;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 performRequestWithHandler:v9];
}

- (void)queryMigrationState
{
  if (queryMigrationState_onceToken != -1)
  {
    [_KSiCloudDeviceListMonitor queryMigrationState];
  }

  account = [(_KSiCloudDeviceListMonitor *)self account];

  if (account)
  {

    [(_KSiCloudDeviceListMonitor *)self isAccountCompatibleForCloudKitSyncingWithCompletionBlock:&__block_literal_global_163];
  }
}

- (void)isAccountCompatibleForCloudKitSyncingWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87___KSiCloudDeviceListMonitor_isAccountCompatibleForCloudKitSyncingWithCompletionBlock___block_invoke;
  v6[3] = &unk_2797F6470;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(_KSiCloudDeviceListMonitor *)self fetchCloudKitDevicesWithCompletionBlock:v6];
}

@end