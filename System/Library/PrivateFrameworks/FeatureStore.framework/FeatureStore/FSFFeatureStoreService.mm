@interface FSFFeatureStoreService
+ (id)interactionIdForInjection;
+ (id)retrieveCodingWithInteractionId:(id)id klass:(Class)klass error:(id *)error;
@end

@implementation FSFFeatureStoreService

+ (id)retrieveCodingWithInteractionId:(id)id klass:(Class)klass error:(id *)error
{
  idCopy = id;
  v8 = NSStringFromClass(klass);
  v9 = [FSFCurareInteractionStream getWithStreamId:v8 sourceType:0];

  v10 = [MEMORY[0x277CBEB98] setWithObject:idCopy];
  v11 = [v9 retrieve:v10];

  v12 = [v11 objectForKeyedSubscript:idCopy];

  v13 = [v12 objectAtIndexedSubscript:0];

  v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:klass fromData:v13 error:error];

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