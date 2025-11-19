@interface PBCodable(CPLArchiver)
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (uint64_t)initWithCPLArchiver:()CPLArchiver;
@end

@implementation PBCodable(CPLArchiver)

- (uint64_t)initWithCPLArchiver:()CPLArchiver
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v4 archiverContext];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = v4[2];
        v16 = objc_opt_class();
        v17 = v4[2];
        *buf = 138413058;
        v30 = v12;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        v18 = v16;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@: Incorrect string for %@. Found %@: '%@'", buf, 0x2Au);
      }
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = v4[2];
    objc_opt_class();
    v28 = v4[2];
    _CPLArchiverFailure(v4, @"Incorrect string for %@. Found %@: '%@'", v22, v23, v24, v25, v26, v27, v20);
  }

  v6 = objc_opt_class();
  v7 = [(CPLArchiver *)v4 _decodeKey:v6 class:v4[2] inDictionary:?];
  v8 = [a1 initWithData:v7];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 data];
  v8 = [(CPLArchiver *)v5 _encodeKey:?];

  [v6 setObject:v7 forKeyedSubscript:v8];

  return v6;
}

@end