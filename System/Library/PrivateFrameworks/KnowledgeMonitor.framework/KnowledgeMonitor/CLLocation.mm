@interface CLLocation
- (id)randomData;
- (id)readDeviceSpecificSalt;
- (id)setSaltToUserDefaults:(void *)defaults scheme:;
- (uint64_t)sha256HashForGeohash:(void *)geohash salt:;
- (unint64_t)preservePrivacyForGeoHash:(void *)hash;
@end

@implementation CLLocation

- (id)readDeviceSpecificSalt
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreDuet"];
    v3 = [v2 dataForKey:@"CDPrivacyPreservingLocationHashDeviceSpecificSalt"];
    if (!v3)
    {
      v3 = [(CLLocation *)self setSaltToUserDefaults:v2 scheme:@"CDPrivacyPreservingLocationHashDeviceSpecificSalt"];
      knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_INFO, "PrivacyPreservingLocationHash: Created a new salt for privacy preservation.", v6, 2u);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)preservePrivacyForGeoHash:(void *)hash
{
  if (!hash)
  {
    return 0;
  }

  readDeviceSpecificSalt = [(CLLocation *)hash readDeviceSpecificSalt];
  v5 = [(CLLocation *)hash sha256HashForGeohash:a2 salt:readDeviceSpecificSalt]& 0xFFFFFFFFFFFFFC00;

  return v5;
}

- (uint64_t)sha256HashForGeohash:(void *)geohash salt:
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  geohashCopy = geohash;
  if (self)
  {
    v5 = objc_opt_new();
    [v5 appendBytes:&v9 length:8];
    if (geohashCopy)
    {
      [v5 appendData:geohashCopy];
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

- (id)setSaltToUserDefaults:(void *)defaults scheme:
{
  v5 = a2;
  defaultsCopy = defaults;
  if (self)
  {
    self = [(CLLocation *)self randomData];
    if (self)
    {
      [v5 setObject:self forKey:defaultsCopy];
      selfCopy = self;
    }

    else
    {
      knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_FAULT, "PrivacyPreservingLocationHash: Tried to generate a salt for privacy preservation, but got back an empty NSData object", v10, 2u);
      }
    }
  }

  return self;
}

- (id)randomData
{
  if (self)
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