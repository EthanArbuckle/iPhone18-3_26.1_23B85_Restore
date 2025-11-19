@interface CRPBSerialization
+ (id)cardForData:(id)a3 messageName:(id)a4;
+ (id)originalDataForCard:(id)a3;
@end

@implementation CRPBSerialization

+ (id)cardForData:(id)a3 messageName:(id)a4
{
  v5 = a3;
  if ([a4 isEqualToString:@"searchfoundation.Card"])
  {
    v6 = [MEMORY[0x277D4C4F8] cardWithProto2Data:v5];
    v7 = [v6 cardId];

    if (!v7)
    {
      v8 = [MEMORY[0x277CCAD78] UUID];
      v9 = [v8 UUIDString];
      [v6 setCardId:v9];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)originalDataForCard:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277D4C728]) initWithFacade:v3];
    v5 = [v4 data];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end