@interface HUSideBarStaticItem
- (HUSideBarStaticItem)initWithSideBarStaticItemType:(unint64_t)type;
- (id)_subclass_updateWithOptions:(id)options;
- (id)resultDictionary;
@end

@implementation HUSideBarStaticItem

- (id)resultDictionary
{
  v16[2] = *MEMORY[0x277D85DE8];
  type = [(HUSideBarStaticItem *)self type];
  if (type == 2)
  {
    v11[0] = *MEMORY[0x277D13F60];
    v4 = HFLocalizedString();
    v12[0] = v4;
    v11[1] = *MEMORY[0x277D13EA0];
    isAMac = [MEMORY[0x277D14CE8] isAMac];
    v9 = @"star.fill";
    if (isAMac)
    {
      v9 = @"star";
    }

    v12[1] = v9;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v12;
    v7 = v11;
  }

  else if (type == 1)
  {
    v13[0] = *MEMORY[0x277D13F60];
    v4 = HFLocalizedString();
    v13[1] = *MEMORY[0x277D13EA0];
    v14[0] = v4;
    v14[1] = @"deskclock";
    v5 = MEMORY[0x277CBEAC0];
    v6 = v14;
    v7 = v13;
  }

  else
  {
    if (type)
    {
      goto LABEL_10;
    }

    v15[0] = *MEMORY[0x277D13F60];
    v4 = HFLocalizedString();
    v15[1] = *MEMORY[0x277D13EA0];
    v16[0] = v4;
    v16[1] = @"house";
    v5 = MEMORY[0x277CBEAC0];
    v6 = v16;
    v7 = v15;
  }

  v2 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:2];

LABEL_10:

  return v2;
}

- (HUSideBarStaticItem)initWithSideBarStaticItemType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = HUSideBarStaticItem;
  result = [(HFStaticItem *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = MEMORY[0x277D14780];
  resultDictionary = [(HUSideBarStaticItem *)self resultDictionary];
  v7 = [v5 outcomeWithResults:resultDictionary];
  [v4 finishWithResult:v7];

  return v4;
}

@end