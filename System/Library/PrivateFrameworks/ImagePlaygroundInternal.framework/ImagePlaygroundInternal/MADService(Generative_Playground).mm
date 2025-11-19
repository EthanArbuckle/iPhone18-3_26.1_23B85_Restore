@interface MADService(Generative_Playground)
+ (uint64_t)getEmbeddingVectorDimension:()Generative_Playground;
@end

@implementation MADService(Generative_Playground)

+ (uint64_t)getEmbeddingVectorDimension:()Generative_Playground
{
  v4 = [MEMORY[0x1E69AE238] getUnifiedEmbeddingVersion];
  v5 = MEMORY[0x1E69AE238];

  return [v5 getEmbeddingFormatForVersion:v4 dimension:a3 type:0 error:0];
}

@end