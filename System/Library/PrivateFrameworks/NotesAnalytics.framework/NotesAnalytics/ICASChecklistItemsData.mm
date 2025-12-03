@interface ICASChecklistItemsData
- (ICASChecklistItemsData)initWithCountOfCheckedItems:(id)items countOfTotalItems:(id)totalItems;
- (id)toDict;
@end

@implementation ICASChecklistItemsData

- (ICASChecklistItemsData)initWithCountOfCheckedItems:(id)items countOfTotalItems:(id)totalItems
{
  itemsCopy = items;
  totalItemsCopy = totalItems;
  v12.receiver = self;
  v12.super_class = ICASChecklistItemsData;
  v9 = [(ICASChecklistItemsData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countOfCheckedItems, items);
    objc_storeStrong(&v10->_countOfTotalItems, totalItems);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"countOfCheckedItems";
  countOfCheckedItems = [(ICASChecklistItemsData *)self countOfCheckedItems];
  if (countOfCheckedItems)
  {
    countOfCheckedItems2 = [(ICASChecklistItemsData *)self countOfCheckedItems];
  }

  else
  {
    countOfCheckedItems2 = objc_opt_new();
  }

  v5 = countOfCheckedItems2;
  v12[1] = @"countOfTotalItems";
  v13[0] = countOfCheckedItems2;
  countOfTotalItems = [(ICASChecklistItemsData *)self countOfTotalItems];
  if (countOfTotalItems)
  {
    countOfTotalItems2 = [(ICASChecklistItemsData *)self countOfTotalItems];
  }

  else
  {
    countOfTotalItems2 = objc_opt_new();
  }

  v8 = countOfTotalItems2;
  v13[1] = countOfTotalItems2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end