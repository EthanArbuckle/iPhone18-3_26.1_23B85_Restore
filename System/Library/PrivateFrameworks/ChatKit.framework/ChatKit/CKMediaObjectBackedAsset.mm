@interface CKMediaObjectBackedAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isSpatialMedia;
- (CGSize)_previewPxSize:(BOOL *)size;
- (CGSize)_transcoderGeneratedPxSize:(BOOL *)size;
- (CKAggregateAcknowledgmentChatItem)acknowledgmentChatItem;
- (CKMediaObject)mediaObject;
- (CKMediaObjectBackedAsset)initWithChatItem:(id)item;
- (NSArray)visibleAssociatedMessageChatItems;
- (NSDate)creationDate;
- (double)aspectRatio;
- (double)duration;
- (id)_mediaObjectPreview;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localCreationDate;
- (id)url;
- (id)uuid;
- (int64_t)isContentEqualTo:(id)to;
- (int64_t)mediaType;
- (int64_t)playbackStyle;
- (unint64_t)pixelHeight;
- (unint64_t)pixelWidth;
- (void)aspectRatio;
@end

@implementation CKMediaObjectBackedAsset

- (CKMediaObjectBackedAsset)initWithChatItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CKMediaObjectBackedAsset;
  v5 = [(CKMediaObjectBackedAsset *)&v9 initWithConfiguration:&__block_literal_global_251];
  v6 = v5;
  if (v5)
  {
    [(CKMediaObjectBackedAsset *)v5 setChatItem:itemCopy];
    mediaObject = [itemCopy mediaObject];
    [mediaObject isMonoskiAsset];
  }

  return v6;
}

- (CKMediaObject)mediaObject
{
  chatItem = [(CKMediaObjectBackedAsset *)self chatItem];
  mediaObject = [chatItem mediaObject];

  return mediaObject;
}

- (NSArray)visibleAssociatedMessageChatItems
{
  chatItem = [(CKMediaObjectBackedAsset *)self chatItem];
  iMChatItem = [chatItem IMChatItem];
  visibleAssociatedMessageChatItems = [iMChatItem visibleAssociatedMessageChatItems];

  return visibleAssociatedMessageChatItems;
}

- (CKAggregateAcknowledgmentChatItem)acknowledgmentChatItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  chatItem = [(CKMediaObjectBackedAsset *)self chatItem];
  visibleAssociatedMessageChatItems = [chatItem visibleAssociatedMessageChatItems];

  v4 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
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

      v4 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaObject = [equalCopy mediaObject];
    mediaObject2 = [(CKMediaObjectBackedAsset *)self mediaObject];
    v7 = [mediaObject isEqual:mediaObject2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)mediaType
{
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  mediaType = [mediaObject mediaType];

  if (mediaType == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (mediaType == 2);
  }
}

- (int64_t)playbackStyle
{
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  mediaObject2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  mediaObject3 = mediaObject2;
  if (isKindOfClass)
  {
    if ([mediaObject2 isIrisAsset])
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

    mediaObject3 = [(CKMediaObjectBackedAsset *)self mediaObject];
    if ([mediaObject3 isAutoloopVideo])
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
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  isMonoskiAsset = [mediaObject isMonoskiAsset];

  return isMonoskiAsset;
}

- (id)url
{
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  fileURL = [mediaObject fileURL];

  return fileURL;
}

- (NSDate)creationDate
{
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  time = [mediaObject time];

  return time;
}

- (id)localCreationDate
{
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  time = [mediaObject time];

  return time;
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
    pixelWidth = [(CKMediaObjectBackedAsset *)self pixelWidth];
    return pixelWidth / [(CKMediaObjectBackedAsset *)self pixelHeight];
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
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  transfer = [mediaObject transfer];
  attributionInfo = [transfer attributionInfo];
  v6 = [attributionInfo objectForKey:*MEMORY[0x1E69A6FC0]];

  if (v6)
  {
    transferGUID = v6;
  }

  else
  {
    mediaObject2 = [(CKMediaObjectBackedAsset *)self mediaObject];
    transferGUID = [mediaObject2 transferGUID];
  }

  return transferGUID;
}

- (double)duration
{
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  mediaObject2 = [(CKMediaObjectBackedAsset *)self mediaObject];
  [mediaObject2 duration];
  v7 = v6;

  return v7;
}

- (int64_t)isContentEqualTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CKMediaObjectBackedAsset *)self isEqual:toCopy])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKMediaObjectBackedAsset alloc];
  chatItem = [(CKMediaObjectBackedAsset *)self chatItem];
  v6 = [(CKMediaObjectBackedAsset *)v4 initWithChatItem:chatItem];

  return v6;
}

- (CGSize)_transcoderGeneratedPxSize:(BOOL *)size
{
  [(CKMediaObjectBackedAsset *)self _clientPreviewConstraints];
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  v6 = mediaObject;
  if (mediaObject)
  {
    [mediaObject transcodingPreviewConstraints];
  }

  if (IMPreviewConstraintsEqualToConstraints())
  {
    v7 = [(CKMediaObjectBackedAsset *)self mediaObject:0];
    [v7 transcodingPreviewPxSize];
    v9 = v8;
    v11 = v10;

    if (size)
    {
      v12 = v9 != *MEMORY[0x1E695F060];
      if (v11 != *(MEMORY[0x1E695F060] + 8))
      {
        v12 = 1;
      }

      *size = v12;
    }
  }

  else
  {
    if (size)
    {
      *size = 0;
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

- (CGSize)_previewPxSize:(BOOL *)size
{
  _mediaObjectPreview = [(CKMediaObjectBackedAsset *)self _mediaObjectPreview];
  if (_mediaObjectPreview && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (size)
    {
      *size = 1;
    }

    v20 = 0u;
    v6 = _mediaObjectPreview;
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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
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
    if (size)
    {
      *size = 0;
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
  mediaObject = [(CKMediaObjectBackedAsset *)self mediaObject];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v4 = [mediaObject previewForWidth:0 orientation:?];

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