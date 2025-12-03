@interface ASTopLevelErrorChecker
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (void)unknownToken:(int)token receivedForCodePage:(int)page;
@end

@implementation ASTopLevelErrorChecker

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_38 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_38 = v2;
    acceptsTopLevelLeaves___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_38 == 1)
  {
    v2 = parsingLeafNode___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_38 = v2;
    parsingLeafNode___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_38 == 1)
  {
    v2 = parsingWithSubItems___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_38 = v2;
    parsingWithSubItems___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_38 == 1)
  {
    v2 = frontingBasicTypes___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_38 = v2;
    frontingBasicTypes___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_38 == 1)
  {
    v2 = notifyOfUnknownTokens___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_38 = v2;
    notifyOfUnknownTokens___haveChecked_38 = 1;
  }

  return v2 & 1;
}

- (void)unknownToken:(int)token receivedForCodePage:(int)page
{
  v12 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v7))
    {
      v9[0] = 67109376;
      v9[1] = page;
      v10 = 1024;
      tokenCopy = token;
      _os_log_impl(&dword_24A0AC000, v6, v7, "No top level errors in the server response. The code page / token are %d / %d ", v9, 0xEu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end