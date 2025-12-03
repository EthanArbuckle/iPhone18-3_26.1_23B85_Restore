@interface CKReplySenderChatItem
- (double)_calculateAdditionalOffsetForTapbackWithNextItem:(id)item previousItem:(id)previousItem associatedChatItem:(id)chatItem;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
@end

@implementation CKReplySenderChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v46 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = [itemsCopy objectAtIndexedSubscript:{index - 1, environmentCopy, supplementryItemsCopy}];
  }

  v13 = index + 1;
  if (v13 >= [itemsCopy count])
  {
    v14 = 0;
  }

  else
  {
    v14 = [itemsCopy objectAtIndexedSubscript:v13];
  }

  layoutType = [v12 layoutType];
  if (layoutType <= 12)
  {
    if (layoutType > 4)
    {
      if ((layoutType - 5) >= 2 && layoutType != 8)
      {
        goto LABEL_43;
      }
    }

    else if ((layoutType - 2) >= 2)
    {
      if (layoutType != 1)
      {
        goto LABEL_43;
      }

LABEL_14:
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 mediumLargeTranscriptSpace];
LABEL_19:
      v18 = v17;

      goto LABEL_20;
    }

LABEL_17:
    v16 = +[CKUIBehavior sharedBehaviors];
LABEL_18:
    [v16 mediumTranscriptSpace];
    goto LABEL_19;
  }

  if (layoutType <= 15)
  {
    if (layoutType == 14)
    {
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 largeTranscriptSpace];
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  switch(layoutType)
  {
    case 19:
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 smallTranscriptSpace];
      goto LABEL_19;
    case 18:
      goto LABEL_17;
    case 16:
      itemIsFromMe = [(CKChatItem *)self itemIsFromMe];
      if (itemIsFromMe != [v12 itemIsFromMe])
      {
        v16 = +[CKUIBehavior sharedBehaviors];
        [v16 minTranscriptSpace];
        goto LABEL_19;
      }

      v33 = [v12 replyCount] == 1;
      v34 = +[CKUIBehavior sharedBehaviors];
      v16 = v34;
      if (v33)
      {
        [v34 extraExtraSmallTranscriptSpace];
        goto LABEL_19;
      }

      goto LABEL_18;
  }

LABEL_43:
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = objc_opt_class();
      v30 = *&buf[14];
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", buf, 0x16u);
    }
  }

  v31 = +[CKUIBehavior sharedBehaviors];
  [v31 smallTranscriptSpace];
  v18 = v32;

LABEL_20:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  visibleAssociatedMessageChatItems = [v14 visibleAssociatedMessageChatItems];
  v20 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v20)
  {
    v21 = *v39;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        v44 = 0;
        v43 = 0u;
        memset(buf, 0, sizeof(buf));
        if (v23)
        {
          [v23 geometryDescriptor];
          if (*buf == 10)
          {
            [CKChatItemLayoutUtilities transcriptTapbackMinSpacingForSenderChatItem:self withNextChatItem:v14 previousItem:v12 associatedChatItem:v23];
            if (v24 >= v18)
            {
              v18 = v24;
            }

            goto LABEL_32;
          }
        }
      }

      v20 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  v25 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v12 topSpacing:v18 bottomSpacing:0.0];

  return v25;
}

- (double)_calculateAdditionalOffsetForTapbackWithNextItem:(id)item previousItem:(id)previousItem associatedChatItem:(id)chatItem
{
  chatItemCopy = chatItem;
  itemCopy = item;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v11 = v10;
  v13 = v12;

  [(CKChatItem *)self size];
  v15 = v14;
  [itemCopy size];
  v17 = v16 - v11;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v19 = 0.0;
  if (v15 < v17 && (isKindOfClass & 1) != 0)
  {
    [chatItemCopy size];
    v21 = v13 + v20;
    [(CKChatItem *)self size];
    v23 = v21 - v22;
    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 smallTranscriptSpace];
    v19 = v23 + v25;
  }

  return v19;
}

@end