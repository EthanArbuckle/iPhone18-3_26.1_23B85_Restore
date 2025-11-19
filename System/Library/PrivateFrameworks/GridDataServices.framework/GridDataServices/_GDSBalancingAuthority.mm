@interface _GDSBalancingAuthority
+ (id)currentBalancingAuthority;
+ (id)fetchBalancingAuthorityPolygons;
+ (id)loadBalancingAuthorityStatus;
+ (id)loadNumberForPreferenceKey:(id)a3;
+ (id)loadRegistrations;
+ (id)loadStringForPreferenceKey:(id)a3;
+ (id)sharedInstance;
+ (void)saveBalancingAuthority:(id)a3;
+ (void)saveRegisteration:(id)a3 bundlePath:(id)a4;
- (_GDSBalancingAuthority)init;
@end

@implementation _GDSBalancingAuthority

- (_GDSBalancingAuthority)init
{
  v9.receiver = self;
  v9.super_class = _GDSBalancingAuthority;
  v2 = [(_GDSBalancingAuthority *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.gds", "balancingAuthority");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerui.locsignalmonitor.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_GDSBalancingAuthority sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

+ (id)fetchBalancingAuthorityPolygons
{
  v2 = +[_GDSServerConnection sharedInstance];
  v3 = [v2 fetchBalancingAuthorityPolygons];

  return v3;
}

+ (id)loadStringForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.gridDataServices", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v3;
}

+ (id)loadNumberForPreferenceKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.gridDataServices", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v3;
}

+ (id)currentBalancingAuthority
{
  v2 = [_GDSBalancingAuthority loadStringForPreferenceKey:@"balAuthName"];
  v3 = [_GDSBalancingAuthority loadStringForPreferenceKey:@"balAuthID"];
  v4 = [_GDSBalancingAuthority loadNumberForPreferenceKey:@"balAuthFetchDate"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [_GDSBalancingAuthority loadNumberForPreferenceKey:@"balAuthLatStart"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [_GDSBalancingAuthority loadNumberForPreferenceKey:@"balAuthLatEnd"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [_GDSBalancingAuthority loadNumberForPreferenceKey:@"balAuthLongStart"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [_GDSBalancingAuthority loadNumberForPreferenceKey:@"balAuthLongEnd"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  if (!v2 || !v3)
  {

    v20 = [MEMORY[0x277CBEAA8] distantPast];

    v2 = @"Unknown";
    v19 = v20;
  }

  v21 = [[_GDSBalancingAuthorityOutput alloc] initWithIdentifier:v2 name:v3 latitudeStart:v19 latitudeEnd:v9 longitudeStart:v12 longitudeEnd:v15 updateDate:v18];

  return v21;
}

+ (void)saveBalancingAuthority:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = *MEMORY[0x277CBF020];
  v6 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"balAuthName", v4, @"com.apple.gridDataServices", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  v7 = [v3 identifier];
  CFPreferencesSetValue(@"balAuthID", v7, @"com.apple.gridDataServices", v5, v6);

  v8 = MEMORY[0x277CCABB0];
  [v3 latStart];
  CFPreferencesSetValue(@"balAuthLatStart", [v8 numberWithDouble:?], @"com.apple.gridDataServices", v5, v6);
  v9 = MEMORY[0x277CCABB0];
  [v3 latEnd];
  CFPreferencesSetValue(@"balAuthLatEnd", [v9 numberWithDouble:?], @"com.apple.gridDataServices", v5, v6);
  v10 = MEMORY[0x277CCABB0];
  [v3 longStart];
  CFPreferencesSetValue(@"balAuthLongStart", [v10 numberWithDouble:?], @"com.apple.gridDataServices", v5, v6);
  v11 = MEMORY[0x277CCABB0];
  [v3 longEnd];
  v13 = v12;

  CFPreferencesSetValue(@"balAuthLongEnd", [v11 numberWithDouble:v13], @"com.apple.gridDataServices", v5, v6);
  v14 = MEMORY[0x277CCABB0];
  v15 = [MEMORY[0x277CBEAA8] date];
  [v15 timeIntervalSinceReferenceDate];
  CFPreferencesSetValue(@"balAuthFetchDate", [v14 numberWithDouble:?], @"com.apple.gridDataServices", v5, v6);

  CFPreferencesSynchronize(@"com.apple.gridDataServices", v5, v6);
}

+ (void)saveRegisteration:(id)a3 bundlePath:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = *MEMORY[0x277CBF020];
  v7 = *MEMORY[0x277CBF010];
  v8 = CFPreferencesCopyValue(@"registrations", @"com.apple.gridDataServices", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
  v9 = [v8 mutableCopy];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v9 setObject:v5 forKeyedSubscript:v10];
  CFPreferencesSetValue(@"registrations", v9, @"com.apple.gridDataServices", v6, v7);
}

+ (id)loadRegistrations
{
  v2 = CFPreferencesCopyValue(@"registrations", @"com.apple.gridDataServices", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v2;
}

+ (id)loadBalancingAuthorityStatus
{
  v2 = CFPreferencesCopyValue(@"balAuthStatus", @"com.apple.gridDataServices", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v2;
}

@end