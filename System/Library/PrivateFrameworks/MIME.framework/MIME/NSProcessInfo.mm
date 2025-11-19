@interface NSProcessInfo
@end

@implementation NSProcessInfo

id __57__NSProcessInfo_MIMEAdditions__mf_thermalStateObservable__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "thermalState")}];

  return v1;
}

@end