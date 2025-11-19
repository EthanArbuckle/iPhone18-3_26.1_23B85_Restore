@interface CKMediaObjectBackedAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isSpatialMedia;
- (CGSize)_previewPxSize:(BOOL *)a3;
- (CGSize)_transcoderGeneratedPxSize:(BOOL *)a3;
- (CKAggregateAcknowledgmentChatItem)acknowledgmentChatItem;
- (CKMediaObject)mediaObject;
- (CKMediaObjectBackedAsset)initWithChatItem:(id)a3;
- (NSArray)visibleAssociatedMessageChatItems;
- (NSDate)creationDate;
- (double)aspectRatio;
- (double)duration;
- (id)_mediaObjectPreview;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localCreationDate;
- (id)url;
- (id)uuid;
- (int64_t)isContentEqualTo:(id)a3;
- (int64_t)mediaType;
- (int64_t)playbackStyle;
- (unint64_t)pixelHeight;
- (unint64_t)pixelWidth;
- (void)aspectRatio;
@end

@implementation CKMediaObjectBackedAsset

- (CKMediaObjectBackedAsset)initWithChatItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKMediaObjectBackedAsset;
  v5 = [(CKMediaObjectBackedAsset *)&v9 initWithConfiguration:&__block_literal_global_251];
  v6 = v5;
  if (v5)
  {
    [(CKMediaObjectBackedAsset *)v5 setChatItem:v4];
    v7 = [v4 mediaObject];
    [v7 isMonoskiAsset];
  }

  return v6;
}

- (CKMediaObject)mediaObject
{
  v2 = [(CKMediaObjectBackedAsset *)self chatItem];
  v3 = [v2 mediaObject];

  return v3;
}

- (NSArray)visibleAssociatedMessageChatItems
{
  v2 = [(CKMediaObjectBackedAsset *)self chatItem];
  v3 = [v2 IMChatItem];
  v4 = [v3 visibleAssociatedMessageChatItems];

  return v4;
}

- (CKAggregateAcknowledgmentChatItem)acknowledgmentChatItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CKMediaObjectBackedAsset *)self chatItem];
  v3 = [v2 visibleAssociatedMessageChatItems];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setOverrideBalloonOrientationForPhotoGrid:1];
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mediaObject];
    v6 = [(CKMediaObjectBackedAsset *)self mediaObject];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)mediaType
{
  v2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = [v2 mediaType];

  if (v3 == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (int64_t)playbackStyle
{
  v3 = [(CKMediaObjectBackedAsset *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v6 = v5;
  if (isKindOfClass)
  {
    if ([v5 isIrisAsset])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v6 = [(CKMediaObjectBackedAsset *)self mediaObject];
    if ([v6 isAutoloopVideo])
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }
  }

  return v7;
}

- (BOOL)isSpatialMedia
{
  v2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = [v2 isMonoskiAsset];

  return v3;
}

- (id)url
{
  v2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = [v2 fileURL];

  return v3;
}

- (NSDate)creationDate
{
  v2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = [v2 time];

  return v3;
}

- (id)localCreationDate
{
  v2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = [v2 time];

  return v3;
}

- (unint64_t)pixelWidth
{
  v5 = 0;
  [(CKMediaObjectBackedAsset *)self _transcoderGeneratedPxSize:&v5];
  if (v5 == 1)
  {
    return v3;
  }

  [(CKMediaObjectBackedAsset *)self _previewPxSize:&v5];
  if (v5 == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)pixelHeight
{
  v5 = 0;
  [(CKMediaObjectBackedAsset *)self _transcoderGeneratedPxSize:&v5];
  if (v5 == 1)
  {
    return v3;
  }

  [(CKMediaObjectBackedAsset *)self _previewPxSize:&v5];
  if (v5 == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (double)aspectRatio
{
  if ([(CKMediaObjectBackedAsset *)self pixelHeight])
  {
    v3 = [(CKMediaObjectBackedAsset *)self pixelWidth];
    return v3 / [(CKMediaObjectBackedAsset *)self pixelHeight];
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CKMediaObjectBackedAsset *)v5 aspectRatio];
    }

    return 0.0;
  }
}

- (id)uuid
{
  v3 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v4 = [v3 transfer];
  v5 = [v4 attributionInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69A6FC0]];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(CKMediaObjectBackedAsset *)self mediaObject];
    v7 = [v8 transferGUID];
  }

  return v7;
}

- (double)duration
{
  v3 = [(CKMediaObjectBackedAsset *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(CKMediaObjectBackedAsset *)self mediaObject];
  [v5 duration];
  v7 = v6;

  return v7;
}

- (int64_t)isContentEqualTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CKMediaObjectBackedAsset *)self isEqual:v4])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKMediaObjectBackedAsset alloc];
  v5 = [(CKMediaObjectBackedAsset *)self chatItem];
  v6 = [(CKMediaObjectBackedAsset *)v4 initWithChatItem:v5];

  return v6;
}

- (CGSize)_transcoderGeneratedPxSize:(BOOL *)a3
{
  [(CKMediaObjectBackedAsset *)self _clientPreviewConstraints];
  v5 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v6 = v5;
  if (v5)
  {
    [v5 transcodingPreviewConstraints];
  }

  if (IMPreviewConstraintsEqualToConstraints())
  {
    v7 = [(CKMediaObjectBackedAsset *)self mediaObject:0];
    [v7 transcodingPreviewPxSize];
    v9 = v8;
    v11 = v10;

    if (a3)
    {
      v12 = v9 != *MEMORY[0x1E695F060];
      if (v11 != *(MEMORY[0x1E695F060] + 8))
      {
        v12 = 1;
      }

      *a3 = v12;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = v9;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)_previewPxSize:(BOOL *)a3
{
  v5 = [(CKMediaObjectBackedAsset *)self _mediaObjectPreview];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (a3)
    {
      *a3 = 1;
    }

    v20 = 0u;
    v6 = v5;
    v7 = [(CKMediaObjectBackedAsset *)self mediaObject:0];
    v8 = v7;
    if (v7)
    {
      [v7 transcodingPreviewConstraints];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v11 = *(&v20 + 1);
    if (*(&v20 + 1) <= 0.0)
    {
      v12 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v12 scale];
      v11 = v13;
    }

    [v6 size];
    v10 = v11 * v14;
    [v6 size];
    v16 = v15;

    v9 = v11 * v16;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    v10 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = v10;
  v18 = v9;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)_mediaObjectPreview
{
  v2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v4 = [v2 previewForWidth:0 orientation:?];

  return v4;
}

- (void)aspectRatio
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[CKMediaObjectBackedAsset aspectRatio]";
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%s would have attempted divide by zero because pixelHeight was 0.", &v1, 0xCu);
}

@end