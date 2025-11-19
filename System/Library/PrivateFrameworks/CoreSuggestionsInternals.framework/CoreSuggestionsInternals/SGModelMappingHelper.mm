@interface SGModelMappingHelper
+ (id)loadMappingsForType:(id)a3 andLanguage:(id)a4;
+ (id)mappingsForType:(id)a3 andLanguage:(id)a4;
@end

@implementation SGModelMappingHelper

+ (id)loadMappingsForType:(id)a3 andLanguage:(id)a4
{
  v5 = MEMORY[0x277D02558];
  v6 = a4;
  v7 = a3;
  v8 = [v5 mappings];
  v9 = [v8 objectForKey:v7];

  v10 = [v9 objectForKey:v6];

  return v10;
}

+ (id)mappingsForType:(id)a3 andLanguage:(id)a4
{
  v6 = a3;
  v7 = [a1 loadMappingsForType:v6 andLanguage:a4];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SGModelMappingHelper_mappingsForType_andLanguage___block_invoke;
  v14[3] = &unk_27894F210;
  v9 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

@end