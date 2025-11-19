@interface SGQuickResponsesDynamicLabelSet
+ (BOOL)isDynamicLabel:(id)a3;
+ (id)dynamicLabelSet;
@end

@implementation SGQuickResponsesDynamicLabelSet

+ (BOOL)isDynamicLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 dynamicLabelSet];
  v6 = [v5 containsObject:v4];

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