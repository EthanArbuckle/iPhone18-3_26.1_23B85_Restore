@interface NSError(BCError)
- (uint64_t)initWithBCError:()BCError;
- (uint64_t)initWithIOKitError:()BCError;
- (uint64_t)retIOKitError;
@end

@implementation NSError(BCError)

- (uint64_t)initWithBCError:()BCError
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ((a3 - 16) > 2)
  {
    v5 = @"Unknown error";
  }

  else
  {
    v5 = off_2784F9048[a3 - 16];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.BrightnessControl"];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v5;
  result = [self initWithDomain:v6 code:a3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)initWithIOKitError:()BCError
{
  v9[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.BrightnessControl"];
  v8[0] = *MEMORY[0x277CCA450];
  v8[1] = @"IOKitCode";
  v9[0] = @"IOKit error";
  v9[1] = [MEMORY[0x277CCABB0] numberWithInt:a3];
  result = [self initWithDomain:v5 code:17 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)retIOKitError
{
  v1 = [objc_msgSend(self "userInfo")];
  if (!v1)
  {
    return 5;
  }

  return [v1 intValue];
}

@end