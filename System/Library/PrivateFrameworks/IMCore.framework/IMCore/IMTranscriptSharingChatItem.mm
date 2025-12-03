@interface IMTranscriptSharingChatItem
- (id)_initWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMTranscriptSharingChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_(v4, v8, v7);

  return v9;
}

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = IMTranscriptSharingChatItem;
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