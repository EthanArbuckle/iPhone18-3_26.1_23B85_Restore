@interface NSString(TCStringAdditions)
+ (id)tc_stringByFixingUnpairedSurrogateCharactersInString:()TCStringAdditions;
+ (uint64_t)tc_fixUnpairedSurrogateCharactersInBuffer:()TCStringAdditions;
- (BOOL)tc_doesURLHostContainWhitespace;
- (uint64_t)nulTerminatedUTF8;
@end

@implementation NSString(TCStringAdditions)

- (BOOL)tc_doesURLHostContainWhitespace
{
  v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a1];
  v2 = [v1 host];
  if (v2)
  {
    v3 = [v1 host];
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v3 rangeOfCharacterFromSet:v4] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)nulTerminatedUTF8
{
  v1 = a1;

  return [v1 UTF8String];
}

+ (uint64_t)tc_fixUnpairedSurrogateCharactersInBuffer:()TCStringAdditions
{
  v3 = *a3;
  v4 = a3[1];
  v5 = v4 - *a3;
  if (v4 != *a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 >> 1;
    while (1)
    {
      v9 = *(v3 + 2 * v7) & 0xFC00;
      if (v9 == 56320)
      {
        goto LABEL_7;
      }

      if (v9 == 55296)
      {
        break;
      }

LABEL_8:
      v10 = v7;
LABEL_9:
      v7 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        return v6 & 1;
      }
    }

    v10 = v7 + 1;
    if (v7 + 1 < v8 && (*(v3 + 2 * v10) & 0xFC00) == 0xDC00)
    {
      goto LABEL_9;
    }

LABEL_7:
    *(v3 + 2 * v7) = 9633;
    v6 = 1;
    goto LABEL_8;
  }

  v6 = 0;
  return v6 & 1;
}

+ (id)tc_stringByFixingUnpairedSurrogateCharactersInString:()TCStringAdditions
{
  v4 = a3;
  v5 = [v4 length];
  std::vector<unsigned short>::vector[abi:ne200100](__p, v5);
  [v4 getCharacters:__p[0]];
  v6 = [a1 tc_fixUnpairedSurrogateCharactersInBuffer:__p];
  v7 = v4;
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCharacters:__p[0] length:v5];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

@end