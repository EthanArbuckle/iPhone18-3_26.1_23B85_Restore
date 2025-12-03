@interface _CNAutocompleteUserDefaultsSourceInclusionPolicy
- (BOOL)includeCalendarServers;
- (BOOL)includeContacts;
- (BOOL)includeDirectoryServers;
- (BOOL)includeLocalExtensions;
- (BOOL)includePredictions;
- (BOOL)includeRecents;
- (BOOL)includeStewie;
- (BOOL)includeSuggestions;
- (BOOL)includeSupplementalResults;
- (_CNAutocompleteUserDefaultsSourceInclusionPolicy)initWithUserDefaults:(id)defaults;
@end

@implementation _CNAutocompleteUserDefaultsSourceInclusionPolicy

- (BOOL)includePredictions
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNDuetContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNDuetContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include predicted contacts: %@ is NO or not set", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeSupplementalResults
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNSupplementalContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNSupplementalContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include supplemental contacts: %@ is NO", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (_CNAutocompleteUserDefaultsSourceInclusionPolicy)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = _CNAutocompleteUserDefaultsSourceInclusionPolicy;
  v6 = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
    v8 = v7;
  }

  return v7;
}

- (BOOL)includeContacts
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNLocalContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNLocalContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include local contacts: %@ is NO", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeRecents
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNRecentContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNRecentContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include recent contacts: %@ is NO", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeStewie
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNStewieInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNStewieInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include stewie contacts: %@ is NO", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeSuggestions
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNSuggestedContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNSuggestedContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include suggested contacts: %@ is NO or not set", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeLocalExtensions
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNLocalExtensionContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNLocalExtensionContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include local extensions: %@ is NO or not set", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeDirectoryServers
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNServerContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNServerContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include directory server contacts: %@ is NO", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)includeCalendarServers
{
  v9 = *MEMORY[0x277D85DE8];
  userDefaults = [(_CNAutocompleteUserDefaultsSourceInclusionPolicy *)self userDefaults];
  v3 = [userDefaults userHasOptedOutOfPreference:@"CNCalendarServerContactsInAutocomplete"];

  if (v3)
  {
    v4 = CNALoggingContextDebug();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"CNCalendarServerContactsInAutocomplete";
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include calendar server contacts: %@ is NO", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

@end