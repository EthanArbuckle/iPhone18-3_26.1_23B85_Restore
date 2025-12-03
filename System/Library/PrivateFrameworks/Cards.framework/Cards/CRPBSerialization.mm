@interface CRPBSerialization
+ (id)cardForData:(id)data messageName:(id)name;
+ (id)originalDataForCard:(id)card;
@end

@implementation CRPBSerialization

+ (id)cardForData:(id)data messageName:(id)name
{
  dataCopy = data;
  if ([name isEqualToString:@"searchfoundation.Card"])
  {
    v6 = [MEMORY[0x277D4C4F8] cardWithProto2Data:dataCopy];
    cardId = [v6 cardId];

    if (!cardId)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v6 setCardId:uUIDString];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)originalDataForCard:(id)card
{
  cardCopy = card;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277D4C728]) initWithFacade:cardCopy];
    data = [v4 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

@end