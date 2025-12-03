@interface ICModernSearchIndexerDataSource(App)
- (id)mainThreadContext;
@end

@implementation ICModernSearchIndexerDataSource(App)

- (id)mainThreadContext
{
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  managedObjectContext = [mEMORY[0x277D35F30] managedObjectContext];

  return managedObjectContext;
}

@end