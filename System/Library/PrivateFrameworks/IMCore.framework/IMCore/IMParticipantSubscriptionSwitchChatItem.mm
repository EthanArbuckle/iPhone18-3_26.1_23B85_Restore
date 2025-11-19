@interface IMParticipantSubscriptionSwitchChatItem
- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5;
@end

@implementation IMParticipantSubscriptionSwitchChatItem

- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = IMParticipantSubscriptionSwitchChatItem;
  v11 = [(IMChatItem *)&v19 _initWithItem:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 7, a4);
    objc_storeStrong(v12 + 8, a5);
    v15 = objc_msgSend_guid(v8, v13, v14);
    v16 = sub_1A83AC604();

    objc_msgSend__setGUID_(v12, v17, v16);
  }

  return v12;
}

@end