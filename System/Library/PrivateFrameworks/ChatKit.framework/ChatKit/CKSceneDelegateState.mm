@interface CKSceneDelegateState
+ (id)stateFromIsComposingNewMessage:(BOOL)message messageHasContent:(BOOL)content isShowingBlankTranscript:(BOOL)transcript isControllerCollapsed:(BOOL)collapsed isTopVCChatNavigationController:(BOOL)controller conversation:(id)conversation filterMode:(unint64_t)mode isShowingInbox:(BOOL)self0 unreadMessages:(id)self1 storedFilterModes:(id)self2;
+ (id)unarchivingClasses;
- (CKSceneDelegateState)initWithCoder:(id)coder;
- (CKSceneDelegateState)initWithUnreadMessages:(id)messages groupID:(id)d composingNewMessage:(BOOL)message filterMode:(unint64_t)mode showingInbox:(BOOL)inbox storedFilterModes:(id)modes;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSceneDelegateState

+ (id)unarchivingClasses
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];

  return v3;
}

- (CKSceneDelegateState)initWithUnreadMessages:(id)messages groupID:(id)d composingNewMessage:(BOOL)message filterMode:(unint64_t)mode showingInbox:(BOOL)inbox storedFilterModes:(id)modes
{
  inboxCopy = inbox;
  messageCopy = message;
  messagesCopy = messages;
  dCopy = d;
  modesCopy = modes;
  v21.receiver = self;
  v21.super_class = CKSceneDelegateState;
  v17 = [(CKSceneDelegateState *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CKSceneDelegateState *)v17 setUnreadLastMessages:messagesCopy];
    [(CKSceneDelegateState *)v18 setGroupID:dCopy];
    [(CKSceneDelegateState *)v18 setComposingNewMessage:messageCopy];
    date = [MEMORY[0x1E695DF00] date];
    [(CKSceneDelegateState *)v18 setDate:date];

    [(CKSceneDelegateState *)v18 setFilterMode:mode];
    [(CKSceneDelegateState *)v18 setShowingInbox:inboxCopy];
    [(CKSceneDelegateState *)v18 setStoredFilterModes:modesCopy];
  }

  return v18;
}

- (CKSceneDelegateState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CKSceneDelegateState *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"unreadLastMessages"];
    [(CKSceneDelegateState *)v5 setUnreadLastMessages:v6];

    v7 = [coderCopy decodeObjectForKey:@"groupID"];
    [(CKSceneDelegateState *)v5 setGroupID:v7];

    -[CKSceneDelegateState setComposingNewMessage:](v5, "setComposingNewMessage:", [coderCopy decodeBoolForKey:@"composingNewMessage"]);
    v8 = [coderCopy decodeObjectForKey:@"date"];
    [(CKSceneDelegateState *)v5 setDate:v8];

    -[CKSceneDelegateState setFilterMode:](v5, "setFilterMode:", [coderCopy decodeIntegerForKey:@"filterMode"]);
    -[CKSceneDelegateState setShowingInbox:](v5, "setShowingInbox:", [coderCopy decodeBoolForKey:@"showingInbox"]);
    v9 = [coderCopy decodeObjectForKey:@"storedFilterModes"];
    [(CKSceneDelegateState *)v5 setStoredFilterModes:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  unreadLastMessages = [(CKSceneDelegateState *)self unreadLastMessages];
  [coderCopy encodeObject:unreadLastMessages forKey:@"unreadLastMessages"];

  groupID = [(CKSceneDelegateState *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  [coderCopy encodeBool:-[CKSceneDelegateState composingNewMessage](self forKey:{"composingNewMessage"), @"composingNewMessage"}];
  date = [(CKSceneDelegateState *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  [coderCopy encodeInteger:-[CKSceneDelegateState filterMode](self forKey:{"filterMode"), @"filterMode"}];
  [coderCopy encodeBool:-[CKSceneDelegateState showingInbox](self forKey:{"showingInbox"), @"showingInbox"}];
  storedFilterModes = [(CKSceneDelegateState *)self storedFilterModes];
  [coderCopy encodeObject:storedFilterModes forKey:@"storedFilterModes"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  unreadLastMessages = [(CKSceneDelegateState *)self unreadLastMessages];
  groupID = [(CKSceneDelegateState *)self groupID];
  v7 = @"YES";
  if ([(CKSceneDelegateState *)self composingNewMessage])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  date = [(CKSceneDelegateState *)self date];
  [date timeIntervalSinceNow];
  v11 = v10;
  v12 = IMConversationListFilterModeStringValue([(CKSceneDelegateState *)self filterMode]);
  if (![(CKSceneDelegateState *)self showingInbox])
  {
    v7 = @"NO";
  }

  storedFilterModes = [(CKSceneDelegateState *)self storedFilterModes];
  v14 = [v3 stringWithFormat:@"<%@ %p unreadLastMessages: %@ groupID: %@ composingNewMessage: %@ date: %f> filterMode: %@ showingInbox: %@, storedFilterModes: %@", v4, self, unreadLastMessages, groupID, v8, v11, v12, v7, storedFilterModes];

  return v14;
}

+ (id)stateFromIsComposingNewMessage:(BOOL)message messageHasContent:(BOOL)content isShowingBlankTranscript:(BOOL)transcript isControllerCollapsed:(BOOL)collapsed isTopVCChatNavigationController:(BOOL)controller conversation:(id)conversation filterMode:(unint64_t)mode isShowingInbox:(BOOL)self0 unreadMessages:(id)self1 storedFilterModes:(id)self2
{
  controllerCopy = controller;
  collapsedCopy = collapsed;
  transcriptCopy = transcript;
  contentCopy = content;
  messageCopy = message;
  v42 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  messagesCopy = messages;
  modesCopy = modes;
  v20 = (controllerCopy | ~collapsedCopy) & !transcriptCopy;
  if (messageCopy)
  {
    v20 = contentCopy;
  }

  groupID = @"-1";
  if (conversationCopy && v20)
  {
    groupID = [conversationCopy groupID];
  }

  v22 = messageCopy & contentCopy;
  v23 = IMLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"NO";
    if (v22)
    {
      v24 = @"YES";
    }

    *buf = 138412290;
    v41 = v24;
    _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "  => Is composing new message: %@", buf, 0xCu);
  }

  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = groupID;
    _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "  => Suspended group ID: %@", buf, 0xCu);
  }

  v26 = +[CKDraftManager sharedInstance];
  [v26 saveCompositionAndFlushCache:1];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  cachedChats = [mEMORY[0x1E69A5AF8] cachedChats];

  v29 = [cachedChats countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(cachedChats);
        }

        [*(*(&v35 + 1) + 8 * i) __ck_saveWatermark];
      }

      v30 = [cachedChats countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v30);
  }

  v33 = [[CKSceneDelegateState alloc] initWithUnreadMessages:messagesCopy groupID:groupID composingNewMessage:v22 filterMode:mode showingInbox:inbox storedFilterModes:modesCopy];

  return v33;
}

@end