@interface IMUnitTestBundleLoader
- (BOOL)loadTestBundle:(id)a3 bundle:(id *)a4 error:(id *)a5;
- (IMUnitTestBundleLoader)initWithLogger:(id)a3;
@end

@implementation IMUnitTestBundleLoader

- (IMUnitTestBundleLoader)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMUnitTestBundleLoader;
  v6 = [(IMUnitTestBundleLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (BOOL)loadTestBundle:(id)a3 bundle:(id *)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(IMUnitTestBundleLoader *)self logger];
  [v9 log:{@"Attempting to load bundle at path: '%@'", v8}];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 fileExistsAtPath:v8];

  if ((v11 & 1) == 0)
  {
    v17 = [(IMUnitTestBundleLoader *)self logger];
    [v17 log:{@"Bundle not found at path: '%@'", v8}];

    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bundle not found at path: '%@'", v8];
    v26[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v20];

    v13 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E696AAE8] bundleWithPath:v8];
  v24 = 0;
  v13 = [v12 loadAndReturnError:&v24];
  v14 = v24;
  if (v13)
  {
    if (a4)
    {
      v15 = v12;
      *a4 = v12;
    }

    v16 = [(IMUnitTestBundleLoader *)self logger];
    [v16 log:{@"Loaded bundle at path: '%@' ok", v8}];
  }

  else
  {
    v16 = [(IMUnitTestBundleLoader *)self logger];
    v21 = [v14 localizedDescription];
    [v16 log:{@"Unable to load bundle at path: '%@' with error: '%@'", v8, v21}];
  }

  if (a5)
  {
LABEL_10:
    v22 = v14;
    *a5 = v14;
  }

LABEL_11:

  return v13 & 1;
}

@end