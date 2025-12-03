@interface HMDBulletinUIManager
+ (void)openHomeAppWithURL:(id)l;
@end

@implementation HMDBulletinUIManager

void __77__HMDBulletinUIManager_presentExecutionErrorDialogForTrigger_partialSuccess___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277CD1878];
    v3 = [*(a1 + 32) home];
    v4 = [v3 contextSPIUniqueIdentifier];
    v5 = [v4 UUIDString];
    v9 = [v2 tupleWithQueryType:0 uuidString:v5];

    v6 = [MEMORY[0x277CD1878] tupleWithQueryType:7 uuidString:0];
    v7 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v8 = generateURLForHomeKitObject();

    [HMDBulletinUIManager openHomeAppWithURL:v8];
  }
}

+ (void)openHomeAppWithURL:(id)l
{
  absoluteString = [l absoluteString];
  if (!absoluteString)
  {
    absoluteString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://", *MEMORY[0x277CCFE40]];
  }

  v4 = absoluteString;
  launchURL(absoluteString);
}

@end