@interface NSError(CRKAdditions)
+ (id)crk_errorForSecurityOSStatus:()CRKAdditions;
+ (id)crk_errorWithPOSIXCode:()CRKAdditions;
@end

@implementation NSError(CRKAdditions)

+ (id)crk_errorForSecurityOSStatus:()CRKAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (status)
  {
    v4 = SecCopyErrorMessageString(status, 0);
    v5 = v4;
    if (v4)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v4;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:status userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)crk_errorWithPOSIXCode:()CRKAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = strerror(__errnum);
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v6 = v5;
    if (v5)
    {
      v10 = *MEMORY[0x277CCA450];
      v11[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:__errnum userInfo:v7];

  return v8;
}

@end