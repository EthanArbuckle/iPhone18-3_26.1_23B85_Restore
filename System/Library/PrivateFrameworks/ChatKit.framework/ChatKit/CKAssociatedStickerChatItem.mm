@interface CKAssociatedStickerChatItem
+ (BOOL)isDroppedSticker:(id)a3;
+ (BOOL)userHasDraggedSticker;
+ (double)computeHorizontalStickerFrameOffset:(CGRect)a3 parentSize:(CGSize)a4 forPositioningWithinContentAlignmentRect:(CGRect)a5 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a6 forTranscriptOrientation:(char)a7;
+ (id)_droppedStickers;
+ (id)_showingStickers;
+ (void)addDroppedSticker:(id)a3;
+ (void)clearTranscriptDisplayCaches;
+ (void)removeDroppedSticker:(id)a3;
+ (void)setUserHasDraggedSticker:(BOOL)a3;
- (BOOL)canShowInAppStore;
- (BOOL)chatItemIsStickerReposition;
- (BOOL)currentStickerRepositionIsLocalReposition;
- (BOOL)isCustomSticker;
- (BOOL)isReaction;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKAssociatedStickerChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
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
- (id)messageSummaryInfoValueForKey:(id)a3;
- (id)stickerDetailsPreview;
- (void)clearStickerRepositionLocalState;
- (void)currentStickerRepositionIsLocalReposition;
- (void)refreshMediaObjectForStickerRepositioning;
@end

@implementation CKAssociatedStickerChatItem

+ (double)computeHorizontalStickerFrameOffset:(CGRect)a3 parentSize:(CGSize)a4 forPositioningWithinContentAlignmentRect:(CGRect)a5 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a6 forTranscriptOrientation:(char)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  rect = a3.origin.y;
  x = a3.origin.x;
  [(CKAssociatedMessageChatItem *)CKAssociatedStickerChatItem adjustContentAlignmentRect:a7 forChatItemSize:a5.origin.x transcriptOrientation:a5.origin.y, a5.size.width, a5.size.height, a4.width, a4.height];
  v13 = v12;
  v14 = *&a6->parentPreviewWidth;
  v25[0] = *&a6->layoutIntent;
  v25[1] = v14;
  v25[2] = *&a6->yScalar;
  rotation = a6->rotation;
  [(CKAssociatedMessageChatItem *)CKAssociatedStickerChatItem horizontalOriginForAssociatedMessageItemSize:v25 parentFrame:width geometryDescriptor:height, v15, v13, v16, v17];
  v19 = v18;
  if (v7 == 2)
  {
    v27.origin.x = x;
    v27.origin.y = rect;
    v27.size.width = width;
    v27.size.height = height;
    v22 = v19 + CGRectGetWidth(v27);
    v23 = v22 - CGRectGetMaxX(a5);
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
    if (!v7)
    {
      if (v19 >= a5.origin.x)
      {
        v21 = v19;
      }

      else
      {
        v21 = a5.origin.x;
      }

      return v21 - v19;
    }
  }

  return result;
}

- (NSString)stickerDetailsTitleText
{
  v2 = [(CKAssociatedStickerChatItem *)self transferGUID];
  v3 = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [v3 transferForGUID:v2];

  if ([CKStickerDetailViewController isGenmojiBundleIDFromFileTransfer:v4])
  {
    v5 = [v4 adaptiveImageGlyphContentDescription];
  }

  else
  {
    v5 = 0;
  }

  if (![v5 length])
  {
    v6 = [CKStickerDetailViewController localizedAppNameForStickerDetailsFromFileTransfer:v4];

    v5 = v6;
  }

  return v5;
}

- (NSString)stickerDetailsSubtitleText
{
  v2 = [(CKAssociatedMessageChatItem *)self sender];
  v3 = [v2 name];

  return v3;
}

- (id)stickerDetailsPreview
{
  v2 = [(CKAssociatedStickerChatItem *)self mediaObject];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v5 = v4;

  v6 = [v2 previewForWidth:0 orientation:v5];

  return v6;
}

