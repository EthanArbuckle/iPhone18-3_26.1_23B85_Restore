@interface IMTextMessagePartChatItem
- (BOOL)canEditMessageText;
- (BOOL)shouldDisplayRichLink;
- (NSDate)lastEditDateForMessagePart;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject isShowingEditHistory:(BOOL)history showTranslationAlternateText:(BOOL)self0;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject shouldDisplayLink:(BOOL)link isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject visibleAssociatedMessageChatItems:(id)items isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1 shouldDisplayLink:(BOOL)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageSummaryInfo;
- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context;
- (int64_t)numberOfPreviousEdits;
- (void)_setShowTranslationAlternateText:(BOOL)text;
- (void)enumerateEmojiTokensWithBlock:(id)block;
@end

@implementation IMTextMessagePartChatItem

- (BOOL)shouldDisplayRichLink
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_blockingRichLinks(v3, v4, v5);

  return v6 ^ 1;
}

- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context
{
  replyCopy = reply;
  v6 = [IMReplyContextTextMessagePartChatItem alloc];
  v9 = objc_msgSend__item(self, v7, v8);
  v12 = objc_msgSend_guid(replyCopy, v10, v11);
  v15 = objc_msgSend_isFromMe(replyCopy, v13, v14);
  v18 = objc_msgSend_text(self, v16, v17);
  v21 = objc_msgSend_index(self, v19, v20);
  v24 = objc_msgSend_messagePartRange(self, v22, v23);
  v26 = v25;
  v28 = objc_msgSend_subject(self, v25, v27);
  v30 = objc_msgSend__initWithItem_parentItem_replyMessageGUID_replyIsFromMe_text_index_messagePartRange_subject_(v6, v29, v9, replyCopy, v12, v15, v18, v21, v24, v26, v28);

  return v30;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = IMTextMessagePartChatItem;
  v4 = [(IMMessagePartChatItem *)&v10 description];
  subject = self->_subject;
  v6 = IMLoggingStringForMessageData();
  v8 = objc_msgSend_stringWithFormat_(v3, v7, @"[[%@] subject: %@]", v4, v6);

  return v8;
}

- (BOOL)canEditMessageText
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_index(self, v5, v6);
  v9 = objc_msgSend_eligibilityForEditType_messagePartIndex_(v4, v8, 1, v7);
  v12 = v9;
  if ((v9 - 1) >= 8)
  {
    if (!v9 && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 134217984;
        v23 = 0;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Message can be edited, message edit eligibility is %ld", &v22, 0xCu);
      }
    }

    v18 = objc_msgSend_subject(self, v10, v11);
    v21 = objc_msgSend_length(v18, v19, v20) == 0;

    if (v21)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Message text cannot be edited, message has a subject", &v22, 2u);
      }

      goto LABEL_5;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v22 = 134217984;
      v23 = v12;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Message cannot be edited. Edit Eligibility: %ld", &v22, 0xCu);
    }

LABEL_5:
  }

  v14 = 0;
LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)enumerateEmojiTokensWithBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_subject(self, v5, v6);
  v10 = objc_msgSend_string(v7, v8, v9);

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (objc_msgSend_length(v10, v11, v12))
  {
    v15 = objc_msgSend_length(v10, v13, v14);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1A82D91A8;
    v28[3] = &unk_1E78119F8;
    v29 = blockCopy;
    v30 = &v31;
    objc_msgSend__enumerateEmojiTokensInRange_block_(v10, v16, 0, v15, v28);
  }

  if ((v32[3] & 1) == 0)
  {
    v17 = objc_msgSend_text(self, v13, v14);
    v20 = objc_msgSend_string(v17, v18, v19);

    v23 = objc_msgSend_length(v20, v21, v22);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A82D9218;
    v25[3] = &unk_1E78119F8;
    v26 = blockCopy;
    v27 = &v31;
    objc_msgSend__enumerateEmojiTokensInRange_block_(v20, v24, 0, v23, v25);
  }

  _Block_object_dispose(&v31, 8);
}

