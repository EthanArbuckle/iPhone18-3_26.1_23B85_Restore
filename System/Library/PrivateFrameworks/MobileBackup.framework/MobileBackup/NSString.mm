@interface NSString
@end

@implementation NSString

uint64_t __60__NSString_MobileBackup__mb_stringByAppendingGreenteaSuffix__block_invoke(uint64_t a1)
{
  v2 = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", 5);
  if (!v2)
  {
    __60__NSString_MobileBackup__mb_stringByAppendingGreenteaSuffix__block_invoke_cold_1(a1);
  }

  v3 = dlopen("/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport", 5);
  if (!v3)
  {
    __60__NSString_MobileBackup__mb_stringByAppendingGreenteaSuffix__block_invoke_cold_2(a1);
  }

  mb_stringByAppendingGreenteaSuffix_CPGetDeviceRegionCode = dlsym(v3, "CPGetDeviceRegionCode");
  mb_stringByAppendingGreenteaSuffix_IOServiceGetMatchingService = dlsym(v2, "IOServiceGetMatchingService");
  mb_stringByAppendingGreenteaSuffix_IOServiceMatching = dlsym(v2, "IOServiceMatching");
  v4 = dlsym(v2, "kIOMainPortDefault");
  mb_stringByAppendingGreenteaSuffix_kIOMainPortDefault = v4;
  if (!mb_stringByAppendingGreenteaSuffix_CPGetDeviceRegionCode || (v5 = mb_stringByAppendingGreenteaSuffix_IOServiceGetMatchingService) == 0 || (v6 = mb_stringByAppendingGreenteaSuffix_IOServiceMatching) == 0 || !v4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSString+MobileBackup.m" lineNumber:66 description:@"Unable to setup soft linking!"];

    v5 = mb_stringByAppendingGreenteaSuffix_IOServiceGetMatchingService;
    v4 = mb_stringByAppendingGreenteaSuffix_kIOMainPortDefault;
    v6 = mb_stringByAppendingGreenteaSuffix_IOServiceMatching;
  }

  v7 = *v4;
  v8 = v6("AppleBaseband");
  v9 = v5(v7, v8);
  v10 = v9 - 1;
  if ((v9 - 1) <= 0xFFFFFFFD)
  {
    v9 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v9);
  }

  result = [mb_stringByAppendingGreenteaSuffix_CPGetDeviceRegionCode(v9) isEqualToString:@"CH"];
  mb_stringByAppendingGreenteaSuffix_isGreenTea = (v10 < 0xFFFFFFFE) & result;
  return result;
}

void __60__NSString_MobileBackup__mb_stringByAppendingGreenteaSuffix__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSString+MobileBackup.m" lineNumber:58 description:@"Unable to dlopen IOKit!"];
}

void __60__NSString_MobileBackup__mb_stringByAppendingGreenteaSuffix__block_invoke_cold_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSString+MobileBackup.m" lineNumber:60 description:@"Unable top dlopen AppSupport!"];
}

@end