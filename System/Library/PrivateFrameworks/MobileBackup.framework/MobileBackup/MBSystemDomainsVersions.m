@interface MBSystemDomainsVersions
+ (id)defaultSystemDomainsVersions;
- (MBSystemDomainsVersions)init;
- (MBSystemDomainsVersions)initWithDefaultSystemDomainsPlist;
- (MBSystemDomainsVersions)initWithVersion:(double)a3 minSupportedVersion:(double)a4 maxSupportedVersion:(double)a5;
@end

@implementation MBSystemDomainsVersions

- (MBSystemDomainsVersions)init
{
  v8.receiver = self;
  v8.super_class = MBSystemDomainsVersions;
  result = [(MBSystemDomainsVersions *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_version = _Q0;
    result->_maxSupportedVersion = 2.0;
  }

  return result;
}

- (MBSystemDomainsVersions)initWithVersion:(double)a3 minSupportedVersion:(double)a4 maxSupportedVersion:(double)a5
{
  result = [(MBSystemDomainsVersions *)self init];
  if (result)
  {
    result->_version = a3;
    result->_minSupportedVersion = a4;
    result->_maxSupportedVersion = a5;
  }

  return result;
}

- (MBSystemDomainsVersions)initWithDefaultSystemDomainsPlist
{
  v2 = [(MBSystemDomainsVersions *)self init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = sub_1001961DC();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading system domains versions from %{public}@", buf, 0xCu);
    v19 = v4;
    _MBLog();
  }

  v6 = [NSURL fileURLWithPath:v4 isDirectory:0];
  v23 = 0;
  v7 = [NSDictionary dictionaryWithContentsOfURL:v6 error:&v23];
  v8 = v23;
  if (!v7)
  {
    v18 = [[MBException alloc] initWithCode:11 format:{@"Error loading system domains from %@: %@", v4, v8}];
    goto LABEL_12;
  }

  v9 = [v7 objectForKeyedSubscript:@"SystemDomains"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [[MBException alloc] initWithCode:11 format:{@"SystemDomains value not a dictionary", v19, v20}];
LABEL_12:
    objc_exception_throw(v18);
  }

  [MBDomain doubleFromStringValueForKey:@"Version" plist:v7];
  v2->_version = v10;
  [MBDomain doubleFromStringValueForKey:@"MinSupportedVersion" plist:v7];
  v2->_minSupportedVersion = v11;
  [MBDomain doubleFromStringValueForKey:@"MaxSupportedVersion" plist:v7];
  v2->_maxSupportedVersion = v12;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    version = v2->_version;
    minSupportedVersion = v2->_minSupportedVersion;
    maxSupportedVersion = v2->_maxSupportedVersion;
    *buf = 138544130;
    v25 = v4;
    v26 = 2048;
    v27 = version;
    v28 = 2048;
    v29 = minSupportedVersion;
    v30 = 2048;
    v31 = maxSupportedVersion;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loaded system domains versions from %{public}@: (%.1f,%.1f,%.1f)", buf, 0x2Au);
    v22 = v2->_maxSupportedVersion;
    v21 = *&v2->_version;
    _MBLog();
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

+ (id)defaultSystemDomainsVersions
{
  if (qword_100421978 != -1)
  {
    dispatch_once(&qword_100421978, &stru_1003C0748);
  }

  v3 = qword_100421980;

  return v3;
}

@end