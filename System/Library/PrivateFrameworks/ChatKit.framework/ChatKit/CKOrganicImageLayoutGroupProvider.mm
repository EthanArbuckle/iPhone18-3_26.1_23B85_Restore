@interface CKOrganicImageLayoutGroupProvider
- (CGSize)_targetSizeForChatItem:(id)item totalItemCount:(unint64_t)count;
- (double)_rotationForChatItem:(id)item leftRotated:(BOOL)rotated;
- (double)_setLayoutRecipesForChatItems:(id)items;
- (double)scalarForSize:(CGSize)size count:(unint64_t)count;
- (id)_intersectSpecForIndex:(unint64_t)index count:(unint64_t)count;
- (id)_startOffsetSpecForCount:(unint64_t)count;
- (id)layoutGroupForDatasourceItems:(id)items environment:(id)environment layoutItems:(id)layoutItems;
@end

@implementation CKOrganicImageLayoutGroupProvider

- (id)layoutGroupForDatasourceItems:(id)items environment:(id)environment layoutItems:(id)layoutItems
{
  itemsCopy = items;
  environmentCopy = environment;
  layoutItemsCopy = layoutItems;
  v61 = environmentCopy;
  collectionLayoutEnvironment = [environmentCopy collectionLayoutEnvironment];
  container = [collectionLayoutEnvironment container];
  [container contentSize];
  v13 = v12;

  v14 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 smallTranscriptSpace];
  v17 = v16;

  [(CKOrganicImageLayoutGroupProvider *)self _setLayoutRecipesForChatItems:itemsCopy];
  v19 = v18;
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  *&v74[3] = v17;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __91__CKOrganicImageLayoutGroupProvider_layoutGroupForDatasourceItems_environment_layoutItems___block_invoke;
  v65[3] = &unk_1E72F7CF8;
  v67 = v74;
  v69 = v13;
  v21 = v20;
  v66 = v21;
  v68 = &v70;
  [itemsCopy enumerateObjectsUsingBlock:v65];
  v22 = 0;
  v23 = 0;
  v24 = v17 + v19;
  v25 = (v17 + v19) * 0.5;
  while ([v21 count] > v22)
  {
    v26 = [itemsCopy objectAtIndex:v22];
    v27 = v26;
    if (!v22)
    {
      tapbacksChatItem = [v26 tapbacksChatItem];
      v29 = tapbacksChatItem != 0;

      v23 |= v29;
    }

    v30 = [v21 objectAtIndex:v22];
    [v30 CGRectValue];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v76.origin.x = v32;
    v76.origin.y = v34;
    v76.size.width = v36;
    v76.size.height = v38;
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:v25 - CGRectGetMinY(v76)];
    layoutRecipe = [v27 layoutRecipe];
    [layoutRecipe setRelativeGroupCenter:v39];

    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v71[3]];
    layoutRecipe2 = [v27 layoutRecipe];
    [layoutRecipe2 setGroupMaxX:v41];

    lastObject = [itemsCopy lastObject];
    layoutRecipe3 = [v27 layoutRecipe];
    [layoutRecipe3 setIsLastItem:v27 == lastObject];

    ++v22;
  }

  v45 = [MEMORY[0x1E6995558] absoluteDimension:v24];
  v46 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v14 heightDimension:v45];
  v47 = MEMORY[0x1E6995568];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __91__CKOrganicImageLayoutGroupProvider_layoutGroupForDatasourceItems_environment_layoutItems___block_invoke_2;
  v62[3] = &unk_1E72F7D48;
  v48 = itemsCopy;
  v63 = v48;
  v49 = v21;
  v64 = v49;
  v50 = [v47 customGroupWithLayoutSize:v46 itemProvider:v62];
  v51 = MEMORY[0x1E6995590];
  v52 = +[CKUIBehavior sharedBehaviors];
  [v52 mediumTranscriptSpace];
  v53 = [v51 fixedSpacing:?];

  v54 = MEMORY[0x1E6995590];
  v55 = +[CKUIBehavior sharedBehaviors];
  [v55 largeTranscriptSpace];
  v56 = [v54 fixedSpacing:?];

  if (v23)
  {
    v57 = v56;
  }

  else
  {
    v57 = v53;
  }

  v58 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v57 trailing:0 bottom:v53];
  [v50 setEdgeSpacing:v58];

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(v74, 8);

  return v50;
}

