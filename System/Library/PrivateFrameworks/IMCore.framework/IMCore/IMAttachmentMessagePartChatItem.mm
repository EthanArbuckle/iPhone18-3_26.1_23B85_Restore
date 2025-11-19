@interface IMAttachmentMessagePartChatItem
- (BOOL)_wantsAttachmentContiguousForType:(id)a3;
- (BOOL)isAttachmentContiguousWithChatItem:(id)a3;
- (BOOL)parentChatIsSpam;
- (BOOL)supportsSuggestedActionsMenu;
- (id)_initWithItem:(id)a3 text:(id)a4 index:(int64_t)a5 messagePartRange:(_NSRange)a6 transferGUID:(id)a7 chatContext:(id)a8 visibleAssociatedMessageChatItems:(id)a9;
- (id)commSafetyMessageGUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)layoutGroupIdentifier;
- (id)messageSummaryInfo;
- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4;
- (int64_t)syndicationBehavior;
- (unsigned)contentType;
@end

@implementation IMAttachmentMessagePartChatItem

- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4
{
  v5 = a3;
  v34 = [IMReplyContextAttachmentMessagePartChatItem alloc];
  v8 = objc_msgSend__item(self, v6, v7);
  v11 = objc_msgSend_guid(v5, v9, v10);
  v14 = objc_msgSend_isFromMe(v5, v12, v13);
  v17 = objc_msgSend_text(self, v15, v16);
  v20 = objc_msgSend_index(self, v18, v19);
  v23 = objc_msgSend_messagePartRange(self, v21, v22);
  v25 = v24;
  v27 = objc_msgSend_transferGUID(self, v24, v26);
  v30 = objc_msgSend_chatContext(self, v28, v29);
  v32 = objc_msgSend__initWithItem_parentItem_replyMessageGUID_replyIsFromMe_text_index_messagePartRange_transferGUID_chatContext_(v34, v31, v8, v5, v11, v14, v17, v20, v23, v25, v27, v30);

  return v32;
}

- (BOOL)supportsSuggestedActionsMenu
{
  v4 = objc_msgSend_sharedInstance(IMFileTransferCenter, a2, v2);
  v7 = objc_msgSend_transferGUID(self, v5, v6);
  v9 = objc_msgSend_transferForGUID_(v4, v8, v7);

  LOBYTE(v7) = objc_msgSend_isSticker(v9, v10, v11);
  return v7 ^ 1;
}

