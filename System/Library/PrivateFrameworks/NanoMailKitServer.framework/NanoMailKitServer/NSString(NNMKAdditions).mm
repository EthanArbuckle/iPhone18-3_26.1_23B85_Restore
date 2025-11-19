@interface NSString(NNMKAdditions)
+ (uint64_t)isString:()NNMKAdditions equalToNullableString:;
- (id)nnmk_base64String;
- (id)nnmk_sanitizedFileNameString;
@end

@implementation NSString(NNMKAdditions)

- (id)nnmk_base64String
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 base64EncodedStringWithOptions:1];

  return v2;
}

- (id)nnmk_sanitizedFileNameString
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/\\?%*|<>:"];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:@"_"];

  return v4;
}

+ (uint64_t)isString:()NNMKAdditions equalToNullableString:
{
  if (a3)
  {
    return [a3 isEqualToString:a4];
  }

  else
  {
    return a4 == 0;
  }
}

@end