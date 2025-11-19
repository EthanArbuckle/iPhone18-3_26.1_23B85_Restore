@interface ASEmailItemResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
@end

@implementation ASEmailItemResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_387 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_388;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_388 = v2;
    acceptsTopLevelLeaves___haveChecked_387 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_389 == 1)
  {
    v2 = parsingLeafNode___result_390;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_390 = v2;
    parsingLeafNode___haveChecked_389 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_391 == 1)
  {
    v2 = parsingWithSubItems___result_392;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_392 = v2;
    parsingWithSubItems___haveChecked_391 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_393 == 1)
  {
    v2 = frontingBasicTypes___result_394;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_394 = v2;
    frontingBasicTypes___haveChecked_393 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_395 == 1)
  {
    v2 = notifyOfUnknownTokens___result_396;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_396 = v2;
    notifyOfUnknownTokens___haveChecked_395 = 1;
  }

  return v2 & 1;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v9.receiver = self;
  v9.super_class = ASEmailItemResponse;
  [(ASEmailItem *)&v9 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
  [(ASChangedCollectionLeaf *)self setIsResponse:1];
}

@end