void __91__CKOrganicImageLayoutGroupProvider_layoutGroupForDatasourceItems_environment_layoutItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 layoutRecipe];
  [v4 targetSize];
  v6 = v5;
  v8 = v7;

  v9 = [v3 layoutRecipe];
  [v9 overlap];
  v11 = v10;

  v12 = *(*(*(a1 + 40) + 8) + 24) - v11;
  v13 = *(a1 + 56);
  v19 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, v12, v13, v8}];
  [*(a1 + 32) addObject:v19];
  v14 = [v3 layoutRecipe];

  [v14 offset];
  v16 = v15;

  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 24);
  if (v18 < v6 + v16)
  {
    v18 = v6 + v16;
  }

  *(v17 + 24) = v18;
  v21.origin.x = 0.0;
  v21.origin.y = v12;
  v21.size.width = v13;
  v21.size.height = v8;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v21);
}

id __91__CKOrganicImageLayoutGroupProvider_layoutGroupForDatasourceItems_environment_layoutItems___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__CKOrganicImageLayoutGroupProvider_layoutGroupForDatasourceItems_environment_layoutItems___block_invoke_3;
  v6[3] = &unk_1E72F7D20;
  v4 = v2;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __91__CKOrganicImageLayoutGroupProvider_layoutGroupForDatasourceItems_environment_layoutItems___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 CGRectValue];
  v5 = [MEMORY[0x1E6995570] customItemWithFrame:a3 zIndex:?];
  [*(a1 + 32) addObject:v5];
}

