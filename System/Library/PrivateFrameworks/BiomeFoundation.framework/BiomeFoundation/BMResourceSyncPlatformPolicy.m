@interface BMResourceSyncPlatformPolicy
- (BMResourceSyncPlatformPolicy)initWithPlatform:(int64_t)a3 transportType:(unint64_t)a4 direction:(unint64_t)a5;
@end

@implementation BMResourceSyncPlatformPolicy

- (BMResourceSyncPlatformPolicy)initWithPlatform:(int64_t)a3 transportType:(unint64_t)a4 direction:(unint64_t)a5
{
  v6 = self;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v13.receiver = self;
    v13.super_class = BMResourceSyncPlatformPolicy;
    v9 = [(BMResourceSyncPlatformPolicy *)&v13 init];
    if (v9)
    {
      v9->_platform = a3;
      v9->_transportType = a4;
      v9->_direction = a5;
    }

    v6 = v9;
    v10 = v6;
  }

  else
  {
    v11 = __biome_log_for_category(14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BMResourceSyncPlatformPolicy initWithPlatform:a4 transportType:v11 direction:?];
    }

    v10 = 0;
  }

  return v10;
}

- (void)initWithPlatform:(uint64_t)a1 transportType:(NSObject *)a2 direction:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_FAULT, "Invalid transport type %lu.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end