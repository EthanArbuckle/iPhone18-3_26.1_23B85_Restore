@interface IMSatelliteUnavailableForServiceChatItem
- (id)_initWithItem:(id)item service:(id)service recipientID:(id)d isGroupChat:(BOOL)chat;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSatelliteUnavailableForServiceChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_(v4, v8, v7);

  return v9;
}

- (id)_initWithItem:(id)item service:(id)service recipientID:(id)d isGroupChat:(BOOL)chat
{
  serviceCopy = service;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = IMSatelliteUnavailableForServiceChatItem;
  v13 = [(IMChatItem *)&v17 _initWithItem:item];
  v15 = v13;
  if (v13)
  {
    objc_msgSend__setGUID_(v13, v14, @"ug:");
    objc_storeStrong(v15 + 8, service);
    objc_storeStrong(v15 + 9, d);
    *(v15 + 56) = chat;
  }

  return v15;
}

@end