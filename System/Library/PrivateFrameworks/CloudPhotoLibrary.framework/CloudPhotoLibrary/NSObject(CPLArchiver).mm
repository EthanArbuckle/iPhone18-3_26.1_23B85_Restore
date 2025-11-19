@interface NSObject(CPLArchiver)
- (NSString)storedClassNameForCPLArchiver:()CPLArchiver;
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (void)initWithCPLArchiver:()CPLArchiver;
@end

@implementation NSObject(CPLArchiver)

- (void)initWithCPLArchiver:()CPLArchiver
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 archiverContext];
        v12 = v4[2];
        v13 = objc_opt_class();
        v14 = v4[2];
        *buf = 138412802;
        v26 = v11;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        v15 = v13;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@: Invalid object properties dictionary. Found %@ in archive: '%@'", buf, 0x20u);
      }
    }

    v16 = v4[2];
    v17 = objc_opt_class();
    v24 = v4[2];
    _CPLArchiverFailure(v4, @"Invalid object properties dictionary. Found %@ in archive: '%@'", v18, v19, v20, v21, v22, v23, v17);
  }

  v6 = [a1 init];
  v7 = v6;
  if (v6)
  {
    [v6 cplDecodePropertiesFromCoder:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = v5[2];
  objc_storeStrong(v5 + 2, v6);
  v8 = v5[5];
  v9 = v5[4];
  v10 = objc_opt_class();
  v8(v9, sel_addObject_, v10);
  [a1 cplEncodePropertiesWithCoder:v5];
  (v5[6])(v5[4], sel_removeLastObject);
  v11 = v5[2];
  v5[2] = v7;
  v12 = v7;

  return v6;
}

- (NSString)storedClassNameForCPLArchiver:()CPLArchiver
{
  v1 = [a1 classForCoder];

  return NSStringFromClass(v1);
}

@end