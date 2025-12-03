@interface CNUIDowntimeLogger
+ (CNUIDowntimeLogger)sharedLogger;
- (CNUIDowntimeLogger)init;
- (CNUIDowntimeLogger)initWithLog:(id)log;
- (void)logFailure:(id)failure fetchingContactsOfFamilyMember:(id)member;
- (void)logFailure:(id)failure updatingContactListByAddingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logFailure:(id)failure updatingContactListByRemovingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logFailure:(id)failure updatingContactWhitelistByAddingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logFailure:(id)failure updatingContactWhitelistByRemovingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logFetchingFamilyCircleError:(id)error;
- (void)logFetchingMeError:(id)error;
- (void)logResultOfFetchingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logSuccessFetchingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logSuccessUpdatingContactListByAddingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logSuccessUpdatingContactListByRemovingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logSuccessUpdatingContactWhitelistByAddingContacts:(id)contacts ofFamilyMember:(id)member;
- (void)logSuccessUpdatingContactWhitelistByRemovingContacts:(id)contacts ofFamilyMember:(id)member;
@end

@implementation CNUIDowntimeLogger

+ (CNUIDowntimeLogger)sharedLogger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CNUIDowntimeLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUIDowntimeLogger)initWithLog:(id)log
{
  logCopy = log;
  v10.receiver = self;
  v10.super_class = CNUIDowntimeLogger;
  v6 = [(CNUIDowntimeLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, log);
    v8 = v7;
  }

  return v7;
}

- (void)logResultOfFetchingContacts:(id)contacts ofFamilyMember:(id)member
{
  memberCopy = member;
  contactsCopy = contacts;
  if ([contactsCopy isSuccess])
  {
    value = [contactsCopy value];

    [(CNUIDowntimeLogger *)self logSuccessFetchingContacts:value ofFamilyMember:memberCopy];
  }

  else
  {
    value = [contactsCopy error];

    [(CNUIDowntimeLogger *)self logFailure:value fetchingContactsOfFamilyMember:memberCopy];
  }
}

- (void)logSuccessFetchingContacts:(id)contacts ofFamilyMember:(id)member
{
  contactsCopy = contacts;
  memberCopy = member;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessFetchingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)failure fetchingContactsOfFamilyMember:(id)member
{
  failureCopy = failure;
  memberCopy = member;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CNUIDowntimeLogger logFailure:fetchingContactsOfFamilyMember:];
  }
}

- (void)logSuccessUpdatingContactListByAddingContacts:(id)contacts ofFamilyMember:(id)member
{
  contactsCopy = contacts;
  memberCopy = member;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactListByAddingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)failure updatingContactListByAddingContacts:(id)contacts ofFamilyMember:(id)member
{
  v18 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  contactsCopy = contacts;
  memberCopy = member;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = failureCopy;
    v14 = 2112;
    v15 = contactsCopy;
    v16 = 2112;
    v17 = memberCopy;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ adding contacts: %@ to contacts of family member: %@", &v12, 0x20u);
  }
}

- (void)logSuccessUpdatingContactListByRemovingContacts:(id)contacts ofFamilyMember:(id)member
{
  contactsCopy = contacts;
  memberCopy = member;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactListByRemovingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)failure updatingContactListByRemovingContacts:(id)contacts ofFamilyMember:(id)member
{
  v18 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  contactsCopy = contacts;
  memberCopy = member;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = failureCopy;
    v14 = 2112;
    v15 = contactsCopy;
    v16 = 2112;
    v17 = memberCopy;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ removing contacts: %@from contacts of family member: %@", &v12, 0x20u);
  }
}

- (void)logSuccessUpdatingContactWhitelistByAddingContacts:(id)contacts ofFamilyMember:(id)member
{
  contactsCopy = contacts;
  memberCopy = member;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactWhitelistByAddingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)failure updatingContactWhitelistByAddingContacts:(id)contacts ofFamilyMember:(id)member
{
  v18 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  contactsCopy = contacts;
  memberCopy = member;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = failureCopy;
    v14 = 2112;
    v15 = contactsCopy;
    v16 = 2112;
    v17 = memberCopy;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ whitelisting contacts: %@ of family member: %@", &v12, 0x20u);
  }
}

- (void)logSuccessUpdatingContactWhitelistByRemovingContacts:(id)contacts ofFamilyMember:(id)member
{
  contactsCopy = contacts;
  memberCopy = member;
  v8 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNUIDowntimeLogger logSuccessUpdatingContactWhitelistByRemovingContacts:ofFamilyMember:];
  }
}

- (void)logFailure:(id)failure updatingContactWhitelistByRemovingContacts:(id)contacts ofFamilyMember:(id)member
{
  v18 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  contactsCopy = contacts;
  memberCopy = member;
  v11 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = failureCopy;
    v14 = 2112;
    v15 = contactsCopy;
    v16 = 2112;
    v17 = memberCopy;
    _os_log_error_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_ERROR, "error: %@ clearing contacts: %@ from whitelist of family member: %@", &v12, 0x20u);
  }
}

- (void)logFetchingFamilyCircleError:(id)error
{
  errorCopy = error;
  v5 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CNUIDowntimeLogger *)errorCopy logFetchingFamilyCircleError:v5];
  }
}

- (void)logFetchingMeError:(id)error
{
  errorCopy = error;
  v5 = [(CNUIDowntimeLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CNUIDowntimeLogger *)errorCopy logFetchingMeError:v5];
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