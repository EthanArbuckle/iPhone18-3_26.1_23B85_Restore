@interface ICModernSearchIndexerDataSource(App)
- (id)mainThreadContext;
@end

@implementation ICModernSearchIndexerDataSource(App)

- (id)mainThreadContext
{
  v0 = [MEMORY[0x277D35F30] sharedContext];
  v1 = [v0 managedObjectContext];

  return v1;
}

@end