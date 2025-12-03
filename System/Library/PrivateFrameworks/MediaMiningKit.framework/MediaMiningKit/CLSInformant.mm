@interface CLSInformant
+ (id)classIdentifier;
+ (id)familyIdentifier;
+ (id)identifier;
+ (id)informantDependenciesIdentifiers;
+ (id)supportedOutputClueKeys;
- (CLSInformant)init;
- (id)uniqueIdentifier;
@end

@implementation CLSInformant

- (id)uniqueIdentifier
{
  identifier = [objc_opt_class() identifier];
  v4 = [identifier stringByAppendingFormat:@".%@", self->_uuid];

  return v4;
}

- (CLSInformant)init
{
  v6.receiver = self;
  v6.super_class = CLSInformant;
  v2 = [(CLSInformant *)&v6 init];
  if (v2)
  {
    cls_generateUUID = [MEMORY[0x277CCACA8] cls_generateUUID];
    uuid = v2->_uuid;
    v2->_uuid = cls_generateUUID;
  }

  return v2;
}

+ (id)supportedOutputClueKeys
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  loggingConnection = [v3 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return 0;
}

+ (id)informantDependenciesIdentifiers
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  loggingConnection = [v3 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return MEMORY[0x277CBEBF8];
}

+ (id)identifier
{
  familyIdentifier = [objc_opt_class() familyIdentifier];
  classIdentifier = [objc_opt_class() classIdentifier];
  v4 = [familyIdentifier stringByAppendingFormat:@".%@", classIdentifier];

  return v4;
}

+ (id)classIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  loggingConnection = [v3 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return @"unknown";
}

+ (id)familyIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  loggingConnection = [v3 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return @"com.apple.mediaminingkit.informant.unknown";
}

@end