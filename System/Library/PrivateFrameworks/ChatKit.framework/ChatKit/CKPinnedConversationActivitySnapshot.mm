@interface CKPinnedConversationActivitySnapshot
+ (id)emptySnapshot;
- (CKPinnedConversationActivitySnapshot)initWithActivityItems:(id)a3 contactItems:(id)a4;
- (CKPinnedConversationActivitySnapshot)initWithConversation:(id)a3 recentMessagesInPinnedConversations:(id)a4 previousSnapshot:(id)a5;
- (double)_contentScaleForContactItemAtIndex:(int64_t)a3 withMessageContentScale:(double)a4;
- (double)_contentScaleForMessage:(id)a3 amongRecentMessagesInPinnedConversations:(id)a4;
- (id)_contactItemMatchingIdentifier:(id)a3;
- (int64_t)_firstContactItemAlignmentForContactItem:(id)a3 previousSnapshot:(id)a4 totalNumberOfContactItemIdentifiersWithUnreadMessages:(int64_t)a5;
@end

@implementation CKPinnedConversationActivitySnapshot

+ (id)emptySnapshot
{
  v2 = [a1 alloc];
  v3 = [v2 initWithActivityItems:MEMORY[0x1E695E0F0] contactItems:MEMORY[0x1E695E0F0]];

  return v3;
}

- (CKPinnedConversationActivitySnapshot)initWithActivityItems:(id)a3 contactItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CKPinnedConversationActivitySnapshot;
  v8 = [(CKPinnedConversationActivitySnapshot *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    activityItems = v8->_activityItems;
    v8->_activityItems = v9;

    v11 = [v7 copy];
    contactItems = v8->_contactItems;
    v8->_contactItems = v11;
  }

  return v8;
}

