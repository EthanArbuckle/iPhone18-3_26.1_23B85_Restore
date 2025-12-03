@interface CKAssociatedStickerChatItem
+ (BOOL)isDroppedSticker:(id)sticker;
+ (BOOL)userHasDraggedSticker;
+ (double)computeHorizontalStickerFrameOffset:(CGRect)offset parentSize:(CGSize)size forPositioningWithinContentAlignmentRect:(CGRect)rect geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor forTranscriptOrientation:(char)orientation;
+ (id)_droppedStickers;
+ (id)_showingStickers;
+ (void)addDroppedSticker:(id)sticker;
+ (void)clearTranscriptDisplayCaches;
+ (void)removeDroppedSticker:(id)sticker;
+ (void)setUserHasDraggedSticker:(BOOL)sticker;
- (BOOL)canShowInAppStore;
- (BOOL)chatItemIsStickerReposition;
- (BOOL)currentStickerRepositionIsLocalReposition;
- (BOOL)isCustomSticker;
- (BOOL)isReaction;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKAssociatedStickerChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (IMSticker)sticker;
- (NSDictionary)attributionInfo;
- (NSDictionary)stickerUserInfo;
- (NSNumber)adamID;
- (NSString)stickerDetailsSubtitleText;
- (NSString)stickerDetailsTitleText;
- (NSString)stickerPackGUID;
- (NSString)stickerPackName;
- (NSString)transferGUID;
- (char)transcriptOrientation;
- (id)attributionImage;
- (id)insertionHandler;
- (id)messageSummaryInfoValueForKey:(id)key;
- (id)stickerDetailsPreview;
- (void)clearStickerRepositionLocalState;
- (void)currentStickerRepositionIsLocalReposition;
- (void)refreshMediaObjectForStickerRepositioning;
@end

@implementation CKAssociatedStickerChatItem

+ (double)computeHorizontalStickerFrameOffset:(CGRect)offset parentSize:(CGSize)size forPositioningWithinContentAlignmentRect:(CGRect)rect geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor forTranscriptOrientation:(char)orientation
{
  orientationCopy = orientation;
  height = offset.size.height;
  width = offset.size.width;
  rect = offset.origin.y;
  x = offset.origin.x;
  [(CKAssociatedMessageChatItem *)CKAssociatedStickerChatItem adjustContentAlignmentRect:orientation forChatItemSize:rect.origin.x transcriptOrientation:rect.origin.y, rect.size.width, rect.size.height, size.width, size.height];
  v13 = v12;
  v14 = *&descriptor->parentPreviewWidth;
  v25[0] = *&descriptor->layoutIntent;
  v25[1] = v14;
  v25[2] = *&descriptor->yScalar;
  rotation = descriptor->rotation;
  [(CKAssociatedMessageChatItem *)CKAssociatedStickerChatItem horizontalOriginForAssociatedMessageItemSize:v25 parentFrame:width geometryDescriptor:height, v15, v13, v16, v17];
  v19 = v18;
  if (orientationCopy == 2)
  {
    v27.origin.x = x;
    v27.origin.y = rect;
    v27.size.width = width;
    v27.size.height = height;
    v22 = v19 + CGRectGetWidth(v27);
    v23 = v22 - CGRectGetMaxX(rect);
    if (v23 <= 0.0)
    {
      return 0.0;
    }

    else
    {
      return 0.0 - v23;
    }
  }

  else
  {
    result = 0.0;
    if (!orientationCopy)
    {
      if (v19 >= rect.origin.x)
      {
        v21 = v19;
      }

      else
      {
        v21 = rect.origin.x;
      }

      return v21 - v19;
    }
  }

  return result;
}

- (NSString)stickerDetailsTitleText
{
  transferGUID = [(CKAssociatedStickerChatItem *)self transferGUID];
  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [mEMORY[0x1E69A5B80] transferForGUID:transferGUID];

  if ([CKStickerDetailViewController isGenmojiBundleIDFromFileTransfer:v4])
  {
    adaptiveImageGlyphContentDescription = [v4 adaptiveImageGlyphContentDescription];
  }

  else
  {
    adaptiveImageGlyphContentDescription = 0;
  }

  if (![adaptiveImageGlyphContentDescription length])
  {
    v6 = [CKStickerDetailViewController localizedAppNameForStickerDetailsFromFileTransfer:v4];

    adaptiveImageGlyphContentDescription = v6;
  }

  return adaptiveImageGlyphContentDescription;
}

