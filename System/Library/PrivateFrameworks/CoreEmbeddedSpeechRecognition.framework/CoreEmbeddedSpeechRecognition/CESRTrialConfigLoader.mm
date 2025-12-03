@interface CESRTrialConfigLoader
+ (id)_configPathForTrialFactor:(id)factor trialNamespace:(id)namespace;
+ (id)configAtPath:(id)path;
+ (id)configJSONForTrialFactor:(id)factor trialNamespace:(id)namespace;
@end

@implementation CESRTrialConfigLoader

+ (id)configAtPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([pathCopy length])
  {
    v4 = MEMORY[0x277CEF0E8];
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v18 = "+[CESRTrialConfigLoader configAtPath:]";
      v19 = 2112;
      v20 = pathCopy;
      _os_log_debug_impl(&dword_225EEB000, v5, OS_LOG_TYPE_DEBUG, "%s Trying to load trial config file at path: %@", buf, 0x16u);
    }

    v16 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:0 error:&v16];
    v7 = v16;
    if (v6)
    {
      v15 = v7;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v15];
      v9 = v15;

      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v12 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "+[CESRTrialConfigLoader configAtPath:]";
          v19 = 2112;
          v20 = v9;
          _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Failed to deserialize trial config file contents to json object: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "+[CESRTrialConfigLoader configAtPath:]";
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Failed to load trial config file: %@", buf, 0x16u);
      }

      v8 = 0;
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_configPathForTrialFactor:(id)factor trialNamespace:(id)namespace
{
  v5 = MEMORY[0x277D73660];
  namespaceCopy = namespace;
  factorCopy = factor;
  v8 = [v5 clientWithIdentifier:111];
  v9 = [v8 levelForFactor:factorCopy withNamespaceName:namespaceCopy];

  fileValue = [v9 fileValue];
  path = [fileValue path];

  return path;
}

+ (id)configJSONForTrialFactor:(id)factor trialNamespace:(id)namespace
{
  v4 = [CESRTrialConfigLoader _configPathForTrialFactor:factor trialNamespace:namespace];
  v5 = [CESRTrialConfigLoader configAtPath:v4];

  return v5;
}

@end