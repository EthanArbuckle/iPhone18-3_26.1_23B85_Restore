@interface SyncDiagnosticsExtension
- (id)attachmentList;
- (void)_addDAManagedDefaults;
- (void)_removeDAManagedDefaults;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation SyncDiagnosticsExtension

- (void)_addDAManagedDefaults
{
  v10 = @".GlobalPreferences";
  v2 = [NSArray arrayWithObjects:&v10 count:1];
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/private/var/Managed Preferences/mobile/.GlobalPreferences.plist"];
  v4 = [NSNumber numberWithBool:1, @"DADiagnosticsEnabled"];
  v9[0] = v4;
  v8[1] = @"DALogLevel";
  v5 = [NSNumber numberWithInt:6];
  v9[1] = v5;
  v8[2] = @"DAOutputLevel";
  v6 = [NSNumber numberWithInt:6];
  v9[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  [v3 addEntriesFromDictionary:v7];
  _CFPreferencesWriteManagedDomainForUser();
  _CFPreferencesManagementStatusChangedForDomains();
  _CFPreferencesPostValuesChangedInDomains();
}

- (void)_removeDAManagedDefaults
{
  v16[0] = @"DADiagnosticsEnabled";
  v16[1] = @"DALogLevel";
  v16[2] = @"DAOutputLevel";
  v2 = [NSArray arrayWithObjects:v16 count:3];
  v15 = @".GlobalPreferences";
  v3 = [NSArray arrayWithObjects:&v15 count:1];
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/private/var/Managed Preferences/mobile/.GlobalPreferences.plist"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObjectForKey:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  _CFPreferencesWriteManagedDomainForUser();
  _CFPreferencesManagementStatusChangedForDomains();
  _CFPreferencesPostValuesChangedInDomains();
}

- (void)setupWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (parametersCopy && [parametersCopy count])
  {
    v5 = [v6 objectForKey:@"hostAppString"];
    if ([v5 isEqualToString:@"Timberlorry"])
    {
      [(SyncDiagnosticsExtension *)self _addDAManagedDefaults];
    }
  }

  else
  {
    [(SyncDiagnosticsExtension *)self _addDAManagedDefaults];
  }
}

- (void)teardownWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (parametersCopy && [parametersCopy count])
  {
    v5 = [v6 objectForKey:@"hostAppString"];
    if ([v5 isEqualToString:@"Timberlorry"])
    {
      [(SyncDiagnosticsExtension *)self _removeDAManagedDefaults];
    }
  }

  else
  {
    [(SyncDiagnosticsExtension *)self _removeDAManagedDefaults];
  }
}

- (id)attachmentList
{
  v2 = [NSURL URLWithString:@"/private/var/mobile/Library/Logs/CrashReporter/DataAccess"];
  v3 = +[NSFileManager defaultManager];
  v21 = 0;
  v16 = v2;
  v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:4 error:&v21];
  v15 = v21;

  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        lastPathComponent = [v11 lastPathComponent];
        if ([lastPathComponent containsString:@"ExchangeTraffic.com.apple."] && objc_msgSend(lastPathComponent, "containsString:", @"501_"))
        {
          v13 = [DEAttachmentItem attachmentWithPathURL:v11];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end