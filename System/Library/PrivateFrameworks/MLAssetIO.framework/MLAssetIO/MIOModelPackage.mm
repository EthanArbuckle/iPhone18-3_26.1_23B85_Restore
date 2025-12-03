@interface MIOModelPackage
+ (BOOL)_upgradeModelSpecificationAtURL:(id)l packageURL:(id)rL error:(id *)error;
+ (id)upgradeModelSpecificationAtURL:(id)l toURL:(id)rL error:(id *)error;
- (MIOModelPackage)initWithModelPackageAtURL:(id)l error:(id *)p_isa;
@end

@implementation MIOModelPackage

+ (id)upgradeModelSpecificationAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v12 = [defaultManager fileExistsAtPath:path];

  if (v12)
  {
    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v15 = [rLCopy URLByAppendingPathComponent:stringByDeletingPathExtension isDirectory:1];
    v16 = [v15 URLByAppendingPathExtension:@"mlpackage"];

    path2 = [v16 path];
    v18 = [defaultManager fileExistsAtPath:path2];

    if (!v18)
    {
      v31 = [MIOModelUtils URLForNewlyCreatedWorkingDirectoryAppropriateForURL:rLCopy error:error];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 URLByAppendingPathComponent:stringByDeletingPathExtension isDirectory:1];
        v34 = [v33 URLByAppendingPathExtension:@"mlpackage"];

        if ([self _upgradeModelSpecificationAtURL:lCopy packageURL:v34 error:error] & 1) != 0 && (objc_msgSend(defaultManager, "replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:", v16, v34, 0, 0, 0, error))
        {
          [defaultManager removeItemAtURL:v32 error:0];
          error = v16;
        }

        else
        {
          [defaultManager removeItemAtURL:v32 error:0];
          error = 0;
        }
      }

      else
      {
        error = 0;
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      path3 = [v16 path];
      +[MIOModelPackage upgradeModelSpecificationAtURL:toURL:error:].cold.2([path3 UTF8String], v41, path3);
    }

    if (!error)
    {
      goto LABEL_20;
    }

    v20 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v21 = MEMORY[0x1E696AEC0];
    path4 = [v16 path];
    v23 = path4;
    v24 = [v21 stringWithFormat:@"Model package already exists at %s", objc_msgSend(path4, "UTF8String")];
    v38 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *error = [v20 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v25];

LABEL_11:
    error = 0;
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    path5 = [lCopy path];
    +[MIOModelPackage upgradeModelSpecificationAtURL:toURL:error:].cold.1([path5 UTF8String], v41, path5);
  }

  if (error)
  {
    v27 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v28 = MEMORY[0x1E696AEC0];
    stringByDeletingPathExtension = [lCopy path];
    v29 = stringByDeletingPathExtension;
    v16 = [v28 stringWithFormat:@"Model does not exists at %s", objc_msgSend(stringByDeletingPathExtension, "UTF8String")];
    v40 = v16;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *error = [v27 errorWithDomain:@"com.apple.mlassetio" code:1 userInfo:v30];

    goto LABEL_11;
  }

LABEL_21:

  v35 = *MEMORY[0x1E69E9840];

  return error;
}

+ (BOOL)_upgradeModelSpecificationAtURL:(id)l packageURL:(id)rL error:(id *)error
{
  __p[7] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v8 = objc_autoreleasePoolPush();
  [lCopy lastPathComponent];
  objc_claimAutoreleasedReturnValue();
  std::string::basic_string[abi:ne200100]<0>(__p, [rLCopy fileSystemRepresentation]);
  MPL::ModelPackage::ModelPackage();
}

- (MIOModelPackage)initWithModelPackageAtURL:(id)l error:(id *)p_isa
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    v20.receiver = self;
    v20.super_class = MIOModelPackage;
    if ([(MIOModelPackage *)&v20 init])
    {
      v10 = lCopy;
      std::string::basic_string[abi:ne200100]<0>(&__p, [lCopy fileSystemRepresentation]);
      MPL::ModelPackage::ModelPackage();
    }

    self = 0;
    p_isa = &self->super.isa;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      -[MIOModelPackage initWithModelPackageAtURL:error:].cold.1([path2 UTF8String], &__p, path2);
    }

    if (p_isa)
    {
      v12 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      path3 = [lCopy path];
      v15 = path3;
      v16 = [v13 stringWithFormat:@"Model package does not exist at %s", objc_msgSend(path3, "UTF8String")];
      v23[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *p_isa = [v12 errorWithDomain:@"com.apple.mlassetio" code:1 userInfo:v17];

      p_isa = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return p_isa;
}

+ (void)upgradeModelSpecificationAtURL:(uint64_t)a1 toURL:(uint64_t)a2 error:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C1BCE000, MEMORY[0x1E69E9C10], a3, "Model does not exists at %s", a2);
}

+ (void)upgradeModelSpecificationAtURL:(uint64_t)a1 toURL:(uint64_t)a2 error:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C1BCE000, MEMORY[0x1E69E9C10], a3, "Model package already exists at %s", a2);
}

+ (void)_upgradeModelSpecificationAtURL:(uint64_t)a1 packageURL:error:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v1;
  OUTLINED_FUNCTION_0_0(&dword_1C1BCE000, MEMORY[0x1E69E9C10], v2, "Failed to create model package. Error: %s", &v4);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithModelPackageAtURL:(void *)a3 error:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C1BCE000, MEMORY[0x1E69E9C10], a3, "Model package does not exist at %s", a2);
}

- (void)initWithModelPackageAtURL:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = (*(*a2 + 16))(a2);
  v5 = 138412546;
  v6 = a1;
  v7 = 2080;
  v8 = v3;
  _os_log_error_impl(&dword_1C1BCE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to extract root model from model package at %@. Error: %s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end