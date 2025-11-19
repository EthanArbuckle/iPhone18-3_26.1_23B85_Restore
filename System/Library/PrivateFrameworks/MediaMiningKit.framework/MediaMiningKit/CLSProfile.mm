@interface CLSProfile
+ (id)classIdentifier;
+ (id)identifier;
+ (id)informantDependenciesIdentifiers;
+ (id)profileDependenciesIdentifiers;
+ (id)supportedMeaningClueKeys;
- (CLSProfile)init;
- (id)description;
- (id)uniqueIdentifier;
@end

@implementation CLSProfile

- (id)uniqueIdentifier
{
  v3 = [objc_opt_class() identifier];
  v4 = [v3 stringByAppendingFormat:@".%@", self->_uuid];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCAB68];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<Profile> [%@]", v4];

  return v5;
}

- (CLSProfile)init
{
  v6.receiver = self;
  v6.super_class = CLSProfile;
  v2 = [(CLSProfile *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] cls_generateUUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

+ (id)supportedMeaningClueKeys
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, v4, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return 0;
}

+ (id)profileDependenciesIdentifiers
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, v4, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return MEMORY[0x277CBEBF8];
}

+ (id)informantDependenciesIdentifiers
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, v4, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return MEMORY[0x277CBEBF8];
}

+ (id)identifier
{
  v2 = [objc_opt_class() classIdentifier];
  v3 = [@"com.apple.mediaminingkit.profile" stringByAppendingFormat:@".%@", v2];

  return v3;
}

+ (id)classIdentifier
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[CLSLogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_22F907000, v4, OS_LOG_TYPE_ERROR, "%@ %@ MUST be subclassed", &v9, 0x16u);
  }

  return @"unknown";
}

@end