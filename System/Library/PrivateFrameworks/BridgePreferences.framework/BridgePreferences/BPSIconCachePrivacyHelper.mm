@interface BPSIconCachePrivacyHelper
+ (id)_naiveHashForString:(id)string;
+ (id)_perDeviceSalt;
+ (id)saltedHashForString:(id)string;
@end

@implementation BPSIconCachePrivacyHelper

void __43__BPSIconCachePrivacyHelper__perDeviceSalt__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = _cacheDirectoryPath;
  if (!v2)
  {
    v3 = bps_utility_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "ERROR!! cacheDir was not set!", buf, 2u);
    }
  }

  v4 = MGCopyAnswer();
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@%@", v8, v4];
  v10 = [v5 _naiveHashForString:v9];
  v11 = [v2 stringByAppendingString:v10];

  v34 = 0;
  v12 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v11 encoding:4 error:&v34];
  v13 = v34;
  v14 = _perDeviceSalt_saltString;
  _perDeviceSalt_saltString = v12;

  if (v13)
  {
    v28 = v4;
    v15 = bps_utility_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_241E74000, v15, OS_LOG_TYPE_DEFAULT, "Read Error (let's clear the cache). Error %@", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v16 contentsOfDirectoryAtPath:v2 error:0];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v2 stringByAppendingString:*(*(&v30 + 1) + 8 * i)];
          [v16 removeItemAtPath:v22 error:0];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v19);
    }

    v4 = v28;
  }

  if (![_perDeviceSalt_saltString length])
  {
    v23 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v24 = [v23 UUIDString];
    v25 = _perDeviceSalt_saltString;
    _perDeviceSalt_saltString = v24;

    v29 = 0;
    [_perDeviceSalt_saltString writeToFile:v11 atomically:1 encoding:4 error:&v29];
    v26 = v29;
    if (v26)
    {
      v27 = bps_utility_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v26;
        _os_log_impl(&dword_241E74000, v27, OS_LOG_TYPE_DEFAULT, "Write Error: %@", buf, 0xCu);
      }
    }
  }
}

+ (id)_perDeviceSalt
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BPSIconCachePrivacyHelper__perDeviceSalt__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_perDeviceSalt_onceToken != -1)
  {
    dispatch_once(&_perDeviceSalt_onceToken, block);
  }

  v2 = _perDeviceSalt_saltString;

  return v2;
}

+ (id)_naiveHashForString:(id)string
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [string dataUsingEncoding:4];
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  return v4;
}

+ (id)saltedHashForString:(id)string
{
  stringCopy = string;
  _perDeviceSalt = [objc_opt_class() _perDeviceSalt];
  v6 = [stringCopy stringByAppendingString:_perDeviceSalt];

  v7 = [self _naiveHashForString:v6];

  return v7;
}

@end