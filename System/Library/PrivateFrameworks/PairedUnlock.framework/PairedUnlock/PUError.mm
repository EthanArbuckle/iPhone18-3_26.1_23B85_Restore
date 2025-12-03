@interface PUError
+ (id)errorWithCode:(unint64_t)code description:(id)description;
@end

@implementation PUError

+ (id)errorWithCode:(unint64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.pairedunlock" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end