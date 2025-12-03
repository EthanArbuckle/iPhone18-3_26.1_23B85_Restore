@interface IMDateChatItem
- (NSDate)date;
- (id)_initWithItem:(id)item;
@end

@implementation IMDateChatItem

- (NSDate)date
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_time(v3, v4, v5);

  return v6;
}

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = IMDateChatItem;
  v7 = [(IMChatItem *)&v12 _initWithItem:itemCopy];
  if (v7)
  {
    v8 = objc_msgSend_guid(itemCopy, v5, v6);
    v9 = sub_1A83AC604();

    objc_msgSend__setGUID_(v7, v10, v9);
  }

  return v7;
}

@end