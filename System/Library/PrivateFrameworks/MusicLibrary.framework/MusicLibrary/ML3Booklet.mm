@interface ML3Booklet
+ (id)allProperties;
+ (id)predisambiguatedProperties;
@end

@implementation ML3Booklet

+ (id)allProperties
{
  if (allProperties___allPropertiesOnceToken != -1)
  {
    dispatch_once(&allProperties___allPropertiesOnceToken, &__block_literal_global_16609);
  }

  v3 = allProperties___ML3BookletAllProperties;

  return v3;
}

void __27__ML3Booklet_allProperties__block_invoke()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"booklet_pid";
  v2[1] = @"item_pid";
  v2[2] = @"name";
  v2[3] = @"store_item_id";
  v2[4] = @"redownload_params";
  v2[5] = @"file_size";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:6];
  v1 = allProperties___ML3BookletAllProperties;
  allProperties___ML3BookletAllProperties = v0;
}

+ (id)predisambiguatedProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ML3Booklet_predisambiguatedProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (predisambiguatedProperties___predisambiguatedPropertiesOnceToken != -1)
  {
    dispatch_once(&predisambiguatedProperties___predisambiguatedPropertiesOnceToken, block);
  }

  v2 = predisambiguatedProperties___ML3BookletPredisambiguatedPropertyForProperties;

  return v2;
}

void __40__ML3Booklet_predisambiguatedProperties__block_invoke(uint64_t a1)
{
  v4 = [objc_opt_class() allProperties];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [*(a1 + 32) predisambiguateProperties:v4 toDictionary:v2];
  v3 = predisambiguatedProperties___ML3BookletPredisambiguatedPropertyForProperties;
  predisambiguatedProperties___ML3BookletPredisambiguatedPropertyForProperties = v2;
}

@end