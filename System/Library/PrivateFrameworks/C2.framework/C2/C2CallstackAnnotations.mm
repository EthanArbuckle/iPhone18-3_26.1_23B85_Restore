@interface C2CallstackAnnotations
+ (id)annotateBlockForContainerType:(int64_t)a3 block:(id)a4;
+ (void)annotateCallstackForContainerType:(int64_t)a3 block:(id)a4;
@end

@implementation C2CallstackAnnotations

+ (void)annotateCallstackForContainerType:(int64_t)a3 block:(id)a4
{
  v4 = a4;
  c2_callstack_annotation_ThirdParty(v4);
}

+ (id)annotateBlockForContainerType:(int64_t)a3 block:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__C2CallstackAnnotations_annotateBlockForContainerType_block___block_invoke;
  v9[3] = &unk_278D40910;
  v10 = v5;
  v11 = a3;
  v6 = v5;
  v7 = _Block_copy(v9);

  return v7;
}

@end