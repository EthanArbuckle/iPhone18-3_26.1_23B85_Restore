@interface CNSuggestedRecipientItem
+ (id)os_log;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelectedForHandles:(id)handles;
- (BOOL)shouldDeselectForHandles:(id)handles;
- (CNSuggestedRecipientItem)initWithRecipient:(id)recipient;
- (id)description;
- (unint64_t)hash;
- (void)loadHandles;
@end

@implementation CNSuggestedRecipientItem

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[CNSuggestedRecipientItem os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __34__CNSuggestedRecipientItem_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.autocomplete.ui", "suggestions");

  return MEMORY[0x1EEE66BB8]();
}

- (CNSuggestedRecipientItem)initWithRecipient:(id)recipient
{
  recipientCopy = recipient;
  v14.receiver = self;
  v14.super_class = CNSuggestedRecipientItem;
  v6 = [(CNSuggestedRecipientItem *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipient, recipient);
    compositeName = [recipientCopy compositeName];
    title = v7->_title;
    v7->_title = compositeName;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    handles = v7->_handles;
    v7->_handles = v10;

    [(CNSuggestedRecipientItem *)v7 loadHandles];
    v12 = v7;
  }

  return v7;
}

- (void)loadHandles
{
  recipient = self->_recipient;
  if (recipient)
  {
    isGroup = [(CNComposeRecipient *)recipient isGroup];
    handles = self->_handles;
    v6 = self->_recipient;
    if (isGroup)
    {
      children = [(CNComposeRecipient *)v6 children];
      v7 = [children _cn_map:&__block_literal_global_5];
      [(NSMutableSet *)handles addObjectsFromArray:v7];
    }

    else
    {
      children = [(CNComposeRecipient *)v6 normalizedAddress];
      [(NSMutableSet *)handles addObject:?];
    }
  }
}

- (BOOL)isSelectedForHandles:(id)handles
{
  handlesCopy = handles;
  if (([(NSMutableSet *)self->_handles isSubsetOfSet:handlesCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else if ([(CNComposeRecipient *)self->_recipient isGroup])
  {
    children = [(CNComposeRecipient *)self->_recipient children];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CNSuggestedRecipientItem_isSelectedForHandles___block_invoke;
    v9[3] = &unk_1E7CD1BE0;
    v10 = handlesCopy;
    v7 = [children _cn_any:v9];

    v5 = v7 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __49__CNSuggestedRecipientItem_isSelectedForHandles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 normalizedAddress];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 unifiedHandles];
    v6 = [v7 intersectsSet:v8] ^ 1;
  }

  return v6;
}

- (BOOL)shouldDeselectForHandles:(id)handles
{
  handlesCopy = handles;
  if (([(NSMutableSet *)self->_handles intersectsSet:handlesCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else if ([(CNComposeRecipient *)self->_recipient isGroup])
  {
    children = [(CNComposeRecipient *)self->_recipient children];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__CNSuggestedRecipientItem_shouldDeselectForHandles___block_invoke;
    v8[3] = &unk_1E7CD1BE0;
    v9 = handlesCopy;
    v5 = [children _cn_any:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __53__CNSuggestedRecipientItem_shouldDeselectForHandles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 normalizedAddress];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 unifiedHandles];
    v6 = [v7 intersectsSet:v8];
  }

  return v6;
}

- (unint64_t)hash
{
  recipient = [(CNSuggestedRecipientItem *)self recipient];
  autocompleteResult = [recipient autocompleteResult];
  v4 = [autocompleteResult hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(CNSuggestedRecipientItem *)self hash];
    v9 = v8 == [v7 hash];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"title" object:self->_title];
  v5 = [v3 appendName:@"handles" object:self->_handles];
  v6 = [v3 appendName:@"recipient" object:self->_recipient];
  build = [v3 build];

  return build;
}

@end