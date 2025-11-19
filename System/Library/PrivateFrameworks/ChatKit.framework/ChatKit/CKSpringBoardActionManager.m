@interface CKSpringBoardActionManager
+ (id)sharedInstance;
- (CKContactsSearchManager)contactsSearchManager;
- (CKSpringBoardActionManager)init;
- (NSArray)conversationCache;
- (void)chatStateChanged:(id)a3;
- (void)contactsSearchManager:(id)a3 finishedSearchingWithResults:(id)a4;
- (void)dealloc;
- (void)updateShortcutItems;
- (void)updateShortcutItemsWithConversations:(id)a3;
@end

@implementation CKSpringBoardActionManager

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[CKSpringBoardActionManager sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

void __44__CKSpringBoardActionManager_sharedInstance__block_invoke()
{
  if (!CKIsRunningInMacCatalyst())
  {
    v0 = objc_alloc_init(CKSpringBoardActionManager);
    v1 = sharedInstance_sSharedInstance;
    sharedInstance_sSharedInstance = v0;
  }
}

- (CKSpringBoardActionManager)init
{
  v8.receiver = self;
  v8.super_class = CKSpringBoardActionManager;
  v2 = [(CKSpringBoardActionManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_chatStateChanged_ name:@"CKConversationJoinStateDidChangeNotification" object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel_chatStateChanged_ name:@"CKConversationParticipantsDidChangeNotification" object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_chatStateChanged_ name:*MEMORY[0x1E69A5700] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel_chatStateChanged_ name:@"CKConversationListFinishedLoadingNotification" object:0];

    v2->shouldHideGroupsDonations = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CKContactsSearchManager *)self->_contactsSearchManager setDelegate:0];
  v4.receiver = self;
  v4.super_class = CKSpringBoardActionManager;
  [(CKSpringBoardActionManager *)&v4 dealloc];
}

- (CKContactsSearchManager)contactsSearchManager
{
  contactsSearchManager = self->_contactsSearchManager;
  if (!contactsSearchManager)
  {
    v4 = objc_alloc_init(CKContactsSearchManager);
    v5 = self->_contactsSearchManager;
    self->_contactsSearchManager = v4;

    [(CKContactsSearchManager *)self->_contactsSearchManager setBiasForOutgoingInteraction:1];
    [(CKContactsSearchManager *)self->_contactsSearchManager setDelegate:self];
    [(CKContactsSearchManager *)self->_contactsSearchManager setSuppressGroupSuggestions:1];
    contactsSearchManager = self->_contactsSearchManager;
  }

  return contactsSearchManager;
}

- (void)contactsSearchManager:(id)a3 finishedSearchingWithResults:(id)a4
{
  v30 = self;
  v45 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v31 = *v39;
    v32 = v6;
    do
    {
      v10 = 0;
      v33 = v8;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = +[CKConversationList sharedConversationList];
          v14 = [v12 conversationGUID];

          v15 = [v13 conversationForExistingChatWithGUID:v14];
          v16 = 0;
LABEL_27:

          goto LABEL_28;
        }

        if ([v11 isGroup])
        {
          [v11 children];
        }

        else
        {
          v43 = v11;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
        }
        v16 = ;
        if (!v16)
        {
          v15 = 0;
          goto LABEL_30;
        }

        v14 = [MEMORY[0x1E695DF70] array];
        v17 = [MEMORY[0x1E69A5A80] sharedInstance];
        v18 = [MEMORY[0x1E69A5C90] iMessageService];
        v13 = [v17 __ck_defaultAccountForService:v18];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = v16;
        v19 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v35;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v35 != v21)
              {
                objc_enumerationMutation(v16);
              }

              v23 = [*(*(&v34 + 1) + 8 * i) rawAddress];
              v24 = IMStripFormattingFromAddress();

              if (v24)
              {
                v25 = [v13 imHandleWithID:v24 alreadyCanonical:0];
                if (!v25)
                {

                  v15 = 0;
                  v14 = v16;
                  goto LABEL_26;
                }

                v26 = v25;
                [v14 addObject:v25];
              }
            }

            v20 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        if (v14)
        {
          v27 = +[CKConversationList sharedConversationList];
          v15 = [v27 conversationForHandles:v14 displayName:0 joinedChatsOnly:1 create:0];

LABEL_26:
          v9 = v31;
          v6 = v32;
          v8 = v33;
          goto LABEL_27;
        }

        v15 = 0;
        v9 = v31;
        v6 = v32;
        v8 = v33;
LABEL_28:

        if (v15)
        {
          [v5 addObject:v15];
        }

LABEL_30:
        v28 = [v5 count];

        if (v28 == 3)
        {
          goto LABEL_35;
        }

        ++v10;
      }

      while (v10 != v8);
      v29 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v8 = v29;
    }

    while (v29);
  }

LABEL_35:

  [(CKSpringBoardActionManager *)v30 updateShortcutItemsWithConversations:v5];
}

- (NSArray)conversationCache
{
  v44 = *MEMORY[0x1E69E9840];
  conversationCache = self->_conversationCache;
  if (!conversationCache)
  {
    v28 = self;
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v4 = +[CKConversationList sharedConversationList];
    v5 = [v4 conversations];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v39;
      v29 = *v39;
      do
      {
        v9 = 0;
        v31 = v7;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          if ((([v10 isGroupConversation] & 1) != 0 || objc_msgSend(v10, "isBusinessConversation")) && (objc_msgSend(v10, "hasLeft") & 1) == 0)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v12 = [v10 chat];
            v13 = [v12 guid];
            v14 = [v13 copy];

            v33 = v14;
            [v11 setObject:v14 forKey:@"CKConversationGUIDKey"];
            v15 = [v10 displayName];
            v16 = [v15 copy];

            if ([v16 length])
            {
              [v11 setObject:v16 forKey:@"CKConversationDisplayNameKey"];
            }

            v17 = [MEMORY[0x1E695DF70] array];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v18 = [v10 chat];
            v19 = [v18 participants];

            v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v35;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v35 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [*(*(&v34 + 1) + 8 * i) name];
                  v25 = [v24 copy];

                  [v17 addObject:v25];
                }

                v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v21);
            }

            [v11 setObject:v17 forKey:@"CKConversationEntityNamesKey"];
            [(NSArray *)v30 addObject:v11];

            v8 = v29;
            v7 = v31;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v7);
    }

    v26 = v28->_conversationCache;
    v28->_conversationCache = v30;

    conversationCache = v28->_conversationCache;
  }

  return conversationCache;
}

- (void)chatStateChanged:(id)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__refreshConversationCache object:0];

  [(CKSpringBoardActionManager *)self performSelector:sel__refreshConversationCache withObject:0 afterDelay:1.0];
}

- (void)updateShortcutItems
{
  v2 = self;
  CKSpringBoardActionManager.updateShortcutItems()();
}

- (void)updateShortcutItemsWithConversations:(id)a3
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v4 = sub_190D57180();
  v5 = self;
  _sSo26CKSpringBoardActionManagerC7ChatKitE19updateShortcutItems13conversationsySaySo14CKConversationCG_tF_0(v4);
}

@end