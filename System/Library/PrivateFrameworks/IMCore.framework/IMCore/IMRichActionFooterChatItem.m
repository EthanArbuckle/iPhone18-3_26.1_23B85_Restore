@interface IMRichActionFooterChatItem
- (BOOL)isFromMe;
- (id)_initWithItem:(id)a3;
@end

@implementation IMRichActionFooterChatItem

- (id)_initWithItem:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IMRichActionFooterChatItem;
  v7 = [(IMChatItem *)&v17 _initWithItem:v4];
  if (v7)
  {
    v8 = objc_msgSend_guid(v4, v5, v6);
    v10 = objc_msgSend_stringByAppendingString_(v8, v9, @"IMRichActionFooter");
    objc_msgSend__setGUID_(v7, v11, v10);

    v14 = objc_msgSend__senderHandle(v4, v12, v13);
    v15 = v7[7];
    v7[7] = v14;
  }

  return v7;
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

@end