- (double)_setLayoutRecipesForChatItems:(id)items
{
  v72 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count] >= 2 && objc_msgSend(itemsCopy, "count") < 4)
  {
    v7 = [itemsCopy count];
    v63 = [(CKOrganicImageLayoutGroupProvider *)self _startOffsetSpecForCount:v7];
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    firstObject = [itemsCopy firstObject];
    v66 = [itemsCopy objectAtIndex:1];
    if ([itemsCopy count] == 3)
    {
      v65 = [itemsCopy objectAtIndex:2];
    }

    else
    {
      v65 = 0;
    }

    [(CKOrganicImageLayoutGroupProvider *)self _targetSizeForChatItem:firstObject totalItemCount:v7];
    v9 = v8;
    v61 = v10;
    v11 = [(CKOrganicImageLayoutGroupProvider *)self _orientationForChatItemSize:?];
    [(CKOrganicImageLayoutGroupProvider *)self _targetSizeForChatItem:v66 totalItemCount:v7];
    v13 = v12;
    v15 = v14;
    v16 = [(CKOrganicImageLayoutGroupProvider *)self _orientationForChatItemSize:?];
    _startRotationSpec = [(CKOrganicImageLayoutGroupProvider *)self _startRotationSpec];
    v17 = [_startRotationSpec objectAtIndexedSubscript:v11];
    v18 = [v17 objectAtIndexedSubscript:v16];
    bOOLValue = [v18 BOOLValue];

    firstObject2 = [itemsCopy firstObject];
    LODWORD(v18) = [firstObject2 isFromMe];

    v21 = bOOLValue ^ v18;
    [(CKOrganicImageLayoutGroupProvider *)self _rotationForChatItem:firstObject leftRotated:v21];
    v23 = v22;
    [(CKOrganicImageLayoutGroupProvider *)self _rotationForChatItem:v66 leftRotated:v21 ^ 1];
    v25 = v24;
    v26 = [(CKOrganicImageLayoutGroupProvider *)self _intersectSpecForIndex:0 count:v7];
    v27 = [v26 objectAtIndexedSubscript:v11];
    v28 = [v27 objectAtIndexedSubscript:v16];
    [v28 CGSizeValue];
    v60 = v29;
    v31 = v30;

    v32 = [v63 objectAtIndexedSubscript:v11];
    v33 = [v32 objectAtIndexedSubscript:v16];
    bOOLValue2 = [v33 BOOLValue];

    if (bOOLValue2)
    {
      v35 = v13 - v13 * v60;
      v36 = 0.0;
    }

    else
    {
      v36 = v61 - v61 * v60;
      v35 = 0.0;
      if (v65)
      {
        if (!v11)
        {
          [v65 size];
          if ([(CKOrganicImageLayoutGroupProvider *)self _orientationForChatItemSize:?]== 1)
          {
            v35 = v36 + v36 * -0.949999988;
          }
        }
      }
    }

    v37 = v9 * v31;
    v38 = [[CKOrganicImageLayoutRecipe alloc] initWithRotation:1 offset:stringGUID targetSize:v23 overlap:v35 wantsShadow:v61 groupIdentifier:v9, 0.0];
    [firstObject setLayoutRecipe:v38];
    v39 = [[CKOrganicImageLayoutRecipe alloc] initWithRotation:1 offset:stringGUID targetSize:v25 overlap:v36 wantsShadow:v13 groupIdentifier:v15, v37];
    [v66 setLayoutRecipe:v39];
    v5 = v9 + v15 - v37;
    v40 = v65;
    if (v65)
    {
      [(CKOrganicImageLayoutGroupProvider *)self _targetSizeForChatItem:v65 totalItemCount:v7];
      v42 = v41;
      v44 = v43;
      [(CKOrganicImageLayoutGroupProvider *)self _rotationForChatItem:v65 leftRotated:v21];
      v46 = v45;
      v47 = [(CKOrganicImageLayoutGroupProvider *)self _orientationForChatItemSize:v42, v44];
      v48 = [(CKOrganicImageLayoutGroupProvider *)self _intersectSpecForIndex:1 count:v7];

      v49 = [v48 objectAtIndexedSubscript:v16];
      v50 = [v49 objectAtIndexedSubscript:v47];
      [v50 CGSizeValue];
      v52 = v51;
      v54 = v53;

      if (bOOLValue2)
      {
        v55 = v13 - v13 * v52;
        v56 = stringGUID;
      }

      else
      {
        v55 = 0.0;
        v56 = stringGUID;
        if (!v47)
        {
          v55 = v42 - v42 * v52 - (v61 - v61 * v60);
        }
      }

      v57 = v15 * v54;
      v58 = [[CKOrganicImageLayoutRecipe alloc] initWithRotation:1 offset:v56 targetSize:v46 overlap:v55 wantsShadow:v42 groupIdentifier:v44, v57];
      v40 = v65;
      [v65 setLayoutRecipe:v58];
      v5 = v5 + v44 - v57;
    }

    else
    {
      v48 = v26;
      v56 = stringGUID;
    }
  }

  else
  {
    v5 = 0.0;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v69 = "[CKOrganicImageLayoutGroupProvider _setLayoutRecipesForChatItems:]";
        v70 = 2048;
        v71 = [itemsCopy count];
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%s asked to generate layout with %lu items, unsupported!", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (id)_startOffsetSpecForCount:(unint64_t)count
{
  v3 = &unk_1F04E7530;
  if (count != 3)
  {
    v3 = 0;
  }

  if (count == 2)
  {
    return &unk_1F04E74E8;
  }

  else
  {
    return v3;
  }
}

- (id)_intersectSpecForIndex:(unint64_t)index count:(unint64_t)count
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (count == 3)
  {
    if (index == 1)
    {
      v17 = xmmword_190DD1C00;
      v4 = [MEMORY[0x1E696B098] valueWithBytes:&v17 objCType:"{CGSize=dd}"];
      v27[0] = v4;
      v16 = xmmword_190DD1C10;
      v5 = [MEMORY[0x1E696B098] valueWithBytes:&v16 objCType:"{CGSize=dd}"];
      v27[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v28 = v6;
      v15 = xmmword_190DD1C20;
      v7 = [MEMORY[0x1E696B098] valueWithBytes:&v15 objCType:"{CGSize=dd}"];
      v26[0] = v7;
      v14 = xmmword_190DD1C30;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:&v14 objCType:"{CGSize=dd}"];
      v26[1] = v8;
      v9 = &v28;
      v10 = v26;
      goto LABEL_9;
    }

    if (!index)
    {
      v21 = xmmword_190DD1C00;
      v4 = [MEMORY[0x1E696B098] valueWithBytes:&v21 objCType:"{CGSize=dd}"];
      v30[0] = v4;
      v20 = xmmword_190DD1C40;
      v5 = [MEMORY[0x1E696B098] valueWithBytes:&v20 objCType:"{CGSize=dd}"];
      v30[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v31 = v6;
      v19 = xmmword_190DD1C20;
      v7 = [MEMORY[0x1E696B098] valueWithBytes:&v19 objCType:"{CGSize=dd}"];
      v29[0] = v7;
      v18 = xmmword_190DD1C50;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:&v18 objCType:"{CGSize=dd}"];
      v29[1] = v8;
      v9 = &v31;
      v10 = v29;
      goto LABEL_9;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_10;
  }

  if (count != 2)
  {
    goto LABEL_7;
  }

  v25 = xmmword_190DD1C60;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:&v25 objCType:"{CGSize=dd}"];
  v33[0] = v4;
  v24 = xmmword_190DD1C40;
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&v24 objCType:"{CGSize=dd}"];
  v33[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v34[0] = v6;
  v23 = xmmword_190DD1C20;
  v7 = [MEMORY[0x1E696B098] valueWithBytes:&v23 objCType:"{CGSize=dd}"];
  v32[0] = v7;
  v22 = xmmword_190DD1C50;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&v22 objCType:"{CGSize=dd}"];
  v32[1] = v8;
  v9 = v34;
  v10 = v32;
