@interface NSDictionary
@end

@implementation NSDictionary

id __94__NSDictionary_MobileContainerManagerAdditions__MCM_writeToURL_withOptions_fileManager_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Attempting to write a zero-length plist file at [%@]", v3];

  v14[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[NSDictionary(MobileContainerManagerAdditions) MCM_writeToURL:withOptions:fileManager:error:]_block_invoke"];
  v15[0] = v5;
  v15[1] = &unk_1F5A76840;
  v6 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v6;
  v15[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:34 userInfo:v7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end