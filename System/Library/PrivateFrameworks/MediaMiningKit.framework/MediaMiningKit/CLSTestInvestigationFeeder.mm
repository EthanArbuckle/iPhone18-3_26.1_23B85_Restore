@interface CLSTestInvestigationFeeder
+ (void)initialize;
- (CLSTestInvestigationFeeder)initWithItems:(id)items;
- (id)approximateLocation;
- (id)localEndDate;
- (id)localEndDateComponents;
- (id)localStartDate;
- (id)localStartDateComponents;
- (id)universalEndDate;
- (id)universalStartDate;
@end

@implementation CLSTestInvestigationFeeder

- (id)approximateLocation
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        clsLocation = [*(*(&v10 + 1) + 8 * i) clsLocation];
        if (clsLocation)
        {
          v8 = clsLocation;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)universalEndDate
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_universalDate = [lastObject cls_universalDate];

  return cls_universalDate;
}

- (id)universalStartDate
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_universalDate = [firstObject cls_universalDate];

  return cls_universalDate;
}

- (id)localEndDate
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_localDate = [lastObject cls_localDate];

  return cls_localDate;
}

- (id)localStartDate
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_localDate = [firstObject cls_localDate];

  return cls_localDate;
}

- (id)localEndDateComponents
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_localDateComponents = [lastObject cls_localDateComponents];

  return cls_localDateComponents;
}

- (id)localStartDateComponents
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_localDateComponents = [firstObject cls_localDateComponents];

  return cls_localDateComponents;
}

- (CLSTestInvestigationFeeder)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = CLSTestInvestigationFeeder;
  v5 = [(CLSInvestigationFeeder *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy sortedArrayUsingComparator:&__block_literal_global_3484];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

uint64_t __44__CLSTestInvestigationFeeder_initWithItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sCurationModel = [objc_alloc(MEMORY[0x277D3C798]) initForTesting];

    MEMORY[0x2821F96F8]();
  }
}

@end