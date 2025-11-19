@interface CNAutocompleteSourceInclusionPolicy
+ (CNAutocompleteSourceInclusionPolicy)policyWithCurrentProcessEntitlements;
+ (CNAutocompleteSourceInclusionPolicy)policyWithFetchRequest:(id)a3;
+ (CNAutocompleteSourceInclusionPolicy)policyWithPolicies:(id)a3;
+ (CNAutocompleteSourceInclusionPolicy)policyWithUserDefaults:(id)a3;
+ (id)defaultPolicyWithFetchRequest:(id)a3;
+ (id)policyForNoContactsAccess;
@end

@implementation CNAutocompleteSourceInclusionPolicy

+ (CNAutocompleteSourceInclusionPolicy)policyWithCurrentProcessEntitlements
{
  v2 = objc_alloc_init(_CNAutocompleteEntitlementSourceInclusionPolicy);

  return v2;
}

+ (id)defaultPolicyWithFetchRequest:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CFBDB8] sharedInstance];
  v6 = [v5 isAccessGranted];

  if (v6)
  {
    v7 = [a1 policyWithFetchRequest:v4];
    v8 = [MEMORY[0x277CFBEE8] standardPreferences];
    v9 = [a1 policyWithUserDefaults:v8];

    v10 = [a1 policyWithCurrentProcessEntitlements];
    v15[0] = v7;
    v15[1] = v9;
    v15[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v12 = [a1 policyWithPolicies:v11];
  }

  else
  {
    v12 = [a1 policyForNoContactsAccess];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CFBDB8] sharedInstance];
  v6 = [v5 isAccessGranted];

  if ((v6 & 1) == 0)
  {
    v7 = [a1 policyForNoContactsAccess];
    goto LABEL_13;
  }

  v7 = objc_alloc_init(_CNAutocompleteMutableSourceInclusionPolicy);
  if ([v4 isZeroKeywordSearch])
  {
    if ([v4 searchType] == 4)
    {
      -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeRecents:](v7, "setIncludeRecents:", [v4 includeRecents]);
      v8 = CNALoggingContextDebug();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v9 = "Will only search Duet, Recents (because search type photos) and Supplemental because search string has a 0 length";
        v10 = &v13;
LABEL_10:
        _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    else
    {
      v8 = CNALoggingContextDebug();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        v9 = "Will only search Duet and Supplemental because search string has a 0 length";
        v10 = &v12;
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeContacts:](v7, "setIncludeContacts:", [v4 includeContacts]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeRecents:](v7, "setIncludeRecents:", [v4 includeRecents]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeStewie:](v7, "setIncludeStewie:", [v4 includeStewie]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeSuggestions:](v7, "setIncludeSuggestions:", [v4 includeSuggestions]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeLocalExtensions:](v7, "setIncludeLocalExtensions:", [v4 includeLocalExtensions]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeDirectoryServers:](v7, "setIncludeDirectoryServers:", [v4 includeDirectoryServers]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeCalendarServers:](v7, "setIncludeCalendarServers:", [v4 includeCalendarServers]);
LABEL_12:
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludePredictions:](v7, "setIncludePredictions:", [v4 includePredictions]);
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v7 setIncludeSupplementalResults:1];
LABEL_13:

  return v7;
}

+ (id)policyForNoContactsAccess
{
  v2 = objc_alloc_init(_CNAutocompleteNoSourceInclusionPolicy);

  return v2;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithUserDefaults:(id)a3
{
  v3 = a3;
  v4 = [[_CNAutocompleteUserDefaultsSourceInclusionPolicy alloc] initWithUserDefaults:v3];

  return v4;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithPolicies:(id)a3
{
  v3 = a3;
  v4 = [[_CNAutocompleteAggregateSourceInclusionPolicy alloc] initWithPolicies:v3];

  return v4;
}

@end