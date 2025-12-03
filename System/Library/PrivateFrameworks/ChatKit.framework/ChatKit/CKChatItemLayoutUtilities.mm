@interface CKChatItemLayoutUtilities
+ (BOOL)needsAdditionalBracketPaddingForChatItem:(id)item prevChatItem:(id)chatItem;
+ (BOOL)nextItemIsOriginatorWithRepliesForIndex:(unint64_t)index allDatasourceItems:(id)items;
+ (BOOL)nextMessageIsReplyForIndex:(unint64_t)index allDatasourceItems:(id)items;
+ (BOOL)prevMessageIsReplyForIndex:(unint64_t)index allDatasourceItems:(id)items;
+ (CGSize)sizeWithLayoutSize:(id)size;
+ (double)adjustedBalloonTopSpacingWithSpacing:(double)spacing previousChatItem:(id)item;
+ (double)adjustedTopSpacingForTextAlignmentInsetsWithSpacing:(double)spacing chatItem:(id)item previousChatItem:(id)chatItem;
+ (double)transcriptTapbackMinSpacingForSenderChatItem:(id)item withNextChatItem:(id)chatItem previousItem:(id)previousItem associatedChatItem:(id)associatedChatItem;
+ (id)avatarSupplementaryItemForChatItem:(id)item layoutEnvironment:(id)environment;
+ (id)balloonEdgeSpacingForItemWithLayoutEnvironment:(id)environment orientation:(char)orientation itemSize:(CGSize)size supplementaryItems:(id)items;
+ (id)dynamicWidthLayoutSizeWithHeight:(double)height;
+ (id)layoutGroupForItem:(id)item;
+ (id)layoutSizeWithSize:(CGSize)size;
+ (id)tapbackLayoutAnchorForAcknowledgmentChatItem:(id)item;
+ (id)tapbackSupplementaryItemForChatItem:(id)item layoutEnvironment:(id)environment;
+ (id)transcriptBalloonVerticalLayoutSpacingWithTopSpacing:(double)spacing bottomSpacing:(double)bottomSpacing previousChatItem:(id)item;
+ (id)transcriptVerticalEdgeSpacingForChatItem:(id)item previousChatItem:(id)chatItem topSpacing:(double)spacing bottomSpacing:(double)bottomSpacing;
@end

@implementation CKChatItemLayoutUtilities

+ (double)adjustedBalloonTopSpacingWithSpacing:(double)spacing previousChatItem:(id)item
{
  itemCopy = item;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (([mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled] & 1) != 0 || objc_msgSend(itemCopy, "layoutType") != 1)
  {
    goto LABEL_5;
  }

  hasTail = [itemCopy hasTail];

  if (hasTail)
  {
    mEMORY[0x1E69A8070] = +[CKUIBehavior sharedBehaviors];
    [mEMORY[0x1E69A8070] balloonMaskTailSizeForTailShape:1];
    spacing = spacing - v8;
LABEL_5:
  }

  return spacing;
}

+ (double)adjustedTopSpacingForTextAlignmentInsetsWithSpacing:(double)spacing chatItem:(id)item previousChatItem:(id)chatItem
{
  chatItemCopy = chatItem;
  [item transcriptTextAlignmentInsets];
  v9 = v8;
  [chatItemCopy transcriptTextAlignmentInsets];
  v11 = v10;

  return spacing - (v9 + v11);
}

+ (id)transcriptVerticalEdgeSpacingForChatItem:(id)item previousChatItem:(id)chatItem topSpacing:(double)spacing bottomSpacing:(double)bottomSpacing
{
  itemCopy = item;
  chatItemCopy = chatItem;
  if ([itemCopy layoutType] == 1)
  {
    [CKChatItemLayoutUtilities adjustedBalloonTopSpacingWithSpacing:chatItemCopy previousChatItem:spacing];
    spacing = v11;
  }

  [CKChatItemLayoutUtilities adjustedTopSpacingForTextAlignmentInsetsWithSpacing:itemCopy chatItem:chatItemCopy previousChatItem:spacing];
  v12 = [MEMORY[0x1E6995590] fixedSpacing:?];
  if (bottomSpacing == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E6995590] fixedSpacing:bottomSpacing];
  }

  v14 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v12 trailing:0 bottom:v13];

  return v14;
}

+ (id)transcriptBalloonVerticalLayoutSpacingWithTopSpacing:(double)spacing bottomSpacing:(double)bottomSpacing previousChatItem:(id)item
{
  itemCopy = item;
  if ([itemCopy layoutType] == 1 && objc_msgSend(itemCopy, "hasTail"))
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 balloonMaskTailSizeForTailShape:1];
    spacing = spacing - v9;
  }

  v10 = [MEMORY[0x1E6995590] fixedSpacing:spacing];
  if (bottomSpacing == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E6995590] fixedSpacing:bottomSpacing];
  }

  v12 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v10 trailing:0 bottom:v11];

  return v12;
}

