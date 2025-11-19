@interface NSError(ICCollaborationControllerRetryCloudKitOperations)
- (uint64_t)ic_shouldRetryCloudKitError;
@end

@implementation NSError(ICCollaborationControllerRetryCloudKitOperations)

- (uint64_t)ic_shouldRetryCloudKitError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
    v4 = [&unk_1F4FC3B70 containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end