- (NSString)stickerDetailsSubtitleText
{
  sender = [(CKAssociatedMessageChatItem *)self sender];
  name = [sender name];

  return name;
}

- (id)stickerDetailsPreview
{
  mediaObject = [(CKAssociatedStickerChatItem *)self mediaObject];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v5 = v4;

  v6 = [mediaObject previewForWidth:0 orientation:v5];

  return v6;
}

- (CKAssociatedStickerChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = CKAssociatedStickerChatItem;
  v7 = [(CKChatItem *)&v18 initWithIMChatItem:itemCopy maxWidth:width];
  v8 = v7;
  if (v7)
  {
    transferGUID = [(CKAssociatedStickerChatItem *)v7 transferGUID];

    if (transferGUID)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = NSStringFromSelector(sel_chatContext);
        v11 = [itemCopy valueForKey:v10];
      }

      else
      {
        v11 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v12 = NSStringFromSelector(sel_message);
        v13 = [itemCopy valueForKey:v12];
      }

      else
      {
        v13 = 0;
      }

      v14 = +[CKMediaObjectManager sharedInstance];
      transferGUID2 = [(CKAssociatedStickerChatItem *)v8 transferGUID];
      v16 = [v14 mediaObjectWithTransferGUID:transferGUID2 imMessage:v13 chatContext:v11];

      [(CKAssociatedStickerChatItem *)v8 setMediaObject:v16];
    }
  }

  return v8;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  v8 = +[CKChatItemSizeCache sharedInstance];
  v9 = MEMORY[0x1E695F060];
  v48 = *MEMORY[0x1E695F060];
  if ([v8 cachedSizeForChatItem:self size:&v48 textAlignmentInsets:0 fittingSize:{width, height}])
  {
    v10 = *(&v48 + 1);
    v11 = *&v48;
  }

  else
  {
    mediaObject = [(CKAssociatedStickerChatItem *)self mediaObject];
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 previewMaxWidth];
    v14 = [mediaObject previewForWidth:0 orientation:?];

    objc_opt_class();
    LOBYTE(v13) = objc_opt_isKindOfClass();
    v15 = v14;
    v16 = v15;
    if (v13)
    {
      image = [v15 image];
      [image size];
      v19 = v18;
      v21 = v20;

      image2 = [v16 image];
    }

    else
    {
      [v15 size];
      v19 = v23;
      v21 = v24;
      image2 = v16;
    }

    [image2 scale];
    v26 = v25;

    v27 = +[CKUIBehavior sharedBehaviors];
    [(CKAssociatedMessageChatItem *)self geometryDescriptor];
    [v27 stickerScreenScale];
    [v27 stickerSizeScaledWithInitialSize:v19 imageScale:v21 userScale:v26 rectifiedScreenScale:v47 maxWidth:{v28, width}];
    v11 = v29;
    v10 = v30;
    mediaObject2 = [(CKAssociatedStickerChatItem *)self mediaObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      mediaObject3 = [(CKAssociatedStickerChatItem *)self mediaObject];
      if ([mediaObject3 isSticker] && objc_msgSend(mediaObject3, "isReaction"))
      {
        v34 = +[CKUIBehavior sharedBehaviors];
        [v34 stickerReactionSize];
        v11 = v35;
        v10 = v36;
      }

      else if ([mediaObject3 isSticker])
      {
        sticker = [mediaObject3 sticker];
        externalURI = [sticker externalURI];
        v39 = [externalURI hasPrefix:@"sticker:///emoji/"];

        v40 = +[CKUIBehavior sharedBehaviors];
        [v27 stickerScreenScale];
        [v40 stickerDropPreviewMaxWidthForImageSize:v39 isEmoji:v11 displayScale:{v10, v41}];
        v43 = v42;

        if (v11 > v43 && v10 > 0.0)
        {
          [v27 stickerScreenScale];
          v10 = round(v43 / (v11 / v10) * v44) / v44;
          v11 = v43;
        }
      }
    }

    if (v11 != *v9 || v10 != v9[1])
    {
      [v8 setCachedSizeForChatItem:self size:v11 textAlignmentInsets:v10 fittingSize:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), width, height}];
    }
  }

  v45 = v11;
  v46 = v10;
  result.height = v46;
  result.width = v45;
  return result;
}

