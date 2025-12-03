@interface IMServiceChatItem
- (id)_initWithItem:(id)item service:(id)service handle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMServiceChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_service_handle_(v4, v8, v7, self->_service, self->_handle);

  return v9;
}

- (id)_initWithItem:(id)item service:(id)service handle:(id)handle
{
  itemCopy = item;
  serviceCopy = service;
  handleCopy = handle;
  v34.receiver = self;
  v34.super_class = IMServiceChatItem;
  v11 = [(IMChatItem *)&v34 _initWithItem:itemCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 8, service);
    objc_storeStrong(v12 + 9, handle);
    v15 = objc_msgSend_name(serviceCopy, v13, v14);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1F1B76F98;
    }

    v18 = v17;

    v21 = objc_msgSend_ID(handleCopy, v19, v20);
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1F1B76F98;
    }

    v24 = v23;

    v27 = objc_msgSend_guid(itemCopy, v25, v26);
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_1F1B76F98;
    }

    v30 = v29;

    v31 = sub_1A83AC604();
    objc_msgSend__setGUID_(v12, v32, v31);
  }

  return v12;
}

@end