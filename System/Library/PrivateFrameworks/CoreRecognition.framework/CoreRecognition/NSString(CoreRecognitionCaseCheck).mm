@interface NSString(CoreRecognitionCaseCheck)
- (uint64_t)isCaseApplicable;
- (uint64_t)isLowercase;
- (uint64_t)isUppercase;
@end

@implementation NSString(CoreRecognitionCaseCheck)

- (uint64_t)isLowercase
{
  lowercaseString = [self lowercaseString];
  v3 = [self isEqualToString:lowercaseString];

  return v3;
}

- (uint64_t)isUppercase
{
  uppercaseString = [self uppercaseString];
  v3 = [self isEqualToString:uppercaseString];

  return v3;
}

- (uint64_t)isCaseApplicable
{
  if ([self isUppercase])
  {
    return [self isLowercase] ^ 1;
  }

  else
  {
    return 1;
  }
}

@end