+ (id)dynamicWidthLayoutSizeWithHeight:(double)height
{
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v5 = [MEMORY[0x1E6995558] absoluteDimension:height];
  v6 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

+ (BOOL)needsAdditionalBracketPaddingForChatItem:(id)item prevChatItem:(id)chatItem
{
  itemCopy = item;
  if (([chatItem itemIsFromMe] & 1) != 0 || !objc_msgSend(itemCopy, "itemIsFromMe"))
  {
    v10 = 0;
  }

  else
  {
    [itemCopy size];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 textBalloonMinHeight];
    v10 = v7 <= v9;
  }

  return v10;
}

+ (BOOL)prevMessageIsReplyForIndex:(unint64_t)index allDatasourceItems:(id)items
{
  if ((index - 1) < 1)
  {
    return 0;
  }

  indexCopy = index;
  while (1)
  {
    v6 = [items objectAtIndex:--indexCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (indexCopy <= 1)
    {
      return 0;
    }
  }

  itemIsReply = [v6 itemIsReply];

  return itemIsReply;
}

+ (BOOL)nextMessageIsReplyForIndex:(unint64_t)index allDatasourceItems:(id)items
{
  itemsCopy = items;
  v6 = index + 1;
  if (v6 >= [itemsCopy count])
  {
LABEL_4:
    itemIsReply = 0;
  }

  else
  {
    while (1)
    {
      v7 = [itemsCopy objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (++v6 >= [itemsCopy count])
      {
        goto LABEL_4;
      }
    }

    itemIsReply = [v7 itemIsReply];
  }

  return itemIsReply;
}

+ (BOOL)nextItemIsOriginatorWithRepliesForIndex:(unint64_t)index allDatasourceItems:(id)items
{
  itemsCopy = items;
  v7 = index + 1;
  if (index + 1 >= [itemsCopy count])
  {
    v9 = 0;
  }

  else
  {
    v8 = [itemsCopy objectAtIndex:index + 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 itemIsThreadOriginator])
    {
      v9 = [self nextMessageIsReplyForIndex:v7 allDatasourceItems:itemsCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (double)transcriptTapbackMinSpacingForSenderChatItem:(id)item withNextChatItem:(id)chatItem previousItem:(id)previousItem associatedChatItem:(id)associatedChatItem
{
  itemCopy = item;
  associatedChatItemCopy = associatedChatItem;
  chatItemCopy = chatItem;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v13 = v12;
  v15 = v14;

  [itemCopy size];
  v17 = v16;
  [chatItemCopy size];
  v19 = v18 - v13;
  v20 = [CKChatItemLayoutUtilities layoutTypeIsMessageBalloonForChatItem:chatItemCopy];

  v21 = 0.0;
  if (v17 < v19 && v20)
  {
    [associatedChatItemCopy size];
    v24 = v15 + v23;
    [itemCopy size];
    v26 = v24 - v25;
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 smallTranscriptSpace];
    v21 = v26 + v28;
  }

  return v21;
}

+ (id)layoutSizeWithSize:(CGSize)size
{
  height = size.height;
  v4 = [MEMORY[0x1E6995558] absoluteDimension:size.width];
  v5 = [MEMORY[0x1E6995558] absoluteDimension:height];
  v6 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

+ (CGSize)sizeWithLayoutSize:(id)size
{
  sizeCopy = size;
  widthDimension = [sizeCopy widthDimension];
  v5 = 0.0;
  v6 = 0.0;
  if ([widthDimension isAbsolute])
  {
    widthDimension2 = [sizeCopy widthDimension];
    [widthDimension2 dimension];
    v6 = v8;
  }

  heightDimension = [sizeCopy heightDimension];
  if ([heightDimension isAbsolute])
  {
    heightDimension2 = [sizeCopy heightDimension];
    [heightDimension2 dimension];
    v5 = v11;
  }

  v12 = v6;
  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (id)layoutGroupForItem:(id)item
{
  v12[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  layoutSize = [itemCopy layoutSize];
  heightDimension = [layoutSize heightDimension];

  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v7 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:heightDimension];
  v8 = MEMORY[0x1E6995568];
  v12[0] = itemCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v8 verticalGroupWithLayoutSize:v7 subitems:v9];

  return v10;
}

+ (id)balloonEdgeSpacingForItemWithLayoutEnvironment:(id)environment orientation:(char)orientation itemSize:(CGSize)size supplementaryItems:(id)items
{
  width = size.width;
  orientationCopy = orientation;
  v48 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  collectionLayoutEnvironment = [environmentCopy collectionLayoutEnvironment];
  container = [collectionLayoutEnvironment container];
  [container contentSize];
  v13 = v12;

  [environmentCopy marginInsets];
  v15 = v14;
  v17 = v16;
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 balloonMaskTailSizeForTailShape:1];
  v20 = v19;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = itemsCopy;
  v22 = [v21 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v44;
    v25 = *MEMORY[0x1E695EFF8];
    v26 = 0.0;
    v27 = 0.0;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v21);
        }

        containerAnchor = [*(*(&v43 + 1) + 8 * i) containerAnchor];
        v30 = v25;
        if ([containerAnchor isAbsoluteOffset])
        {
          [containerAnchor offset];
          v30 = v31;
        }

        v32 = [containerAnchor edges] & 2;
        v33 = fabs(v30);
        if (v33 >= v27 && v32 != 0)
        {
          v27 = v33;
        }

        v35 = [containerAnchor edges] & 8;
        if (v33 >= v26 && v35 != 0)
        {
          v26 = v33;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v23);
  }

  else
  {
    v26 = 0.0;
    v27 = 0.0;
  }

  if (orientationCopy == 2)
  {
    v38 = v20 + v13 - width - v17 - v26;
    v37 = MEMORY[0x1E6995590];
    goto LABEL_26;
  }

  if (!orientationCopy)
  {
    v37 = MEMORY[0x1E6995590];
    v38 = v15 - v20 + v27;
LABEL_26:
    v39 = [v37 fixedSpacing:v38];
    goto LABEL_28;
  }

  v39 = 0;
LABEL_28:
  v40 = [MEMORY[0x1E6995560] spacingForLeading:v39 top:0 trailing:0 bottom:0];

  return v40;
}

+ (id)avatarSupplementaryItemForChatItem:(id)item layoutEnvironment:(id)environment
{
  itemCopy = item;
  environmentCopy = environment;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptContactImageDiameter];
  v10 = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 transcriptGroupTypingContactImageDiameter];
    v10 = v12;
  }

  v13 = [self layoutSizeWithSize:{v10, v10}];
  v14 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:6 absoluteOffset:{-v10, 0.0}];
  iMChatItem = [itemCopy IMChatItem];
  guid = [iMChatItem guid];
  v17 = [(CKTranscriptCollectionSupplementaryView *)CKTranscriptAvatarSupplementaryView supplementaryViewKindForGUID:guid];

  v18 = [MEMORY[0x1E6995598] supplementaryItemWithLayoutSize:v13 elementKind:v17 containerAnchor:v14];
  collectionView = [environmentCopy collectionView];

  v20 = objc_opt_class();
  v21 = +[(CKTranscriptCollectionSupplementaryView *)CKTranscriptAvatarSupplementaryView];
  [collectionView registerClass:v20 forSupplementaryViewOfKind:v17 withReuseIdentifier:v21];

  return v18;
}

