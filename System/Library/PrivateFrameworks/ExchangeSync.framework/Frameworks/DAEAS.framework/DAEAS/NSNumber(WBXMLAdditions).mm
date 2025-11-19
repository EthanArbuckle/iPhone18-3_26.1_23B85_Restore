@interface NSNumber(WBXMLAdditions)
+ (uint64_t)acceptsTopLevelLeaves;
+ (uint64_t)frontingBasicTypes;
+ (uint64_t)notifyOfUnknownTokens;
+ (uint64_t)parsingLeafNode;
+ (uint64_t)parsingWithSubItems;
- (id)initWithASParseContext:()WBXMLAdditions root:parent:callbackDict:streamCallbackDict:lengthUntilEndOfTerminator:;
@end

@implementation NSNumber(WBXMLAdditions)

+ (uint64_t)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_103 == 1)
  {
    v1 = acceptsTopLevelLeaves___result_104;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_104 = v1;
    acceptsTopLevelLeaves___haveChecked_103 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_105 == 1)
  {
    v1 = parsingLeafNode___result_106;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_106 = v1;
    parsingLeafNode___haveChecked_105 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_107 == 1)
  {
    v1 = parsingWithSubItems___result_108;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_108 = v1;
    parsingWithSubItems___haveChecked_107 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_109 == 1)
  {
    v1 = frontingBasicTypes___result_110;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_110 = v1;
    frontingBasicTypes___haveChecked_109 = 1;
  }

  return v1 & 1;
}

+ (uint64_t)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_111 == 1)
  {
    v1 = notifyOfUnknownTokens___result_112;
  }

  else
  {
    v1 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_112 = v1;
    notifyOfUnknownTokens___haveChecked_111 = 1;
  }

  return v1 & 1;
}

- (id)initWithASParseContext:()WBXMLAdditions root:parent:callbackDict:streamCallbackDict:lengthUntilEndOfTerminator:
{
  v14 = MEMORY[0x277CCACA8];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[v14 alloc] initWithASParseContext:v19 root:v18 parent:v17 callbackDict:v16 streamCallbackDict:v15 lengthUntilEndOfTerminator:a8];

  if (v20)
  {
    a1 = [a1 initWithInt:{objc_msgSend(v20, "intValue")}];
    v21 = a1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end