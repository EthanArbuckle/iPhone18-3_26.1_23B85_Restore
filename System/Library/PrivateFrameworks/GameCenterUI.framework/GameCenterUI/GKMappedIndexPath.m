@interface GKMappedIndexPath
+ (id)indexPathForItem:(int64_t)a3 inSection:(int64_t)a4 fromSourceIndexPath:(id)a5 withTag:(id)a6;
@end

@implementation GKMappedIndexPath

+ (id)indexPathForItem:(int64_t)a3 inSection:(int64_t)a4 fromSourceIndexPath:(id)a5 withTag:(id)a6
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a3;
  v8 = a6;
  v9 = a5;
  v10 = [a1 indexPathWithIndexes:v12 length:2];
  [v10 setTag:v8];

  [v10 setSourceIndexPath:v9];

  return v10;
}

@end