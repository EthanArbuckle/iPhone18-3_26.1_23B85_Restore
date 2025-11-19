@interface IMSatelliteAvailabilityChatItem
- (id)_initWithHandle:(id)a3;
@end

@implementation IMSatelliteAvailabilityChatItem

- (id)_initWithHandle:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = IMSatelliteAvailabilityChatItem;
  v6 = [(IMChatItem *)&v14 _initWithItem:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 7, a3);
    v10 = objc_msgSend_ID(v7[7], v8, v9);
    v11 = sub_1A83AC604();

    objc_msgSend__setGUID_(v7, v12, v11);
  }

  return v7;
}

@end