LABEL_9:
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9[1] = v12;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

LABEL_10:

  return v11;
}

- (CGSize)_targetSizeForChatItem:(id)item totalItemCount:(unint64_t)count
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [itemCopy size];
  v9 = v8;
  v10 = v7;
  if (v8 <= 0.0 || v7 <= 0.0 || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v11 = objc_claimAutoreleasedReturnValue(), [v11 previewMaxWidth], v13 = v12, v11, v9 > v13))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        [itemCopy size];
        v15 = NSStringFromCGSize(v31);
        v24 = 136315650;
        v25 = "[CKOrganicImageLayoutGroupProvider _targetSizeForChatItem:totalItemCount:]";
        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = itemCopy;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKOrganicImageLayoutGroupProvider - %s - Got invalid chatItem size %@ for chatItem %@", &v24, 0x20u);
      }
    }

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 previewMaxWidth];
    [v16 thumbnailFillSizeForWidth:? imageSize:?];
    v9 = v18;
    v10 = v19;
  }

  v20 = [(CKOrganicImageLayoutGroupProvider *)self _orientationForChatItemSize:v9, v10];
  if (count == 3 || (v21 = 1.0, count == 2))
  {
    if (v20)
    {
      v21 = 0.75;
    }

    else
    {
      v21 = 0.6;
    }
  }

  v22 = v9 * v21;
  v23 = v10 * v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (double)_rotationForChatItem:(id)item leftRotated:(BOOL)rotated
{
  rotatedCopy = rotated;
  iMChatItem = [item IMChatItem];
  guid = [iMChatItem guid];

  v7 = [guid hash];
  v8 = 1.0;
  if (rotatedCopy)
  {
    v8 = -1.0;
  }

  if (v7)
  {
    v9 = v8 * 0.5;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (double)scalarForSize:(CGSize)size count:(unint64_t)count
{
  if (count == 2 || (v4 = 0.0, count == 3))
  {
    if (size.width <= size.height)
    {
      return 0.6;
    }

    else
    {
      return 0.75;
    }
  }

  return v4;
}

@end