+ (id)tapbackSupplementaryItemForChatItem:(id)item layoutEnvironment:(id)environment
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  environmentCopy = environment;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  visibleAssociatedMessageChatItems = [itemCopy visibleAssociatedMessageChatItems];
  v9 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {
    v11 = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v26;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(visibleAssociatedMessageChatItems);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;

        v11 = v15;
      }
    }

    v10 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v10);

  if (v11)
  {
    [v11 size];
    visibleAssociatedMessageChatItems = [self layoutSizeWithSize:?];
    v16 = [self tapbackLayoutAnchorForAcknowledgmentChatItem:v11];
    iMChatItem = [itemCopy IMChatItem];
    guid = [iMChatItem guid];
    v19 = [(CKTranscriptCollectionSupplementaryView *)CKTranscriptTapbackSupplementaryView supplementaryViewKindForGUID:guid];

    v20 = [MEMORY[0x1E6995598] supplementaryItemWithLayoutSize:visibleAssociatedMessageChatItems elementKind:v19 containerAnchor:v16];
    collectionView = [environmentCopy collectionView];
    v22 = objc_opt_class();
    v23 = +[(CKTranscriptCollectionSupplementaryView *)CKTranscriptTapbackSupplementaryView];
    [collectionView registerClass:v22 forSupplementaryViewOfKind:v19 withReuseIdentifier:v23];

LABEL_13:
    goto LABEL_15;
  }

  v20 = 0;
LABEL_15:

  return v20;
}

+ (id)tapbackLayoutAnchorForAcknowledgmentChatItem:(id)item
{
  itemCopy = item;
  transcriptOrientation = [itemCopy transcriptOrientation];
  [itemCopy size];
  v6 = v5;
  [itemCopy size];
  v8 = v7;

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v11 = v10;
  v13 = v12;

  if (transcriptOrientation)
  {
    v14 = 3;
  }

  else
  {
    v14 = 9;
  }

  v15 = v8 - v11;
  if (transcriptOrientation)
  {
    v15 = -(v8 - v11);
  }

  v16 = MEMORY[0x1E6995540];

  return [v16 layoutAnchorWithEdges:v14 absoluteOffset:{v15, -(v6 + v13)}];
}

@end