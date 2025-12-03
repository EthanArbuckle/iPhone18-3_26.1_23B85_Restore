@interface PrivacyProxyAppStatus
- (PrivacyProxyAppStatus)initWithCoder:(id)coder;
- (PrivacyProxyAppStatus)initWithStatus:(unint64_t)status bundleID:(id)d path:(id)path activeDate:(id)date;
- (id)appStatusString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PrivacyProxyAppStatus

- (id)appStatusString
{
  appStatus = [(PrivacyProxyAppStatus *)self appStatus];
  if (appStatus > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A306D8[appStatus];
  }
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  appStatusString = [(PrivacyProxyAppStatus *)self appStatusString];
  [(NSMutableString *)v7 appendPrettyObject:appStatusString withName:@"App Status" andIndent:indent options:options];

  bundleIdentifier = [(PrivacyProxyAppStatus *)self bundleIdentifier];
  [(NSMutableString *)v7 appendPrettyObject:bundleIdentifier withName:@"Bundle ID" andIndent:indent options:options];

  path = [(PrivacyProxyAppStatus *)self path];
  [(NSMutableString *)v7 appendPrettyObject:path withName:@"Path" andIndent:indent options:options];

  activeDate = [(PrivacyProxyAppStatus *)self activeDate];
  [(NSMutableString *)v7 appendPrettyObject:activeDate withName:@"Active Date" andIndent:indent options:options];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PrivacyProxyAppStatus allocWithZone:?]];
  [(PrivacyProxyAppStatus *)v4 setAppStatus:[(PrivacyProxyAppStatus *)self appStatus]];
  bundleIdentifier = [(PrivacyProxyAppStatus *)self bundleIdentifier];
  [(PrivacyProxyAppStatus *)v4 setBundleIdentifier:bundleIdentifier];

  path = [(PrivacyProxyAppStatus *)self path];
  [(PrivacyProxyAppStatus *)v4 setPath:path];

  activeDate = [(PrivacyProxyAppStatus *)self activeDate];
  [(PrivacyProxyAppStatus *)v4 setActiveDate:activeDate];

  return v4;
}

- (PrivacyProxyAppStatus)initWithStatus:(unint64_t)status bundleID:(id)d path:(id)path activeDate:(id)date
{
  dCopy = d;
  pathCopy = path;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = PrivacyProxyAppStatus;
  v14 = [(PrivacyProxyAppStatus *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_appStatus = status;
    objc_storeStrong(&v14->_bundleIdentifier, d);
    objc_storeStrong(&v15->_path, path);
    objc_storeStrong(&v15->_activeDate, date);
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

- (PrivacyProxyAppStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PrivacyProxyAppStatus;
  v5 = [(PrivacyProxyAppStatus *)&v16 init];
  if (v5)
  {
    v5->_appStatus = [coderCopy decodeIntForKey:@"PrivacyProxyAppStatus"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyAppBundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyAppPath"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyAppActiveDate"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[PrivacyProxyAppStatus appStatus](self forKey:{"appStatus"), @"PrivacyProxyAppStatus"}];
  bundleIdentifier = [(PrivacyProxyAppStatus *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"PrivacyProxyAppBundleID"];

  path = [(PrivacyProxyAppStatus *)self path];
  [coderCopy encodeObject:path forKey:@"PrivacyProxyAppPath"];

  activeDate = [(PrivacyProxyAppStatus *)self activeDate];
  [coderCopy encodeObject:activeDate forKey:@"PrivacyProxyAppActiveDate"];
}

@end