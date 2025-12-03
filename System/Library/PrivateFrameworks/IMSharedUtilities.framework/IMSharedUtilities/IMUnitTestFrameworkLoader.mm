@interface IMUnitTestFrameworkLoader
- (BOOL)findFrameworkPathsWithFrameworkNames:(id)names searchPaths:(id)paths outFrameworkPaths:(id *)frameworkPaths error:(id *)error;
- (BOOL)frameworkExistsAtPath:(id)path;
- (BOOL)loadFrameworkNamesFromTextFile:(id)file outNames:(id *)names error:(id *)error;
- (BOOL)loadFrameworks:(id)frameworks outError:(id *)error;
- (BOOL)loadTestFrameworks:(id *)frameworks;
- (BOOL)loadXCTestFramework:(id *)framework;
- (BOOL)loadXCTestFrameworkFromSDK:(id *)k;
- (BOOL)readXCTestFrameworkDependencies:(id *)dependencies error:(id *)error;
- (IMUnitTestFrameworkLoader)initWithLogger:(id)logger bundleLoader:(id)loader;
@end

@implementation IMUnitTestFrameworkLoader

- (IMUnitTestFrameworkLoader)initWithLogger:(id)logger bundleLoader:(id)loader
{
  loggerCopy = logger;
  loaderCopy = loader;
  v12.receiver = self;
  v12.super_class = IMUnitTestFrameworkLoader;
  v9 = [(IMUnitTestFrameworkLoader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, logger);
    objc_storeStrong(&v10->_bundleLoader, loader);
  }

  return v10;
}

- (BOOL)loadFrameworkNamesFromTextFile:(id)file outNames:(id *)names error:(id *)error
{
  v8 = MEMORY[0x1E696AEC0];
  v22 = 0;
  fileCopy = file;
  v10 = [v8 stringWithContentsOfFile:fileCopy encoding:4 error:&v22];
  v11 = v22;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    logger = [(IMUnitTestFrameworkLoader *)self logger];
    [logger log:{@"Loaded dependencies from file at path: '%@'\n%@", fileCopy, v10}];

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v19 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    logger2 = [v19 componentsSeparatedByString:@"\n"];

    v16 = logger2 != 0;
    if (names && logger2)
    {
      v20 = logger2;
      *names = logger2;
      v16 = 1;
    }
  }

  else
  {
    if (error)
    {
      v14 = v11;
      *error = v12;
    }

    logger2 = [(IMUnitTestFrameworkLoader *)self logger];
    [logger2 log:{@"Unable to load framework dependencies from file at path: '%@', error = %@", fileCopy, v12}];

    v16 = 0;
  }

  return v16;
}

- (BOOL)readXCTestFrameworkDependencies:(id *)dependencies error:(id *)error
{
  v7 = [@"/AppleInternal/XCTests/com.apple.imcore/Frameworks" stringByAppendingPathComponent:@"XCTest-framework-list.txt"];
  LOBYTE(error) = [(IMUnitTestFrameworkLoader *)self loadFrameworkNamesFromTextFile:v7 outNames:dependencies error:error];

  return error;
}

- (BOOL)frameworkExistsAtPath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (BOOL)findFrameworkPathsWithFrameworkNames:(id)names searchPaths:(id)paths outFrameworkPaths:(id *)frameworkPaths error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  pathsCopy = paths;
  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = namesCopy;
  v30 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v30)
  {
    obj = v9;
    v29 = *v38;
    frameworkPathsCopy = frameworkPaths;
    while (1)
    {
      v10 = 0;
LABEL_4:
      if (*v38 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v37 + 1) + 8 * v10);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = pathsCopy;
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = *v34;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v33 + 1) + 8 * v16) stringByAppendingPathComponent:v11];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v19 = [defaultManager fileExistsAtPath:v17];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_20;
        }
      }

      [array addObject:v17];

      if (++v10 != v30)
      {
        goto LABEL_4;
      }

      v9 = obj;
      frameworkPaths = frameworkPathsCopy;
      v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v30)
      {
        goto LABEL_17;
      }
    }

LABEL_20:

    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A250];
      v41 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Framework not found: '%@'", v11];
      v42 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [v21 errorWithDomain:v22 code:4 userInfo:v24];
    }

    v9 = obj;

    v20 = 0;
  }

  else
  {
LABEL_17:

    if (frameworkPaths)
    {
      *frameworkPaths = array;
    }

    v20 = 1;
  }

  return v20;
}

