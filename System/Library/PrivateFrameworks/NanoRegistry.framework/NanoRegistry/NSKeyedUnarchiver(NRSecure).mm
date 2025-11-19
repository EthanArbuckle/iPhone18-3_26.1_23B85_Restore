@interface NSKeyedUnarchiver(NRSecure)
+ (id)nr_secureUnarchiveObjectOfClasses:()NRSecure withData:;
+ (id)nr_secureUnarchiveObjectOfClasses:()NRSecure withFile:;
@end

@implementation NSKeyedUnarchiver(NRSecure)

+ (id)nr_secureUnarchiveObjectOfClasses:()NRSecure withFile:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v19 = 0;
    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7 options:0 error:&v19];
    v11 = v19;
    if (v11)
    {
      v12 = nr_framework_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = nr_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = [v11 nr_safeDescription];
          *buf = 138543618;
          v21 = v7;
          v22 = 2114;
          v23 = v18;
          _os_log_error_impl(&dword_1E0ADF000, v14, OS_LOG_TYPE_ERROR, "Failed to read data from file %{public}@ with error %{public}@", buf, 0x16u);
        }
      }

      v15 = 0;
    }

    else
    {
      v15 = [a1 nr_secureUnarchiveObjectOfClasses:v6 withData:v10];
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)nr_secureUnarchiveObjectOfClasses:()NRSecure withData:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [[a1 alloc] initForReadingFromData:v7 error:&v18];
  v9 = v18;
  v10 = [v8 decodeObjectOfClasses:v6 forKey:*MEMORY[0x1E696A508]];
  [v8 finishDecoding];
  if (v9)
  {
    v11 = nr_framework_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = nr_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = [v9 nr_safeDescription];
        *buf = 138543618;
        v20 = v6;
        v21 = 2114;
        v22 = v17;
        _os_log_error_impl(&dword_1E0ADF000, v13, OS_LOG_TYPE_ERROR, "Failed to unarchive data of type %{public}@ with error %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = v10;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end