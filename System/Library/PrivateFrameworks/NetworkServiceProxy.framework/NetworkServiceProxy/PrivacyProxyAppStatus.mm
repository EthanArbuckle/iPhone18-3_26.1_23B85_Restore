@interface PrivacyProxyAppStatus
- (PrivacyProxyAppStatus)initWithCoder:(id)a3;
- (PrivacyProxyAppStatus)initWithStatus:(unint64_t)a3 bundleID:(id)a4 path:(id)a5 activeDate:(id)a6;
- (id)appStatusString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PrivacyProxyAppStatus

- (id)appStatusString
{
  v2 = [(PrivacyProxyAppStatus *)self appStatus];
  if (v2 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A306D8[v2];
  }
}

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = [(PrivacyProxyAppStatus *)self appStatusString];
  [(NSMutableString *)v7 appendPrettyObject:v8 withName:@"App Status" andIndent:a3 options:a4];

  v9 = [(PrivacyProxyAppStatus *)self bundleIdentifier];
  [(NSMutableString *)v7 appendPrettyObject:v9 withName:@"Bundle ID" andIndent:a3 options:a4];

  v10 = [(PrivacyProxyAppStatus *)self path];
  [(NSMutableString *)v7 appendPrettyObject:v10 withName:@"Path" andIndent:a3 options:a4];

  v11 = [(PrivacyProxyAppStatus *)self activeDate];
  [(NSMutableString *)v7 appendPrettyObject:v11 withName:@"Active Date" andIndent:a3 options:a4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PrivacyProxyAppStatus allocWithZone:?]];
  [(PrivacyProxyAppStatus *)v4 setAppStatus:[(PrivacyProxyAppStatus *)self appStatus]];
  v5 = [(PrivacyProxyAppStatus *)self bundleIdentifier];
  [(PrivacyProxyAppStatus *)v4 setBundleIdentifier:v5];

  v6 = [(PrivacyProxyAppStatus *)self path];
  [(PrivacyProxyAppStatus *)v4 setPath:v6];

  v7 = [(PrivacyProxyAppStatus *)self activeDate];
  [(PrivacyProxyAppStatus *)v4 setActiveDate:v7];

  return v4;
}

- (PrivacyProxyAppStatus)initWithStatus:(unint64_t)a3 bundleID:(id)a4 path:(id)a5 activeDate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PrivacyProxyAppStatus;
  v14 = [(PrivacyProxyAppStatus *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_appStatus = a3;
    objc_storeStrong(&v14->_bundleIdentifier, a4);
    objc_storeStrong(&v15->_path, a5);
    objc_storeStrong(&v15->_activeDate, a6);
    v16 = v15;
  }

  else
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *v19 = 0;
      _os_log_fault_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_FAULT, "[super init] failed", v19, 2u);
    }
  }

  return v15;
}

- (PrivacyProxyAppStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PrivacyProxyAppStatus;
  v5 = [(PrivacyProxyAppStatus *)&v16 init];
  if (v5)
  {
    v5->_appStatus = [v4 decodeIntForKey:@"PrivacyProxyAppStatus"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyAppBundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyAppPath"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyAppActiveDate"];
    activeDate = v5->_activeDate;
    v5->_activeDate = v10;

    v12 = v5;
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_FAULT, "[super init] failed", v15, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[PrivacyProxyAppStatus appStatus](self forKey:{"appStatus"), @"PrivacyProxyAppStatus"}];
  v5 = [(PrivacyProxyAppStatus *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"PrivacyProxyAppBundleID"];

  v6 = [(PrivacyProxyAppStatus *)self path];
  [v4 encodeObject:v6 forKey:@"PrivacyProxyAppPath"];

  v7 = [(PrivacyProxyAppStatus *)self activeDate];
  [v4 encodeObject:v7 forKey:@"PrivacyProxyAppActiveDate"];
}

@end