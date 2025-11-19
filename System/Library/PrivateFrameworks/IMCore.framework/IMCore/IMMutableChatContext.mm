@interface IMMutableChatContext
+ (id)chatContextForPinnedChat:(id)a3;
@end

@implementation IMMutableChatContext

+ (id)chatContextForPinnedChat:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IMMutableChatContext);
  isBusinessChat = objc_msgSend_isBusinessChat(v3, v5, v6);
  if (objc_msgSend_isStewieChat(v3, v8, v9))
  {
    isBusinessChat = 2;
  }

  if (objc_msgSend_isStewieSharingChat(v3, v10, v11))
  {
    objc_msgSend_setServiceType_(v4, v12, 3);
  }

  else
  {
    objc_msgSend_setServiceType_(v4, v12, isBusinessChat);
  }

  objc_msgSend_setFilterCategory_(v4, v13, 0);
  objc_msgSend_setSpam_(v4, v14, 0);
  hasKnownParticipantsCache = objc_msgSend_hasKnownParticipantsCache(v3, v15, v16);
  objc_msgSend_setSendersUnknown_(v4, v18, hasKnownParticipantsCache ^ 1u);
  v21 = objc_msgSend_repliedToChat(v3, v19, v20);
  objc_msgSend_setResponded_(v4, v22, v21);
  v25 = objc_msgSend_conversation(v3, v23, v24);
  v28 = objc_msgSend_UUID(v25, v26, v27);
  objc_msgSend_setActiveTelephonyConversationUUID_(v4, v29, v28);

  v32 = objc_msgSend_showingEditHistoryForChatItemGUIDs(v3, v30, v31);
  objc_msgSend_setShowingEditHistoryForChatItemGUIDs_(v4, v33, v32);

  isChatBot = objc_msgSend_isChatBot(v3, v34, v35);
  objc_msgSend_setIsChatBot_(v4, v37, isChatBot);
  isShowingTranslationText = objc_msgSend_isShowingTranslationText(v3, v38, v39);

  objc_msgSend_setShowTranslationAlternateText_(v4, v41, isShowingTranslationText);

  return v4;
}

@end