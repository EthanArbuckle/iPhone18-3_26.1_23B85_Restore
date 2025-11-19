@interface NPSPrefPlistSizeUtil
+ (id)_domainPlistPathFor:(id)a3 inContainer:(id)a4;
+ (unint64_t)prefSizeFor:(id)a3 inContainer:(id)a4;
+ (unint64_t)sizeForPlistAtPath:(id)a3;
@end

@implementation NPSPrefPlistSizeUtil

+ (unint64_t)sizeForPlistAtPath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 || ([MEMORY[0x1E696AC08] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", v3), v4, !v5))
  {
    v11 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1C0D93000, v11, OS_LOG_TYPE_DEFAULT, "Unable to locate prefs for domain %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v7 = [v6 attributesOfItemAtPath:v3 error:&v17];
  v8 = v17;

  if (!v7 || v8)
  {
    v12 = nps_framework_log;
    if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v8 localizedDescription];
      *buf = 138412546;
      v19 = v3;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1C0D93000, v13, OS_LOG_TYPE_DEFAULT, "Unable to extract attributes for %@ : %@", buf, 0x16u);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  v10 = [v9 unsignedLongLongValue];

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (unint64_t)prefSizeFor:(id)a3 inContainer:(id)a4
{
  v5 = [a1 _domainPlistPathFor:a3 inContainer:a4];
  v6 = [a1 sizeForPlistAtPath:v5];

  return v6;
}

+ (id)_domainPlistPathFor:(id)a3 inContainer:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [@"/" stringByAppendingPathComponent:@"var/mobile"];
  if (v6)
  {
    v8 = [v6 copy];

    v7 = v8;
  }

  v9 = [v7 stringByAppendingPathComponent:@"Library/Preferences"];

  v10 = [v5 stringByAppendingString:@".plist"];
  v11 = [v9 stringByAppendingPathComponent:v10];

  v12 = nps_framework_log;
  if (os_log_type_enabled(nps_framework_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_1C0D93000, v12, OS_LOG_TYPE_DEFAULT, "Domain: %@ Container: %@ Path: %@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

@end