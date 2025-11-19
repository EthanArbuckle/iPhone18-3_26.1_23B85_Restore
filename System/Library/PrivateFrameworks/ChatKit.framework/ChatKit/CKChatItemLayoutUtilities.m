@interface CKChatItemLayoutUtilities
+ (BOOL)needsAdditionalBracketPaddingForChatItem:(id)a3 prevChatItem:(id)a4;
+ (BOOL)nextItemIsOriginatorWithRepliesForIndex:(unint64_t)a3 allDatasourceItems:(id)a4;
+ (BOOL)nextMessageIsReplyForIndex:(unint64_t)a3 allDatasourceItems:(id)a4;
+ (BOOL)prevMessageIsReplyForIndex:(unint64_t)a3 allDatasourceItems:(id)a4;
+ (CGSize)sizeWithLayoutSize:(id)a3;
+ (double)adjustedBalloonTopSpacingWithSpacing:(double)a3 previousChatItem:(id)a4;
+ (double)adjustedTopSpacingForTextAlignmentInsetsWithSpacing:(double)a3 chatItem:(id)a4 previousChatItem:(id)a5;
+ (double)transcriptTapbackMinSpacingForSenderChatItem:(id)a3 withNextChatItem:(id)a4 previousItem:(id)a5 associatedChatItem:(id)a6;
+ (id)avatarSupplementaryItemForChatItem:(id)a3 layoutEnvironment:(id)a4;
+ (id)balloonEdgeSpacingForItemWithLayoutEnvironment:(id)a3 orientation:(char)a4 itemSize:(CGSize)a5 supplementaryItems:(id)a6;
+ (id)dynamicWidthLayoutSizeWithHeight:(double)a3;
+ (id)layoutGroupForItem:(id)a3;
+ (id)layoutSizeWithSize:(CGSize)a3;
+ (id)tapbackLayoutAnchorForAcknowledgmentChatItem:(id)a3;
+ (id)tapbackSupplementaryItemForChatItem:(id)a3 layoutEnvironment:(id)a4;
+ (id)transcriptBalloonVerticalLayoutSpacingWithTopSpacing:(double)a3 bottomSpacing:(double)a4 previousChatItem:(id)a5;
+ (id)transcriptVerticalEdgeSpacingForChatItem:(id)a3 previousChatItem:(id)a4 topSpacing:(double)a5 bottomSpacing:(double)a6;
@end

@implementation CKChatItemLayoutUtilities

+ (double)adjustedBalloonTopSpacingWithSpacing:(double)a3 previousChatItem:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (([v6 isRoundTailedBalloonShapeEnabled] & 1) != 0 || objc_msgSend(v5, "layoutType") != 1)
  {
    goto LABEL_5;
  }

  v7 = [v5 hasTail];

  if (v7)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 balloonMaskTailSizeForTailShape:1];
    a3 = a3 - v8;
LABEL_5:
  }

  return a3;
}

+ (double)adjustedTopSpacingForTextAlignmentInsetsWithSpacing:(double)a3 chatItem:(id)a4 previousChatItem:(id)a5
{
  v7 = a5;
  [a4 transcriptTextAlignmentInsets];
  v9 = v8;
  [v7 transcriptTextAlignmentInsets];
  v11 = v10;

  return a3 - (v9 + v11);
}

+ (id)transcriptVerticalEdgeSpacingForChatItem:(id)a3 previousChatItem:(id)a4 topSpacing:(double)a5 bottomSpacing:(double)a6
{
  v9 = a3;
  v10 = a4;
  if ([v9 layoutType] == 1)
  {
    [CKChatItemLayoutUtilities adjustedBalloonTopSpacingWithSpacing:v10 previousChatItem:a5];
    a5 = v11;
  }

  [CKChatItemLayoutUtilities adjustedTopSpacingForTextAlignmentInsetsWithSpacing:v9 chatItem:v10 previousChatItem:a5];
  v12 = [MEMORY[0x1E6995590] fixedSpacing:?];
  if (a6 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E6995590] fixedSpacing:a6];
  }

  v14 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v12 trailing:0 bottom:v13];

  return v14;
}

