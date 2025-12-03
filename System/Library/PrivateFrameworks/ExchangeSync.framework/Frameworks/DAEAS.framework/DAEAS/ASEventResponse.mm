@interface ASEventResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASEventResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_642 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_643;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_643 = v2;
    acceptsTopLevelLeaves___haveChecked_642 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_644 == 1)
  {
    v2 = parsingLeafNode___result_645;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_645 = v2;
    parsingLeafNode___haveChecked_644 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_646 == 1)
  {
    v2 = parsingWithSubItems___result_647;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_647 = v2;
    parsingWithSubItems___haveChecked_646 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_648 == 1)
  {
    v2 = frontingBasicTypes___result_649;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_649 = v2;
    frontingBasicTypes___haveChecked_648 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_650 == 1)
  {
    v2 = notifyOfUnknownTokens___result_651;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_651 = v2;
    notifyOfUnknownTokens___haveChecked_650 = 1;
  }

  return v2 & 1;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v9.receiver = self;
  v9.super_class = ASEventResponse;
  [(ASEvent *)&v9 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  [(ASChangedCollectionLeaf *)self setIsResponse:1];
}

@end