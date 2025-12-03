@interface CNAutocompleteSourceInclusionPolicy
+ (CNAutocompleteSourceInclusionPolicy)policyWithCurrentProcessEntitlements;
+ (CNAutocompleteSourceInclusionPolicy)policyWithFetchRequest:(id)request;
+ (CNAutocompleteSourceInclusionPolicy)policyWithPolicies:(id)policies;
+ (CNAutocompleteSourceInclusionPolicy)policyWithUserDefaults:(id)defaults;
+ (id)defaultPolicyWithFetchRequest:(id)request;
+ (id)policyForNoContactsAccess;
@end

@implementation CNAutocompleteSourceInclusionPolicy

+ (CNAutocompleteSourceInclusionPolicy)policyWithCurrentProcessEntitlements
{
  v2 = objc_alloc_init(_CNAutocompleteEntitlementSourceInclusionPolicy);

  return v2;
}

+ (id)defaultPolicyWithFetchRequest:(id)request
{
  v15[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if (isAccessGranted)
  {
    v7 = [self policyWithFetchRequest:requestCopy];
    standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
    v9 = [self policyWithUserDefaults:standardPreferences];

    policyWithCurrentProcessEntitlements = [self policyWithCurrentProcessEntitlements];
    v15[0] = v7;
    v15[1] = v9;
    v15[2] = policyWithCurrentProcessEntitlements;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    policyForNoContactsAccess = [self policyWithPolicies:v11];
  }

  else
  {
    policyForNoContactsAccess = [self policyForNoContactsAccess];
  }

  v13 = *MEMORY[0x277D85DE8];

  return policyForNoContactsAccess;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithFetchRequest:(id)request
{
  requestCopy = request;
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if ((isAccessGranted & 1) == 0)
  {
    policyForNoContactsAccess = [self policyForNoContactsAccess];
    goto LABEL_13;
  }

  policyForNoContactsAccess = objc_alloc_init(_CNAutocompleteMutableSourceInclusionPolicy);
  if ([requestCopy isZeroKeywordSearch])
  {
    if ([requestCopy searchType] == 4)
    {
      -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeRecents:](policyForNoContactsAccess, "setIncludeRecents:", [requestCopy includeRecents]);
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

  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeContacts:](policyForNoContactsAccess, "setIncludeContacts:", [requestCopy includeContacts]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeRecents:](policyForNoContactsAccess, "setIncludeRecents:", [requestCopy includeRecents]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeStewie:](policyForNoContactsAccess, "setIncludeStewie:", [requestCopy includeStewie]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeSuggestions:](policyForNoContactsAccess, "setIncludeSuggestions:", [requestCopy includeSuggestions]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeLocalExtensions:](policyForNoContactsAccess, "setIncludeLocalExtensions:", [requestCopy includeLocalExtensions]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeDirectoryServers:](policyForNoContactsAccess, "setIncludeDirectoryServers:", [requestCopy includeDirectoryServers]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeCalendarServers:](policyForNoContactsAccess, "setIncludeCalendarServers:", [requestCopy includeCalendarServers]);
LABEL_12:
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludePredictions:](policyForNoContactsAccess, "setIncludePredictions:", [requestCopy includePredictions]);
  [(_CNAutocompleteMutableSourceInclusionPolicy *)policyForNoContactsAccess setIncludeSupplementalResults:1];
LABEL_13:

  return policyForNoContactsAccess;
}

+ (id)policyForNoContactsAccess
{
  v2 = objc_alloc_init(_CNAutocompleteNoSourceInclusionPolicy);

  return v2;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = [[_CNAutocompleteUserDefaultsSourceInclusionPolicy alloc] initWithUserDefaults:defaultsCopy];

  return v4;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = [[_CNAutocompleteAggregateSourceInclusionPolicy alloc] initWithPolicies:policiesCopy];

  return v4;
}

@end