- (NSString)transferGUID
{
  iMAssociatedStickerChatItem = [(CKAssociatedStickerChatItem *)self IMAssociatedStickerChatItem];
  transferGUID = [iMAssociatedStickerChatItem transferGUID];

  return transferGUID;
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

- (BOOL)isReaction
{
  mediaObject = [(CKAssociatedStickerChatItem *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  mediaObject2 = [(CKAssociatedStickerChatItem *)self mediaObject];
  isReaction = [mediaObject2 isReaction];

  return isReaction;
}

- (void)refreshMediaObjectForStickerRepositioning
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
    v12 = [iMChatItem2 performSelector:sel_chatContext];
  }

  else
  {
    v12 = 0;
  }

  iMChatItem3 = [(CKChatItem *)self IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    iMChatItem4 = [(CKChatItem *)self IMChatItem];
    v7 = [iMChatItem4 performSelector:sel_message];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[CKMediaObjectManager sharedInstance];
  transferGUID = [(CKAssociatedStickerChatItem *)self transferGUID];
  v10 = [v8 mediaObjectWithTransferGUID:transferGUID imMessage:v7 chatContext:v12];

  [(CKAssociatedStickerChatItem *)self setMediaObject:v10];
  iMAssociatedStickerChatItem = [(CKAssociatedStickerChatItem *)self IMAssociatedStickerChatItem];
  [iMAssociatedStickerChatItem _refreshGeometryDescriptorFromStickerUserInfo];
}

- (BOOL)chatItemIsStickerReposition
{
  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  transferGUID = [(CKAssociatedStickerChatItem *)self transferGUID];
  v5 = [mEMORY[0x1E69A5B80] transferForGUID:transferGUID];

  v6 = [v5 updateReason] == 1 || objc_msgSend(v5, "updateReason") == 2;
  return v6;
}

- (BOOL)currentStickerRepositionIsLocalReposition
{
  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  transferGUID = [(CKAssociatedStickerChatItem *)self transferGUID];
  v5 = [mEMORY[0x1E69A5B80] transferForGUID:transferGUID];

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CKAssociatedStickerChatItem *)v5 currentStickerRepositionIsLocalReposition];
  }

  v7 = [v5 updateReason] == 1;
  return v7;
}

- (void)clearStickerRepositionLocalState
{
  mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
  transferGUID = [(CKAssociatedStickerChatItem *)self transferGUID];
  v5 = [mEMORY[0x1E69A5B80] transferForGUID:transferGUID];

  [v5 setUpdateReason:0];
}

- (NSDictionary)stickerUserInfo
{
  mediaObject = [(CKAssociatedStickerChatItem *)self mediaObject];
  transfer = [mediaObject transfer];
  stickerUserInfo = [transfer stickerUserInfo];

  return stickerUserInfo;
}

- (NSDictionary)attributionInfo
{
  mediaObject = [(CKAssociatedStickerChatItem *)self mediaObject];
  transfer = [mediaObject transfer];
  attributionInfo = [transfer attributionInfo];

  return attributionInfo;
}

