@interface BBDataProviderGetSectionInfoWithCompletion
@end

@implementation BBDataProviderGetSectionInfoWithCompletion

void ___BBDataProviderGetSectionInfoWithCompletion_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Get info for section %{public}@", &v8, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [__server _sectionInfoForSectionID:*(a1 + 32) effective:0];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  objc_autoreleasePoolPop(v4);
  v7 = *MEMORY[0x277D85DE8];
}

@end