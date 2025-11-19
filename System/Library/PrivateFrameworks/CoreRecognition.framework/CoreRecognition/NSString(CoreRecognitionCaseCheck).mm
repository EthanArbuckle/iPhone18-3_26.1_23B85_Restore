@interface NSString(CoreRecognitionCaseCheck)
- (uint64_t)isCaseApplicable;
- (uint64_t)isLowercase;
- (uint64_t)isUppercase;
@end

@implementation NSString(CoreRecognitionCaseCheck)

- (uint64_t)isLowercase
{
  v2 = [a1 lowercaseString];
  v3 = [a1 isEqualToString:v2];

  return v3;
}

- (uint64_t)isUppercase
{
  v2 = [a1 uppercaseString];
  v3 = [a1 isEqualToString:v2];

  return v3;
}

- (uint64_t)isCaseApplicable
{
  if ([a1 isUppercase])
  {
    return [a1 isLowercase] ^ 1;
  }

  else
  {
    return 1;
  }
}

@end