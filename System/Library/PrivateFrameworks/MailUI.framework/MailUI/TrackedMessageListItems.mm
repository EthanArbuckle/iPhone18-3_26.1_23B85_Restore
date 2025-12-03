@interface TrackedMessageListItems
- (BOOL)hasMessageListItemForItemID:(id)d;
- (NSArray)messageListItems;
- (NSSet)itemIDsSet;
- (TrackedMessageListItems)init;
- (void)trackMessageListItemWithItemID:(id)d;
- (void)trackmessageListItem:(id)item;
- (void)updateMessageListItem:(id)item;
@end

@implementation TrackedMessageListItems

- (TrackedMessageListItems)init
{
  v6.receiver = self;
  v6.super_class = TrackedMessageListItems;
  v2 = [(TrackedMessageListItems *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedItems = v2->_trackedItems;
    v2->_trackedItems = v3;
  }

  return v2;
}

- (NSSet)itemIDsSet
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_trackedItems allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (NSArray)messageListItems
{
  allValues = [(NSMutableDictionary *)self->_trackedItems allValues];
  v3 = [allValues ef_filter:*MEMORY[0x277D07110]];

  return v3;
}

- (BOOL)hasMessageListItemForItemID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_trackedItems objectForKeyedSubscript:d];
  v4 = v3 != 0;

  return v4;
}

- (void)trackmessageListItem:(id)item
{
  trackedItems = self->_trackedItems;
  itemCopy = item;
  itemID = [itemCopy itemID];
  [(NSMutableDictionary *)trackedItems setObject:itemCopy forKeyedSubscript:itemID];
}

- (void)trackMessageListItemWithItemID:(id)d
{
  v4 = MEMORY[0x277CBEB68];
  dCopy = d;
  null = [v4 null];
  [(NSMutableDictionary *)self->_trackedItems setObject:null forKeyedSubscript:dCopy];
}

- (void)updateMessageListItem:(id)item
{
  itemCopy = item;
  trackedItems = self->_trackedItems;
  v10 = itemCopy;
  itemID = [itemCopy itemID];
  v7 = [(NSMutableDictionary *)trackedItems objectForKeyedSubscript:itemID];

  if (v7)
  {
    v8 = self->_trackedItems;
    itemID2 = [v10 itemID];
    [(NSMutableDictionary *)v8 setObject:v10 forKeyedSubscript:itemID2];
  }
}

@end