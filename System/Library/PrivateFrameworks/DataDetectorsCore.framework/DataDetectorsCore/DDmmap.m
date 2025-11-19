@interface DDmmap
@end

@implementation DDmmap

void ___DDmmap_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v2 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_ERROR, "DDCache: loading files from network file systems is not supported (this will only be logged once. first seen with %s)", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end