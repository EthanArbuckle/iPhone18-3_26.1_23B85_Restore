@interface PrivacyProxyServiceStatusTime
- (PrivacyProxyServiceStatusTime)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (id)diagnostics;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PrivacyProxyServiceStatusTime

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = [PrivacyProxyServiceStatus serviceStatusString:[(PrivacyProxyServiceStatusTime *)self serviceStatus]];
  [(NSMutableString *)v7 appendPrettyObject:v8 withName:@"Service Status" andIndent:a3 options:a4];

  v9 = MEMORY[0x1E696AB78];
  v10 = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  v11 = [v9 localizedStringFromDate:v10 dateStyle:1 timeStyle:2];
  [(NSMutableString *)v7 appendPrettyObject:v11 withName:@"Service Status Start Time" andIndent:a3 options:a4];

  v12 = MEMORY[0x1E696AB78];
  v13 = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  v14 = [v12 localizedStringFromDate:v13 dateStyle:1 timeStyle:2];
  [(NSMutableString *)v7 appendPrettyObject:v14 withName:@"Service Status End Time" andIndent:a3 options:a4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PrivacyProxyServiceStatusTime allocWithZone:?]];
  [(PrivacyProxyServiceStatusTime *)v4 setServiceStatus:[(PrivacyProxyServiceStatusTime *)self serviceStatus]];
  v5 = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  [(PrivacyProxyServiceStatusTime *)v4 setServiceStatusStartTime:v5];

  v6 = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  [(PrivacyProxyServiceStatusTime *)v4 setServiceStatusEndTime:v6];

  return v4;
}

- (PrivacyProxyServiceStatusTime)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PrivacyProxyServiceStatusTime;
  v5 = [(PrivacyProxyServiceStatusTime *)&v14 init];
  if (v5)
  {
    v5->_serviceStatus = [v4 decodeIntForKey:@"PrivacyProxyServiceStatus"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyServiceStatusStartDate"];
    serviceStatusStartTime = v5->_serviceStatusStartTime;
    v5->_serviceStatusStartTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyServiceStatusEndDate"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[PrivacyProxyServiceStatusTime serviceStatus](self forKey:{"serviceStatus"), @"PrivacyProxyServiceStatus"}];
  v5 = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  [v4 encodeObject:v5 forKey:@"PrivacyProxyServiceStatusStartDate"];

  v6 = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  [v4 encodeObject:v6 forKey:@"PrivacyProxyServiceStatusEndDate"];
}

- (id)diagnostics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [PrivacyProxyServiceStatus serviceStatusString:[(PrivacyProxyServiceStatusTime *)self serviceStatus]];
  [v3 setObject:v4 forKeyedSubscript:@"PrivacyProxyServiceStatus"];

  v5 = MEMORY[0x1E696AB78];
  v6 = [(PrivacyProxyServiceStatusTime *)self serviceStatusStartTime];
  v7 = [v5 localizedStringFromDate:v6 dateStyle:1 timeStyle:2];
  [v3 setObject:v7 forKeyedSubscript:@"PrivacyProxyServiceStatusStartDate"];

  v8 = MEMORY[0x1E696AB78];
  v9 = [(PrivacyProxyServiceStatusTime *)self serviceStatusEndTime];
  v10 = [v8 localizedStringFromDate:v9 dateStyle:1 timeStyle:2];
  [v3 setObject:v10 forKeyedSubscript:@"PrivacyProxyServiceStatusEndDate"];

  return v3;
}

@end