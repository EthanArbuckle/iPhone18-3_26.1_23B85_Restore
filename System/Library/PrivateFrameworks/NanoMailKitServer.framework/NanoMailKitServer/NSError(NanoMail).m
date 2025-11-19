@interface NSError(NanoMail)
+ (id)genericErrorWithMessage:()NanoMail;
+ (id)httpErrorWithCode:()NanoMail message:;
@end

@implementation NSError(NanoMail)

+ (id)genericErrorWithMessage:()NanoMail
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 errorWithCode:999 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)httpErrorWithCode:()NanoMail message:
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CCA450];
  v13[1] = @"NNMKErrorHTTPStatusCodeUserInfoKey";
  v14[0] = a4;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [a1 errorWithCode:998 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end