@interface NSException(SFUtilityAdditions)
+ (uint64_t)sfu_errnoRaise:()SFUtilityAdditions format:;
- (uint64_t)sfu_localErrno;
@end

@implementation NSException(SFUtilityAdditions)

+ (uint64_t)sfu_errnoRaise:()SFUtilityAdditions format:
{
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a4 arguments:&a9];
  v12 = MEMORY[0x277CCACA8];
  v13 = __error();
  v14 = [v12 stringWithFormat:@"%@: %s", v11, strerror(*v13)];
  return [objc_msgSend(a1 exceptionWithName:a3 reason:v14 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *__error()), @"SFUFileUtilsErrnoKey", "raise"}];
}

- (uint64_t)sfu_localErrno
{
  v1 = [objc_msgSend(a1 "userInfo")];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 intValue];
}

@end