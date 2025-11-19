@interface MIOModelUtils
+ (id)URLForNewlyCreatedWorkingDirectoryAppropriateForURL:(id)a3 error:(id *)a4;
@end

@implementation MIOModelUtils

+ (id)URLForNewlyCreatedWorkingDirectoryAppropriateForURL:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:a4];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[MIOModelUtils URLForNewlyCreatedWorkingDirectoryAppropriateForURL:error:];
    }

    if (a4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create a working directory URL."];
      v15[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a4 = [v9 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

@end