- (BOOL)loadFrameworks:(id)frameworks outError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  frameworksCopy = frameworks;
  v7 = [frameworksCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(frameworksCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        bundleLoader = [(IMUnitTestFrameworkLoader *)self bundleLoader];
        v21 = 0;
        v13 = [bundleLoader loadTestBundle:v11 bundle:0 error:&v21];
        v14 = v21;

        logger = [(IMUnitTestFrameworkLoader *)self logger];
        v16 = logger;
        if ((v13 & 1) == 0)
        {
          [logger log:{@"Unable to load XCTest.framework dependency: %@ (%@)", v11, v14}];

          if (errorCopy)
          {
            v18 = v14;
            *errorCopy = v14;
          }

          v17 = 0;
          goto LABEL_13;
        }

        [logger log:{@"Loaded XCTest.framework dependency ok: %@", v11}];
      }

      v8 = [frameworksCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_13:

  return v17;
}

- (BOOL)loadXCTestFrameworkFromSDK:(id *)k
{
  v5 = [@"/AppleInternal/XCTests/com.apple.imcore/Frameworks" stringByAppendingPathComponent:@"XCTest-framework-list.txt"];
  v24 = 0;
  v25 = 0;
  v6 = [(IMUnitTestFrameworkLoader *)self loadFrameworkNamesFromTextFile:v5 outNames:&v25 error:&v24];
  v7 = v25;
  v8 = v24;
  if (v8)
  {
    v6 = 0;
  }

  if (!v6)
  {
    logger = [(IMUnitTestFrameworkLoader *)self logger];
    v17 = [@"/AppleInternal/XCTests/com.apple.imcore/Frameworks" stringByAppendingPathComponent:@"XCTest-framework-list.txt"];
    [logger log:{@"Unable to find XCTest.framework dependencies in file: (%@): %@", v17, v8}];

    v15 = 0;
    if (!k)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  frameworkSearchPaths = [(IMUnitTestFrameworkLoader *)self frameworkSearchPaths];
  v22 = 0;
  v23 = 0;
  v10 = [(IMUnitTestFrameworkLoader *)self findFrameworkPathsWithFrameworkNames:v7 searchPaths:frameworkSearchPaths outFrameworkPaths:&v23 error:&v22];
  v11 = v23;
  v8 = v22;
  if (v8)
  {
    v10 = 0;
  }

  if (v10)
  {
    v21 = 0;
    v12 = [(IMUnitTestFrameworkLoader *)self loadFrameworks:v11 outError:&v21];
    v13 = v21;
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v8 = 0;
      v15 = 1;
      goto LABEL_17;
    }

    v8 = v13;
    logger2 = [(IMUnitTestFrameworkLoader *)self logger];
    [logger2 log:{@"Unable to load XCTest.frameworks %@ with error: (%@)", v11, v8}];
  }

  else
  {
    logger2 = [(IMUnitTestFrameworkLoader *)self logger];
    [logger2 log:{@"Unable to find XCTest.framework dependencies: (%@)", v8}];
  }

  v15 = 0;
LABEL_17:

  if (k)
  {
LABEL_18:
    v19 = v8;
    *k = v8;
  }

LABEL_19:

  return v15;
}

- (BOOL)loadXCTestFramework:(id *)framework
{
  v24 = 0;
  v25 = 0;
  v5 = [(IMUnitTestFrameworkLoader *)self readXCTestFrameworkDependencies:&v25 error:&v24];
  v6 = v25;
  v7 = v24;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (!v8)
  {
    v12 = v7;
    logger = [(IMUnitTestFrameworkLoader *)self logger];
    [logger log:{@"Unable to find XCTest.framework dependencies: %@", v12}];

    v16 = 0;
    if (!framework)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  frameworkSearchPaths = [(IMUnitTestFrameworkLoader *)self frameworkSearchPaths];
  v22 = 0;
  v23 = 0;
  v10 = [(IMUnitTestFrameworkLoader *)self findFrameworkPathsWithFrameworkNames:v6 searchPaths:frameworkSearchPaths outFrameworkPaths:&v23 error:&v22];
  v11 = v23;
  v12 = v22;
  if (v12)
  {
    v10 = 0;
  }

  if (v10)
  {
    v21 = 0;
    v13 = [(IMUnitTestFrameworkLoader *)self loadFrameworks:v11 outError:&v21];
    v14 = v21;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v12 = 0;
      v16 = 1;
      goto LABEL_18;
    }

    v12 = v14;
    logger2 = [(IMUnitTestFrameworkLoader *)self logger];
    [logger2 log:{@"Unable to load XCTest.frameworks %@ with error: (%@)", v11, v12}];
  }

  else
  {
    logger2 = [(IMUnitTestFrameworkLoader *)self logger];
    [logger2 log:{@"Unable to find XCTest.framework dependencies: (%@)", v12}];
  }

  v16 = 0;
LABEL_18:

  if (framework)
  {
LABEL_19:
    v19 = v12;
    *framework = v12;
  }

LABEL_20:

  return v16;
}

- (BOOL)loadTestFrameworks:(id *)frameworks
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = sub_1A86D0328;
  v8 = &unk_1E7829CB0;
  selfCopy = self;
  frameworksCopy = frameworks;
  if (qword_1EB30B468 != -1)
  {
    dispatch_once(&qword_1EB30B468, &v5);
  }

  return [(IMUnitTestFrameworkLoader *)self xctestFrameworkLoaded:v5];
}

@end