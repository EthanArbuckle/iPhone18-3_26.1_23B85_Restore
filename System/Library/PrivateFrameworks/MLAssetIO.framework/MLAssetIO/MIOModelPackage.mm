@interface MIOModelPackage
+ (BOOL)_upgradeModelSpecificationAtURL:(id)a3 packageURL:(id)a4 error:(id *)a5;
+ (id)upgradeModelSpecificationAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (MIOModelPackage)initWithModelPackageAtURL:(id)a3 error:(id *)p_isa;
@end

@implementation MIOModelPackage

+ (id)upgradeModelSpecificationAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [v8 lastPathComponent];
    v14 = [v13 stringByDeletingPathExtension];

    v15 = [v9 URLByAppendingPathComponent:v14 isDirectory:1];
    v16 = [v15 URLByAppendingPathExtension:@"mlpackage"];

    v17 = [v16 path];
    v18 = [v10 fileExistsAtPath:v17];

    if (!v18)
    {
      v31 = [MIOModelUtils URLForNewlyCreatedWorkingDirectoryAppropriateForURL:v9 error:a5];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 URLByAppendingPathComponent:v14 isDirectory:1];
        v34 = [v33 URLByAppendingPathExtension:@"mlpackage"];

        if ([a1 _upgradeModelSpecificationAtURL:v8 packageURL:v34 error:a5] & 1) != 0 && (objc_msgSend(v10, "replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:", v16, v34, 0, 0, 0, a5))
        {
          [v10 removeItemAtURL:v32 error:0];
          a5 = v16;
        }

        else
        {
          [v10 removeItemAtURL:v32 error:0];
          a5 = 0;
        }
      }

      else
      {
        a5 = 0;
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [v16 path];
      +[MIOModelPackage upgradeModelSpecificationAtURL:toURL:error:].cold.2([v19 UTF8String], v41, v19);
    }

    if (!a5)
    {
      goto LABEL_20;
    }

    v20 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v16 path];
    v23 = v22;
    v24 = [v21 stringWithFormat:@"Model package already exists at %s", objc_msgSend(v22, "UTF8String")];
    v38 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *a5 = [v20 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v25];

LABEL_11:
    a5 = 0;
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [v8 path];
    +[MIOModelPackage upgradeModelSpecificationAtURL:toURL:error:].cold.1([v26 UTF8String], v41, v26);
  }

  if (a5)
  {
    v27 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v28 = MEMORY[0x1E696AEC0];
    v14 = [v8 path];
    v29 = v14;
    v16 = [v28 stringWithFormat:@"Model does not exists at %s", objc_msgSend(v14, "UTF8String")];
    v40 = v16;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *a5 = [v27 errorWithDomain:@"com.apple.mlassetio" code:1 userInfo:v30];

    goto LABEL_11;
  }

LABEL_21:

  v35 = *MEMORY[0x1E69E9840];

  return a5;
}

+ (BOOL)_upgradeModelSpecificationAtURL:(id)a3 packageURL:(id)a4 error:(id *)a5
{
  __p[7] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [v6 lastPathComponent];
  objc_claimAutoreleasedReturnValue();
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 fileSystemRepresentation]);
  MPL::ModelPackage::ModelPackage();
}

- (MIOModelPackage)initWithModelPackageAtURL:(id)a3 error:(id *)p_isa
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v20.receiver = self;
    v20.super_class = MIOModelPackage;
    if ([(MIOModelPackage *)&v20 init])
    {
      v10 = v6;
      std::string::basic_string[abi:ne200100]<0>(&__p, [v6 fileSystemRepresentation]);
      MPL::ModelPackage::ModelPackage();
    }

    self = 0;
    p_isa = &self->super.isa;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 path];
      -[MIOModelPackage initWithModelPackageAtURL:error:].cold.1([v11 UTF8String], &__p, v11);
    }

    if (p_isa)
    {
      v12 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = [v6 path];
      v15 = v14;
      v16 = [v13 stringWithFormat:@"Model package does not exist at %s", objc_msgSend(v14, "UTF8String")];
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