+ (id)transcriptBalloonVerticalLayoutSpacingWithTopSpacing:(double)a3 bottomSpacing:(double)a4 previousChatItem:(id)a5
{
  v7 = a5;
  if ([v7 layoutType] == 1 && objc_msgSend(v7, "hasTail"))
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 balloonMaskTailSizeForTailShape:1];
    a3 = a3 - v9;
  }

  v10 = [MEMORY[0x1E6995590] fixedSpacing:a3];
  if (a4 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E6995590] fixedSpacing:a4];
  }

  v12 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v10 trailing:0 bottom:v11];

  return v12;
}

+ (id)dynamicWidthLayoutSizeWithHeight:(double)a3
{
  v4 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v5 = [MEMORY[0x1E6995558] absoluteDimension:a3];
  v6 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

+ (BOOL)needsAdditionalBracketPaddingForChatItem:(id)a3 prevChatItem:(id)a4
{
  v5 = a3;
  if (([a4 itemIsFromMe] & 1) != 0 || !objc_msgSend(v5, "itemIsFromMe"))
  {
    v10 = 0;
  }

  else
  {
    [v5 size];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 textBalloonMinHeight];
    v10 = v7 <= v9;
  }

  return v10;
}

+ (BOOL)prevMessageIsReplyForIndex:(unint64_t)a3 allDatasourceItems:(id)a4
{
  if ((a3 - 1) < 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = [a4 objectAtIndex:--v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v5 <= 1)
    {
      return 0;
    }
  }

  v8 = [v6 itemIsReply];

  return v8;
}

+ (BOOL)nextMessageIsReplyForIndex:(unint64_t)a3 allDatasourceItems:(id)a4
{
  v5 = a4;
  v6 = a3 + 1;
  if (v6 >= [v5 count])
  {
LABEL_4:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_4;
      }
    }

    v8 = [v7 itemIsReply];
  }

  return v8;
}

+ (BOOL)nextItemIsOriginatorWithRepliesForIndex:(unint64_t)a3 allDatasourceItems:(id)a4
{
  v6 = a4;
  v7 = a3 + 1;
  if (a3 + 1 >= [v6 count])
  {
    v9 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:a3 + 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 itemIsThreadOriginator])
    {
      v9 = [a1 nextMessageIsReplyForIndex:v7 allDatasourceItems:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (double)transcriptTapbackMinSpacingForSenderChatItem:(id)a3 withNextChatItem:(id)a4 previousItem:(id)a5 associatedChatItem:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = a4;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v13 = v12;
  v15 = v14;

  [v8 size];
  v17 = v16;
  [v10 size];
  v19 = v18 - v13;
  v20 = [CKChatItemLayoutUtilities layoutTypeIsMessageBalloonForChatItem:v10];

  v21 = 0.0;
  if (v17 < v19 && v20)
  {
    [v9 size];
    v24 = v15 + v23;
    [v8 size];
    v26 = v24 - v25;
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 smallTranscriptSpace];
    v21 = v26 + v28;
  }

  return v21;
}

+ (id)layoutSizeWithSize:(CGSize)a3
{
  height = a3.height;
  v4 = [MEMORY[0x1E6995558] absoluteDimension:a3.width];
  v5 = [MEMORY[0x1E6995558] absoluteDimension:height];
  v6 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

+ (CGSize)sizeWithLayoutSize:(id)a3
{
  v3 = a3;
  v4 = [v3 widthDimension];
  v5 = 0.0;
  v6 = 0.0;
  if ([v4 isAbsolute])
  {
    v7 = [v3 widthDimension];
    [v7 dimension];
    v6 = v8;
  }

  v9 = [v3 heightDimension];
  if ([v9 isAbsolute])
  {
    v10 = [v3 heightDimension];
    [v10 dimension];
    v5 = v11;
  }

  v12 = v6;
  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (id)layoutGroupForItem:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 layoutSize];
  v5 = [v4 heightDimension];

  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v7 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:v5];
  v8 = MEMORY[0x1E6995568];
  v12[0] = v3;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v8 verticalGroupWithLayoutSize:v7 subitems:v9];

  return v10;
}

