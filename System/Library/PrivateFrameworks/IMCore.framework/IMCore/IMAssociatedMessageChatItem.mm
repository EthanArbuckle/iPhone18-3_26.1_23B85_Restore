@interface IMAssociatedMessageChatItem
- (BOOL)_isRecentForTapbackBackgroundAnimationWithinTimeInterval:(double)interval;
- (BOOL)failed;
- (BOOL)isFromMe;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (NSDate)time;
- (NSDictionary)messageSummaryInfo;
- (NSString)associatedMessageEmoji;
- (NSString)associatedMessageGUID;
- (_NSRange)associatedMessageRange;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (id)message;
- (int64_t)associatedMessageType;
- (void)_setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
@end

@implementation IMAssociatedMessageChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMAssociatedMessageChatItem alloc];
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_sender(self, v8, v9);
  v12 = objc_msgSend__initWithItem_sender_(v4, v11, v7, v10);

  v14 = *&self->_geometryDescriptor.parentPreviewWidth;
  v13 = *&self->_geometryDescriptor.yScalar;
  v15 = *&self->_geometryDescriptor.layoutIntent;
  *(v12 + 152) = self->_geometryDescriptor.rotation;
  *(v12 + 104) = v15;
  *(v12 + 120) = v14;
  *(v12 + 136) = v13;
  objc_storeStrong((v12 + 64), self->_sender);
  objc_storeStrong((v12 + 72), self->_tapback);
  objc_storeStrong((v12 + 80), self->_emojiSticker);
  return v12;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  v11 = objc_msgSend__initWithItem_(self, v8, itemCopy);
  if (v11)
  {
    v12 = objc_msgSend_guid(itemCopy, v9, v10);
    v13 = sub_1A83AC604();

    objc_msgSend__setGUID_(v11, v14, v13);
    objc_storeStrong(v11 + 8, sender);
  }

  return v11;
}

- (id)message
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (NSDate)time
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_time(v3, v4, v5);

  return v6;
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (NSString)associatedMessageGUID
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_associatedMessageGUID(v3, v4, v5);

  return v6;
}

- (int64_t)associatedMessageType
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_associatedMessageType(v3, v4, v5);

  return v6;
}

- (_NSRange)associatedMessageRange
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_associatedMessageRange(v3, v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (NSString)associatedMessageEmoji
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_associatedMessageEmoji(v3, v4, v5);

  return v6;
}

- (BOOL)failed
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_errorCode(v3, v4, v5) != 0;

  return v6;
}

- (NSDictionary)messageSummaryInfo
{
  v3 = objc_msgSend__imAssociatedMessageItem(self, a2, v2);
  v6 = objc_msgSend_messageSummaryInfo(v3, v4, v5);

  return v6;
}

- (void)_setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  v4 = *&descriptor->parentPreviewWidth;
  v3 = *&descriptor->yScalar;
  v5 = *&descriptor->layoutIntent;
  self->_geometryDescriptor.rotation = descriptor->rotation;
  *&self->_geometryDescriptor.parentPreviewWidth = v4;
  *&self->_geometryDescriptor.yScalar = v3;
  *&self->_geometryDescriptor.layoutIntent = v5;
}

- (BOOL)_isRecentForTapbackBackgroundAnimationWithinTimeInterval:(double)interval
{
  v6 = objc_msgSend_time(self, a2, v3);
  v9 = objc_msgSend_messageSummaryInfo(self, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, *MEMORY[0x1E69A7248]);
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;

        v6 = v14;
      }
    }
  }

  v15 = objc_msgSend_now(MEMORY[0x1E695DF00], v10, v11);
  objc_msgSend_timeIntervalSinceDate_(v15, v16, v6);
  v18 = v17 < interval;

  return v18;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  v3 = *&self[2].associatedLayoutIntent;
  *&retstr->layoutIntent = *&self[1].rotation;
  *&retstr->parentPreviewWidth = v3;
  *&retstr->yScalar = *&self[2].xScalar;
  retstr->rotation = self[2].scale;
  return self;
}

@end