@interface IMParticipantSubscriptionSwitchChatItem
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle;
@end

@implementation IMParticipantSubscriptionSwitchChatItem

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle
{
  itemCopy = item;
  senderCopy = sender;
  handleCopy = handle;
  v19.receiver = self;
  v19.super_class = IMParticipantSubscriptionSwitchChatItem;
  v11 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 7, sender);
    objc_storeStrong(v12 + 8, handle);
    v15 = objc_msgSend_guid(itemCopy, v13, v14);
    v16 = sub_1A83AC604();

    objc_msgSend__setGUID_(v12, v17, v16);
  }

  return v12;
}

@end