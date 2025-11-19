@interface NSUUID(MOExtensions)
+ (id)uuidFromString:()MOExtensions;
@end

@implementation NSUUID(MOExtensions)

+ (id)uuidFromString:()MOExtensions
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] < 0xC)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@", v3, v3, v3, v3];
    v4 = [v5 dataUsingEncoding:4];
  }

  else
  {
    v4 = [v3 dataUsingEncoding:4];
  }

  if ([v4 length] < 0xC)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v3;
      LOWORD(v12[0]) = 2112;
      *(v12 + 2) = v6;
      _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_INFO, "Input string is not valid, string, %@, UUID, %@", buf, 0x16u);
    }
  }

  else
  {
    [v4 getBytes:buf range:{0, 12}];
    v12[0] = [v3 hash];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:buf];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end