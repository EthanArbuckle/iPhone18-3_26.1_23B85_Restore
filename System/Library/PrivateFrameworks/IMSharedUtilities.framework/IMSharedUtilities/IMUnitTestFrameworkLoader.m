@interface IMUnitTestFrameworkLoader
- (BOOL)findFrameworkPathsWithFrameworkNames:(id)a3 searchPaths:(id)a4 outFrameworkPaths:(id *)a5 error:(id *)a6;
- (BOOL)frameworkExistsAtPath:(id)a3;
- (BOOL)loadFrameworkNamesFromTextFile:(id)a3 outNames:(id *)a4 error:(id *)a5;
- (BOOL)loadFrameworks:(id)a3 outError:(id *)a4;
- (BOOL)loadTestFrameworks:(id *)a3;
- (BOOL)loadXCTestFramework:(id *)a3;
- (BOOL)loadXCTestFrameworkFromSDK:(id *)a3;
- (BOOL)readXCTestFrameworkDependencies:(id *)a3 error:(id *)a4;
- (IMUnitTestFrameworkLoader)initWithLogger:(id)a3 bundleLoader:(id)a4;
@end

@implementation IMUnitTestFrameworkLoader

- (IMUnitTestFrameworkLoader)initWithLogger:(id)a3 bundleLoader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMUnitTestFrameworkLoader;
  v9 = [(IMUnitTestFrameworkLoader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, a3);
    objc_storeStrong(&v10->_bundleLoader, a4);
  }

  return v10;
}

- (BOOL)loadFrameworkNamesFromTextFile:(id)a3 outNames:(id *)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v22 = 0;
  v9 = a3;
  v10 = [v8 stringWithContentsOfFile:v9 encoding:4 error:&v22];
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
    v17 = [(IMUnitTestFrameworkLoader *)self logger];
    [v17 log:{@"Loaded dependencies from file at path: '%@'\n%@", v9, v10}];

    v18 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v19 = [v10 stringByTrimmingCharactersInSet:v18];
    v15 = [v19 componentsSeparatedByString:@"\n"];

    v16 = v15 != 0;
    if (a4 && v15)
    {
      v20 = v15;
      *a4 = v15;
      v16 = 1;
    }
  }

  else
  {
    if (a5)
    {
      v14 = v11;
      *a5 = v12;
    }

    v15 = [(IMUnitTestFrameworkLoader *)self logger];
    [v15 log:{@"Unable to load framework dependencies from file at path: '%@', error = %@", v9, v12}];

    v16 = 0;
  }

  return v16;
}

- (BOOL)readXCTestFrameworkDependencies:(id *)a3 error:(id *)a4
{
  v7 = [@"/AppleInternal/XCTests/com.apple.imcore/Frameworks" stringByAppendingPathComponent:@"XCTest-framework-list.txt"];
  LOBYTE(a4) = [(IMUnitTestFrameworkLoader *)self loadFrameworkNamesFromTextFile:v7 outNames:a3 error:a4];

  return a4;
}

- (BOOL)frameworkExistsAtPath:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

- (BOOL)findFrameworkPathsWithFrameworkNames:(id)a3 searchPaths:(id)a4 outFrameworkPaths:(id *)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v32 = a4;
  v31 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v8;
  v30 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v30)
  {
    obj = v9;
    v29 = *v38;
    v26 = a5;
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
      v12 = v32;
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
        v18 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = [v18 fileExistsAtPath:v17];

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

      [v31 addObject:v17];

      if (++v10 != v30)
      {
        goto LABEL_4;
      }

      v9 = obj;
      a5 = v26;
      v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v30)
      {
        goto LABEL_17;
      }
    }

LABEL_20:

    if (a6)
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A250];
      v41 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Framework not found: '%@'", v11];
      v42 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a6 = [v21 errorWithDomain:v22 code:4 userInfo:v24];
    }

    v9 = obj;

    v20 = 0;
  }

  else
  {
LABEL_17:

    if (a5)
    {
      *a5 = v31;
    }

    v20 = 1;
  }

  return v20;
}

- (BOOL)loadFrameworks:(id)a3 outError:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = a4;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(IMUnitTestFrameworkLoader *)self bundleLoader];
        v21 = 0;
        v13 = [v12 loadTestBundle:v11 bundle:0 error:&v21];
        v14 = v21;

        v15 = [(IMUnitTestFrameworkLoader *)self logger];
        v16 = v15;
        if ((v13 & 1) == 0)
        {
          [v15 log:{@"Unable to load XCTest.framework dependency: %@ (%@)", v11, v14}];

          if (v20)
          {
            v18 = v14;
            *v20 = v14;
          }

          v17 = 0;
          goto LABEL_13;
        }

        [v15 log:{@"Loaded XCTest.framework dependency ok: %@", v11}];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (BOOL)loadXCTestFrameworkFromSDK:(id *)a3
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
    v16 = [(IMUnitTestFrameworkLoader *)self logger];
    v17 = [@"/AppleInternal/XCTests/com.apple.imcore/Frameworks" stringByAppendingPathComponent:@"XCTest-framework-list.txt"];
    [v16 log:{@"Unable to find XCTest.framework dependencies in file: (%@): %@", v17, v8}];

    v15 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = [(IMUnitTestFrameworkLoader *)self frameworkSearchPaths];
  v22 = 0;
  v23 = 0;
  v10 = [(IMUnitTestFrameworkLoader *)self findFrameworkPathsWithFrameworkNames:v7 searchPaths:v9 outFrameworkPaths:&v23 error:&v22];
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
    v18 = [(IMUnitTestFrameworkLoader *)self logger];
    [v18 log:{@"Unable to load XCTest.frameworks %@ with error: (%@)", v11, v8}];
  }

  else
  {
    v18 = [(IMUnitTestFrameworkLoader *)self logger];
    [v18 log:{@"Unable to find XCTest.framework dependencies: (%@)", v8}];
  }

  v15 = 0;
LABEL_17:

  if (a3)
  {
LABEL_18:
    v19 = v8;
    *a3 = v8;
  }

LABEL_19:

  return v15;
}

- (BOOL)loadXCTestFramework:(id *)a3
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
    v17 = [(IMUnitTestFrameworkLoader *)self logger];
    [v17 log:{@"Unable to find XCTest.framework dependencies: %@", v12}];

    v16 = 0;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = [(IMUnitTestFrameworkLoader *)self frameworkSearchPaths];
  v22 = 0;
  v23 = 0;
  v10 = [(IMUnitTestFrameworkLoader *)self findFrameworkPathsWithFrameworkNames:v6 searchPaths:v9 outFrameworkPaths:&v23 error:&v22];
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
    v18 = [(IMUnitTestFrameworkLoader *)self logger];
    [v18 log:{@"Unable to load XCTest.frameworks %@ with error: (%@)", v11, v12}];
  }

  else
  {
    v18 = [(IMUnitTestFrameworkLoader *)self logger];
    [v18 log:{@"Unable to find XCTest.framework dependencies: (%@)", v12}];
  }

  v16 = 0;
LABEL_18:

  if (a3)
  {
LABEL_19:
    v19 = v12;
    *a3 = v12;
  }

LABEL_20:

  return v16;
}

- (BOOL)loadTestFrameworks:(id *)a3
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = sub_1A86D0328;
  v8 = &unk_1E7829CB0;
  v9 = self;
  v10 = a3;
  if (qword_1EB30B468 != -1)
  {
    dispatch_once(&qword_1EB30B468, &v5);
  }

  return [(IMUnitTestFrameworkLoader *)self xctestFrameworkLoaded:v5];
}

@end