@interface CNUIPRSPosterArchiver
+ (id)archiveCNConfiguration:(id)a3 error:(id *)a4;
+ (id)unarchiveCNConfigurationAtURL:(id)a3 error:(id *)a4;
+ (id)unarchiveCNConfigurationFromData:(id)a3 error:(id *)a4;
+ (id)uncachedUnarchiveCNConfigurationFromData:(id)a3 error:(id *)a4;
@end

@implementation CNUIPRSPosterArchiver

+ (id)archiveCNConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  PRSPosterArchiverClass = getPRSPosterArchiverClass();
  v7 = [v5 wrappedPosterConfiguration];

  v8 = [PRSPosterArchiverClass archiveConfiguration:v7 format:1 error:a4];

  return v8;
}

+ (id)unarchiveCNConfigurationAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  v6 = [getPRSPosterArchiverClass() unarchiveConfigurationAtURL:v5 format:-1 error:&v12];

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

    if (a4)
    {
      v10 = v7;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)unarchiveCNConfigurationFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNUICachingPosterArchiver sharedArchiver];
  v7 = [v6 unarchiveConfigurationFromData:v5 error:a4];

  return v7;
}

+ (id)uncachedUnarchiveCNConfigurationFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
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
    v8 = [getPRSPosterArchiverClass() unarchiveConfigurationFromData:v5 format:-1 error:&v12];
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

      if (a4)
      {
        v10 = v6;
        v7 = 0;
        *a4 = v6;
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