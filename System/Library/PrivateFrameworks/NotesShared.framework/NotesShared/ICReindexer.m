@interface ICReindexer
+ (id)reindexer;
@end

@implementation ICReindexer

+ (id)reindexer
{
  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    [MEMORY[0x277D361A8] sharedReindexer];
  }

  else
  {
    [MEMORY[0x277D36248] sharedIndexer];
  }
  v2 = ;

  return v2;
}

@end