+ (id)balloonEdgeSpacingForItemWithLayoutEnvironment:(id)a3 orientation:(char)a4 itemSize:(CGSize)a5 supplementaryItems:(id)a6
{
  width = a5.width;
  v7 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = [v8 collectionLayoutEnvironment];
  v11 = [v10 container];
  [v11 contentSize];
  v13 = v12;

  [v8 marginInsets];
  v15 = v14;
  v17 = v16;
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 balloonMaskTailSizeForTailShape:1];
  v20 = v19;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = v9;
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

        v29 = [*(*(&v43 + 1) + 8 * i) containerAnchor];
        v30 = v25;
        if ([v29 isAbsoluteOffset])
        {
          [v29 offset];
          v30 = v31;
        }

        v32 = [v29 edges] & 2;
        v33 = fabs(v30);
        if (v33 >= v27 && v32 != 0)
        {
          v27 = v33;
        }

        v35 = [v29 edges] & 8;
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

  if (v7 == 2)
  {
    v38 = v20 + v13 - width - v17 - v26;
    v37 = MEMORY[0x1E6995590];
    goto LABEL_26;
  }

  if (!v7)
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

+ (id)avatarSupplementaryItemForChatItem:(id)a3 layoutEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v13 = [a1 layoutSizeWithSize:{v10, v10}];
  v14 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:6 absoluteOffset:{-v10, 0.0}];
  v15 = [v6 IMChatItem];
  v16 = [v15 guid];
  v17 = [(CKTranscriptCollectionSupplementaryView *)CKTranscriptAvatarSupplementaryView supplementaryViewKindForGUID:v16];

  v18 = [MEMORY[0x1E6995598] supplementaryItemWithLayoutSize:v13 elementKind:v17 containerAnchor:v14];
  v19 = [v7 collectionView];

  v20 = objc_opt_class();
  v21 = +[(CKTranscriptCollectionSupplementaryView *)CKTranscriptAvatarSupplementaryView];
  [v19 registerClass:v20 forSupplementaryViewOfKind:v17 withReuseIdentifier:v21];

  return v18;
}

+ (id)tapbackSupplementaryItemForChatItem:(id)a3 layoutEnvironment:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 visibleAssociatedMessageChatItems];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;

        v11 = v15;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v10);

  if (v11)
  {
    [v11 size];
    v8 = [a1 layoutSizeWithSize:?];
    v16 = [a1 tapbackLayoutAnchorForAcknowledgmentChatItem:v11];
    v17 = [v6 IMChatItem];
    v18 = [v17 guid];
    v19 = [(CKTranscriptCollectionSupplementaryView *)CKTranscriptTapbackSupplementaryView supplementaryViewKindForGUID:v18];

    v20 = [MEMORY[0x1E6995598] supplementaryItemWithLayoutSize:v8 elementKind:v19 containerAnchor:v16];
    v21 = [v7 collectionView];
    v22 = objc_opt_class();
    v23 = +[(CKTranscriptCollectionSupplementaryView *)CKTranscriptTapbackSupplementaryView];
    [v21 registerClass:v22 forSupplementaryViewOfKind:v19 withReuseIdentifier:v23];

LABEL_13:
    goto LABEL_15;
  }

  v20 = 0;
LABEL_15:

  return v20;
}

+ (id)tapbackLayoutAnchorForAcknowledgmentChatItem:(id)a3
{
  v3 = a3;
  v4 = [v3 transcriptOrientation];
  [v3 size];
  v6 = v5;
  [v3 size];
  v8 = v7;

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v11 = v10;
  v13 = v12;

  if (v4)
  {
    v14 = 3;
  }

  else
  {
    v14 = 9;
  }

  v15 = v8 - v11;
  if (v4)
  {
    v15 = -(v8 - v11);
  }

  v16 = MEMORY[0x1E6995540];

  return [v16 layoutAnchorWithEdges:v14 absoluteOffset:{v15, -(v6 + v13)}];
}

@end