@interface NSError(KCJoiningError)
+ (id)errorWithJoiningError:()KCJoiningError format:;
+ (id)errorWithJoiningError:()KCJoiningError format:arguments:;
@end

@implementation NSError(KCJoiningError)

+ (id)errorWithJoiningError:()KCJoiningError format:
{
  v9 = [MEMORY[0x277CCA9B8] errorWithJoiningError:a3 format:a4 arguments:&a9];

  return v9;
}

+ (id)errorWithJoiningError:()KCJoiningError format:arguments:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = a4;
  v9 = [v7 alloc];
  v15 = *MEMORY[0x277CCA450];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v8 arguments:a5];

  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithJoiningError:a3 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end