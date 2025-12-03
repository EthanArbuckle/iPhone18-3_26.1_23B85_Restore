@interface ASMeetingRequestRecurrence
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
@end

@implementation ASMeetingRequestRecurrence

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_195_0 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_196_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_196_0 = v2;
    acceptsTopLevelLeaves___haveChecked_195_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_197_0 == 1)
  {
    v2 = parsingLeafNode___result_198_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_198_0 = v2;
    parsingLeafNode___haveChecked_197_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_199_0 == 1)
  {
    v2 = parsingWithSubItems___result_200_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_200_0 = v2;
    parsingWithSubItems___haveChecked_199_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_201_0 == 1)
  {
    v2 = frontingBasicTypes___result_202_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_202_0 = v2;
    frontingBasicTypes___haveChecked_201_0 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_203_0 == 1)
  {
    v2 = notifyOfUnknownTokens___result_204_0;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_204_0 = v2;
    notifyOfUnknownTokens___haveChecked_203_0 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v22 = MEMORY[0x277CBEAC0];
    selfCopy = self;
    v32 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:2 token:41 objectClass:objc_opt_class() setterMethod:sel_setType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:553];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:44 objectClass:objc_opt_class() setterMethod:sel_setInterval_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:556];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:45 objectClass:objc_opt_class() setterMethod:sel_setDayOfWeek_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:557];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:46 objectClass:objc_opt_class() setterMethod:sel_setDayOfMonth_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:558];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:47 objectClass:objc_opt_class() setterMethod:sel_setWeekOfMonth_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:559];
    v20 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:48 objectClass:objc_opt_class() setterMethod:sel_setMonthOfYear_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:560];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:42 objectClass:objc_opt_class() setterMethod:sel_setUntilString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:554];
    v17 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:43 objectClass:objc_opt_class() setterMethod:sel_setOccurrences_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:555];
    v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:22 token:15 objectClass:objc_opt_class() setterMethod:sel_setCalendarType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:5647];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:22 token:16 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:5648];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:22 token:18 objectClass:objc_opt_class() setterMethod:sel_setFirstDayOfWeek_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:5650];
    v5 = [v22 dictionaryWithObjectsAndKeys:{v32, v31, v30, v29, v28, v27, v25, v26, v24, v21, v20, v19, v18, v6, v17, v16, v15, v14, v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(selfCopy);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

@end