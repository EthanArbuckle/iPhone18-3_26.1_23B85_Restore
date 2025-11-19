@interface CNUIDowntimeLogger
+ (CNUIDowntimeLogger)sharedLogger;
- (CNUIDowntimeLogger)init;
- (CNUIDowntimeLogger)initWithLog:(id)a3;
- (void)logFailure:(id)a3 fetchingContactsOfFamilyMember:(id)a4;
- (void)logFailure:(id)a3 updatingContactListByAddingContacts:(id)a4 ofFamilyMember:(id)a5;
- (void)logFailure:(id)a3 updatingContactListByRemovingContacts:(id)a4 ofFamilyMember:(id)a5;
- (void)logFailure:(id)a3 updatingContactWhitelistByAddingContacts:(id)a4 ofFamilyMember:(id)a5;
- (void)logFailure:(id)a3 updatingContactWhitelistByRemovingContacts:(id)a4 ofFamilyMember:(id)a5;
- (void)logFetchingFamilyCircleError:(id)a3;
- (void)logFetchingMeError:(id)a3;
- (void)logResultOfFetchingContacts:(id)a3 ofFamilyMember:(id)a4;
- (void)logSuccessFetchingContacts:(id)a3 ofFamilyMember:(id)a4;
- (void)logSuccessUpdatingContactListByAddingContacts:(id)a3 ofFamilyMember:(id)a4;
- (void)logSuccessUpdatingContactListByRemovingContacts:(id)a3 ofFamilyMember:(id)a4;
- (void)logSuccessUpdatingContactWhitelistByAddingContacts:(id)a3 ofFamilyMember:(id)a4;
- (void)logSuccessUpdatingContactWhitelistByRemovingContacts:(id)a3 ofFamilyMember:(id)a4;
@end

@implementation CNUIDowntimeLogger

+ (CNUIDowntimeLogger)sharedLogger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CNUIDowntimeLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedLogger_cn_once_token_1 != -1)
  {
    dispatch_once(&sharedLogger_cn_once_token_1, block);
  }

  v2 = sharedLogger_cn_once_object_1;

  return v2;
}

void __34__CNUIDowntimeLogger_sharedLogger__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = os_log_create("com.apple.contactsui", "downtime");
  v2 = [v1 initWithLog:v4];
  v3 = sharedLogger_cn_once_object_1;
  sharedLogger_cn_once_object_1 = v2;
}

- (CNUIDowntimeLogger)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUIDowntimeLogger)initWithLog:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUIDowntimeLogger;
  v6 = [(CNUIDowntimeLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
    v8 = v7;
  }

  return v7;
}

- (void)logResultOfFetchingContacts:(id)a3 ofFamilyMember:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isSuccess])
  {
    v8 = [v7 value];

    [(CNUIDowntimeLogger *)self logSuccessFetchingContacts:v8 ofFamilyMember:v6];
  }

  else
  {
    v8 = [v7 error];

    [(CNUIDowntimeLogger *)self logFailure:v8 fetchingContactsOfFamilyMember:v6];
  }
}

- (void)logSuccessFetchingContacts:(id)a3 ofFamilyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessFetchingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)a3 fetchingContactsOfFamilyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CNUIDowntimeLogger logFailure:fetchingContactsOfFamilyMember:];
  }
}

- (void)logSuccessUpdatingContactListByAddingContacts:(id)a3 ofFamilyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactListByAddingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)a3 updatingContactListByAddingContacts:(id)a4 ofFamilyMember:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ adding contacts: %@ to contacts of family member: %@", &v12, 0x20u);
  }
}

- (void)logSuccessUpdatingContactListByRemovingContacts:(id)a3 ofFamilyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactListByRemovingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)a3 updatingContactListByRemovingContacts:(id)a4 ofFamilyMember:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ removing contacts: %@from contacts of family member: %@", &v12, 0x20u);
  }
}

- (void)logSuccessUpdatingContactWhitelistByAddingContacts:(id)a3 ofFamilyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactWhitelistByAddingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)a3 updatingContactWhitelistByAddingContacts:(id)a4 ofFamilyMember:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ whitelisting contacts: %@ of family member: %@", &v12, 0x20u);
  }
}

- (void)logSuccessUpdatingContactWhitelistByRemovingContacts:(id)a3 ofFamilyMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactWhitelistByRemovingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)a3 updatingContactWhitelistByRemovingContacts:(id)a4 ofFamilyMember:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ clearing contacts: %@ from whitelist of family member: %@", &v12, 0x20u);
  }
}

- (void)logFetchingFamilyCircleError:(id)a3
{
  v4 = a3;
  v5 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CNUIDowntimeLogger *)v4 logFetchingFamilyCircleError:v5];
  }
}

- (void)logFetchingMeError:(id)a3
{
  v4 = a3;
  v5 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CNUIDowntimeLogger *)v4 logFetchingMeError:v5];
  }
}

- (void)logFailure:fetchingContactsOfFamilyMember:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1A31E6000, v0, OS_LOG_TYPE_ERROR, "error: %@ fetching contacts of family member: %@", v1, 0x16u);
}

- (void)logFetchingFamilyCircleError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "error: %@ fetching family circle", &v2, 0xCu);
}

- (void)logFetchingMeError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "error: %@ fetching me", &v2, 0xCu);
}

@end