- (CKPinnedConversationActivitySnapshot)initWithConversation:(id)a3 recentMessagesInPinnedConversations:(id)a4 previousSnapshot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v67 = [v8 chat];
  v14 = [v67 lastIncomingMessage];
  v66 = v14;
  if ([v8 isGroupConversation])
  {
    v15 = [v8 isAdHocGroupConversation];
    if ([v14 isTypingMessage])
    {
      if ((v15 & 1) == 0)
      {
        v16 = [v14 sender];
        v17 = [v8 entityMatchingHandle:v16];
        [CKPinnedConversationContactItemProvider contactItemFromEntity:v17];
        v63 = v11;
        v18 = self;
        v19 = v10;
        v21 = v20 = v9;
        [v12 addObject:v21];
        v22 = [v21 contactItemIdentifier];
        [v13 addObject:v22];

        v9 = v20;
        v10 = v19;
        self = v18;
        v11 = v63;

        v14 = v66;
LABEL_7:
        v23 = 1.0;
        v24 = [[CKPinnedConversationTypingBubbleActivityItem alloc] initWithMessage:v14 contentScale:v22 attachedContactItemIdentifier:1.0];
        [v11 addObject:v24];
        goto LABEL_8;
      }

LABEL_6:
      v22 = 0;
      goto LABEL_7;
    }

    v25 = v15 ^ 1;
  }

  else
  {
    if ([v14 isTypingMessage])
    {
      goto LABEL_6;
    }

    v25 = 0;
  }

  v23 = 1.0;
  if ([v8 hasUnreadMessages])
  {
    v22 = [v67 lastIncomingFinishedMessage];
    if ([v22 isRead] & 1) != 0 || (objc_msgSend(v22, "isTypingMessage"))
    {
      goto LABEL_9;
    }

    v24 = [v22 sender];
    if (!v24)
    {
      v64 = IMLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [(CKPinnedConversationActivitySnapshot *)v64 initWithConversation:v26 recentMessagesInPinnedConversations:v27 previousSnapshot:v28, v29, v30, v31, v32];
      }
    }

    v33 = [v8 entityMatchingHandle:v24];
    v61 = v33;
    v62 = v24;
    if (v25)
    {
      v34 = [CKPinnedConversationContactItemProvider contactItemFromEntity:v33];
      [v12 addObject:v34];
      v65 = [v34 contactItemIdentifier];
      [v13 addObject:?];

      v24 = v62;
    }

    else
    {
      v65 = 0;
    }

    [(CKPinnedConversationActivitySnapshot *)self _contentScaleForMessage:v22 amongRecentMessagesInPinnedConversations:v9];
    v23 = v43;
    v60 = [v22 expressiveSendStyleID];
    v57 = [v60 isEqualToString:*MEMORY[0x1E69A7088]];
    v59 = v25;
    if (([v22 associatedMessageType] & 0xFFFFFFFFFFFFFFF8) == 0x7D0)
    {
      v44 = [[CKPinnedConversationTapbackBubbleActivityItem alloc] initWithMessage:v22 contentScale:v65 attachedContactItemIdentifier:v23];
      [v11 addObject:v44];
    }

    else if ([v22 isRichLinkMessage] && ((objc_msgSend(v22, "isSenderUnknown") | v57) & 1) == 0)
    {
      v44 = [MEMORY[0x1E69A5C08] chatContextForPinnedChat:v67];
      v48 = [[CKPinnedConversationRichLinkActivityItem alloc] initWithMessage:v22 chatContext:v44 contentScale:v65 attachedContactItemIdentifier:v23];
      [v11 addObject:v48];

      v24 = v62;
    }

    else
    {
      v45 = [CKPinnedConversationMediaObjectActivityItem previewableMediaObjectFromMessage:v22];
      v56 = v45;
      if ((v45 == 0) | v57 & 1)
      {
        v58 = [v22 __ck_previewTextWithChat:v67];
        if ([(CKPinnedConversationMediaObjectActivityItem *)v58 length])
        {
          v46 = [[CKPinnedConversationSummaryBubbleActivityItem alloc] initWithMessage:v22 chat:v67 contentScale:v65 attachedContactItemIdentifier:v23];
          [v11 addObject:v46];
        }

        else
        {
          v46 = IMLogHandleForCategory();
          if (os_log_type_enabled(&v46->super, OS_LOG_TYPE_ERROR))
          {
            [(CKPinnedConversationActivitySnapshot *)&v46->super initWithConversation:v49 recentMessagesInPinnedConversations:v50 previousSnapshot:v51, v52, v53, v54, v55];
          }
        }

        v24 = v62;

        v47 = v58;
      }

      else
      {
        v47 = [[CKPinnedConversationMediaObjectActivityItem alloc] initWithMessage:v22 mediaObject:v45 contentScale:v65 attachedContactItemIdentifier:v23];
        [v11 addObject:v47];
        v24 = v62;
      }

      v44 = v56;
    }

    if (v59 && [v8 limitToLoad] >= 2)
    {
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __114__CKPinnedConversationActivitySnapshot_initWithConversation_recentMessagesInPinnedConversations_previousSnapshot___block_invoke;
      v72[3] = &unk_1E72F36D0;
      v73 = v8;
      v74 = v13;
      v76 = 3;
      v75 = v12;
      [v73 enumerateMessagesWithOptions:2 usingBlock:v72];
    }

LABEL_8:
LABEL_9:
  }

  v35 = [v12 firstObject];
  if (v35)
  {
    v36 = -[CKPinnedConversationActivitySnapshot _firstContactItemAlignmentForContactItem:previousSnapshot:totalNumberOfContactItemIdentifiersWithUnreadMessages:](self, "_firstContactItemAlignmentForContactItem:previousSnapshot:totalNumberOfContactItemIdentifiersWithUnreadMessages:", v35, v10, [v13 count]);
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __114__CKPinnedConversationActivitySnapshot_initWithConversation_recentMessagesInPinnedConversations_previousSnapshot___block_invoke_41;
    v68[3] = &unk_1E72F36F8;
    v69 = self;
    v70 = v36;
    v71 = v23;
    [v12 enumerateObjectsUsingBlock:v68];
  }

  v37 = [v11 copy];
  v38 = [v12 copy];
  v39 = [(CKPinnedConversationActivitySnapshot *)self initWithActivityItems:v37 contactItems:v38];
  v40 = v10;
  v41 = v39;

  return v41;
}

