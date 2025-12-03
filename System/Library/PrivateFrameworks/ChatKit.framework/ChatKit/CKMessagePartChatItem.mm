@interface CKMessagePartChatItem
- (BOOL)_isSURFRelatedMessage;
- (BOOL)canAttachStickers;
- (BOOL)canInlineReply;
- (BOOL)canSendAsTextMessage;
- (BOOL)canSendTapbacks;
- (BOOL)failed;
- (BOOL)hasMessageAcknowledgment;
- (BOOL)hasStickers;
- (BOOL)hasVisibleAssociatedMessageItems;
- (BOOL)isBlackholed;
- (BOOL)isCorrupt;
- (BOOL)isFromMe;
- (BOOL)isReply;
- (BOOL)pollVoteFailed;
- (CKAggregateAcknowledgmentChatItem)tapbacksChatItem;
- (CKMessagePartChatItem)init;
- (CKMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (IMColorComponents)strokeColor;
- (IMMessage)message;
- (IMMessageItem)messageItem;
- (IMMessageItem)threadOriginator;
- (NSArray)messageAcknowledgments;
- (NSArray)pasteboardItemProviders;
- (NSString)serviceName;
- (NSString)threadIdentifier;
- (_NSRange)messagePartRange;
- (_NSRange)originalMessagePartRange;
- (char)balloonStyle;
- (char)color;
- (double)timeIntervalSinceMessageSent;
- (id)aggregateAcknowledgmentChatItem;
- (id)description;
- (id)sender;
- (id)tapbackActionButtonImageName;
- (id)time;
- (id)votingCounts;
- (int64_t)index;
- (int64_t)selectedType;
- (int64_t)stewieConversationID;
- (unint64_t)scheduleState;
- (unint64_t)scheduleType;
- (void)_setVisibleAssociatedMessageChatItems:(id)items;
@end

@implementation CKMessagePartChatItem

- (BOOL)isFromMe
{
  notification = [(CKChatItem *)self notification];

  if (notification)
  {
    return 0;
  }

  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests() || CKIsRunningForDevelopmentOnSimulator() || ([(CKMessagePartChatItem *)self message], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    iMChatItem = [(CKMessagePartChatItem *)self message];
  }

  v6 = iMChatItem;
  isFromMe = [iMChatItem isFromMe];

  return isFromMe;
}

- (IMMessage)message
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  message = [iMChatItem message];

  return message;
}

- (IMMessageItem)messageItem
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  messageItem = [iMChatItem messageItem];

  return messageItem;
}

- (NSArray)messageAcknowledgments
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visibleAssociatedMessageChatItems = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v3 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    array = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v8];
        }
      }

      v4 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (int64_t)selectedType
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  messageAcknowledgments = [(CKMessagePartChatItem *)self messageAcknowledgments];
  v3 = [messageAcknowledgments countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    associatedMessageType = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(messageAcknowledgments);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        acknowledgments = [v8 acknowledgments];
        v10 = [acknowledgments countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(acknowledgments);
              }

              v14 = *(*(&v17 + 1) + 8 * j);
              if (([v14 isFromMe] & 1) != 0 || associatedMessageType < 0)
              {
                tapback = [v14 tapback];
                associatedMessageType = [tapback associatedMessageType];
              }
            }

            v11 = [acknowledgments countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v4 = [messageAcknowledgments countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    associatedMessageType = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (associatedMessageType <= 2000)
  {
    return 2000;
  }

  else
  {
    return associatedMessageType;
  }
}

- (id)votingCounts
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(CKMessagePartChatItem *)self messageAcknowledgments];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  v2 = 0;
  if (v25)
  {
    v27 = 0;
    v28 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v24 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        acknowledgments = [v7 acknowledgments];
        v9 = [acknowledgments countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(acknowledgments);
              }

              tapback = [*(*(&v29 + 1) + 8 * i) tapback];
              associatedMessageType = [tapback associatedMessageType];

              if (associatedMessageType > 2002)
              {
                switch(associatedMessageType)
                {
                  case 2003:
                    ++v4;
                    break;
                  case 2004:
                    ++v27;
                    break;
                  case 2005:
                    ++v28;
                    break;
                }
              }

              else
              {
                switch(associatedMessageType)
                {
                  case 2000:
                    ++v5;
                    break;
                  case 2001:
                    ++v3;
                    break;
                  case 2002:
                    ++v2;
                    break;
                }
              }
            }

            v10 = [acknowledgments countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v10);
        }

        v6 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v25);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  v37[0] = &unk_1F04E8190;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v38[0] = v15;
  v37[1] = &unk_1F04E81A8;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v38[1] = v16;
  v37[2] = &unk_1F04E81C0;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v38[2] = v17;
  v37[3] = &unk_1F04E81D8;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  v38[3] = v18;
  v37[4] = &unk_1F04E81F0;
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
  v38[4] = v19;
  v37[5] = &unk_1F04E8208;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
  v38[5] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];

  return v21;
}

