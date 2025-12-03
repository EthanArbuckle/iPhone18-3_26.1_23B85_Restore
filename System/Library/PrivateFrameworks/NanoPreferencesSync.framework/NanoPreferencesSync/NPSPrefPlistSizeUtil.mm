@interface NPSPrefPlistSizeUtil
+ (id)_domainPlistPathFor:(id)for inContainer:(id)container;
+ (unint64_t)prefSizeFor:(id)for inContainer:(id)container;
+ (unint64_t)sizeForPlistAtPath:(id)path;
@end

@implementation NPSPrefPlistSizeUtil

+ (unint64_t)sizeForPlistAtPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy || ([MEMORY[0x1E696AC08] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", pathCopy), v4, !v5))
  {
    v11 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = pathCopy;
      _os_log_impl(&dword_1C0D93000, v11, OS_LOG_TYPE_DEFAULT, "Unable to locate prefs for domain %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v7 = [defaultManager attributesOfItemAtPath:pathCopy error:&v17];
  v8 = v17;

  if (!v7 || v8)
  {
    v12 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      localizedDescription = [v8 localizedDescription];
      *buf = 138412546;
      v19 = pathCopy;
      v20 = 2112;
      v21 = localizedDescription;
      _os_log_impl(&dword_1C0D93000, v13, OS_LOG_TYPE_DEFAULT, "Unable to extract attributes for %@ : %@", buf, 0x16u);
    }

LABEL_11:
    unsignedLongLongValue = 0;
    goto LABEL_12;
  }

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
  return unsignedLongLongValue;
}

+ (unint64_t)prefSizeFor:(id)for inContainer:(id)container
{
  v5 = [self _domainPlistPathFor:for inContainer:container];
  v6 = [self sizeForPlistAtPath:v5];

  return v6;
}

+ (id)_domainPlistPathFor:(id)for inContainer:(id)container
{
  v21 = *MEMORY[0x1E69E9840];
  forCopy = for;
  containerCopy = container;
  v7 = [@"/" stringByAppendingPathComponent:@"var/mobile"];
  if (containerCopy)
  {
    v8 = [containerCopy copy];

    v7 = v8;
  }

  v9 = [v7 stringByAppendingPathComponent:@"Library/Preferences"];

  v10 = [forCopy stringByAppendingString:@".plist"];
  v11 = [v9 stringByAppendingPathComponent:v10];

  v12 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = forCopy;
    v17 = 2112;
    v18 = containerCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_1C0D93000, v12, OS_LOG_TYPE_DEFAULT, "Domain: %@ Container: %@ Path: %@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

@end