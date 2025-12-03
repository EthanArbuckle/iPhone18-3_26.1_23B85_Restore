@interface SGQuickResponsesModelRules
+ (BOOL)areModelsAvailableInLanguage:(id)language;
@end

@implementation SGQuickResponsesModelRules

+ (BOOL)areModelsAvailableInLanguage:(id)language
{
  languageCopy = language;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  rules = [self rules];
  v6 = [rules objectForKeyedSubscript:@"SGQuickResponses"];
  v7 = [v6 objectForKeyedSubscript:languageCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SGQuickResponsesModelRules_areModelsAvailableInLanguage___block_invoke;
  v9[3] = &unk_278EB7A08;
  v10 = @"SGQRTextMessage";
  v11 = &v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
  LOBYTE(rules) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return rules;
}

void __59__SGQuickResponsesModelRules_areModelsAvailableInLanguage___block_invoke(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v10 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("+[SGQuickResponsesModelRules areModelsAvailableInLanguage:]_block_invoke", "SGQuickResponsesModel.m", 448, "[objectives isKindOfClass:[NSDictionary class]]");
  }

  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  v9 = [v8 count] != 0;
  *(*(*(a1 + 40) + 8) + 24) = v9;
  *a4 = v9;
}

@end