@interface CalHolidayAccountUtils
+ (BOOL)_isEnabledWithAccount:(id)a3;
+ (BOOL)holidayCalendarIsEnabledWithAccountStore:(id)a3;
+ (id)_createUnsavedHolidayAccountWithAccountStore:(id)a3;
+ (id)_holidayAccountWithAccountStore:(id)a3;
+ (id)holidayAccountDescription;
+ (id)logHandle;
+ (void)ensureHolidayAccountExistsWithAccountStore:(id)a3;
@end

@implementation CalHolidayAccountUtils

+ (id)logHandle
{
  if (logHandle_onceToken_2 != -1)
  {
    +[CalHolidayAccountUtils logHandle];
  }

  v3 = logHandle_logHandle_2;

  return v3;
}

uint64_t __35__CalHolidayAccountUtils_logHandle__block_invoke()
{
  logHandle_logHandle_2 = os_log_create("com.apple.calendar", "HolidayAccountUtils");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)holidayCalendarIsEnabledWithAccountStore:(id)a3
{
  v3 = a1;
  v4 = [a1 _holidayAccountWithAccountStore:a3];
  LOBYTE(v3) = [v3 _isEnabledWithAccount:v4];

  return v3;
}

+ (void)ensureHolidayAccountExistsWithAccountStore:(id)a3
{
  v5 = a3;
  v4 = [a1 _holidayAccountWithAccountStore:?];
  if (!v4)
  {
    [a1 setHolidayCalendarIsEnabled:1 withAccountStore:v5];
  }
}

+ (id)holidayAccountDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v3 = [v2 localizedStringForKey:@"Holiday Calendar" value:&stru_1F379FFA8 table:0];

  return v3;
}

+ (BOOL)_isEnabledWithAccount:(id)a3
{
  if (a3)
  {
    return [a3 isEnabledForDataclass:*MEMORY[0x1E6959630]];
  }

  else
  {
    return 0;
  }
}

+ (id)_holidayAccountWithAccountStore:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E6959870];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v14 count:1];
  v13 = 0;
  v7 = [v5 accountsWithAccountTypeIdentifiers:v6 error:&v13];

  v8 = v13;
  if (v7)
  {
    v9 = [v7 firstObject];
  }

  else
  {
    v10 = [a1 logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CalHolidayAccountUtils *)v8 _holidayAccountWithAccountStore:v10];
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_createUnsavedHolidayAccountWithAccountStore:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959870]];
  v5 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v4];
  v6 = [a1 holidayAccountDescription];
  [v5 setAccountDescription:v6];

  [v5 setAuthenticationType:*MEMORY[0x1E6959AC0]];
  [v5 setSupportsAuthentication:0];
  [v5 setVisible:0];
  v7 = [a1 logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_1B990D000, v7, OS_LOG_TYPE_DEFAULT, "Creating holiday account with identifier %{public}@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)setHolidayCalendarIsEnabled:(uint64_t)a1 withAccountStore:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Failed to save holiday account: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_holidayAccountWithAccountStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Failed to get holiday account: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end