- (id)commSafetyMessageGUID
{
  v3 = objc_msgSend_message(self, a2, v2);
  v6 = objc_msgSend_guid(v3, v4, v5);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMAttachmentMessagePartChatItem;
  v4 = [(IMMessagePartChatItem *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"[[%@] transferGUID: %@]", v4, self->_transferGUID);

  return v6;
}

- (id)layoutGroupIdentifier
{
  v4.receiver = self;
  v4.super_class = IMAttachmentMessagePartChatItem;
  v2 = [(IMTranscriptChatItem *)&v4 layoutGroupIdentifier];

  return v2;
}

- (BOOL)parentChatIsSpam
{
  v3 = objc_msgSend_chatContext(self, a2, v2);
  isSpam = objc_msgSend_isSpam(v3, v4, v5);

  return isSpam;
}

- (int64_t)syndicationBehavior
{
  v4 = objc_msgSend__item(self, a2, v2);
  isFileAttachment = objc_msgSend_isFileAttachment(v4, v5, v6);

  if (!isFileAttachment)
  {
    return 0;
  }

  v10 = objc_msgSend_sharedInstance(IMFileTransferCenter, v8, v9);
  v13 = objc_msgSend_transferGUID(self, v11, v12);
  v15 = objc_msgSend_transferForGUID_(v10, v14, v13);

  v18 = objc_msgSend_filename(v15, v16, v17);
  v19 = IMUTITypeForFilename();

  if (objc_msgSend_isFromMomentShare(v15, v20, v21))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v23 = ((isKindOfClass | IMUTITypeIsSupportedByPhotos()) & 1) == 0;

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_text(self, v8, v9);
  v13 = objc_msgSend_index(self, v11, v12);
  v16 = objc_msgSend_messagePartRange(self, v14, v15);
  v18 = v17;
  transferGUID = self->_transferGUID;
  v21 = objc_msgSend_chatContext(self, v17, v20);
  v24 = objc_msgSend_visibleAssociatedMessageChatItems(self, v22, v23);
  v26 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_visibleAssociatedMessageChatItems_(v4, v25, v7, v10, v13, v16, v18, transferGUID, v21, v24);

  return v26;
}

- (BOOL)isAttachmentContiguousWithChatItem:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isContiguousWithChatItem_(self, v5, v4))
  {
    v8 = objc_msgSend_sharedInstance(IMFileTransferCenter, v6, v7);
    v11 = objc_msgSend_transferGUID(self, v9, v10);
    v13 = objc_msgSend_transferForGUID_(v8, v12, v11);

    v16 = objc_msgSend_filename(v13, v14, v15);
    v17 = IMUTITypeForFilename();

    if (objc_msgSend_isFromMomentShare(v13, v18, v19))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    IsSupportedByPhotos = IMUTITypeIsSupportedByPhotos();
    v21 = 0;
    if ((objc_msgSend_isEqualToString_(v17, v23, @"com.apple.pkpass") & 1) == 0 && (IsSupportedByPhotos & 1) == 0 && (isKindOfClass & 1) == 0)
    {
      if (self->_wantsAttachmentContiguous && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = v4[184];
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

- (id)_initWithItem:(id)a3 text:(id)a4 index:(int64_t)a5 messagePartRange:(_NSRange)a6 transferGUID:(id)a7 chatContext:(id)a8 visibleAssociatedMessageChatItems:(id)a9
{
  length = a6.length;
  location = a6.location;
  v15 = a7;
  v16 = a8;
  v41.receiver = self;
  v41.super_class = IMAttachmentMessagePartChatItem;
  v19 = [(IMMessagePartChatItem *)&v41 _initWithItem:a3 text:a4 index:a5 messagePartRange:location visibleAssociatedMessageChatItems:length, a9];
  if (v19)
  {
    v20 = objc_msgSend_copy(v15, v17, v18);
    v21 = v19[24];
    v19[24] = v20;

    v24 = objc_msgSend_copy(v16, v22, v23);
    objc_msgSend_setChatContext_(v19, v25, v24);

    v28 = objc_msgSend_sharedInstance(IMFileTransferCenter, v26, v27);
    v30 = objc_msgSend_transferForGUID_(v28, v29, v15);

    v33 = objc_msgSend_type(v30, v31, v32);
    v36 = objc_msgSend_lowercaseString(v33, v34, v35);

    *(v19 + 184) = objc_msgSend__wantsAttachmentContiguousForType_(v19, v37, v36);
    if (!v19[24])
    {
      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        sub_1A84DFE9C(v19, v38, v39);
      }
    }
  }

  return v19;
}

- (BOOL)_wantsAttachmentContiguousForType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_hasSuffix_(v3, v4, @".gif"))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = objc_msgSend_hasSuffix_(v3, v5, @".apng") ^ 1;
  }

  return v6;
}

- (unsigned)contentType
{
  v4 = objc_msgSend_sharedInstance(IMFileTransferCenter, a2, v2);
  v7 = objc_msgSend_transferGUID(self, v5, v6);
  v9 = objc_msgSend_transferForGUID_(v4, v8, v7);

  v12 = objc_msgSend_type(v9, v10, v11);
  if (IMUTTypeIsImage() & 1) != 0 || (IMUTTypeIsSupportedAnimatedImage())
  {
    v13 = 3;
  }

  else if (IMUTTypeIsMovie())
  {
    v13 = 7;
  }

  else if (IMUTTypeIsVCard())
  {
    v13 = 4;
  }

  else if (IMUTTypeIsAudio())
  {
    v13 = 2;
  }

  else if (IMUTTypeIsMap())
  {
    v13 = 6;
  }

  else if (IMUTTypeIsCalendar())
  {
    v13 = 5;
  }

  else if (IMUTTypeIsPass())
  {
    v13 = 8;
  }

  else if (IMUTTypeIsWalletOrder())
  {
    v13 = 10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)messageSummaryInfo
{
  if (objc_msgSend_contentType(self, a2, v2))
  {
    v6 = objc_msgSend_balloonBundleID(self, v4, v5);
    v7 = *MEMORY[0x1E69A6A08];
    v8 = IMBalloonExtensionIDWithSuffix();
    isEqualToString = objc_msgSend_isEqualToString_(v6, v9, v8);

    if (isEqualToString)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    v16 = MEMORY[0x1E695DF20];
    v17 = objc_msgSend_contentType(self, v11, v12);
    v20 = objc_msgSend_messageItem(self, v18, v19);
    v23 = objc_msgSend_expressiveSendStyleID(v20, v21, v22);
    v15 = objc_msgSend_dictionaryWithAssociatedMessageSummary_contentType_associatedMessagePartText_pluginBundleID_pluginDisplayName_messageEffect_(v16, v24, 0, v17, 0, v13, 0, v23);
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E28E0();
    }

    v15 = 0;
  }

  return v15;
}

@end