- (CKAssociatedStickerChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CKAssociatedStickerChatItem;
  v7 = [(CKChatItem *)&v18 initWithIMChatItem:v6 maxWidth:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(CKAssociatedStickerChatItem *)v7 transferGUID];

    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = NSStringFromSelector(sel_chatContext);
        v11 = [v6 valueForKey:v10];
      }

      else
      {
        v11 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v12 = NSStringFromSelector(sel_message);
        v13 = [v6 valueForKey:v12];
      }

      else
      {
        v13 = 0;
      }

      v14 = +[CKMediaObjectManager sharedInstance];
      v15 = [(CKAssociatedStickerChatItem *)v8 transferGUID];
      v16 = [v14 mediaObjectWithTransferGUID:v15 imMessage:v13 chatContext:v11];

      [(CKAssociatedStickerChatItem *)v8 setMediaObject:v16];
    }
  }

  return v8;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v7;
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
    v12 = [(CKAssociatedStickerChatItem *)self mediaObject];
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 previewMaxWidth];
    v14 = [v12 previewForWidth:0 orientation:?];

    objc_opt_class();
    LOBYTE(v13) = objc_opt_isKindOfClass();
    v15 = v14;
    v16 = v15;
    if (v13)
    {
      v17 = [v15 image];
      [v17 size];
      v19 = v18;
      v21 = v20;

      v22 = [v16 image];
    }

    else
    {
      [v15 size];
      v19 = v23;
      v21 = v24;
      v22 = v16;
    }

    [v22 scale];
    v26 = v25;

    v27 = +[CKUIBehavior sharedBehaviors];
    [(CKAssociatedMessageChatItem *)self geometryDescriptor];
    [v27 stickerScreenScale];
    [v27 stickerSizeScaledWithInitialSize:v19 imageScale:v21 userScale:v26 rectifiedScreenScale:v47 maxWidth:{v28, width}];
    v11 = v29;
    v10 = v30;
    v31 = [(CKAssociatedStickerChatItem *)self mediaObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v33 = [(CKAssociatedStickerChatItem *)self mediaObject];
      if ([v33 isSticker] && objc_msgSend(v33, "isReaction"))
      {
        v34 = +[CKUIBehavior sharedBehaviors];
        [v34 stickerReactionSize];
        v11 = v35;
        v10 = v36;
      }

      else if ([v33 isSticker])
      {
        v37 = [v33 sticker];
        v38 = [v37 externalURI];
        v39 = [v38 hasPrefix:@"sticker:///emoji/"];

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
  v2 = [(CKAssociatedStickerChatItem *)self IMAssociatedStickerChatItem];
  v3 = [v2 transferGUID];

  return v3;
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
  v3 = [(CKAssociatedStickerChatItem *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(CKAssociatedStickerChatItem *)self mediaObject];
  v6 = [v5 isReaction];

  return v6;
}

- (void)refreshMediaObjectForStickerRepositioning
{
  v3 = [(CKChatItem *)self IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CKChatItem *)self IMChatItem];
    v12 = [v4 performSelector:sel_chatContext];
  }

  else
  {
    v12 = 0;
  }

  v5 = [(CKChatItem *)self IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CKChatItem *)self IMChatItem];
    v7 = [v6 performSelector:sel_message];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[CKMediaObjectManager sharedInstance];
  v9 = [(CKAssociatedStickerChatItem *)self transferGUID];
  v10 = [v8 mediaObjectWithTransferGUID:v9 imMessage:v7 chatContext:v12];

  [(CKAssociatedStickerChatItem *)self setMediaObject:v10];
  v11 = [(CKAssociatedStickerChatItem *)self IMAssociatedStickerChatItem];
  [v11 _refreshGeometryDescriptorFromStickerUserInfo];
}

- (BOOL)chatItemIsStickerReposition
{
  v3 = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [(CKAssociatedStickerChatItem *)self transferGUID];
  v5 = [v3 transferForGUID:v4];

  v6 = [v5 updateReason] == 1 || objc_msgSend(v5, "updateReason") == 2;
  return v6;
}