- (void)_setShowTranslationAlternateText:(BOOL)text
{
  if (self->_showTranslationAlternateText != text)
  {
    self->_showTranslationAlternateText = text;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend__item(self, v4, v5);
  v9 = objc_msgSend_text(self, v7, v8);
  v12 = objc_msgSend_translationSecondaryText(self, v10, v11);
  v15 = objc_msgSend_index(self, v13, v14);
  v18 = objc_msgSend_messagePartRange(self, v16, v17);
  v20 = v19;
  subject = self->_subject;
  v23 = objc_msgSend_visibleAssociatedMessageChatItems(self, v19, v22);
  isShowingEditHistory = objc_msgSend_isShowingEditHistory(self, v24, v25);
  BYTE2(v32) = 1;
  BYTE1(v32) = objc_msgSend_showTranslationAlternateText(self, v27, v28);
  LOBYTE(v32) = isShowingEditHistory;
  shouldDisplayLink = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_visibleAssociatedMessageChatItems_isShowingEditHistory_showTranslationAlternateText_shouldDisplayLink_(v33, v29, v6, v9, v12, v15, v18, v20, subject, v23, v32);

  return shouldDisplayLink;
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject shouldDisplayLink:(BOOL)link isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1
{
  v15 = __PAIR16__(alternateText, history);
  isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(self, a2, item, text, secondaryText, index, range.location, range.length, subject, v15);
  v13 = isShowingEditHistory_showTranslationAlternateText;
  if (isShowingEditHistory_showTranslationAlternateText)
  {
    objc_msgSend_setShouldDisplayRichLink_(isShowingEditHistory_showTranslationAlternateText, v12, link);
  }

  return v13;
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject isShowingEditHistory:(BOOL)history showTranslationAlternateText:(BOOL)self0
{
  BYTE2(v11) = 1;
  LOWORD(v11) = __PAIR16__(alternateText, history);
  return objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_visibleAssociatedMessageChatItems_isShowingEditHistory_showTranslationAlternateText_shouldDisplayLink_(self, a2, item, text, secondaryText, index, range.location, range.length, subject, 0, v11);
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)subject visibleAssociatedMessageChatItems:(id)items isShowingEditHistory:(BOOL)self0 showTranslationAlternateText:(BOOL)self1 shouldDisplayLink:(BOOL)self2
{
  length = range.length;
  location = range.location;
  subjectCopy = subject;
  v27.receiver = self;
  v27.super_class = IMTextMessagePartChatItem;
  items = [(IMMessagePartChatItem *)&v27 _initWithItem:item text:text translationSecondaryText:secondaryText index:index messagePartRange:location visibleAssociatedMessageChatItems:length, items];
  if (items)
  {
    v23 = objc_msgSend_copy(subjectCopy, v20, v21);
    v24 = items[24];
    items[24] = v23;

    *(items + 184) = history;
    *(items + 185) = alternateText;
    objc_msgSend_setShouldDisplayRichLink_(items, v25, link);
  }

  return items;
}

- (int64_t)numberOfPreviousEdits
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_index(self, v5, v6);
  v9 = objc_msgSend_historyForMessagePart_(v4, v8, v7);
  v12 = objc_msgSend_count(v9, v10, v11);
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;

  return v14;
}

- (NSDate)lastEditDateForMessagePart
{
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_index(self, v5, v6);
  v9 = objc_msgSend_historyForMessagePart_(v4, v8, v7);
  v12 = objc_msgSend_lastObject(v9, v10, v11);
  v15 = objc_msgSend_dateSent(v12, v13, v14);

  return v15;
}

- (id)messageSummaryInfo
{
  v4 = objc_msgSend_subject(self, a2, v2);
  v7 = objc_msgSend_string(v4, v5, v6);

  v10 = objc_msgSend_text(self, v8, v9);
  v13 = objc_msgSend_string(v10, v11, v12);

  if (v7 && v13)
  {
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@ %@", v7, v13);
LABEL_8:
    v17 = v16;
    goto LABEL_9;
  }

  if (v7)
  {
    v16 = v7;
    goto LABEL_8;
  }

  if (v13)
  {
    v16 = v13;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:
  v18 = MEMORY[0x1E695DF20];
  v19 = objc_msgSend_contentType(self, v14, v15);
  v22 = objc_msgSend_text(self, v20, v21);
  v25 = objc_msgSend_messageItem(self, v23, v24);
  v28 = objc_msgSend_expressiveSendStyleID(v25, v26, v27);
  v30 = objc_msgSend_dictionaryWithAssociatedMessageSummary_contentType_associatedMessagePartText_pluginBundleID_pluginDisplayName_messageEffect_(v18, v29, v17, v19, v22, 0, 0, v28);

  return v30;
}

@end