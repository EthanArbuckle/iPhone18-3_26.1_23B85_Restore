@interface BBDataProviderAddBulletinForDestinations
@end

@implementation BBDataProviderAddBulletinForDestinations

void ___BBDataProviderAddBulletinForDestinations_block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v4 = v2;
    v5 = BBPublisherDestinationStrings(v3);
    v8 = 134218242;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "BBDataProvider: Add bulletin to destinations %ld: %{public}@", &v8, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  [__server _publishBulletinRequest:a1[4] forSectionID:a1[5] forDestinations:a1[6]];
  objc_autoreleasePoolPop(v6);
  v7 = *MEMORY[0x277D85DE8];
}

@end