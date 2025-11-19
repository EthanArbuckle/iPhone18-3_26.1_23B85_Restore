@interface FSFFeatureStoreService
+ (id)interactionIdForInjection;
+ (id)retrieveCodingWithInteractionId:(id)a3 klass:(Class)a4 error:(id *)a5;
@end

@implementation FSFFeatureStoreService

+ (id)retrieveCodingWithInteractionId:(id)a3 klass:(Class)a4 error:(id *)a5
{
  v7 = a3;
  v8 = NSStringFromClass(a4);
  v9 = [FSFCurareInteractionStream getWithStreamId:v8 sourceType:0];

  v10 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v11 = [v9 retrieve:v10];

  v12 = [v11 objectForKeyedSubscript:v7];

  v13 = [v12 objectAtIndexedSubscript:0];

  v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a4 fromData:v13 error:a5];

  return v14;
}

+ (id)interactionIdForInjection
{
  v2 = static FeatureStoreService.interactionIdForInjection()();
  if (v3)
  {
    v4 = MEMORY[0x223DD33D0](v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end