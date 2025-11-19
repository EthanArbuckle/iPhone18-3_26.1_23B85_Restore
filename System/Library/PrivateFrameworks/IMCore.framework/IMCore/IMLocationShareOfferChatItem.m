@interface IMLocationShareOfferChatItem
- (NSDate)time;
- (id)_initWithItem:(id)a3 sender:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)offerState;
@end

@implementation IMLocationShareOfferChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_sender_(v4, v8, v7, self->_sender);

  objc_msgSend__setActionableEclipsed_(v9, v10, self->_actionableEclipsed);
  return v9;
}

- (NSDate)time
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_time(v3, v4, v5);

  return v6;
}

- (int64_t)offerState
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_sharedInstance(IMFMFSession, v5, v6);
  if (objc_msgSend_restrictLocationSharing(v7, v8, v9))
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_sharedInstance(IMFMFSession, v10, v11);
    v12 = objc_msgSend_disableLocationSharing(v13, v14, v15);
  }

  if (objc_msgSend_expired(v4, v16, v17))
  {
    v20 = 2;
  }

  else
  {
    v20 = !objc_msgSend_actionable(v4, v18, v19) || ((self->_actionableEclipsed | v12) & 1) != 0;
  }

  return v20;
}

- (id)_initWithItem:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = IMLocationShareOfferChatItem;
  v8 = [(IMChatItem *)&v16 _initWithItem:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, a4);
    v12 = objc_msgSend_guid(v6, v10, v11);
    v13 = sub_1A83AC604();

    objc_msgSend__setGUID_(v9, v14, v13);
  }

  return v9;
}

@end