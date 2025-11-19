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
- (CKMessagePartChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
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
- (void)_setVisibleAssociatedMessageChatItems:(id)a3;
@end

@implementation CKMessagePartChatItem

- (BOOL)isFromMe
{
  v3 = [(CKChatItem *)self notification];

  if (v3)
  {
    return 0;
  }

  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests() || CKIsRunningForDevelopmentOnSimulator() || ([(CKMessagePartChatItem *)self message], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v5 = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    v5 = [(CKMessagePartChatItem *)self message];
  }

  v6 = v5;
  v7 = [v5 isFromMe];

  return v7;
}

- (IMMessage)message
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 message];

  return v3;
}

- (IMMessageItem)messageItem
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 messageItem];

  return v3;
}

- (NSArray)messageAcknowledgments
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v5)
          {
            v5 = [MEMORY[0x1E695DF70] array];
          }

          [v5 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)selectedType
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [(CKMessagePartChatItem *)self messageAcknowledgments];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 acknowledgments];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v17 + 1) + 8 * j);
              if (([v14 isFromMe] & 1) != 0 || v6 < 0)
              {
                v15 = [v14 tapback];
                v6 = [v15 associatedMessageType];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 <= 2000)
  {
    return 2000;
  }

  else
  {
    return v6;
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
        v8 = [v7 acknowledgments];
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v29 + 1) + 8 * i) tapback];
              v14 = [v13 associatedMessageType];

              if (v14 > 2002)
              {
                switch(v14)
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
                switch(v14)
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

            v10 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
  v2 = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v5 = [(CKMessagePartChatItem *)self color];
  v6 = [(CKMessagePartChatItem *)self messageHighlightChatItem];
  v7 = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"[%@ color:%d, messageHighlightChatItem: %@, visible associated message items: [%@]]", v4, v5, v6, v8];

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
  v3 = [MEMORY[0x1E69A7F60] sharedManager];
  v4 = [v3 isMessagesTheDefaultTextApp];

  if (!v4 || [(CKMessagePartChatItem *)self scheduleType]== 2)
  {
    return 0;
  }

  v6 = MEMORY[0x1E69A5C90];
  v7 = [(CKMessagePartChatItem *)self serviceName];
  v8 = [v6 serviceWithName:v7];
  v9 = [v8 supportsCapability:*MEMORY[0x1E69A7A30]];

  return v9;
}

- (BOOL)canInlineReply
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 canReply];

  if (canInlineReply_onceToken != -1)
  {
    [CKMessagePartChatItem canInlineReply];
  }

  return (v3 | canInlineReply_canAlwaysReply) & 1;
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
    v4 = [(CKMessagePartChatItem *)self messageItem];
    if ([v4 scheduleType] == 2)
    {
      v5 = [v4 scheduleState];
      if (v5 <= 5)
      {
        v3 = 9u >> v5;
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
  v3 = [(CKMessagePartChatItem *)self message];
  v4 = [v3 balloonBundleID];
  v5 = [v4 containsString:*MEMORY[0x1E69A6928]];

  result = 0;
  if (v5)
  {
    v6 = [(CKMessagePartChatItem *)self messageItem];
    v7 = [v6 errorCode];

    if (v7)
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

  v3 = [(CKMessagePartChatItem *)self isFromMe];
  if (!v3)
  {
    return v3;
  }

  v4 = [(CKMessagePartChatItem *)self message];
  v5 = [v4 error];

  if (v5 || (-[CKMessagePartChatItem messageItem](self, "messageItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 scheduleType], v6, v7 == 2) && (-[CKMessagePartChatItem messageItem](self, "messageItem"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "scheduleState"), v8, (v9 & 0xFFFFFFFFFFFFFFFELL) == 4))
  {
LABEL_4:
    LOBYTE(v3) = 1;
    return v3;
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (id)time
{
  v3 = [(CKChatItem *)self notification];

  if (v3)
  {
    v4 = [(CKChatItem *)self notification];
    v5 = [v4 date];
  }

  else
  {
    if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests() || CKIsRunningForDevelopmentOnSimulator())
    {
      v6 = [(CKChatItem *)self IMChatItem];
    }

    else
    {
      v6 = [(CKMessagePartChatItem *)self message];
    }

    v4 = v6;
    v5 = [v6 time];
  }

  v7 = v5;

  return v7;
}

- (id)sender
{
  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    v3 = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    v3 = [(CKMessagePartChatItem *)self message];
  }

  v4 = v3;
  v5 = [v3 sender];

  return v5;
}

- (NSString)serviceName
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 serviceName];

  return v3;
}

- (BOOL)_isSURFRelatedMessage
{
  v3 = [(CKMessagePartChatItem *)self message];
  v4 = [v3 balloonBundleID];
  v5 = *MEMORY[0x1E69A6A38];
  if ([v4 containsString:*MEMORY[0x1E69A6A38]])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CKMessagePartChatItem *)self message];
    v8 = [v7 balloonBundleID];
    v9 = *MEMORY[0x1E69A6A40];
    if ([v8 containsString:*MEMORY[0x1E69A6A40]])
    {
      v6 = 1;
    }

    else
    {
      v10 = [(CKMessagePartChatItem *)self message];
      v11 = [v10 associatedBalloonBundleID];
      if ([v11 containsString:v5])
      {
        v6 = 1;
      }

      else
      {
        v12 = [(CKMessagePartChatItem *)self message];
        v13 = [v12 associatedBalloonBundleID];
        v6 = [v13 containsString:v9];
      }
    }
  }

  return v6;
}

