@interface MCManagedPreferencesManager
+ (BOOL)addManagedPreferences:(id)a3 toDomain:(id)a4;
+ (BOOL)removeManagedPreferences:(id)a3 fromDomain:(id)a4;
+ (BOOL)setManagedPreferences:(id)a3 forDomain:(id)a4;
+ (id)managedPreferencesForDomain:(id)a3;
+ (id)managedPreferencesPathForDomain:(id)a3;
+ (void)sendManagedPreferencesChangedNotificationForDomains:(id)a3;
+ (void)updateGlobalManagedPreferencesByAddingPreferences:(id)a3 removingPreferences:(id)a4;
@end

@implementation MCManagedPreferencesManager

+ (id)managedPreferencesPathForDomain:(id)a3
{
  v3 = _CFPreferencesCopyPathForManagedDomain();

  return v3;
}

+ (id)managedPreferencesForDomain:(id)a3
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [a1 managedPreferencesPathForDomain:a3];
  v5 = [v3 dictionaryWithContentsOfFile:v4];

  return v5;
}

+ (BOOL)setManagedPreferences:(id)a3 forDomain:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "MCManagedPreferencesManager removing managed preferences for domain: %{public}@", &v11, 0xCu);
    }
  }

  v8 = _CFPreferencesWriteManagedDomain() != 0;

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)addManagedPreferences:(id)a3 toDomain:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 managedPreferencesForDomain:v6];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  [v12 addEntriesFromDictionary:v7];
  v13 = [a1 setManagedPreferences:v12 forDomain:v6];

  return v13;
}

+ (BOOL)removeManagedPreferences:(id)a3 fromDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 managedPreferencesForDomain:v7];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    [v9 removeObjectsForKeys:v6];
    v10 = [a1 setManagedPreferences:v9 forDomain:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (void)sendManagedPreferencesChangedNotificationForDomains:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    _CFPreferencesManagementStatusChangedForDomains();
    _CFPreferencesPostValuesChangedInDomains();
  }
}

+ (void)updateGlobalManagedPreferencesByAddingPreferences:(id)a3 removingPreferences:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [a1 globalManagedPreferencesDomain];
    [MCManagedPreferencesManager addManagedPreferences:v6 toDomain:v8];

    if (![v7 count])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([v7 count])
  {
LABEL_5:
    v9 = [a1 globalManagedPreferencesDomain];
    [MCManagedPreferencesManager removeManagedPreferences:v7 fromDomain:v9];

LABEL_6:
    v10 = [a1 globalManagedPreferencesDomain];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [a1 sendManagedPreferencesChangedNotificationForDomains:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end