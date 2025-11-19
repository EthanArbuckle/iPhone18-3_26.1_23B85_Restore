@interface WriteMMappedImage
@end

@implementation WriteMMappedImage

void ___WriteMMappedImage_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = _BridgeIconCachePath();
  v7 = 0;
  v2 = [v0 createDirectoryAtPath:v1 withIntermediateDirectories:0 attributes:0 error:&v7];
  v3 = v7;

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = bps_utility_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _BridgeIconCachePath();
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "Failed to create (%@) dir: %@", buf, 0x16u);
    }
  }
}

void ___WriteMMappedImage_block_invoke_135(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CachePathForIcon(*(a1 + 40));
  [v1 writeToCPBitmapFile:v2 flags:0];
}

@end