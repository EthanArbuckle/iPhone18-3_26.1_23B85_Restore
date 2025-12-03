@interface NSURL(GSAdditions)
- (void)gs_chmod:()GSAdditions;
@end

@implementation NSURL(GSAdditions)

- (void)gs_chmod:()GSAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *MEMORY[0x277CCA180];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  path = [self path];
  [defaultManager setAttributes:v7 ofItemAtPath:path error:0];

  v9 = *MEMORY[0x277D85DE8];
}

@end