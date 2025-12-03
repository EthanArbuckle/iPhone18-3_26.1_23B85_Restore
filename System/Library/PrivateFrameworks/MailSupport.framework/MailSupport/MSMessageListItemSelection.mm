@interface MSMessageListItemSelection
- (MSMessageListItemSelection)initWithMailboxes:(id)mailboxes excludedMessageListItems:(id)items;
- (MSMessageListItemSelection)initWithMessageListItems:(id)items;
@end

@implementation MSMessageListItemSelection

- (MSMessageListItemSelection)initWithMessageListItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = MSMessageListItemSelection;
  v6 = [(MSMessageListItemSelection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageListItems, items);
    v7->_isSelectAll = 0;
    v7->_actingOnSender = [itemsCopy ef_any:&__block_literal_global_6];
  }

  return v7;
}

uint64_t __55__MSMessageListItemSelection_initWithMessageListItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (MSMessageListItemSelection)initWithMailboxes:(id)mailboxes excludedMessageListItems:(id)items
{
  mailboxesCopy = mailboxes;
  v8 = [(MSMessageListItemSelection *)self initWithMessageListItems:items];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mailboxes, mailboxes);
    v9->_isSelectAll = 1;
  }

  return v9;
}

@end