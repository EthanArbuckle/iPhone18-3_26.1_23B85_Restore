@interface IMScheduledSectionLabelChatItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScheduledLabelChatItem:(id)item;
- (IMScheduledSectionLabelChatItem)initWithAssociatedDateChatItem:(id)item;
- (unint64_t)hash;
@end

@implementation IMScheduledSectionLabelChatItem

- (IMScheduledSectionLabelChatItem)initWithAssociatedDateChatItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = IMScheduledSectionLabelChatItem;
  v5 = [(IMScheduledSectionLabelChatItem *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDateChatItem_(v5, v6, itemCopy);
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_dateChatItem(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqualToScheduledLabelChatItem:(id)item
{
  itemCopy = item;
  v7 = objc_msgSend_dateChatItem(self, v5, v6);
  v10 = objc_msgSend_dateChatItem(itemCopy, v8, v9);

  LOBYTE(itemCopy) = objc_msgSend_isEqual_(v7, v11, v10);
  return itemCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToScheduledLabelChatItem = objc_msgSend_isEqualToScheduledLabelChatItem_(self, v5, equalCopy);
  }

  else
  {
    isEqualToScheduledLabelChatItem = 0;
  }

  return isEqualToScheduledLabelChatItem;
}

@end