@interface IMSatelliteUnavailableForServiceChatItem
- (id)_initWithItem:(id)a3 service:(id)a4 recipientID:(id)a5 isGroupChat:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMSatelliteUnavailableForServiceChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_(v4, v8, v7);

  return v9;
}

- (id)_initWithItem:(id)a3 service:(id)a4 recipientID:(id)a5 isGroupChat:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = IMSatelliteUnavailableForServiceChatItem;
  v13 = [(IMChatItem *)&v17 _initWithItem:a3];
  v15 = v13;
  if (v13)
  {
    objc_msgSend__setGUID_(v13, v14, @"ug:");
    objc_storeStrong(v15 + 8, a4);
    objc_storeStrong(v15 + 9, a5);
    *(v15 + 56) = a6;
  }

  return v15;
}

@end