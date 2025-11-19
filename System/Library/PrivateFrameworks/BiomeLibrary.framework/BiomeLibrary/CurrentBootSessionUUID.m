@interface CurrentBootSessionUUID
@end

@implementation CurrentBootSessionUUID

void ___CurrentBootSessionUUID_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    v0 = _CurrentBootSessionUUID_bootSessionUUID;
    _CurrentBootSessionUUID_bootSessionUUID = 0;
  }

  else
  {
    v1 = objc_alloc(MEMORY[0x1E696AFB0]);
    v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
    v2 = [v1 initWithUUIDString:v0];
    v3 = _CurrentBootSessionUUID_bootSessionUUID;
    _CurrentBootSessionUUID_bootSessionUUID = v2;
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end