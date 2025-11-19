@interface MDPlistBytesAddObject
@end

@implementation MDPlistBytesAddObject

uint64_t ____MDPlistBytesAddObject_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  qword_1ED6F3F80 = CFArrayGetTypeID();
  qword_1ED6F3F88 = CFDictionaryGetTypeID();
  qword_1ED6F3F90 = CFBooleanGetTypeID();
  qword_1ED6F3FA0 = CFDataGetTypeID();
  qword_1ED6F3F98 = CFDateGetTypeID();
  qword_1ED6F3FA8 = CFNullGetTypeID();
  qword_1ED6F3FB0 = CFNumberGetTypeID();
  qword_1ED6F3F78 = CFStringGetTypeID();
  qword_1ED6F3FB8 = CFUUIDGetTypeID();
  qword_1ED6F3FC0 = CFURLGetTypeID();
  if (qword_1ED6F3F50 != -1)
  {
    _MDPlistBytesGetTypeID_cold_1();
  }

  qword_1ED6F3FC8 = qword_1ED6F3F58;
  result = _MDStoreOIDArrayGetTypeID();
  qword_1ED6F3FD0 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end