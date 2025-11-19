@interface CHManagedHandleMigrationPolicy
- (id)normalizedValueForManagedHandle:(id)a3;
@end

@implementation CHManagedHandleMigrationPolicy

- (id)normalizedValueForManagedHandle:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 normalizedValue];
  if (![v4 length])
  {
    v5 = ch_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v3;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Performing normalization migration policy for managed handle %@", &v25, 0xCu);
    }

    v6 = NSStringFromSelector(sel_type);
    v7 = [v3 valueForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 integerValue];
    }

    else
    {
      v9 = ch_framework_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CHManagedHandleMigrationPolicy *)v7 normalizedValueForManagedHandle:v6, v9];
      }

      v8 = 0;
    }

    v10 = ch_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = v8;
      _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Comparing CHHandleType to managed handle type %ld", &v25, 0xCu);
    }

    switch(v8)
    {
      case 1:
        v21 = [v3 value];
        v22 = [CHHandle normalizedGenericHandleForValue:v21];
        v13 = [v22 normalizedValue];

        v14 = ch_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v13;
          v15 = "Normalized user name to %@";
          goto LABEL_21;
        }

        break;
      case 2:
        v16 = [v3 remoteParticipantCalls];
        v17 = [v16 anyObject];
        v14 = [v17 iso_country_code];

        v18 = [v3 value];
        v19 = [CHHandle normalizedPhoneNumberHandleForValue:v18 isoCountryCode:v14];
        v13 = [v19 normalizedValue];

        v20 = ch_framework_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v13;
          _os_log_impl(&dword_1C3E90000, v20, OS_LOG_TYPE_DEFAULT, "Normalized telephone number to %@", &v25, 0xCu);
        }

        break;
      case 3:
        v11 = [v3 value];
        v12 = [CHHandle normalizedEmailAddressHandleForValue:v11];
        v13 = [v12 normalizedValue];

        v14 = ch_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v13;
          v15 = "Normalized email address to %@";
LABEL_21:
          _os_log_impl(&dword_1C3E90000, v14, OS_LOG_TYPE_DEFAULT, v15, &v25, 0xCu);
        }

        break;
      default:
LABEL_23:

        goto LABEL_24;
    }

    v4 = v13;
    goto LABEL_23;
  }

LABEL_24:

  v23 = *MEMORY[0x1E69E9840];

  return v4;
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