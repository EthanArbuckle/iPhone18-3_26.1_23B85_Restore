@interface CPLAssetKeywordSortDescriptor
+ (id)sortedKeywordsForKeywordSet:(id)a3;
- (CPLAssetKeywordSortDescriptor)init;
@end

@implementation CPLAssetKeywordSortDescriptor

- (CPLAssetKeywordSortDescriptor)init
{
  v3.receiver = self;
  v3.super_class = CPLAssetKeywordSortDescriptor;
  return [(CPLAssetKeywordSortDescriptor *)&v3 init];
}

+ (id)sortedKeywordsForKeywordSet:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CPLAssetKeywordSortDescriptor_sortedKeywordsForKeywordSet___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = sortedKeywordsForKeywordSet__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&sortedKeywordsForKeywordSet__onceToken, block);
  }

  v5 = [v4 sortedArrayUsingDescriptors:sortedKeywordsForKeywordSet__sortDescriptors];

  return v5;
}

void __61__CPLAssetKeywordSortDescriptor_sortedKeywordsForKeywordSet___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DEC8];
  v4 = objc_alloc_init(*(a1 + 32));
  v2 = [v1 arrayWithObject:v4];
  v3 = sortedKeywordsForKeywordSet__sortDescriptors;
  sortedKeywordsForKeywordSet__sortDescriptors = v2;
}

@end