@interface NSDictionary(MobileContainerManagerAdditions)
+ (id)MCM_dictionaryWithContentsOfURL:()MobileContainerManagerAdditions options:fileManager:fsNode:error:;
+ (id)MCM_dictionaryWithContentsOfURL:()MobileContainerManagerAdditions options:fsNode:error:;
+ (uint64_t)MCM_dictionaryWithContentsOfURL:()MobileContainerManagerAdditions options:error:;
- (uint64_t)MCM_writeToURL:()MobileContainerManagerAdditions withOptions:error:;
- (uint64_t)MCM_writeToURL:()MobileContainerManagerAdditions withOptions:fileManager:error:;
@end

@implementation NSDictionary(MobileContainerManagerAdditions)

- (uint64_t)MCM_writeToURL:()MobileContainerManagerAdditions withOptions:fileManager:error:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v22[0] = 0;
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:v22];
  v13 = v22[0];
  if (!v12)
  {
    goto LABEL_7;
  }

  if ([v12 length])
  {
    v19 = v13;
    v14 = [v11 writeData:v12 toURL:v10 options:a4 mode:438 error:&v19];
    v15 = v19;
    goto LABEL_4;
  }

  if (v13)
  {
LABEL_7:
    v14 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__NSDictionary_MobileContainerManagerAdditions__MCM_writeToURL_withOptions_fileManager_error___block_invoke;
  v20[3] = &unk_1E86B0B98;
  v21 = v10;
  v15 = __94__NSDictionary_MobileContainerManagerAdditions__MCM_writeToURL_withOptions_fileManager_error___block_invoke(v20);
  v14 = 0;
  v13 = v21;
LABEL_4:

  v13 = v15;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v14 & 1) == 0)
  {
    v16 = v13;
    *a6 = v13;
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)MCM_writeToURL:()MobileContainerManagerAdditions withOptions:error:
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = +[MCMFileManager defaultManager];
  v10 = [a1 MCM_writeToURL:v8 withOptions:a4 fileManager:v9 error:a5];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)MCM_dictionaryWithContentsOfURL:()MobileContainerManagerAdditions options:fileManager:fsNode:error:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v9 = [a5 readDataFromURL:a3 options:2 fsNode:a6 error:v20];
  v10 = v20[0];
  if (v9)
  {
    v19 = 0;
    v11 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:a4 format:0 error:&v19];
    v12 = v19;

    objc_opt_class();
    v13 = v11;
    v14 = 0;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = v13;
      v10 = v12;
      v13 = v15;
      if (!a7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];

      v15 = 0;
      if (!a7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
    if (!a7)
    {
      goto LABEL_12;
    }
  }

  if (!v15)
  {
    v16 = v10;
    *a7 = v10;
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)MCM_dictionaryWithContentsOfURL:()MobileContainerManagerAdditions options:fsNode:error:
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = +[MCMFileManager defaultManager];
  v12 = [a1 MCM_dictionaryWithContentsOfURL:v10 options:a4 fileManager:v11 fsNode:a5 error:a6];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (uint64_t)MCM_dictionaryWithContentsOfURL:()MobileContainerManagerAdditions options:error:
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [a1 MCM_dictionaryWithContentsOfURL:a3 options:a4 fsNode:0 error:a5];
}

@end