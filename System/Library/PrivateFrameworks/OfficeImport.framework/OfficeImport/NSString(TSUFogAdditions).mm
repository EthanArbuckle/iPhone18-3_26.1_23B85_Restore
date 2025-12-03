@interface NSString(TSUFogAdditions)
+ (id)tsu_fogFilenameFromShareToken:()TSUFogAdditions;
+ (id)tsu_fogShareTokenFromFileURL:()TSUFogAdditions;
@end

@implementation NSString(TSUFogAdditions)

+ (id)tsu_fogShareTokenFromFileURL:()TSUFogAdditions
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isFileURL])
  {
    lastPathComponent = [v3 lastPathComponent];
    v5 = [lastPathComponent dataUsingEncoding:4];
    tsu_encodeToHexidecimalString = [v5 tsu_encodeToHexidecimalString];
    v10[0] = @"fog";
    v10[1] = tsu_encodeToHexidecimalString;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v8 = [v7 componentsJoinedByString:@":"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)tsu_fogFilenameFromShareToken:()TSUFogAdditions
{
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@":"];
    firstObject = [v3 firstObject];
    if ([firstObject isEqualToString:@"fog"] && objc_msgSend(v3, "count") == 2)
    {
      v5 = [v3 objectAtIndexedSubscript:1];
      v6 = [MEMORY[0x277CBEA90] tsu_decodeFromHexidecimalString:v5];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end