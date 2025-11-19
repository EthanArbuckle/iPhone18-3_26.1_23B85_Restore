@interface VSKAttribute(MediaAnalysis)
+ (id)mad_embeddingVersionAttribute;
+ (id)mad_stringIdentifierAttribute;
@end

@implementation VSKAttribute(MediaAnalysis)

+ (id)mad_embeddingVersionAttribute
{
  v0 = objc_alloc(MEMORY[0x1E69DF600]);
  v1 = [objc_opt_class() mad_embeddingVersionAttributeName];
  v2 = [objc_alloc(MEMORY[0x1E69DF610]) initWithIntegerDefaultValue:0];
  v3 = [v0 initWithName:v1 columnType:v2];

  return v3;
}

+ (id)mad_stringIdentifierAttribute
{
  v0 = objc_alloc(MEMORY[0x1E69DF600]);
  v1 = [objc_alloc(MEMORY[0x1E69DF610]) initWithStringDefaultValue:0];
  v2 = [v0 initWithName:@"asset_id" columnType:v1];

  return v2;
}

@end