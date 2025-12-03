@interface CHManagedHandleMigrationPolicy
- (id)normalizedValueForManagedHandle:(id)handle;
@end

@implementation CHManagedHandleMigrationPolicy

- (id)normalizedValueForManagedHandle:(id)handle
{
  v27 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  normalizedValue = [handleCopy normalizedValue];
  if (![normalizedValue length])
  {
    v5 = ch_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = handleCopy;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Performing normalization migration policy for managed handle %@", &v25, 0xCu);
    }

    v6 = NSStringFromSelector(sel_type);
    v7 = [handleCopy valueForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      v9 = ch_framework_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CHManagedHandleMigrationPolicy *)v7 normalizedValueForManagedHandle:v6, v9];
      }

      integerValue = 0;
    }

    v10 = ch_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = integerValue;
      _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Comparing CHHandleType to managed handle type %ld", &v25, 0xCu);
    }

    switch(integerValue)
    {
      case 1:
        value = [handleCopy value];
        v22 = [CHHandle normalizedGenericHandleForValue:value];
        normalizedValue2 = [v22 normalizedValue];

        iso_country_code = ch_framework_log();
        if (os_log_type_enabled(iso_country_code, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = normalizedValue2;
          v15 = "Normalized user name to %@";
          goto LABEL_21;
        }

        break;
      case 2:
        remoteParticipantCalls = [handleCopy remoteParticipantCalls];
        anyObject = [remoteParticipantCalls anyObject];
        iso_country_code = [anyObject iso_country_code];

        value2 = [handleCopy value];
        v19 = [CHHandle normalizedPhoneNumberHandleForValue:value2 isoCountryCode:iso_country_code];
        normalizedValue2 = [v19 normalizedValue];

        v20 = ch_framework_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = normalizedValue2;
          _os_log_impl(&dword_1C3E90000, v20, OS_LOG_TYPE_DEFAULT, "Normalized telephone number to %@", &v25, 0xCu);
        }

        break;
      case 3:
        value3 = [handleCopy value];
        v12 = [CHHandle normalizedEmailAddressHandleForValue:value3];
        normalizedValue2 = [v12 normalizedValue];

        iso_country_code = ch_framework_log();
        if (os_log_type_enabled(iso_country_code, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = normalizedValue2;
          v15 = "Normalized email address to %@";
LABEL_21:
          _os_log_impl(&dword_1C3E90000, iso_country_code, OS_LOG_TYPE_DEFAULT, v15, &v25, 0xCu);
        }

        break;
      default:
LABEL_23:

        goto LABEL_24;
    }

    normalizedValue = normalizedValue2;
    goto LABEL_23;
  }

LABEL_24:

  v23 = *MEMORY[0x1E69E9840];

  return normalizedValue;
}

- (void)normalizedValueForManagedHandle:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Unexpected data type found in value %@ for key %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end