- (BOOL)currentStickerRepositionIsLocalReposition
{
  v3 = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [(CKAssociatedStickerChatItem *)self transferGUID];
  v5 = [v3 transferForGUID:v4];

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
  v3 = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [(CKAssociatedStickerChatItem *)self transferGUID];
  v5 = [v3 transferForGUID:v4];

  [v5 setUpdateReason:0];
}

- (NSDictionary)stickerUserInfo
{
  v2 = [(CKAssociatedStickerChatItem *)self mediaObject];
  v3 = [v2 transfer];
  v4 = [v3 stickerUserInfo];

  return v4;
}

- (NSDictionary)attributionInfo
{
  v2 = [(CKAssociatedStickerChatItem *)self mediaObject];
  v3 = [v2 transfer];
  v4 = [v3 attributionInfo];

  return v4;
}

- (NSNumber)adamID
{
  v2 = [(CKAssociatedStickerChatItem *)self attributionInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:*MEMORY[0x1E69A6FA0]];
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

- (id)messageSummaryInfoValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKAssociatedStickerChatItem *)self IMAssociatedStickerChatItem];
  v6 = [v5 messageSummaryInfo];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (IMSticker)sticker
{
  v3 = [(CKAssociatedStickerChatItem *)self mediaObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKAssociatedStickerChatItem *)self mediaObject];
    v6 = [v5 sticker];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)stickerPackName
{
  v2 = [(CKAssociatedStickerChatItem *)self attributionInfo];
  v3 = [v2 __ck_localizedAppNameForTranscriptAttribution];

  return v3;
}

- (BOOL)isCustomSticker
{
  v2 = [(CKAssociatedStickerChatItem *)self stickerPackGUID];
  v3 = v2 == 0;

  return v3;
}

- (NSString)stickerPackGUID
{
  v2 = [(CKAssociatedStickerChatItem *)self stickerUserInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];

  return v3;
}

- (BOOL)canShowInAppStore
{
  v2 = [(CKAssociatedStickerChatItem *)self adamID];
  v3 = v2 != 0;

  return v3;
}

- (id)attributionImage
{
  v2 = [(CKAssociatedStickerChatItem *)self sticker];
  v3 = [v2 image];

  return v3;
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
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isAlwaysShowStickerDropUIEnabled];

  if (v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"kUserHasDraggedSticker"];

  if (v6)
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setUserHasDraggedSticker:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isAlwaysShowStickerDropUIEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v7 setValue:v8 forKey:@"kUserHasDraggedSticker"];

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CKAssociatedStickerChatItem *)v3 setUserHasDraggedSticker:v9];
    }

    if (v3)
    {
      v10 = [a1 _droppedStickers];
      [v10 removeAllObjects];
    }
  }
}

+ (void)addDroppedSticker:(id)a3
{
  v4 = a3;
  if (([a1 userHasDraggedSticker] & 1) == 0)
  {
    v5 = [a1 _droppedStickers];
    v6 = [v4 uniqueID];
    [v5 addObject:v6];

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CKAssociatedStickerChatItem addDroppedSticker:v4];
    }
  }
}

+ (void)removeDroppedSticker:(id)a3
{
  v4 = a3;
  v5 = [a1 _droppedStickers];
  v6 = [v4 uniqueID];
  [v5 removeObject:v6];

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CKAssociatedStickerChatItem removeDroppedSticker:v4];
  }
}

+ (BOOL)isDroppedSticker:(id)a3
{
  v4 = a3;
  v5 = [a1 _droppedStickers];
  v6 = [v4 uniqueID];
  v7 = [v5 containsObject:v6];

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CKAssociatedStickerChatItem isDroppedSticker:v4];
  }

  return v7;
}

+ (void)clearTranscriptDisplayCaches
{
  v3 = [a1 _droppedStickers];
  [v3 removeAllObjects];

  v4 = [a1 _showingStickers];
  [v4 removeAllObjects];
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
  [a1 updateReason];
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