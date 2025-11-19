@interface BBDataProviderSetSectionInfo
@end

@implementation BBDataProviderSetSectionInfo

void ___BBDataProviderSetSectionInfo_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Set info for section %{public}@ to %{public}@", &v8, 0x16u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  if (v6)
  {
    [__server _saveUpdatedSectionInfo:v6 forSectionID:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v5);
  v7 = *MEMORY[0x277D85DE8];
}

@end