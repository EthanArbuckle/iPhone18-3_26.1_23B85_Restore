@interface C2CallstackAnnotations
+ (id)annotateBlockForContainerType:(int64_t)type block:(id)block;
+ (void)annotateCallstackForContainerType:(int64_t)type block:(id)block;
@end

@implementation C2CallstackAnnotations

+ (void)annotateCallstackForContainerType:(int64_t)type block:(id)block
{
  blockCopy = block;
  c2_callstack_annotation_ThirdParty(blockCopy);
}

+ (id)annotateBlockForContainerType:(int64_t)type block:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__C2CallstackAnnotations_annotateBlockForContainerType_block___block_invoke;
  v9[3] = &unk_278D40910;
  v10 = blockCopy;
  typeCopy = type;
  v6 = blockCopy;
  v7 = _Block_copy(v9);

  return v7;
}

@end