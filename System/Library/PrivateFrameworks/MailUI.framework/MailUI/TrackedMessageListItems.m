@interface TrackedMessageListItems
- (BOOL)hasMessageListItemForItemID:(id)a3;
- (NSArray)messageListItems;
- (NSSet)itemIDsSet;
- (TrackedMessageListItems)init;
- (void)trackMessageListItemWithItemID:(id)a3;
- (void)trackmessageListItem:(id)a3;
- (void)updateMessageListItem:(id)a3;
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
  v3 = [(NSMutableDictionary *)self->_trackedItems allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (NSArray)messageListItems
{
  v2 = [(NSMutableDictionary *)self->_trackedItems allValues];
  v3 = [v2 ef_filter:*MEMORY[0x277D07110]];

  return v3;
}

- (BOOL)hasMessageListItemForItemID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_trackedItems objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)trackmessageListItem:(id)a3
{
  trackedItems = self->_trackedItems;
  v4 = a3;
  v5 = [v4 itemID];
  [(NSMutableDictionary *)trackedItems setObject:v4 forKeyedSubscript:v5];
}

- (void)trackMessageListItemWithItemID:(id)a3
{
  v4 = MEMORY[0x277CBEB68];
  v5 = a3;
  v6 = [v4 null];
  [(NSMutableDictionary *)self->_trackedItems setObject:v6 forKeyedSubscript:v5];
}

- (void)updateMessageListItem:(id)a3
{
  v4 = a3;
  trackedItems = self->_trackedItems;
  v10 = v4;
  v6 = [v4 itemID];
  v7 = [(NSMutableDictionary *)trackedItems objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_trackedItems;
    v9 = [v10 itemID];
    [(NSMutableDictionary *)v8 setObject:v10 forKeyedSubscript:v9];
  }
}

@end