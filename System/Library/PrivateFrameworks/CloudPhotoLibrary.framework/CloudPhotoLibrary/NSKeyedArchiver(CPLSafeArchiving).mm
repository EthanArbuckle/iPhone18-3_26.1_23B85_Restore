@interface NSKeyedArchiver(CPLSafeArchiving)
+ (id)cpl_archivedDataWithRootObject:()CPLSafeArchiving;
@end

@implementation NSKeyedArchiver(CPLSafeArchiving)

+ (id)cpl_archivedDataWithRootObject:()CPLSafeArchiving
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (!v4 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLArchiverOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Failed to create archiver for %@: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

@end