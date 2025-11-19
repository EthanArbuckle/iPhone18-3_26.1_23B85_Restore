@interface CKSceneDelegateState
+ (id)stateFromIsComposingNewMessage:(BOOL)a3 messageHasContent:(BOOL)a4 isShowingBlankTranscript:(BOOL)a5 isControllerCollapsed:(BOOL)a6 isTopVCChatNavigationController:(BOOL)a7 conversation:(id)a8 filterMode:(unint64_t)a9 isShowingInbox:(BOOL)a10 unreadMessages:(id)a11 storedFilterModes:(id)a12;
+ (id)unarchivingClasses;
- (CKSceneDelegateState)initWithCoder:(id)a3;
- (CKSceneDelegateState)initWithUnreadMessages:(id)a3 groupID:(id)a4 composingNewMessage:(BOOL)a5 filterMode:(unint64_t)a6 showingInbox:(BOOL)a7 storedFilterModes:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (CKSceneDelegateState)initWithUnreadMessages:(id)a3 groupID:(id)a4 composingNewMessage:(BOOL)a5 filterMode:(unint64_t)a6 showingInbox:(BOOL)a7 storedFilterModes:(id)a8
{
  v9 = a7;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v21.receiver = self;
  v21.super_class = CKSceneDelegateState;
  v17 = [(CKSceneDelegateState *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CKSceneDelegateState *)v17 setUnreadLastMessages:v14];
    [(CKSceneDelegateState *)v18 setGroupID:v15];
    [(CKSceneDelegateState *)v18 setComposingNewMessage:v11];
    v19 = [MEMORY[0x1E695DF00] date];
    [(CKSceneDelegateState *)v18 setDate:v19];

    [(CKSceneDelegateState *)v18 setFilterMode:a6];
    [(CKSceneDelegateState *)v18 setShowingInbox:v9];
    [(CKSceneDelegateState *)v18 setStoredFilterModes:v16];
  }

  return v18;
}

- (CKSceneDelegateState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKSceneDelegateState *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"unreadLastMessages"];
    [(CKSceneDelegateState *)v5 setUnreadLastMessages:v6];

    v7 = [v4 decodeObjectForKey:@"groupID"];
    [(CKSceneDelegateState *)v5 setGroupID:v7];

    -[CKSceneDelegateState setComposingNewMessage:](v5, "setComposingNewMessage:", [v4 decodeBoolForKey:@"composingNewMessage"]);
    v8 = [v4 decodeObjectForKey:@"date"];
    [(CKSceneDelegateState *)v5 setDate:v8];

    -[CKSceneDelegateState setFilterMode:](v5, "setFilterMode:", [v4 decodeIntegerForKey:@"filterMode"]);
    -[CKSceneDelegateState setShowingInbox:](v5, "setShowingInbox:", [v4 decodeBoolForKey:@"showingInbox"]);
    v9 = [v4 decodeObjectForKey:@"storedFilterModes"];
    [(CKSceneDelegateState *)v5 setStoredFilterModes:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKSceneDelegateState *)self unreadLastMessages];
  [v4 encodeObject:v5 forKey:@"unreadLastMessages"];

  v6 = [(CKSceneDelegateState *)self groupID];
  [v4 encodeObject:v6 forKey:@"groupID"];

  [v4 encodeBool:-[CKSceneDelegateState composingNewMessage](self forKey:{"composingNewMessage"), @"composingNewMessage"}];
  v7 = [(CKSceneDelegateState *)self date];
  [v4 encodeObject:v7 forKey:@"date"];

  [v4 encodeInteger:-[CKSceneDelegateState filterMode](self forKey:{"filterMode"), @"filterMode"}];
  [v4 encodeBool:-[CKSceneDelegateState showingInbox](self forKey:{"showingInbox"), @"showingInbox"}];
  v8 = [(CKSceneDelegateState *)self storedFilterModes];
  [v4 encodeObject:v8 forKey:@"storedFilterModes"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CKSceneDelegateState *)self unreadLastMessages];
  v6 = [(CKSceneDelegateState *)self groupID];
  v7 = @"YES";
  if ([(CKSceneDelegateState *)self composingNewMessage])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(CKSceneDelegateState *)self date];
  [v9 timeIntervalSinceNow];
  v11 = v10;
  v12 = IMConversationListFilterModeStringValue([(CKSceneDelegateState *)self filterMode]);
  if (![(CKSceneDelegateState *)self showingInbox])
  {
    v7 = @"NO";
  }

  v13 = [(CKSceneDelegateState *)self storedFilterModes];
  v14 = [v3 stringWithFormat:@"<%@ %p unreadLastMessages: %@ groupID: %@ composingNewMessage: %@ date: %f> filterMode: %@ showingInbox: %@, storedFilterModes: %@", v4, self, v5, v6, v8, v11, v12, v7, v13];

  return v14;
}

+ (id)stateFromIsComposingNewMessage:(BOOL)a3 messageHasContent:(BOOL)a4 isShowingBlankTranscript:(BOOL)a5 isControllerCollapsed:(BOOL)a6 isTopVCChatNavigationController:(BOOL)a7 conversation:(id)a8 filterMode:(unint64_t)a9 isShowingInbox:(BOOL)a10 unreadMessages:(id)a11 storedFilterModes:(id)a12
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v17 = a8;
  v18 = a11;
  v19 = a12;
  v20 = (v12 | ~v13) & !v14;
  if (v16)
  {
    v20 = v15;
  }

  v21 = @"-1";
  if (v17 && v20)
  {
    v21 = [v17 groupID];
  }

  v22 = v16 & v15;
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
    v41 = v21;
    _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "  => Suspended group ID: %@", buf, 0xCu);
  }

  v26 = +[CKDraftManager sharedInstance];
  [v26 saveCompositionAndFlushCache:1];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v28 = [v27 cachedChats];

  v29 = [v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v28);
        }

        [*(*(&v35 + 1) + 8 * i) __ck_saveWatermark];
      }

      v30 = [v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v30);
  }

  v33 = [[CKSceneDelegateState alloc] initWithUnreadMessages:v18 groupID:v21 composingNewMessage:v22 filterMode:a9 showingInbox:a10 storedFilterModes:v19];

  return v33;
}

@end