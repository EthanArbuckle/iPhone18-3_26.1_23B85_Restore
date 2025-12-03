@interface PrivacyProxyNetworkStatus
- (PrivacyProxyNetworkStatus)initWithCoder:(id)coder;
- (PrivacyProxyNetworkStatus)initWithData:(id)data;
- (PrivacyProxyNetworkStatus)initWithStatus:(unint64_t)status type:(int)type name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)networkStatusString;
- (id)networkTypeString;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PrivacyProxyNetworkStatus

- (id)networkStatusString
{
  networkStatus = [(PrivacyProxyNetworkStatus *)self networkStatus];
  if (networkStatus > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A30658[networkStatus];
  }
}

- (id)networkTypeString
{
  networkType = [(PrivacyProxyNetworkStatus *)self networkType];
  if (networkType > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A30670[networkType];
  }
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  networkStatusString = [(PrivacyProxyNetworkStatus *)self networkStatusString];
  [(NSMutableString *)v7 appendPrettyObject:networkStatusString withName:@"Network Status" andIndent:indent options:options];

  networkTypeString = [(PrivacyProxyNetworkStatus *)self networkTypeString];
  [(NSMutableString *)v7 appendPrettyObject:networkTypeString withName:@"Network Type" andIndent:indent options:options];

  networkName = [(PrivacyProxyNetworkStatus *)self networkName];
  [(NSMutableString *)v7 appendPrettyObject:networkName withName:@"Network Name" andIndent:indent options:options];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PrivacyProxyNetworkStatus allocWithZone:?]];
  [(PrivacyProxyNetworkStatus *)v4 setNetworkStatus:[(PrivacyProxyNetworkStatus *)self networkStatus]];
  [(PrivacyProxyNetworkStatus *)v4 setNetworkType:[(PrivacyProxyNetworkStatus *)self networkType]];
  networkName = [(PrivacyProxyNetworkStatus *)self networkName];
  [(PrivacyProxyNetworkStatus *)v4 setNetworkName:networkName];

  return v4;
}

- (PrivacyProxyNetworkStatus)initWithStatus:(unint64_t)status type:(int)type name:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = PrivacyProxyNetworkStatus;
  v10 = [(PrivacyProxyNetworkStatus *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_networkStatus = status;
    v10->_networkType = type;
    objc_storeStrong(&v10->_networkName, name);
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

- (PrivacyProxyNetworkStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PrivacyProxyNetworkStatus;
  v5 = [(PrivacyProxyNetworkStatus *)&v12 init];
  if (v5)
  {
    v5->_networkStatus = [coderCopy decodeIntForKey:@"PrivacyProxyNetworkStatus"];
    v5->_networkType = [coderCopy decodeIntForKey:@"PrivacyProxyNetworkType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkName"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[PrivacyProxyNetworkStatus networkStatus](self forKey:{"networkStatus"), @"PrivacyProxyNetworkStatus"}];
  [coderCopy encodeInt:-[PrivacyProxyNetworkStatus networkType](self forKey:{"networkType"), @"PrivacyProxyNetworkType"}];
  networkName = [(PrivacyProxyNetworkStatus *)self networkName];
  [coderCopy encodeObject:networkName forKey:@"PrivacyProxyNetworkName"];
}

- (id)serialize
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(PrivacyProxyNetworkStatus *)self encodeWithCoder:v3];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (PrivacyProxyNetworkStatus)initWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v16 = 0;
  v6 = [[v4 alloc] initForReadingFromData:dataCopy error:&v16];

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
    selfCopy = self;
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

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end