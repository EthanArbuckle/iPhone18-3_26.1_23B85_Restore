@interface CLLocation(CPLArchiver)
- (BOOL)cplSpecialIsEqual:()CPLArchiver;
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (uint64_t)initWithCPLArchiver:()CPLArchiver;
@end

@implementation CLLocation(CPLArchiver)

- (BOOL)cplSpecialIsEqual:()CPLArchiver
{
  v4 = a3;
  if (v4 == a1)
  {
    v10 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  [a1 coordinate];
  v6 = v5;
  v8 = v7;
  [v4 coordinate];
  v10 = 0;
  if (v6 != v11)
  {
    goto LABEL_12;
  }

  if (v8 != v9)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  [a1 altitude];
  v13 = v12;
  [v4 altitude];
  v10 = 0;
  if (v13 == v14)
  {
    [a1 horizontalAccuracy];
    v16 = v15;
    [v4 horizontalAccuracy];
    v10 = 0;
    if (v16 == v17)
    {
      [a1 verticalAccuracy];
      v19 = v18;
      [v4 verticalAccuracy];
      v10 = 0;
      if (v19 == v20)
      {
        [a1 course];
        v22 = v21;
        [v4 course];
        v10 = 0;
        if (v22 == v23)
        {
          [a1 speed];
          v25 = v24;
          [v4 speed];
          v10 = v25 == v26;
        }
      }
    }
  }

LABEL_12:

  return v10;
}

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
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@: Incorrect string for CLLocation. Found %@: '%@'", buf, 0x20u);
      }
    }

    v15 = v4[2];
    v16 = objc_opt_class();
    v23 = v4[2];
    _CPLArchiverFailure(v4, @"Incorrect string for CLLocation. Found %@: '%@'", v17, v18, v19, v20, v21, v22, v16);
  }

  v6 = [a1 initWithCoder:v4];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 archiveCursor];
  [v5 setArchiveCursor:v6];
  [a1 encodeWithCoder:v5];
  [v5 setArchiveCursor:v7];

  return v6;
}

@end