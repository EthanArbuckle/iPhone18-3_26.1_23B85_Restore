@interface ASContactResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASContactResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_609 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_610;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_610 = v2;
    acceptsTopLevelLeaves___haveChecked_609 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_611 == 1)
  {
    v2 = parsingLeafNode___result_612;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_612 = v2;
    parsingLeafNode___haveChecked_611 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_613 == 1)
  {
    v2 = parsingWithSubItems___result_614;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_614 = v2;
    parsingWithSubItems___haveChecked_613 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_615 == 1)
  {
    v2 = frontingBasicTypes___result_616;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_616 = v2;
    frontingBasicTypes___haveChecked_615 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_617 == 1)
  {
    v2 = notifyOfUnknownTokens___result_618;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_618 = v2;
    notifyOfUnknownTokens___haveChecked_617 = 1;
  }

  return v2 & 1;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v9.receiver = self;
  v9.super_class = ASContactResponse;
  [(ASContact *)&v9 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  [(ASChangedCollectionLeaf *)self setIsResponse:1];
}

@end