@interface IMScheduledSectionLabelChatItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScheduledLabelChatItem:(id)a3;
- (IMScheduledSectionLabelChatItem)initWithAssociatedDateChatItem:(id)a3;
- (unint64_t)hash;
@end

@implementation IMScheduledSectionLabelChatItem

- (IMScheduledSectionLabelChatItem)initWithAssociatedDateChatItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMScheduledSectionLabelChatItem;
  v5 = [(IMScheduledSectionLabelChatItem *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDateChatItem_(v5, v6, v4);
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_dateChatItem(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqualToScheduledLabelChatItem:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dateChatItem(self, v5, v6);
  v10 = objc_msgSend_dateChatItem(v4, v8, v9);

  LOBYTE(v4) = objc_msgSend_isEqual_(v7, v11, v10);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToScheduledLabelChatItem = objc_msgSend_isEqualToScheduledLabelChatItem_(self, v5, v4);
  }

  else
  {
    isEqualToScheduledLabelChatItem = 0;
  }

  return isEqualToScheduledLabelChatItem;
}

@end