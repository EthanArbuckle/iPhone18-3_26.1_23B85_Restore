@interface PrivacyProxyServiceStatusTime
- (PrivacyProxyServiceStatusTime)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)diagnostics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PrivacyProxyServiceStatusTime

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = [PrivacyProxyServiceStatus serviceStatusString:[(PrivacyProxyServiceStatusTime *)self serviceStatus]];
  [(NSMutableString *)v7 appendPrettyObject:v8 withName:@"Service Status" andIndent:indent options:options];

  v9 = MEMORY[0x1E696AB78];
  serviceStatusStartTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  v11 = [v9 localizedStringFromDate:serviceStatusStartTime dateStyle:1 timeStyle:2];
  [(NSMutableString *)v7 appendPrettyObject:v11 withName:@"Service Status Start Time" andIndent:indent options:options];

  v12 = MEMORY[0x1E696AB78];
  serviceStatusEndTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  v14 = [v12 localizedStringFromDate:serviceStatusEndTime dateStyle:1 timeStyle:2];
  [(NSMutableString *)v7 appendPrettyObject:v14 withName:@"Service Status End Time" andIndent:indent options:options];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PrivacyProxyServiceStatusTime allocWithZone:?]];
  [(PrivacyProxyServiceStatusTime *)v4 setServiceStatus:[(PrivacyProxyServiceStatusTime *)self serviceStatus]];
  serviceStatusStartTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  [(PrivacyProxyServiceStatusTime *)v4 setServiceStatusStartTime:serviceStatusStartTime];

  serviceStatusEndTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  [(PrivacyProxyServiceStatusTime *)v4 setServiceStatusEndTime:serviceStatusEndTime];

  return v4;
}

- (PrivacyProxyServiceStatusTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PrivacyProxyServiceStatusTime;
  v5 = [(PrivacyProxyServiceStatusTime *)&v14 init];
  if (v5)
  {
    v5->_serviceStatus = [coderCopy decodeIntForKey:@"PrivacyProxyServiceStatus"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyServiceStatusStartDate"];
    serviceStatusStartTime = v5->_serviceStatusStartTime;
    v5->_serviceStatusStartTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyServiceStatusEndDate"];
    serviceStatusEndTime = v5->_serviceStatusEndTime;
    v5->_serviceStatusEndTime = v8;

    v10 = v5;
  }

  else
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_FAULT, "[super init] failed", v13, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[PrivacyProxyServiceStatusTime serviceStatus](self forKey:{"serviceStatus"), @"PrivacyProxyServiceStatus"}];
  serviceStatusStartTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  [coderCopy encodeObject:serviceStatusStartTime forKey:@"PrivacyProxyServiceStatusStartDate"];

  serviceStatusEndTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  [coderCopy encodeObject:serviceStatusEndTime forKey:@"PrivacyProxyServiceStatusEndDate"];
}

- (id)diagnostics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [PrivacyProxyServiceStatus serviceStatusString:[(PrivacyProxyServiceStatusTime *)self serviceStatus]];
  [v3 setObject:v4 forKeyedSubscript:@"PrivacyProxyServiceStatus"];

  v5 = MEMORY[0x1E696AB78];
  serviceStatusStartTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  v7 = [v5 localizedStringFromDate:serviceStatusStartTime dateStyle:1 timeStyle:2];
  [v3 setObject:v7 forKeyedSubscript:@"PrivacyProxyServiceStatusStartDate"];

  v8 = MEMORY[0x1E696AB78];
  serviceStatusEndTime = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  v10 = [v8 localizedStringFromDate:serviceStatusEndTime dateStyle:1 timeStyle:2];
  [v3 setObject:v10 forKeyedSubscript:@"PrivacyProxyServiceStatusEndDate"];

  return v3;
}

@end