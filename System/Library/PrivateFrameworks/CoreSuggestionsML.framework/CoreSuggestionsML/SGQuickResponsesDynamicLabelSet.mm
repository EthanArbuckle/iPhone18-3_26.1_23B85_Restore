@interface SGQuickResponsesDynamicLabelSet
+ (BOOL)isDynamicLabel:(id)label;
+ (id)dynamicLabelSet;
@end

@implementation SGQuickResponsesDynamicLabelSet

+ (BOOL)isDynamicLabel:(id)label
{
  labelCopy = label;
  dynamicLabelSet = [self dynamicLabelSet];
  v6 = [dynamicLabelSet containsObject:labelCopy];

  return v6;
}

+ (id)dynamicLabelSet
{
  if (dynamicLabelSet_onceToken != -1)
  {
    dispatch_once(&dynamicLabelSet_onceToken, &__block_literal_global_2089);
  }

  v3 = dynamicLabelSet_dynamicLabelSet;

  return v3;
}

void __50__SGQuickResponsesDynamicLabelSet_dynamicLabelSet__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28599B008];
  v2 = dynamicLabelSet_dynamicLabelSet;
  dynamicLabelSet_dynamicLabelSet = v1;

  objc_autoreleasePoolPop(v0);
}

@end