@interface NSError(TSUWarning)
+ (id)tsu_errorWithWarning:()TSUWarning;
@end

@implementation NSError(TSUWarning)

+ (id)tsu_errorWithWarning:()TSUWarning
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v4 = [a3 message];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"com.apple.iWork.TSUWarningErrorDomain" code:0 userInfo:v5];

  return v6;
}

@end