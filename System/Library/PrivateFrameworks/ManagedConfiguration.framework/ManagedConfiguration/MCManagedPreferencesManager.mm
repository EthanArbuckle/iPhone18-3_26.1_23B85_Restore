@interface MCManagedPreferencesManager
+ (BOOL)addManagedPreferences:(id)preferences toDomain:(id)domain;
+ (BOOL)removeManagedPreferences:(id)preferences fromDomain:(id)domain;
+ (BOOL)setManagedPreferences:(id)preferences forDomain:(id)domain;
+ (id)managedPreferencesForDomain:(id)domain;
+ (id)managedPreferencesPathForDomain:(id)domain;
+ (void)sendManagedPreferencesChangedNotificationForDomains:(id)domains;
+ (void)updateGlobalManagedPreferencesByAddingPreferences:(id)preferences removingPreferences:(id)removingPreferences;
@end

@implementation MCManagedPreferencesManager

+ (id)managedPreferencesPathForDomain:(id)domain
{
  v3 = _CFPreferencesCopyPathForManagedDomain();

  return v3;
}

+ (id)managedPreferencesForDomain:(id)domain
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [self managedPreferencesPathForDomain:domain];
  v5 = [v3 dictionaryWithContentsOfFile:v4];

  return v5;
}

+ (BOOL)setManagedPreferences:(id)preferences forDomain:(id)domain
{
  v13 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  domainCopy = domain;
  if (![preferencesCopy count])
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = domainCopy;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEFAULT, "MCManagedPreferencesManager removing managed preferences for domain: %{public}@", &v11, 0xCu);
    }
  }

  v8 = _CFPreferencesWriteManagedDomain() != 0;

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)addManagedPreferences:(id)preferences toDomain:(id)domain
{
  domainCopy = domain;
  preferencesCopy = preferences;
  v8 = [self managedPreferencesForDomain:domainCopy];
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

  [v12 addEntriesFromDictionary:preferencesCopy];
  v13 = [self setManagedPreferences:v12 forDomain:domainCopy];

  return v13;
}

+ (BOOL)removeManagedPreferences:(id)preferences fromDomain:(id)domain
{
  preferencesCopy = preferences;
  domainCopy = domain;
  v8 = [self managedPreferencesForDomain:domainCopy];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    [v9 removeObjectsForKeys:preferencesCopy];
    v10 = [self setManagedPreferences:v9 forDomain:domainCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (void)sendManagedPreferencesChangedNotificationForDomains:(id)domains
{
  domainsCopy = domains;
  if ([domainsCopy count])
  {
    _CFPreferencesManagementStatusChangedForDomains();
    _CFPreferencesPostValuesChangedInDomains();
  }
}

+ (void)updateGlobalManagedPreferencesByAddingPreferences:(id)preferences removingPreferences:(id)removingPreferences
{
  v13[1] = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  removingPreferencesCopy = removingPreferences;
  if ([preferencesCopy count])
  {
    globalManagedPreferencesDomain = [self globalManagedPreferencesDomain];
    [MCManagedPreferencesManager addManagedPreferences:preferencesCopy toDomain:globalManagedPreferencesDomain];

    if (![removingPreferencesCopy count])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([removingPreferencesCopy count])
  {
LABEL_5:
    globalManagedPreferencesDomain2 = [self globalManagedPreferencesDomain];
    [MCManagedPreferencesManager removeManagedPreferences:removingPreferencesCopy fromDomain:globalManagedPreferencesDomain2];

LABEL_6:
    globalManagedPreferencesDomain3 = [self globalManagedPreferencesDomain];
    v13[0] = globalManagedPreferencesDomain3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [self sendManagedPreferencesChangedNotificationForDomains:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end