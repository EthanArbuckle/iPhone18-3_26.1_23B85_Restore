@interface IMSuggestedRepliesMessagePartChatItem
- (BOOL)isEqual:(id)a3;
- (IMSuggestedRepliesMessagePartChatItem)initWithItem:(id)a3 suggestedRepliesList:(id)a4 selectedIndex:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMSuggestedRepliesMessagePartChatItem

- (IMSuggestedRepliesMessagePartChatItem)initWithItem:(id)a3 suggestedRepliesList:(id)a4 selectedIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = IMSuggestedRepliesMessagePartChatItem;
  v12 = [(IMChatItem *)&v18 _initWithItem:v8];
  if (v12)
  {
    v13 = objc_msgSend_guid(v8, v10, v11);
    v15 = objc_msgSend_stringByAppendingString_(@"lre:", v14, v13);
    objc_msgSend__setGUID_(v12, v16, v15);

    objc_storeStrong(&v12->_suggestedRepliesList, a4);
    v12->_selectedIndex = a5;
  }

  return v12;
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
      v15 = objc_msgSend_suggestedRepliesList(self, v13, v14);
      v18 = objc_msgSend_suggestedRepliesList(v5, v16, v17);
      if (objc_msgSend_isEqual_(v15, v19, v18))
      {
        v22 = objc_msgSend_selectedIndex(self, v20, v21);
        v25 = v22 == objc_msgSend_selectedIndex(v5, v23, v24);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_messageItem(self, v5, v6);
  v10 = objc_msgSend_suggestedRepliesList(self, v8, v9);
  v13 = objc_msgSend_selectedIndex(self, v11, v12);
  v15 = objc_msgSend_initWithItem_suggestedRepliesList_selectedIndex_(v4, v14, v7, v10, v13);

  return v15;
}

@end