- (NSNumber)adamID
{
  attributionInfo = [(CKAssociatedStickerChatItem *)self attributionInfo];
  v3 = attributionInfo;
  if (attributionInfo)
  {
    v4 = [attributionInfo objectForKey:*MEMORY[0x1E69A6FA0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_showingStickers
{
  if (_showingStickers_token != -1)
  {
    +[CKAssociatedStickerChatItem _showingStickers];
  }

  v3 = _showingStickers_stickers;

  return v3;
}

void __47__CKAssociatedStickerChatItem__showingStickers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = _showingStickers_stickers;
  _showingStickers_stickers = v0;
}

- (id)messageSummaryInfoValueForKey:(id)key
{
  keyCopy = key;
  iMAssociatedStickerChatItem = [(CKAssociatedStickerChatItem *)self IMAssociatedStickerChatItem];
  messageSummaryInfo = [iMAssociatedStickerChatItem messageSummaryInfo];
  v7 = [messageSummaryInfo objectForKeyedSubscript:keyCopy];

  return v7;
}

- (IMSticker)sticker
{
  mediaObject = [(CKAssociatedStickerChatItem *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    mediaObject2 = [(CKAssociatedStickerChatItem *)self mediaObject];
    sticker = [mediaObject2 sticker];
  }

  else
  {
    sticker = 0;
  }

  return sticker;
}

- (NSString)stickerPackName
{
  attributionInfo = [(CKAssociatedStickerChatItem *)self attributionInfo];
  __ck_localizedAppNameForTranscriptAttribution = [attributionInfo __ck_localizedAppNameForTranscriptAttribution];

  return __ck_localizedAppNameForTranscriptAttribution;
}

- (BOOL)isCustomSticker
{
  stickerPackGUID = [(CKAssociatedStickerChatItem *)self stickerPackGUID];
  v3 = stickerPackGUID == 0;

  return v3;
}

- (NSString)stickerPackGUID
{
  stickerUserInfo = [(CKAssociatedStickerChatItem *)self stickerUserInfo];
  v3 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];

  return v3;
}

- (BOOL)canShowInAppStore
{
  adamID = [(CKAssociatedStickerChatItem *)self adamID];
  v3 = adamID != 0;

  return v3;
}

- (id)attributionImage
{
  sticker = [(CKAssociatedStickerChatItem *)self sticker];
  image = [sticker image];

  return image;
}

+ (id)_droppedStickers
{
  if (_droppedStickers_token != -1)
  {
    +[CKAssociatedStickerChatItem _droppedStickers];
  }

  v3 = _droppedStickers_stickers;

  return v3;
}

void __47__CKAssociatedStickerChatItem__droppedStickers__block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = _droppedStickers_stickers;
  _droppedStickers_stickers = v0;
}

+ (BOOL)userHasDraggedSticker
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAlwaysShowStickerDropUIEnabled = [mEMORY[0x1E69A8070] isAlwaysShowStickerDropUIEnabled];

  if (isAlwaysShowStickerDropUIEnabled)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"kUserHasDraggedSticker"];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setUserHasDraggedSticker:(BOOL)sticker
{
  stickerCopy = sticker;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAlwaysShowStickerDropUIEnabled = [mEMORY[0x1E69A8070] isAlwaysShowStickerDropUIEnabled];

  if ((isAlwaysShowStickerDropUIEnabled & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:stickerCopy];
    [standardUserDefaults setValue:v8 forKey:@"kUserHasDraggedSticker"];

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CKAssociatedStickerChatItem *)stickerCopy setUserHasDraggedSticker:v9];
    }

    if (stickerCopy)
    {
      _droppedStickers = [self _droppedStickers];
      [_droppedStickers removeAllObjects];
    }
  }
}

+ (void)addDroppedSticker:(id)sticker
{
  stickerCopy = sticker;
  if (([self userHasDraggedSticker] & 1) == 0)
  {
    _droppedStickers = [self _droppedStickers];
    uniqueID = [stickerCopy uniqueID];
    [_droppedStickers addObject:uniqueID];

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CKAssociatedStickerChatItem addDroppedSticker:stickerCopy];
    }
  }
}

+ (void)removeDroppedSticker:(id)sticker
{
  stickerCopy = sticker;
  _droppedStickers = [self _droppedStickers];
  uniqueID = [stickerCopy uniqueID];
  [_droppedStickers removeObject:uniqueID];

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CKAssociatedStickerChatItem removeDroppedSticker:stickerCopy];
  }
}

+ (BOOL)isDroppedSticker:(id)sticker
{
  stickerCopy = sticker;
  _droppedStickers = [self _droppedStickers];
  uniqueID = [stickerCopy uniqueID];
  v7 = [_droppedStickers containsObject:uniqueID];

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CKAssociatedStickerChatItem isDroppedSticker:stickerCopy];
  }

  return v7;
}

+ (void)clearTranscriptDisplayCaches
{
  _droppedStickers = [self _droppedStickers];
  [_droppedStickers removeAllObjects];

  _showingStickers = [self _showingStickers];
  [_showingStickers removeAllObjects];
}

- (id)insertionHandler
{
  if (insertionHandler_token != -1)
  {
    [CKAssociatedStickerChatItem insertionHandler];
  }

  v3 = insertionHandler_sInsertionHandler;

  return v3;
}

void __47__CKAssociatedStickerChatItem_insertionHandler__block_invoke()
{
  v0 = objc_alloc_init(CKStickerTranscriptInsertionHandler);
  v1 = insertionHandler_sInsertionHandler;
  insertionHandler_sInsertionHandler = v0;
}

- (void)currentStickerRepositionIsLocalReposition
{
  [self updateReason];
  v1 = IMStringFromIMFileTransferUpdateReason();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)setUserHasDraggedSticker:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_19020E000, a2, OS_LOG_TYPE_DEBUG, "Set User has dragged a sticker %@", &v3, 0xCu);
}

+ (void)addDroppedSticker:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 uniqueID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)removeDroppedSticker:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 uniqueID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)isDroppedSticker:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 uniqueID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end