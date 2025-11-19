@interface ASBool
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
@end

@implementation ASBool

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_19 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_19;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_19 = v2;
    acceptsTopLevelLeaves___haveChecked_19 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_19 == 1)
  {
    v2 = parsingLeafNode___result_19;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_19 = v2;
    parsingLeafNode___haveChecked_19 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_19 == 1)
  {
    v2 = parsingWithSubItems___result_19;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_19 = v2;
    parsingWithSubItems___haveChecked_19 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_19 == 1)
  {
    v2 = frontingBasicTypes___result_19;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_19 = v2;
    frontingBasicTypes___haveChecked_19 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_19 == 1)
  {
    v2 = notifyOfUnknownTokens___result_19;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_19 = v2;
    notifyOfUnknownTokens___haveChecked_19 = 1;
  }

  return v2 & 1;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  self->super._codePage = [v14 codePage];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = self;
  }

  objc_storeWeak(&self->super._root, v13);

  objc_storeWeak(&self->super._parent, v11);
  [v14 advanceOffsetByAmount:1];
}

@end