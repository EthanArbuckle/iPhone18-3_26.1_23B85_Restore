@interface MSDKManagedDevice(PersistentStorage)
@end

@implementation MSDKManagedDevice(PersistentStorage)

- (void)getAppDataFolderPathWithReturnError:()PersistentStorage .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "Failed to get document folder URL - Error:  %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)preserveAppDataToPersistentStorageWithReturnError:()PersistentStorage .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a2 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_259B7D000, a3, OS_LOG_TYPE_ERROR, "Failed to preserve app data from %{public}@ to persistent storage - Error:  %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)preserveAppDataToPersistentStorageWithReturnError:()PersistentStorage .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MSDKManagedDevice(PersistentStorage) preserveAppDataToPersistentStorageWithReturnError:]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s - Failed to setup XPC connection.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end