- (id)aggregateAcknowledgmentChatItem
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleAssociatedMessageChatItems = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v3 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKMessagePartChatItem;
  v4 = [(CKBalloonChatItem *)&v11 description];
  color = [(CKMessagePartChatItem *)self color];
  messageHighlightChatItem = [(CKMessagePartChatItem *)self messageHighlightChatItem];
  visibleAssociatedMessageChatItems = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v8 = [visibleAssociatedMessageChatItems componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"[%@ color:%d, messageHighlightChatItem: %@, visible associated message items: [%@]]", v4, color, messageHighlightChatItem, v8];

  return v9;
}

- (CKMessagePartChatItem)init
{
  v5.receiver = self;
  v5.super_class = CKMessagePartChatItem;
  v2 = [(CKMessagePartChatItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKMessagePartChatItem *)v2 setCachedColor:4294967294];
  }

  return v3;
}

- (BOOL)canSendAsTextMessage
{
  mEMORY[0x1E69A7F60] = [MEMORY[0x1E69A7F60] sharedManager];
  isMessagesTheDefaultTextApp = [mEMORY[0x1E69A7F60] isMessagesTheDefaultTextApp];

  if (!isMessagesTheDefaultTextApp || [(CKMessagePartChatItem *)self scheduleType]== 2)
  {
    return 0;
  }

  v6 = MEMORY[0x1E69A5C90];
  serviceName = [(CKMessagePartChatItem *)self serviceName];
  v8 = [v6 serviceWithName:serviceName];
  v9 = [v8 supportsCapability:*MEMORY[0x1E69A7A30]];

  return v9;
}

- (BOOL)canInlineReply
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  canReply = [iMChatItem canReply];

  if (canInlineReply_onceToken != -1)
  {
    [CKMessagePartChatItem canInlineReply];
  }

  return (canReply | canInlineReply_canAlwaysReply) & 1;
}

void __39__CKMessagePartChatItem_canInlineReply__block_invoke()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    canInlineReply_canAlwaysReply = [v2 BOOLForKey:@"CanAlwaysInlineReply"];
  }

  else
  {
    canInlineReply_canAlwaysReply = 0;
  }
}

