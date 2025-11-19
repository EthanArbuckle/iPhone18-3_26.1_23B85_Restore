@interface CNBootSession
+ (NSString)currentBootSessionUUID;
+ (id)readCurrentBootSessionUUID;
@end

@implementation CNBootSession

+ (NSString)currentBootSessionUUID
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CNBootSession_currentBootSessionUUID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentBootSessionUUID_cn_once_token_0 != -1)
  {
    dispatch_once(&currentBootSessionUUID_cn_once_token_0, block);
  }

  v2 = currentBootSessionUUID_cn_once_object_0;

  return v2;
}

void __39__CNBootSession_currentBootSessionUUID__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) readCurrentBootSessionUUID];
  v1 = [v3 copy];
  v2 = currentBootSessionUUID_cn_once_object_0;
  currentBootSessionUUID_cn_once_object_0 = v1;
}

+ (id)readCurrentBootSessionUUID
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    v2 = &stru_1EF441028;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end