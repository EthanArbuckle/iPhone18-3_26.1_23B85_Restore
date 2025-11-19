@interface MDPlistContainerCreateCommon
@end

@implementation MDPlistContainerCreateCommon

CFTypeID ___MDPlistContainerCreateCommon_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  gCFArrayTypeID = CFArrayGetTypeID();
  gCFDictionaryTypeID = CFDictionaryGetTypeID();
  gCFNullTypeID = CFNullGetTypeID();
  gCFStringTypeID = CFStringGetTypeID();
  gCFDataTypeID = CFDataGetTypeID();
  gCFUUIDTypeID = CFUUIDGetTypeID();
  gCFURLTypeID = CFURLGetTypeID();
  gCFDateTypeID = CFDateGetTypeID();
  gCFBooleanTypeID = CFBooleanGetTypeID();
  result = CFNumberGetTypeID();
  gCFNumberTypeID = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end