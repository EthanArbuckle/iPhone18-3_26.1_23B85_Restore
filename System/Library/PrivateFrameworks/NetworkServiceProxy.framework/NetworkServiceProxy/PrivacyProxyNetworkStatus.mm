@interface PrivacyProxyNetworkStatus
- (PrivacyProxyNetworkStatus)initWithCoder:(id)a3;
- (PrivacyProxyNetworkStatus)initWithData:(id)a3;
- (PrivacyProxyNetworkStatus)initWithStatus:(unint64_t)a3 type:(int)a4 name:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (id)networkStatusString;
- (id)networkTypeString;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PrivacyProxyNetworkStatus

- (id)networkStatusString
{
  v2 = [(PrivacyProxyNetworkStatus *)self networkStatus];
  if (v2 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A30658[v2];
  }
}

- (id)networkTypeString
{
  v2 = [(PrivacyProxyNetworkStatus *)self networkType];
  if (v2 > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A30670[v2];
  }
}

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = [(PrivacyProxyNetworkStatus *)self networkStatusString];
  [(NSMutableString *)v7 appendPrettyObject:v8 withName:@"Network Status" andIndent:a3 options:a4];

  v9 = [(PrivacyProxyNetworkStatus *)self networkTypeString];
  [(NSMutableString *)v7 appendPrettyObject:v9 withName:@"Network Type" andIndent:a3 options:a4];

  v10 = [(PrivacyProxyNetworkStatus *)self networkName];
  [(NSMutableString *)v7 appendPrettyObject:v10 withName:@"Network Name" andIndent:a3 options:a4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PrivacyProxyNetworkStatus allocWithZone:?]];
  [(PrivacyProxyNetworkStatus *)v4 setNetworkStatus:[(PrivacyProxyNetworkStatus *)self networkStatus]];
  [(PrivacyProxyNetworkStatus *)v4 setNetworkType:[(PrivacyProxyNetworkStatus *)self networkType]];
  v5 = [(PrivacyProxyNetworkStatus *)self networkName];
  [(PrivacyProxyNetworkStatus *)v4 setNetworkName:v5];

  return v4;
}

- (PrivacyProxyNetworkStatus)initWithStatus:(unint64_t)a3 type:(int)a4 name:(id)a5
{
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PrivacyProxyNetworkStatus;
  v10 = [(PrivacyProxyNetworkStatus *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_networkStatus = a3;
    v10->_networkType = a4;
    objc_storeStrong(&v10->_networkName, a5);
    v12 = v11;
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

  return v11;
}

- (PrivacyProxyNetworkStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PrivacyProxyNetworkStatus;
  v5 = [(PrivacyProxyNetworkStatus *)&v12 init];
  if (v5)
  {
    v5->_networkStatus = [v4 decodeIntForKey:@"PrivacyProxyNetworkStatus"];
    v5->_networkType = [v4 decodeIntForKey:@"PrivacyProxyNetworkType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkName"];
    networkName = v5->_networkName;
    v5->_networkName = v6;

    v8 = v5;
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, "[super init] failed", v11, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[PrivacyProxyNetworkStatus networkStatus](self forKey:{"networkStatus"), @"PrivacyProxyNetworkStatus"}];
  [v4 encodeInt:-[PrivacyProxyNetworkStatus networkType](self forKey:{"networkType"), @"PrivacyProxyNetworkType"}];
  v5 = [(PrivacyProxyNetworkStatus *)self networkName];
  [v4 encodeObject:v5 forKey:@"PrivacyProxyNetworkName"];
}

- (id)serialize
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(PrivacyProxyNetworkStatus *)self encodeWithCoder:v3];
  v4 = [v3 encodedData];

  return v4;
}

- (PrivacyProxyNetworkStatus)initWithData:(id)a3
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
    v15.super_class = PrivacyProxyNetworkStatus;
    v12 = [(PrivacyProxyNetworkStatus *)&v15 init];
    if (v12)
    {
      v12 = [(PrivacyProxyNetworkStatus *)v12 initWithCoder:v6];
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
      _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the network status %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end