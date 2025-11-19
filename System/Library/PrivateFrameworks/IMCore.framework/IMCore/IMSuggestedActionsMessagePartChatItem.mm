@interface IMSuggestedActionsMessagePartChatItem
- (BOOL)isEqual:(id)a3;
- (IMSuggestedActionsMessagePartChatItem)initWithItem:(id)a3 suggestedActionsList:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMSuggestedActionsMessagePartChatItem

- (IMSuggestedActionsMessagePartChatItem)initWithItem:(id)a3 suggestedActionsList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = IMSuggestedActionsMessagePartChatItem;
  v10 = [(IMChatItem *)&v16 _initWithItem:v6];
  if (v10)
  {
    v11 = objc_msgSend_guid(v6, v8, v9);
    v12 = sub_1A83AC604();
    objc_msgSend__setGUID_(v10, v13, v12);

    objc_msgSend_setSuggestedActionsList_(v10, v14, v7);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8 = objc_msgSend_guid(self, v6, v7);
    v11 = objc_msgSend_guid(v5, v9, v10);
    if (objc_msgSend_isEqualToString_(v8, v12, v11))
    {
      v15 = objc_msgSend_suggestedActionsList(self, v13, v14);
      v18 = objc_msgSend_suggestedActionsList(v5, v16, v17);
      isEqual = objc_msgSend_isEqual_(v15, v19, v18);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMSuggestedActionsMessagePartChatItem alloc];
  v7 = objc_msgSend_messageItem(self, v5, v6);
  v10 = objc_msgSend_suggestedActionsList(self, v8, v9);
  v12 = objc_msgSend_initWithItem_suggestedActionsList_(v4, v11, v7, v10);

  return v12;
}

@end