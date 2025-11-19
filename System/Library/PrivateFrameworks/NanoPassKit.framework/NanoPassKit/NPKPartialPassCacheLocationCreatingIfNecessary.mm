@interface NPKPartialPassCacheLocationCreatingIfNecessary
@end

@implementation NPKPartialPassCacheLocationCreatingIfNecessary

void ___NPKPartialPassCacheLocationCreatingIfNecessary_block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = PKCacheDirectoryPath();
  v2 = [v0 fileURLWithPath:v1];

  v3 = [v2 URLByAppendingPathComponent:@"PartialPassCache"];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Removing old partial pass download cache at %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    v9 = [v8 removeItemAtURL:v3 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v3;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Could not remove old partial pass download cache at %@: %@", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end