@interface IMRichActionCarouselCountChatItem
- (id)_initWithItem:(id)item selectedIndex:(int64_t)index totalCount:(int64_t)count;
@end

@implementation IMRichActionCarouselCountChatItem

- (id)_initWithItem:(id)item selectedIndex:(int64_t)index totalCount:(int64_t)count
{
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = IMRichActionCarouselCountChatItem;
  v11 = [(IMChatItem *)&v21 _initWithItem:itemCopy];
  if (v11)
  {
    v12 = objc_msgSend_guid(itemCopy, v9, v10);
    v14 = objc_msgSend_stringByAppendingString_(@"rcc:", v13, v12);
    objc_msgSend__setGUID_(v11, v15, v14);

    v18 = objc_msgSend__senderHandle(itemCopy, v16, v17);
    v19 = v11[7];
    v11[7] = v18;

    v11[8] = index;
    v11[9] = count;
  }

  return v11;
}

@end