@interface GKMappedIndexPath
+ (id)indexPathForItem:(int64_t)item inSection:(int64_t)section fromSourceIndexPath:(id)path withTag:(id)tag;
@end

@implementation GKMappedIndexPath

+ (id)indexPathForItem:(int64_t)item inSection:(int64_t)section fromSourceIndexPath:(id)path withTag:(id)tag
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = section;
  v12[1] = item;
  tagCopy = tag;
  pathCopy = path;
  v10 = [self indexPathWithIndexes:v12 length:2];
  [v10 setTag:tagCopy];

  [v10 setSourceIndexPath:pathCopy];

  return v10;
}

@end