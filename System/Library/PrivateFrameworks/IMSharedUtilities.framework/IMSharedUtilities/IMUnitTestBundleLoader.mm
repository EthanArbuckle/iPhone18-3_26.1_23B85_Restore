@interface IMUnitTestBundleLoader
- (BOOL)loadTestBundle:(id)bundle bundle:(id *)a4 error:(id *)error;
- (IMUnitTestBundleLoader)initWithLogger:(id)logger;
@end

@implementation IMUnitTestBundleLoader

- (IMUnitTestBundleLoader)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v9.receiver = self;
  v9.super_class = IMUnitTestBundleLoader;
  v6 = [(IMUnitTestBundleLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
  }

  return v7;
}

- (BOOL)loadTestBundle:(id)bundle bundle:(id *)a4 error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  logger = [(IMUnitTestBundleLoader *)self logger];
  [logger log:{@"Attempting to load bundle at path: '%@'", bundleCopy}];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [defaultManager fileExistsAtPath:bundleCopy];

  if ((v11 & 1) == 0)
  {
    logger2 = [(IMUnitTestBundleLoader *)self logger];
    [logger2 log:{@"Bundle not found at path: '%@'", bundleCopy}];

    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    bundleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bundle not found at path: '%@'", bundleCopy];
    v26[0] = bundleCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v20];

    v13 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E696AAE8] bundleWithPath:bundleCopy];
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

    logger3 = [(IMUnitTestBundleLoader *)self logger];
    [logger3 log:{@"Loaded bundle at path: '%@' ok", bundleCopy}];
  }

  else
  {
    logger3 = [(IMUnitTestBundleLoader *)self logger];
    localizedDescription = [v14 localizedDescription];
    [logger3 log:{@"Unable to load bundle at path: '%@' with error: '%@'", bundleCopy, localizedDescription}];
  }

  if (error)
  {
LABEL_10:
    v22 = v14;
    *error = v14;
  }

LABEL_11:

  return v13 & 1;
}

@end