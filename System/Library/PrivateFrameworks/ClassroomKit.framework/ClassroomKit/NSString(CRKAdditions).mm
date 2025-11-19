@interface NSString(CRKAdditions)
+ (uint64_t)crk_stringWithIPAddress:()CRKAdditions;
- (BOOL)crk_hasCaseInsensitivePrefix:()CRKAdditions;
- (id)crk_sha1Hash;
- (id)crk_stringByRemovingPrefix:()CRKAdditions;
- (id)crk_stringByRemovingSuffix:()CRKAdditions;
- (id)crk_stringBySanitizingFileName;
- (id)crk_substringAfterString:()CRKAdditions;
- (uint64_t)crk_isFourDigitPasscode;
@end

@implementation NSString(CRKAdditions)

- (id)crk_stringBySanitizingFileName
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"/\\?%*|<>:, &"}];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:&stru_285643BE8];

  v5 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];
  v7 = [v6 componentsJoinedByString:&stru_285643BE8];

  return v7;
}

+ (uint64_t)crk_stringWithIPAddress:()CRKAdditions
{
  v3 = MEMORY[0x277CCACA8];
  v5 = inet_ntoa(a3);

  return [v3 stringWithUTF8String:v5];
}

- (id)crk_sha1Hash
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 crk_sha1Hash];

  return v2;
}

- (id)crk_stringByRemovingPrefix:()CRKAdditions
{
  v4 = a3;
  if ([a1 hasPrefix:v4])
  {
    v5 = [a1 substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = [a1 copy];
  }

  v6 = v5;

  return v6;
}

- (id)crk_stringByRemovingSuffix:()CRKAdditions
{
  v4 = a3;
  if ([a1 hasSuffix:v4])
  {
    v5 = [a1 substringToIndex:{objc_msgSend(a1, "length") - objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = [a1 copy];
  }

  v6 = v5;

  return v6;
}

- (uint64_t)crk_isFourDigitPasscode
{
  if ([a1 length] != 4)
  {
    return 0;
  }

  if (![a1 length])
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = [a1 characterAtIndex:v2] - 48;
    v4 = v3 < 0xA;
    if (v3 >= 0xA)
    {
      break;
    }

    ++v2;
  }

  while (v2 < [a1 length]);
  return v4;
}

- (id)crk_substringAfterString:()CRKAdditions
{
  v2 = [a1 rangeOfString:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 substringFromIndex:v2 + v3];
  }

  return v4;
}

- (BOOL)crk_hasCaseInsensitivePrefix:()CRKAdditions
{
  v4 = a3;
  v6 = [v4 length] && (v5 = objc_msgSend(a1, "length"), v5 >= objc_msgSend(v4, "length")) && objc_msgSend(a1, "rangeOfString:options:range:", v4, 1, 0, objc_msgSend(v4, "length")) == 0;

  return v6;
}

@end