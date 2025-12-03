@interface CNUIPRSPosterArchiver
+ (id)archiveCNConfiguration:(id)configuration error:(id *)error;
+ (id)unarchiveCNConfigurationAtURL:(id)l error:(id *)error;
+ (id)unarchiveCNConfigurationFromData:(id)data error:(id *)error;
+ (id)uncachedUnarchiveCNConfigurationFromData:(id)data error:(id *)error;
@end

@implementation CNUIPRSPosterArchiver

+ (id)archiveCNConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  PRSPosterArchiverClass = getPRSPosterArchiverClass();
  wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];

  v8 = [PRSPosterArchiverClass archiveConfiguration:wrappedPosterConfiguration format:1 error:error];

  return v8;
}

+ (id)unarchiveCNConfigurationAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v12 = 0;
  v6 = [getPRSPosterArchiverClass() unarchiveConfigurationAtURL:lCopy format:-1 error:&v12];

  v7 = v12;
  if (v6)
  {
    v8 = [[CNUIPRSPosterConfiguration alloc] initWithPosterConfiguration:v6];
  }

  else
  {
    v9 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CNUIPRSPosterArchiver unarchiveCNConfigurationAtURL:v7 error:?];
    }

    if (error)
    {
      v10 = v7;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)unarchiveCNConfigurationFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = +[CNUICachingPosterArchiver sharedArchiver];
  v7 = [v6 unarchiveConfigurationFromData:dataCopy error:error];

  return v7;
}

+ (id)uncachedUnarchiveCNConfigurationFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ((*(*MEMORY[0x1E6996540] + 16))())
  {
    v6 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNUIPRSPosterArchiver uncachedUnarchiveCNConfigurationFromData:v6 error:?];
    }

    v7 = 0;
  }

  else
  {
    v12 = 0;
    v8 = [getPRSPosterArchiverClass() unarchiveConfigurationFromData:dataCopy format:-1 error:&v12];
    v6 = v12;
    if (v8)
    {
      v7 = [[CNUIPRSPosterConfiguration alloc] initWithPosterConfiguration:v8];
    }

    else
    {
      v9 = +[CNUICoreLogProvider posters_os_log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CNUIPRSPosterArchiver unarchiveCNConfigurationAtURL:v6 error:?];
      }

      if (error)
      {
        v10 = v6;
        v7 = 0;
        *error = v6;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

+ (void)unarchiveCNConfigurationAtURL:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_1A31E6000, v2, v3, "PRSPosterArchiver failed to unarchive configuration, %@", v4, v5, v6, v7, v8);
}

@end