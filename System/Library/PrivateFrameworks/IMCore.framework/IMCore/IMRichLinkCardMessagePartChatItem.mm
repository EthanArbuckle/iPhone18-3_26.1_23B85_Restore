@interface IMRichLinkCardMessagePartChatItem
- (IMRichLinkCardMessagePartChatItem)initWithItem:(id)item richCards:(id)cards selectedIndex:(int64_t)index;
@end

@implementation IMRichLinkCardMessagePartChatItem

- (IMRichLinkCardMessagePartChatItem)initWithItem:(id)item richCards:(id)cards selectedIndex:(int64_t)index
{
  itemCopy = item;
  cardsCopy = cards;
  v17.receiver = self;
  v17.super_class = IMRichLinkCardMessagePartChatItem;
  v12 = [(IMChatItem *)&v17 _initWithItem:itemCopy];
  if (v12)
  {
    v13 = objc_msgSend_guid(itemCopy, v10, v11);
    objc_msgSend__setGUID_(v12, v14, v13);

    objc_msgSend__setSelectedIndex_(v12, v15, index);
    objc_storeStrong(&v12->_richCards, cards);
  }

  return v12;
}

@end