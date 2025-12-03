@interface CompletionListTableItem
- (BOOL)isEqual:(id)equal;
- (CompletionListTableItem)initWithCompletionItem:(id)item;
- (id)description;
@end

@implementation CompletionListTableItem

- (CompletionListTableItem)initWithCompletionItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = CompletionListTableItem;
  v6 = [(CompletionListTableItem *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_completionItem, item);
    tableItemEqualityInfo = [itemCopy tableItemEqualityInfo];
    v9 = [tableItemEqualityInfo copy];
    tableItemEqualityInfo = v7->_tableItemEqualityInfo;
    v7->_tableItemEqualityInfo = v9;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v7->_tableItemEqualityInfo;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v7->_equivalenceHash ^= [*(*(&v18 + 1) + 8 * v15++) hash];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    v16 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(CompletionItem *)self->_completionItem isMemberOfClass:objc_opt_class()])
      {
        v6 = [(NSArray *)self->_tableItemEqualityInfo isEqual:v5->_tableItemEqualityInfo];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %@>", v5, self->_tableItemEqualityInfo];;

  return v6;
}

@end