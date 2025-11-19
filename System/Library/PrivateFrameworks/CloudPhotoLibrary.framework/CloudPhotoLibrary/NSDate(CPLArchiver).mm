@interface NSDate(CPLArchiver)
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (uint64_t)initWithCPLArchiver:()CPLArchiver;
@end

@implementation NSDate(CPLArchiver)

- (uint64_t)initWithCPLArchiver:()CPLArchiver
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v4 archiverContext];
        v11 = v4[2];
        v12 = objc_opt_class();
        v13 = v4[2];
        *buf = 138412802;
        v25 = v10;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v14 = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@: Incorrect number for NSDate. Found %@: '%@'", buf, 0x20u);
      }
    }

    v15 = v4[2];
    v16 = objc_opt_class();
    v23 = v4[2];
    _CPLArchiverFailure(v4, @"Incorrect number for NSDate. Found %@: '%@'", v17, v18, v19, v20, v21, v22, v16);
  }

  [v4[2] doubleValue];
  v6 = [a1 initWithTimeIntervalSinceReferenceDate:?];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  if ([a3 forDisplay])
  {
    [a1 description];
  }

  else
  {
    v5 = MEMORY[0x1E696AD98];
    [a1 timeIntervalSinceReferenceDate];
    [v5 numberWithDouble:?];
  }
  v4 = ;

  return v4;
}

@end