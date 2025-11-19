@interface NSValue(CPLArchiver)
- (void)initWithCPLArchiver:()CPLArchiver;
- (void)plistArchiveWithCPLArchiver:()CPLArchiver;
@end

@implementation NSValue(CPLArchiver)

- (void)initWithCPLArchiver:()CPLArchiver
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138413058;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = objc_opt_class();
      v10 = v25;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%@: %@ %@ is not supported by %@", buf, 0x2Au);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  objc_opt_class();
  _CPLArchiverFailure(v4, @"%@ %@ is not supported by %@", v12, v13, v14, v15, v16, v17, v11);
}

- (void)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 archiverContext];
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138413058;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = objc_opt_class();
      v10 = v25;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%@: %@ %@ is not supported by %@", buf, 0x2Au);
    }
  }

  v11 = objc_opt_class();
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  objc_opt_class();
  _CPLArchiverFailure(v4, @"%@ %@ is not supported by %@", v12, v13, v14, v15, v16, v17, v11);
}

@end