- (BOOL)canAttachStickers
{
  if ([(CKChatItem *)self isEditedMessageHistory])
  {
    v3 = 0;
  }

  else
  {
    messageItem = [(CKMessagePartChatItem *)self messageItem];
    if ([messageItem scheduleType] == 2)
    {
      scheduleState = [messageItem scheduleState];
      if (scheduleState <= 5)
      {
        v3 = 9u >> scheduleState;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

- (BOOL)pollVoteFailed
{
  message = [(CKMessagePartChatItem *)self message];
  balloonBundleID = [message balloonBundleID];
  v5 = [balloonBundleID containsString:*MEMORY[0x1E69A6928]];

  result = 0;
  if (v5)
  {
    messageItem = [(CKMessagePartChatItem *)self messageItem];
    errorCode = [messageItem errorCode];

    if (errorCode)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)failed
{
  if ([(CKMessagePartChatItem *)self pollVoteFailed])
  {
    goto LABEL_4;
  }

  isFromMe = [(CKMessagePartChatItem *)self isFromMe];
  if (!isFromMe)
  {
    return isFromMe;
  }

  message = [(CKMessagePartChatItem *)self message];
  error = [message error];

  if (error || (-[CKMessagePartChatItem messageItem](self, "messageItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 scheduleType], v6, v7 == 2) && (-[CKMessagePartChatItem messageItem](self, "messageItem"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "scheduleState"), v8, (v9 & 0xFFFFFFFFFFFFFFFELL) == 4))
  {
LABEL_4:
    LOBYTE(isFromMe) = 1;
    return isFromMe;
  }

  LOBYTE(isFromMe) = 0;
  return isFromMe;
}

- (id)time
{
  notification = [(CKChatItem *)self notification];

  if (notification)
  {
    notification2 = [(CKChatItem *)self notification];
    date = [notification2 date];
  }

  else
  {
    if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests() || CKIsRunningForDevelopmentOnSimulator())
    {
      iMChatItem = [(CKChatItem *)self IMChatItem];
    }

    else
    {
      iMChatItem = [(CKMessagePartChatItem *)self message];
    }

    notification2 = iMChatItem;
    date = [iMChatItem time];
  }

  v7 = date;

  return v7;
}

- (id)sender
{
  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    iMChatItem = [(CKMessagePartChatItem *)self message];
  }

  v4 = iMChatItem;
  sender = [iMChatItem sender];

  return sender;
}

- (NSString)serviceName
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  serviceName = [iMChatItem serviceName];

  return serviceName;
}

- (BOOL)_isSURFRelatedMessage
{
  message = [(CKMessagePartChatItem *)self message];
  balloonBundleID = [message balloonBundleID];
  v5 = *MEMORY[0x1E69A6A38];
  if ([balloonBundleID containsString:*MEMORY[0x1E69A6A38]])
  {
    v6 = 1;
  }

  else
  {
    message2 = [(CKMessagePartChatItem *)self message];
    balloonBundleID2 = [message2 balloonBundleID];
    v9 = *MEMORY[0x1E69A6A40];
    if ([balloonBundleID2 containsString:*MEMORY[0x1E69A6A40]])
    {
      v6 = 1;
    }

    else
    {
      message3 = [(CKMessagePartChatItem *)self message];
      associatedBalloonBundleID = [message3 associatedBalloonBundleID];
      if ([associatedBalloonBundleID containsString:v5])
      {
        v6 = 1;
      }

      else
      {
        message4 = [(CKMessagePartChatItem *)self message];
        associatedBalloonBundleID2 = [message4 associatedBalloonBundleID];
        v6 = [associatedBalloonBundleID2 containsString:v9];
      }
    }
  }

  return v6;
}

- (int64_t)index
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  index = [iMChatItem index];

  return index;
}

- (char)balloonStyle
{
  messageItem = [(CKMessagePartChatItem *)self messageItem];
  isPendingSatelliteSend = [messageItem isPendingSatelliteSend];

  if (isPendingSatelliteSend)
  {
    LOBYTE(v5) = 4;
  }

  else
  {
    messageItem2 = [(CKMessagePartChatItem *)self messageItem];
    scheduleType = [messageItem2 scheduleType];

    if (scheduleType == 2)
    {
      messageItem3 = [(CKMessagePartChatItem *)self messageItem];
      scheduleState = [messageItem3 scheduleState];

      v5 = 0x40400040400uLL >> (8 * scheduleState);
      if (scheduleState > 5)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (IMColorComponents)strokeColor
{
  messageItem = [(CKMessagePartChatItem *)self messageItem];
  isPendingSatelliteSend = [messageItem isPendingSatelliteSend];

  if (isPendingSatelliteSend)
  {
    goto LABEL_2;
  }

  messageItem2 = [(CKMessagePartChatItem *)self messageItem];
  scheduleType = [messageItem2 scheduleType];

  if (scheduleType < 2)
  {
LABEL_4:
    v2 = *MEMORY[0x1E69A6E08];
    v3 = *(MEMORY[0x1E69A6E08] + 8);
    v4 = *(MEMORY[0x1E69A6E08] + 16);
    v5 = *(MEMORY[0x1E69A6E08] + 24);
    goto LABEL_9;
  }

  if (scheduleType == 2)
  {
    messageItem3 = [(CKMessagePartChatItem *)self messageItem];
    scheduleState = [messageItem3 scheduleState];

    if (scheduleState <= 5)
    {
      if (((1 << scheduleState) & 0x36) != 0)
      {
LABEL_2:
        v9 = +[CKUIBehavior sharedBehaviors];
        theme = [v9 theme];
        v11 = [theme unfilledBalloonColorForColorType:15];
        [v11 ck_imColorComponents];
        v2 = v12;
        v3 = v13;
        v4 = v14;
        v5 = v15;

        goto LABEL_9;
      }

      goto LABEL_4;
    }
  }

LABEL_9:
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  result.alpha = v23;
  result.blue = v22;
  result.green = v21;
  result.red = v20;
  return result;
}

- (char)color
{
  if (+[CKApplicationState isResizing]&& [(CKMessagePartChatItem *)self cachedColor]!= -2)
  {

    return [(CKMessagePartChatItem *)self cachedColor];
  }

  else
  {
    if ([(CKMessagePartChatItem *)self _isSURFRelatedMessage])
    {
      LOBYTE(__ck_displayColor) = 5;
      [(CKMessagePartChatItem *)self setCachedColor:5];
    }

    else if ([(CKMessagePartChatItem *)self isFromMe])
    {
      message = [(CKMessagePartChatItem *)self message];
      iMChatItem = [(CKChatItem *)self IMChatItem];
      if ([iMChatItem scheduleType] == 2 && (v6 = objc_msgSend(iMChatItem, "scheduleState") - 1, v6 < 5) && ((0x1Bu >> v6) & 1) != 0 || (objc_msgSend(message, "isPendingSatelliteSend") & 1) != 0)
      {
        __ck_displayColor = 15;
      }

      else
      {
        v8 = +[CKUIBehavior sharedBehaviors];
        isRunningInStoreDemoMode = [v8 isRunningInStoreDemoMode];

        if (isRunningInStoreDemoMode)
        {
          __ck_displayColor = 1;
        }

        else if ([iMChatItem isStewie])
        {
          __ck_displayColor = 12;
        }

        else if ([iMChatItem isBusiness])
        {
          __ck_displayColor = 6;
        }

        else if ([message wasDowngraded])
        {
          __ck_displayColor = 0;
        }

        else
        {
          v10 = MEMORY[0x1E69A5C90];
          serviceName = [(CKMessagePartChatItem *)self serviceName];
          v12 = [v10 serviceWithName:serviceName];
          __ck_displayColor = [v12 __ck_displayColor];
        }
      }

      [(CKMessagePartChatItem *)self setCachedColor:__ck_displayColor];
    }

    else
    {
      [(CKMessagePartChatItem *)self setCachedColor:0xFFFFFFFFLL];
      LOBYTE(__ck_displayColor) = -1;
    }

    return __ck_displayColor;
  }
}

- (NSArray)pasteboardItemProviders
{
  v6[1] = *MEMORY[0x1E69E9840];
  dragItemProvider = [(CKMessagePartChatItem *)self dragItemProvider];
  v3 = dragItemProvider;
  if (dragItemProvider)
  {
    v6[0] = dragItemProvider;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CKMessagePartChatItem;
  v5 = [(CKChatItem *)&v31 initWithIMChatItem:item maxWidth:?];
  v6 = v5;
  if (v5)
  {
    iMChatItem = [(CKChatItem *)v5 IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iMChatItem2 = [(CKChatItem *)v6 IMChatItem];
      visibleAssociatedMessageChatItems = [iMChatItem2 visibleAssociatedMessageChatItems];
      v11 = visibleAssociatedMessageChatItems;
      if (visibleAssociatedMessageChatItems)
      {
        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(visibleAssociatedMessageChatItems, "count")}];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              __ck_chatItemClass = [objc_alloc(objc_msgSend(*(*(&v27 + 1) + 8 * i) __ck_chatItemClass];
              if (__ck_chatItemClass)
              {
                [v12 addObject:__ck_chatItemClass];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v15);
        }
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&v6->_visibleAssociatedMessageChatItems, v12);
      messageHighlightChatItem = [iMChatItem2 messageHighlightChatItem];

      if (messageHighlightChatItem)
      {
        v20 = [CKMessagePartHighlightChatItem alloc];
        messageHighlightChatItem2 = [iMChatItem2 messageHighlightChatItem];
        v22 = [(CKMessagePartHighlightChatItem *)v20 initWithIMChatItem:messageHighlightChatItem2 maxWidth:width];
        messageHighlightChatItem = v6->_messageHighlightChatItem;
        v6->_messageHighlightChatItem = v22;
      }

      suggestedActionsList = [iMChatItem2 suggestedActionsList];
      suggestedActionsList = v6->_suggestedActionsList;
      v6->_suggestedActionsList = suggestedActionsList;
    }

    [(CKMessagePartChatItem *)v6 setCachedColor:4294967294];
  }

  return v6;
}

- (id)tapbackActionButtonImageName
{
  if ([(CKMessagePartChatItem *)self hasMessageAcknowledgment])
  {
    lastObject = [(NSArray *)self->_visibleAssociatedMessageChatItems lastObject];
    objc_opt_class();
    v4 = &stru_1F04268F8;
    if (objc_opt_isKindOfClass())
    {
      v5 = lastObject;
      if ([v5 includesMultiple])
      {
        v6 = @".2";
      }

      else
      {
        v6 = &stru_1F04268F8;
      }

      latestAcknowledgmentType = [v5 latestAcknowledgmentType];
      if ([v5 fromMeAcknowledgmentType])
      {
        latestAcknowledgmentType = [v5 fromMeAcknowledgmentType];
        v4 = @".fill";
      }

      if ((latestAcknowledgmentType - 2000) > 5)
      {
        v8 = @"plus";
      }

      else
      {
        v8 = off_1E72F5D20[latestAcknowledgmentType - 2000];
      }
    }

    else
    {
      v8 = @"plus";
      v6 = &stru_1F04268F8;
    }
  }

  else
  {
    v8 = @"plus";
    v4 = &stru_1F04268F8;
    v6 = &stru_1F04268F8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@%@%@", v8, @"bubble.tapback", v6, v4];
}

- (CKAggregateAcknowledgmentChatItem)tapbacksChatItem
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleAssociatedMessageChatItems = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v3 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)canSendTapbacks
{
  if ([(CKChatItem *)self isEditedMessageHistory]|| [(CKChatItem *)self itemIsReplyContextPreview])
  {
    v3 = 0;
  }

  else
  {
    messageItem = [(CKMessagePartChatItem *)self messageItem];
    if ([messageItem scheduleType] == 2)
    {
      scheduleState = [messageItem scheduleState];
      if (scheduleState <= 5)
      {
        v3 = 9u >> scheduleState;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

- (_NSRange)messagePartRange
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    messagePartRange = [iMChatItem messagePartRange];
    v5 = v4;
  }

  else
  {
    messagePartRange = 0;
    v5 = 0;
  }

  v6 = messagePartRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)originalMessagePartRange
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  originalMessagePartRange = [iMChatItem originalMessagePartRange];
  v5 = v4;

  v6 = originalMessagePartRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)hasMessageAcknowledgment
{
  tapbacksChatItem = [(CKMessagePartChatItem *)self tapbacksChatItem];
  v3 = tapbacksChatItem != 0;

  return v3;
}

- (BOOL)hasStickers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_visibleAssociatedMessageChatItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isCorrupt
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isCorrupt = [iMChatItem isCorrupt];

  return isCorrupt;
}

- (int64_t)stewieConversationID
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  stewieConversationID = [iMChatItem stewieConversationID];

  return stewieConversationID;
}

- (BOOL)isBlackholed
{
  message = [(CKMessagePartChatItem *)self message];
  error = [message error];
  code = [error code];

  result = [(CKMessagePartChatItem *)self isFromMe];
  if (code != 43)
  {
    return 0;
  }

  return result;
}

- (BOOL)isReply
{
  threadIdentifier = [(CKMessagePartChatItem *)self threadIdentifier];
  if ([threadIdentifier length])
  {
    v4 = ![(CKChatItem *)self wantsOverlayLayout];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)threadIdentifier
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  threadIdentifier = [iMChatItem threadIdentifier];

  return threadIdentifier;
}

- (IMMessageItem)threadOriginator
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  threadOriginator = [iMChatItem threadOriginator];

  return threadOriginator;
}

- (unint64_t)scheduleType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  scheduleType = [iMChatItem scheduleType];

  return scheduleType;
}

- (unint64_t)scheduleState
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  scheduleState = [iMChatItem scheduleState];

  return scheduleState;
}

- (double)timeIntervalSinceMessageSent
{
  time = [(CKMessagePartChatItem *)self time];
  __im_dateWithCurrentServerTime = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [__im_dateWithCurrentServerTime timeIntervalSinceDate:time];
  v5 = v4;

  return v5;
}

- (void)_setVisibleAssociatedMessageChatItems:(id)items
{
  itemsCopy = items;
  visibleAssociatedMessageChatItems = self->_visibleAssociatedMessageChatItems;
  if (visibleAssociatedMessageChatItems != itemsCopy)
  {
    v8 = itemsCopy;
    v7 = [(NSArray *)visibleAssociatedMessageChatItems isEqualToArray:itemsCopy];
    itemsCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_visibleAssociatedMessageChatItems, items);
      itemsCopy = v8;
    }
  }
}

- (BOOL)hasVisibleAssociatedMessageItems
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end