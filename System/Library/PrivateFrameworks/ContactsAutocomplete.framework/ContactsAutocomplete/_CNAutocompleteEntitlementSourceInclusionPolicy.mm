@interface _CNAutocompleteEntitlementSourceInclusionPolicy
- (BOOL)includeCalendarServers;
- (BOOL)includeContacts;
- (BOOL)includePredictions;
- (BOOL)includeRecents;
- (BOOL)includeStewie;
- (BOOL)includeSuggestions;
@end

@implementation _CNAutocompleteEntitlementSourceInclusionPolicy

- (BOOL)includePredictions
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasDuetEntitlement];
  if (!v2)
  {
    v3 = CNALoggingContextDebug();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Will not include predicted contacts: missing entitlement", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)includeContacts
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasContactsEntitlement];
  if (!v2)
  {
    v3 = CNALoggingContextDebug();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Will not include local contacts: missing entitlement", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)includeRecents
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasRecentsEntitlement];
  if (!v2)
  {
    v3 = CNALoggingContextDebug();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Will not include recent contacts: missing entitlement", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)includeStewie
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasStewieEntitlement];
  if (!v2)
  {
    v3 = CNALoggingContextDebug();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Will not include stewie contacts: missing entitlement", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)includeSuggestions
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasSuggestionsEntitlement];
  if (!v2)
  {
    v3 = CNALoggingContextDebug();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Will not include suggested contacts: missing entitlement", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)includeCalendarServers
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasCalendarEntitlement];
  if (!v2)
  {
    v3 = CNALoggingContextDebug();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Will not include calendar servers: missing calendar entitlement", v5, 2u);
    }
  }

  return v2;
}

@end