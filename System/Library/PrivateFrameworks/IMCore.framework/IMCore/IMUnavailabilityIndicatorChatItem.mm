@interface IMUnavailabilityIndicatorChatItem
- (id)_initWithHandle:(id)handle displayNotifyAnywayButton:(BOOL)button;
- (void)_notifyDelegatesOfStateChange;
@end

@implementation IMUnavailabilityIndicatorChatItem

- (id)_initWithHandle:(id)handle displayNotifyAnywayButton:(BOOL)button
{
  handleCopy = handle;
  v20.receiver = self;
  v20.super_class = IMUnavailabilityIndicatorChatItem;
  v8 = [(IMChatItem *)&v20 _initWithItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, handle);
    *(v9 + 56) = button;
    v12 = objc_msgSend_ID(v9[8], v10, v11);
    v13 = sub_1A83AC604();

    objc_msgSend__setGUID_(v9, v14, v13);
    v17 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v15, v16);
    v18 = v9[9];
    v9[9] = v17;
  }

  return v9;
}

- (void)_notifyDelegatesOfStateChange
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_unavailabilityIndicatorChatItemDelegates;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_displayNotifyAnywayButtonStateChanged_(*(*(&v11 + 1) + 8 * v9++), v6, self, v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end