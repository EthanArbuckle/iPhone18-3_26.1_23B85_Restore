@interface CKAggregateAcknowledgmentChatItem
- (BOOL)containsTransferGUID:(id)d;
- (BOOL)includesFromMe;
- (BOOL)includesMultiple;
- (BOOL)isCommSafetySensitiveNotViewable;
- (BOOL)isEqual:(id)equal;
- (BOOL)latestIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKAggregateAcknowledgmentChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
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

- (CKAggregateAcknowledgmentChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  v36 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v34.receiver = self;
  v34.super_class = CKAggregateAcknowledgmentChatItem;
  v7 = [(CKChatItem *)&v34 initWithIMChatItem:itemCopy maxWidth:width];
  if (v7)
  {
    latestTapback = [itemCopy latestTapback];
    v7->_latestAcknowledgmentType = CKMessageAcknowledgmentTypeFromIMAssociatedMessageType([latestTapback associatedMessageType]);

    v28 = itemCopy;
    latestTapback2 = [itemCopy latestTapback];
    latestTapback = v7->_latestTapback;
    v7->_latestTapback = latestTapback2;

    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    acknowledgments = [(CKAggregateAcknowledgmentChatItem *)v7 acknowledgments];
    v12 = [acknowledgments countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(acknowledgments);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          tapback = [v16 tapback];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            tapback2 = [v16 tapback];
            transferGUID = [tapback2 transferGUID];

            if (transferGUID)
            {
              chatContext = [v16 chatContext];
              message = [v16 message];
              v23 = +[CKMediaObjectManager sharedInstance];
              v24 = [v23 mediaObjectWithTransferGUID:transferGUID imMessage:message chatContext:chatContext];

              if (v24)
              {
                [array addObject:v24];
              }
            }
          }
        }

        v13 = [acknowledgments countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    v25 = [array copy];
    mediaObjects = v7->_mediaObjects;
    v7->_mediaObjects = v25;

    itemCopy = v28;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    iMChatItem = [(CKChatItem *)self IMChatItem];
    iMChatItem2 = [v5 IMChatItem];

    v8 = [iMChatItem isEqual:iMChatItem2];
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
  _imAggregateAcknowledgmentChatItem = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  associatedMessageGUID = [_imAggregateAcknowledgmentChatItem associatedMessageGUID];
  v4 = IMAssociatedMessageDecodeGUID();

  return v4;
}

- (NSString)serviceName
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  serviceName = [iMChatItem serviceName];

  return serviceName;
}

- (BOOL)includesFromMe
{
  _imAggregateAcknowledgmentChatItem = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  includesFromMe = [_imAggregateAcknowledgmentChatItem includesFromMe];

  return includesFromMe;
}

- (BOOL)latestIsFromMe
{
  _imAggregateAcknowledgmentChatItem = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  latestIsFromMe = [_imAggregateAcknowledgmentChatItem latestIsFromMe];

  return latestIsFromMe;
}

- (BOOL)includesMultiple
{
  _imAggregateAcknowledgmentChatItem = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  includesMultiple = [_imAggregateAcknowledgmentChatItem includesMultiple];

  return includesMultiple;
}

- (IMMessageAcknowledgmentChatItem)sentTapbackChatItem
{
  _imAggregateAcknowledgmentChatItem = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  fromMeAcknowledgement = [_imAggregateAcknowledgmentChatItem fromMeAcknowledgement];

  return fromMeAcknowledgement;
}

- (int64_t)fromMeAcknowledgmentType
{
  sentTapbackChatItem = [(CKAggregateAcknowledgmentChatItem *)self sentTapbackChatItem];
  associatedMessageType = [sentTapbackChatItem associatedMessageType];

  return associatedMessageType;
}

- (NSArray)acknowledgments
{
  _imAggregateAcknowledgmentChatItem = [(CKAggregateAcknowledgmentChatItem *)self _imAggregateAcknowledgmentChatItem];
  acknowledgments = [_imAggregateAcknowledgmentChatItem acknowledgments];

  return acknowledgments;
}

- (NSString)acknowledgmentImageName
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 messageAcknowledgmentImageNameForType:self->_latestAcknowledgmentType];

  return v4;
}

- (UIColor)acknowledgmentImageColor
{
  latestIsFromMe = [(CKAggregateAcknowledgmentChatItem *)self latestIsFromMe];
  if (self->_latestAcknowledgmentType == 2000)
  {
    if ([(CKAggregateAcknowledgmentChatItem *)self latestIsFromMe])
    {
      serviceName = [(CKAggregateAcknowledgmentChatItem *)self serviceName];
      v5 = [serviceName isEqualToString:*MEMORY[0x1E69A7AF0]];
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
  theme = [v6 theme];
  v8 = [theme messageAcknowledgment:latestIsFromMe acknowledgmentImageColor:v5];

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

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEmojiTapbacksEnabled = [mEMORY[0x1E69A8070] isEmojiTapbacksEnabled];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = v7;
  if (!isEmojiTapbacksEnabled)
  {
    goto LABEL_5;
  }

  usesFannedBubbleStyle = [(CKTapbackPileViewModel *)v7 usesFannedBubbleStyle];

  if (!usesFannedBubbleStyle)
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
  acknowledgments = [(CKAggregateAcknowledgmentChatItem *)self acknowledgments];
  v3 = [acknowledgments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(acknowledgments);
        }

        commSafetyTransferGUID = [*(*(&v11 + 1) + 8 * i) commSafetyTransferGUID];
        if (commSafetyTransferGUID)
        {
          mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
          v8 = [mEMORY[0x1E69A5B80] transferForGUID:commSafetyTransferGUID];

          commSafetySensitive = [v8 commSafetySensitive];
          if (commSafetySensitive == 1)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [acknowledgments countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)containsTransferGUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  acknowledgments = [(CKAggregateAcknowledgmentChatItem *)self acknowledgments];
  v6 = [acknowledgments countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(acknowledgments);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsTransferGUID:dCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [acknowledgments countByEnumeratingWithState:&v10 objects:v14 count:16];
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