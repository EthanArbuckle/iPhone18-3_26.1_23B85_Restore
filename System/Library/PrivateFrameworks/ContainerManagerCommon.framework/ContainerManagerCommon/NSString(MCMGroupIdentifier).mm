@interface NSString(MCMGroupIdentifier)
- (id)stringByExtractingTeamIDPrefix;
@end

@implementation NSString(MCMGroupIdentifier)

- (id)stringByExtractingTeamIDPrefix
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 cStringUsingEncoding:4];
  if ([a1 lengthOfBytesUsingEncoding:4] >= 0xC && *(v2 + 10) == 46)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + v3);
      v5 = v4 - 65;
      v6 = v4 - 48;
      if (v5 >= 0x1A && v6 >= 0xA)
      {
        break;
      }

      if (++v3 == 10)
      {
        v8 = [a1 substringToIndex:10];
        goto LABEL_11;
      }
    }
  }

  v8 = 0;
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end