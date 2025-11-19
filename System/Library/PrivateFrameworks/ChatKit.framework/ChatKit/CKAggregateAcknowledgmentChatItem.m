@interface CKAggregateAcknowledgmentChatItem
- (BOOL)containsTransferGUID:(id)a3;
- (BOOL)includesFromMe;
- (BOOL)includesMultiple;
- (BOOL)isCommSafetySensitiveNotViewable;
- (BOOL)isEqual:(id)a3;
- (BOOL)latestIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKAggregateAcknowledgmentChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (Class)balloonViewClass;
- (IMMessageAcknowledgmentChatItem)sentTapbackChatItem;
- (NSArray)acknowledgments;
- (NSString)acknowledgmentImageName;
- (NSString)serviceName;
- (UIColor)acknowledgmentImageColor;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)associatedChatItemGUID;
- (int64_t)fromMeAcknowledgmentType;
@end

@implementation CKAggregateAcknowledgmentChatItem

- (CKAggregateAcknowledgmentChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34.receiver = self;
  v34.super_class = CKAggregateAcknowledgmentChatItem;
  v7 = [(CKChatItem *)&v34 initWithIMChatItem:v6 maxWidth:a4];
  if (v7)
  {
    v8 = [v6 latestTapback];
    v7->_latestAcknowledgmentType = CKMessageAcknowledgmentTypeFromIMAssociatedMessageType([v8 associatedMessageType]);

    v28 = v6;
    v9 = [v6 latestTapback];
    latestTapback = v7->_latestTapback;
    v7->_latestTapback = v9;

    v29 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [(CKAggregateAcknowledgmentChatItem *)v7 acknowledgments];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 tapback];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v19 = [v16 tapback];
            v20 = [v19 transferGUID];

            if (v20)
            {
              v21 = [v16 chatContext];
              v22 = [v16 message];
              v23 = +[CKMediaObjectManager sharedInstance];
              v24 = [v23 mediaObjectWithTransferGUID:v20 imMessage:v22 chatContext:v21];

              if (v24)
              {
                [v29 addObject:v24];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    v25 = [v29 copy];
    mediaObjects = v7->_mediaObjects;
    v7->_mediaObjects = v25;

    v6 = v28;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKChatItem *)self IMChatItem];
    v7 = [v5 IMChatItem];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (Class)balloonViewClass
{
  [(CKChatItem *)self isFromMe];
  v2 = objc_opt_class();

  return v2;
}

- (id)associatedChatItemGUID
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  v3 = [v2 associatedMessageGUID];
  v4 = IMAssociatedMessageDecodeGUID();

  return v4;
}

- (NSString)serviceName
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 serviceName];

  return v3;
}

- (BOOL)includesFromMe
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  v3 = [v2 includesFromMe];

  return v3;
}

- (BOOL)latestIsFromMe
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  v3 = [v2 latestIsFromMe];

  return v3;
}

- (BOOL)includesMultiple
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  v3 = [v2 includesMultiple];

  return v3;
}

- (IMMessageAcknowledgmentChatItem)sentTapbackChatItem
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  v3 = [v2 fromMeAcknowledgement];

  return v3;
}

- (int64_t)fromMeAcknowledgmentType
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self sentTapbackChatItem];
  v3 = [v2 associatedMessageType];

  return v3;
}

- (NSArray)acknowledgments
{
  v2 = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  v3 = [v2 acknowledgments];

  return v3;
}

- (NSString)acknowledgmentImageName
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 messageAcknowledgmentImageNameForType:self->_latestAcknowledgmentType];

  return v4;
}

- (UIColor)acknowledgmentImageColor
{
  v3 = [(CKAggregateAcknowledgmentChatItem *)self latestIsFromMe];
  if (self->_latestAcknowledgmentType == 2000)
  {
    if ([(CKAggregateAcknowledgmentChatItem *)self latestIsFromMe])
    {
      v4 = [(CKAggregateAcknowledgmentChatItem *)self serviceName];
      v5 = [v4 isEqualToString:*MEMORY[0x1E69A7AF0]];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 theme];
  v8 = [v7 messageAcknowledgment:v3 acknowledgmentImageColor:v5];

  return v8;
}

- (char)transcriptOrientation
{
  if ([(CKAssociatedMessageChatItem *)self parentMessageIsFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEmojiTapbacksEnabled];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_5;
  }

  v9 = [(CKTapbackPileViewModel *)v7 usesFannedBubbleStyle];

  if (!v9)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = v7;
LABEL_5:
    [(CKTapbackPileViewModel *)v7 aggregateAcknowledgmentTranscriptBalloonSize];
    v13 = v16;
    v15 = v17;
    goto LABEL_6;
  }

  v8 = [[CKTapbackPileViewModel alloc] initWithAggregateAcknowledgmentChatItem:self];
  v10 = [CKTapbackPileLayout alloc];
  v11 = [(CKTapbackPileLayout *)v10 initWithSourcePoint:v8 viewModel:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(CKTapbackPileLayout *)v11 pilePositioningSize];
  v13 = v12;
  v15 = v14;

LABEL_6:
  v18 = v13;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (BOOL)isCommSafetySensitiveNotViewable
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CKAggregateAcknowledgmentChatItem *)self acknowledgments];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v11 + 1) + 8 * i) commSafetyTransferGUID];
        if (v6)
        {
          v7 = [MEMORY[0x1E69A5B80] sharedInstance];
          v8 = [v7 transferForGUID:v6];

          v9 = [v8 commSafetySensitive];
          if (v9 == 1)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)containsTransferGUID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CKAggregateAcknowledgmentChatItem *)self acknowledgments];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsTransferGUID:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

@end