- (int64_t)index
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 index];

  return v3;
}

- (char)balloonStyle
{
  v3 = [(CKMessagePartChatItem *)self messageItem];
  v4 = [v3 isPendingSatelliteSend];

  if (v4)
  {
    LOBYTE(v5) = 4;
  }

  else
  {
    v6 = [(CKMessagePartChatItem *)self messageItem];
    v7 = [v6 scheduleType];

    if (v7 == 2)
    {
      v8 = [(CKMessagePartChatItem *)self messageItem];
      v9 = [v8 scheduleState];

      v5 = 0x40400040400uLL >> (8 * v9);
      if (v9 > 5)
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
  v7 = [(CKMessagePartChatItem *)self messageItem];
  v8 = [v7 isPendingSatelliteSend];

  if (v8)
  {
    goto LABEL_2;
  }

  v16 = [(CKMessagePartChatItem *)self messageItem];
  v17 = [v16 scheduleType];

  if (v17 < 2)
  {
LABEL_4:
    v2 = *MEMORY[0x1E69A6E08];
    v3 = *(MEMORY[0x1E69A6E08] + 8);
    v4 = *(MEMORY[0x1E69A6E08] + 16);
    v5 = *(MEMORY[0x1E69A6E08] + 24);
    goto LABEL_9;
  }

  if (v17 == 2)
  {
    v18 = [(CKMessagePartChatItem *)self messageItem];
    v19 = [v18 scheduleState];

    if (v19 <= 5)
    {
      if (((1 << v19) & 0x36) != 0)
      {
LABEL_2:
        v9 = +[CKUIBehavior sharedBehaviors];
        v10 = [v9 theme];
        v11 = [v10 unfilledBalloonColorForColorType:15];
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
      LOBYTE(v3) = 5;
      [(CKMessagePartChatItem *)self setCachedColor:5];
    }

    else if ([(CKMessagePartChatItem *)self isFromMe])
    {
      v4 = [(CKMessagePartChatItem *)self message];
      v5 = [(CKChatItem *)self IMChatItem];
      if ([v5 scheduleType] == 2 && (v6 = objc_msgSend(v5, "scheduleState") - 1, v6 < 5) && ((0x1Bu >> v6) & 1) != 0 || (objc_msgSend(v4, "isPendingSatelliteSend") & 1) != 0)
      {
        v3 = 15;
      }

      else
      {
        v8 = +[CKUIBehavior sharedBehaviors];
        v9 = [v8 isRunningInStoreDemoMode];

        if (v9)
        {
          v3 = 1;
        }

        else if ([v5 isStewie])
        {
          v3 = 12;
        }

        else if ([v5 isBusiness])
        {
          v3 = 6;
        }

        else if ([v4 wasDowngraded])
        {
          v3 = 0;
        }

        else
        {
          v10 = MEMORY[0x1E69A5C90];
          v11 = [(CKMessagePartChatItem *)self serviceName];
          v12 = [v10 serviceWithName:v11];
          v3 = [v12 __ck_displayColor];
        }
      }

      [(CKMessagePartChatItem *)self setCachedColor:v3];
    }

    else
    {
      [(CKMessagePartChatItem *)self setCachedColor:0xFFFFFFFFLL];
      LOBYTE(v3) = -1;
    }

    return v3;
  }
}

- (NSArray)pasteboardItemProviders
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(CKMessagePartChatItem *)self dragItemProvider];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKMessagePartChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CKMessagePartChatItem;
  v5 = [(CKChatItem *)&v31 initWithIMChatItem:a3 maxWidth:?];
  v6 = v5;
  if (v5)
  {
    v7 = [(CKChatItem *)v5 IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(CKChatItem *)v6 IMChatItem];
      v10 = [v9 visibleAssociatedMessageChatItems];
      v11 = v10;
      if (v10)
      {
        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
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

              v18 = [objc_alloc(objc_msgSend(*(*(&v27 + 1) + 8 * i) __ck_chatItemClass];
              if (v18)
              {
                [v12 addObject:v18];
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
      v19 = [v9 messageHighlightChatItem];

      if (v19)
      {
        v20 = [CKMessagePartHighlightChatItem alloc];
        v21 = [v9 messageHighlightChatItem];
        v22 = [(CKMessagePartHighlightChatItem *)v20 initWithIMChatItem:v21 maxWidth:a4];
        messageHighlightChatItem = v6->_messageHighlightChatItem;
        v6->_messageHighlightChatItem = v22;
      }

      v24 = [v9 suggestedActionsList];
      suggestedActionsList = v6->_suggestedActionsList;
      v6->_suggestedActionsList = v24;
    }

    [(CKMessagePartChatItem *)v6 setCachedColor:4294967294];
  }

  return v6;
}

- (id)tapbackActionButtonImageName
{
  if ([(CKMessagePartChatItem *)self hasMessageAcknowledgment])
  {
    v3 = [(NSArray *)self->_visibleAssociatedMessageChatItems lastObject];
    objc_opt_class();
    v4 = &stru_1F04268F8;
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      if ([v5 includesMultiple])
      {
        v6 = @".2";
      }

      else
      {
        v6 = &stru_1F04268F8;
      }

      v7 = [v5 latestAcknowledgmentType];
      if ([v5 fromMeAcknowledgmentType])
      {
        v7 = [v5 fromMeAcknowledgmentType];
        v4 = @".fill";
      }

      if ((v7 - 2000) > 5)
      {
        v8 = @"plus";
      }

      else
      {
        v8 = off_1E72F5D20[v7 - 2000];
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
  v2 = [(CKMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v4 = [(CKMessagePartChatItem *)self messageItem];
    if ([v4 scheduleType] == 2)
    {
      v5 = [v4 scheduleState];
      if (v5 <= 5)
      {
        v3 = 9u >> v5;
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
  v2 = [(CKChatItem *)self IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 messagePartRange];
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)originalMessagePartRange
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 originalMessagePartRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)hasMessageAcknowledgment
{
  v2 = [(CKMessagePartChatItem *)self tapbacksChatItem];
  v3 = v2 != 0;

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
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isCorrupt];

  return v3;
}

- (int64_t)stewieConversationID
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 stewieConversationID];

  return v3;
}

- (BOOL)isBlackholed
{
  v3 = [(CKMessagePartChatItem *)self message];
  v4 = [v3 error];
  v5 = [v4 code];

  result = [(CKMessagePartChatItem *)self isFromMe];
  if (v5 != 43)
  {
    return 0;
  }

  return result;
}

- (BOOL)isReply
{
  v3 = [(CKMessagePartChatItem *)self threadIdentifier];
  if ([v3 length])
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
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 threadIdentifier];

  return v3;
}

- (IMMessageItem)threadOriginator
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 threadOriginator];

  return v3;
}

- (unint64_t)scheduleType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 scheduleType];

  return v3;
}

- (unint64_t)scheduleState
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 scheduleState];

  return v3;
}

- (double)timeIntervalSinceMessageSent
{
  v2 = [(CKMessagePartChatItem *)self time];
  v3 = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  return v5;
}

- (void)_setVisibleAssociatedMessageChatItems:(id)a3
{
  v5 = a3;
  visibleAssociatedMessageChatItems = self->_visibleAssociatedMessageChatItems;
  if (visibleAssociatedMessageChatItems != v5)
  {
    v8 = v5;
    v7 = [(NSArray *)visibleAssociatedMessageChatItems isEqualToArray:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_visibleAssociatedMessageChatItems, a3);
      v5 = v8;
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