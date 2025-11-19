@interface HUSideBarStaticItem
- (HUSideBarStaticItem)initWithSideBarStaticItemType:(unint64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)resultDictionary;
@end

@implementation HUSideBarStaticItem

- (id)resultDictionary
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUSideBarStaticItem *)self type];
  if (v3 == 2)
  {
    v11[0] = *MEMORY[0x277D13F60];
    v4 = HFLocalizedString();
    v12[0] = v4;
    v11[1] = *MEMORY[0x277D13EA0];
    v8 = [MEMORY[0x277D14CE8] isAMac];
    v9 = @"star.fill";
    if (v8)
    {
      v9 = @"star";
    }

    v12[1] = v9;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v12;
    v7 = v11;
  }

  else if (v3 == 1)
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
    if (v3)
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

- (HUSideBarStaticItem)initWithSideBarStaticItemType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HUSideBarStaticItem;
  result = [(HFStaticItem *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = MEMORY[0x277D14780];
  v6 = [(HUSideBarStaticItem *)self resultDictionary];
  v7 = [v5 outcomeWithResults:v6];
  [v4 finishWithResult:v7];

  return v4;
}

@end