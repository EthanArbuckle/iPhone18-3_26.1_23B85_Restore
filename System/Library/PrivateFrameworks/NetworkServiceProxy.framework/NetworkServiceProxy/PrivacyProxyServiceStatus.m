@interface PrivacyProxyServiceStatus
+ (id)serviceStatusString:(unint64_t)a3;
- (PrivacyProxyServiceStatus)initWithCoder:(id)a3;
- (PrivacyProxyServiceStatus)initWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PrivacyProxyServiceStatus

- (id)serialize
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(PrivacyProxyServiceStatus *)self encodeWithCoder:v3];
  v4 = [v3 encodedData];

  return v4;
}

+ (id)serviceStatusString:(unint64_t)a3
{
  if (a3 > 7)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A30698[a3];
  }
}

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = [PrivacyProxyServiceStatus serviceStatusString:[(PrivacyProxyServiceStatus *)self serviceStatus]];
  [(NSMutableString *)v7 appendPrettyObject:v8 withName:@"Service Status" andIndent:a3 options:a4];

  v9 = [(PrivacyProxyServiceStatus *)self networkStatuses];
  [(NSMutableString *)v7 appendPrettyObject:v9 withName:@"Network Statuses" andIndent:a3 options:a4];

  v10 = [(PrivacyProxyServiceStatus *)self details];
  [(NSMutableString *)v7 appendPrettyObject:v10 withName:@"Details" andIndent:a3 options:a4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PrivacyProxyServiceStatus allocWithZone:?]];
  [(PrivacyProxyServiceStatus *)v4 setServiceStatus:[(PrivacyProxyServiceStatus *)self serviceStatus]];
  v5 = [(PrivacyProxyServiceStatus *)self networkStatuses];
  [(PrivacyProxyServiceStatus *)v4 setNetworkStatuses:v5];

  v6 = [(PrivacyProxyServiceStatus *)self details];
  v7 = [v6 copy];
  [(PrivacyProxyServiceStatus *)v4 setDetails:v7];

  return v4;
}

- (PrivacyProxyServiceStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PrivacyProxyServiceStatus;
  v5 = [(PrivacyProxyServiceStatus *)&v23 init];
  if (v5)
  {
    v5->_serviceStatus = [v4 decodeIntForKey:@"PrivacyProxyServiceStatus"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"PrivacyProxyNetworkStatuses"];
    networkStatuses = v5->_networkStatuses;
    v5->_networkStatuses = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 initWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"PrivacyProxyDetails"];
    details = v5->_details;
    v5->_details = v18;

    v20 = v5;
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[PrivacyProxyServiceStatus serviceStatus](self forKey:{"serviceStatus"), @"PrivacyProxyServiceStatus"}];
  v5 = [(PrivacyProxyServiceStatus *)self networkStatuses];
  [v4 encodeObject:v5 forKey:@"PrivacyProxyNetworkStatuses"];

  v6 = [(PrivacyProxyServiceStatus *)self details];
  [v4 encodeObject:v6 forKey:@"PrivacyProxyDetails"];
}

- (PrivacyProxyServiceStatus)initWithData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v16 = 0;
  v6 = [[v4 alloc] initForReadingFromData:v5 error:&v16];

  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v15.receiver = self;
    v15.super_class = PrivacyProxyServiceStatus;
    v12 = [(PrivacyProxyServiceStatus *)&v15 init];
    if (v12)
    {
      v12 = [(PrivacyProxyServiceStatus *)v12 initWithCoder:v6];
    }

    self = v12;
    v11 = self;
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the service status %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end