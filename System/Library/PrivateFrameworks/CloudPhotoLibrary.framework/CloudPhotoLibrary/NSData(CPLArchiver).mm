@interface NSData(CPLArchiver)
- (id)initWithCPLArchiver:()CPLArchiver;
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
@end

@implementation NSData(CPLArchiver)

- (id)initWithCPLArchiver:()CPLArchiver
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 init];
  v6 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 archiverContext];
        v12 = objc_opt_class();
        v13 = v4[2];
        v14 = v12;
        v15 = objc_opt_class();
        v16 = v4[2];
        *buf = 138413058;
        v28 = v11;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        v17 = v15;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@: Invalid %@. Found %@ in archive: '%@'", buf, 0x2Au);
      }
    }

    v18 = objc_opt_class();
    v19 = v4[2];
    objc_opt_class();
    v26 = v4[2];
    _CPLArchiverFailure(v4, @"Invalid %@. Found %@ in archive: '%@'", v20, v21, v22, v23, v24, v25, v18);
  }

  v7 = v4[2];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  if ([a3 forDisplay])
  {
    v4 = [a1 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

@end