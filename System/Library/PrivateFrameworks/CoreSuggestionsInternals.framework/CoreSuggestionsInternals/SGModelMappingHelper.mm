@interface SGModelMappingHelper
+ (id)loadMappingsForType:(id)type andLanguage:(id)language;
+ (id)mappingsForType:(id)type andLanguage:(id)language;
@end

@implementation SGModelMappingHelper

+ (id)loadMappingsForType:(id)type andLanguage:(id)language
{
  v5 = MEMORY[0x277D02558];
  languageCopy = language;
  typeCopy = type;
  mappings = [v5 mappings];
  v9 = [mappings objectForKey:typeCopy];

  v10 = [v9 objectForKey:languageCopy];

  return v10;
}

+ (id)mappingsForType:(id)type andLanguage:(id)language
{
  typeCopy = type;
  v7 = [self loadMappingsForType:typeCopy andLanguage:language];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SGModelMappingHelper_mappingsForType_andLanguage___block_invoke;
  v14[3] = &unk_27894F210;
  v9 = dictionary;
  v15 = v9;
  v16 = typeCopy;
  v10 = typeCopy;
  [v7 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

@end