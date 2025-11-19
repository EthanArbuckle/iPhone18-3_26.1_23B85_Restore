@interface IMRichLinkCardMessagePartChatItem
- (IMRichLinkCardMessagePartChatItem)initWithItem:(id)a3 richCards:(id)a4 selectedIndex:(int64_t)a5;
@end

@implementation IMRichLinkCardMessagePartChatItem

- (IMRichLinkCardMessagePartChatItem)initWithItem:(id)a3 richCards:(id)a4 selectedIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = IMRichLinkCardMessagePartChatItem;
  v12 = [(IMChatItem *)&v17 _initWithItem:v8];
  if (v12)
  {
    v13 = objc_msgSend_guid(v8, v10, v11);
    objc_msgSend__setGUID_(v12, v14, v13);

    objc_msgSend__setSelectedIndex_(v12, v15, a5);
    objc_storeStrong(&v12->_richCards, a4);
  }

  return v12;
}

@end