void __114__CKPinnedConversationActivitySnapshot_initWithConversation_recentMessagesInPinnedConversations_previousSnapshot___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([v5 isFromMe] & 1) != 0 || objc_msgSend(v5, "isRead"))
  {
    *a3 = 1;
  }

  else
  {
    v6 = [v5 sender];
    if (!v6)
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __114__CKPinnedConversationActivitySnapshot_initWithConversation_recentMessagesInPinnedConversations_previousSnapshot___block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    v15 = [*(a1 + 32) entityMatchingHandle:v6];
    v16 = [v15 pinnedConversationContactItemIdentifier];
    if ([v16 length] && (objc_msgSend(*(a1 + 40), "containsObject:", v16) & 1) == 0)
    {
      if ([*(a1 + 40) count] < *(a1 + 56))
      {
        v17 = [CKPinnedConversationContactItemProvider contactItemFromEntity:v15];
        [*(a1 + 48) addObject:v17];
      }

      [*(a1 + 40) addObject:v16];
    }
  }
}

void __114__CKPinnedConversationActivitySnapshot_initWithConversation_recentMessagesInPinnedConversations_previousSnapshot___block_invoke_41(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = a2;
  v7 = [v5 _contactItemAlignmentForItemAtIndex:a3 firstItemAlignment:v6];
  [*(a1 + 32) _contentScaleForContactItemAtIndex:a3 withMessageContentScale:*(a1 + 48)];
  v9 = v8;
  [v10 setContactItemAlignment:v7];
  [v10 setContentScale:v9];
}

- (double)_contentScaleForContactItemAtIndex:(int64_t)a3 withMessageContentScale:(double)a4
{
  v4 = 1;
  if (a3)
  {
    v4 = 2;
  }

  return pow(v4, -0.7892) * a4;
}

- (int64_t)_firstContactItemAlignmentForContactItem:(id)a3 previousSnapshot:(id)a4 totalNumberOfContactItemIdentifiersWithUnreadMessages:(int64_t)a5
{
  v7 = a4;
  v8 = [a3 contactItemIdentifier];
  v9 = [v7 _contactItemMatchingIdentifier:v8];

  if (v9)
  {
    v10 = [v9 contactItemAlignment];
  }

  else
  {
    v10 = (a5 & 0x8000000000000001) != 1;
  }

  return v10;
}

- (id)_contactItemMatchingIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_contactItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 contactItemIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (double)_contentScaleForMessage:(id)a3 amongRecentMessagesInPinnedConversations:(id)a4
{
  v5 = a4;
  v6 = [a3 guid];
  if ([v6 length])
  {
    v7 = [v5 __imArrayByApplyingBlock:&__block_literal_global_116];
    v8 = [v7 indexOfObject:v6];
    v9 = [v7 count];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = v10;
    }

    else
    {
      if (v8 == v9 - 1)
      {
        v11 = +[CKUIBehavior sharedBehaviors];
        [v11 pinnedConversationActivitySnapshotContentScaleMostRecent];
        goto LABEL_10;
      }

      v15 = v9 - 2;
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = v10;
      if (v8 == v15)
      {
        [v10 pinnedConversationActivitySnapshotContentScaleSecondMostRecent];
        goto LABEL_10;
      }
    }

    [v10 pinnedConversationActivitySnapshotContentScaleNonRecent];
LABEL_10:
    v14 = v12;

    goto LABEL_11;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 pinnedConversationActivitySnapshotContentScaleNonRecent];
  v14 = v13;
LABEL_11:

  return v14;
}

__CFString *__105__CKPinnedConversationActivitySnapshot__contentScaleForMessage_amongRecentMessagesInPinnedConversations___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 guid];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F04268F8;
  }

  v5 = v4;

  return v4;
}

@end