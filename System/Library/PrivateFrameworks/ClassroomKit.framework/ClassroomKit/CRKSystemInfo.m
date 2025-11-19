@interface CRKSystemInfo
+ (CRKSystemInfo)sharedSystemInfo;
- (BOOL)cloudConfigEnablesEphemeralMultiUser;
- (BOOL)isEphemeralMultiUser;
- (NSDate)bootDate;
- (NSString)buildVersion;
- (NSString)systemVersion;
- (void)populateVersions;
@end

@implementation CRKSystemInfo

+ (CRKSystemInfo)sharedSystemInfo
{
  if (sharedSystemInfo_onceToken != -1)
  {
    +[CRKSystemInfo sharedSystemInfo];
  }

  v3 = sharedSystemInfo_info;

  return v3;
}

uint64_t __33__CRKSystemInfo_sharedSystemInfo__block_invoke()
{
  sharedSystemInfo_info = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)populateVersions
{
  v3 = +[CRKMobileGestalt sharedGestalt];
  v6 = [v3 buildVersion];

  v4 = +[CRKMobileGestalt sharedGestalt];
  v5 = [v4 productVersion];

  [(CRKSystemInfo *)self setBuildVersion:v6];
  [(CRKSystemInfo *)self setSystemVersion:v5];
}

- (NSString)buildVersion
{
  buildVersion = self->_buildVersion;
  if (!buildVersion)
  {
    [(CRKSystemInfo *)self populateVersions];
    buildVersion = self->_buildVersion;
  }

  return buildVersion;
}

- (NSString)systemVersion
{
  systemVersion = self->_systemVersion;
  if (!systemVersion)
  {
    [(CRKSystemInfo *)self populateVersions];
    systemVersion = self->_systemVersion;
  }

  return systemVersion;
}

- (NSDate)bootDate
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = 0x1500000001;
  v5 = 0;
  v6 = 0;
  v4 = 16;
  if (sysctl(v7, 2u, &v5, &v4, 0, 0) == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6 / 1000000.0 + v5];
  }

  return v2;
}

- (BOOL)isEphemeralMultiUser
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isEphemeralMultiUser];

  return v3;
}

- (BOOL)cloudConfigEnablesEphemeralMultiUser
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 userMode] == 1;

  return v3;
}

@end