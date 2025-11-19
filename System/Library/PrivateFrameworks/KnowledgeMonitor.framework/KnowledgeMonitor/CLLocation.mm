@interface CLLocation
- (id)randomData;
- (id)readDeviceSpecificSalt;
- (id)setSaltToUserDefaults:(void *)a3 scheme:;
- (uint64_t)sha256HashForGeohash:(void *)a3 salt:;
- (unint64_t)preservePrivacyForGeoHash:(void *)a1;
@end

@implementation CLLocation

- (id)readDeviceSpecificSalt
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreDuet"];
    v3 = [v2 dataForKey:@"CDPrivacyPreservingLocationHashDeviceSpecificSalt"];
    if (!v3)
    {
      v3 = [(CLLocation *)a1 setSaltToUserDefaults:v2 scheme:@"CDPrivacyPreservingLocationHashDeviceSpecificSalt"];
      v5 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22595A000, v5, OS_LOG_TYPE_INFO, "PrivacyPreservingLocationHash: Created a new salt for privacy preservation.", v6, 2u);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)preservePrivacyForGeoHash:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [(CLLocation *)a1 readDeviceSpecificSalt];
  v5 = [(CLLocation *)a1 sha256HashForGeohash:a2 salt:v4]& 0xFFFFFFFFFFFFFC00;

  return v5;
}

- (uint64_t)sha256HashForGeohash:(void *)a3 salt:
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v4 = a3;
  if (a1)
  {
    v5 = objc_opt_new();
    [v5 appendBytes:&v9 length:8];
    if (v4)
    {
      [v5 appendData:v4];
    }

    *md = 0u;
    v11 = 0u;
    CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), md);
    v6 = *md;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)setSaltToUserDefaults:(void *)a3 scheme:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = [(CLLocation *)a1 randomData];
    if (a1)
    {
      [v5 setObject:a1 forKey:v6];
      v7 = a1;
    }

    else
    {
      v8 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_22595A000, v8, OS_LOG_TYPE_FAULT, "PrivacyPreservingLocationHash: Tried to generate a salt for privacy preservation, but got back an empty NSData object", v10, 2u);
      }
    }
  }

  return a1;
}

- (id)randomData
{
  if (a1)
  {
    v1 = [MEMORY[0x277CBEB28] dataWithLength:8];
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 8uLL, [v1 mutableBytes]))
    {
      v2 = 0;
    }

    else
    {
      v2 = [MEMORY[0x277CBEA90] dataWithData:v1];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end