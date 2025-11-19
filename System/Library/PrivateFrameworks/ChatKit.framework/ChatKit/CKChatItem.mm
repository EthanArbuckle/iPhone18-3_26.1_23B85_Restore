@interface CKChatItem
+ (id)chatItemWithIMChatItem:(id)a3 balloonMaxWidth:(double)a4;
+ (id)chatItemWithIMChatItem:(id)a3 balloonMaxWidth:(double)a4 fullMaxWidth:(double)a5 transcriptTraitCollection:(id)a6 transcriptBackgroundLuminance:(double)a7 overlayLayout:(BOOL)a8;
+ (id)chatItemWithNotification:(id)a3 balloonMaxWidth:(double)a4 fullMaxWidth:(double)a5;
+ (void)unloadSizesOfChatItems:(id)a3;
- (BOOL)_associatedChatItemIsReaction:(id)a3;
- (BOOL)canDelete;
- (BOOL)canEditMessageText;
- (BOOL)canRetract;
- (BOOL)invalidateContiguousTypeOverride;
- (BOOL)isCommSafetySensitive;
- (BOOL)isCommSafetySensitiveNotViewable;
- (BOOL)isCommSafetySensitiveViewable;
- (BOOL)isEditedMessageHistory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMe;
- (BOOL)isHighlighted;
- (BOOL)itemIsFromMe;
- (BOOL)itemIsReply;
- (BOOL)itemIsReplyContextPreview;
- (BOOL)itemIsReplyFromMe;
- (BOOL)itemIsSameThreadAsOtherItem:(id)a3;
- (BOOL)itemIsThreadOriginator;
- (BOOL)previousPhotoActionItemIsOccluded:(unint64_t)a3 allDatasourceItems:(id)a4;
- (BOOL)previousReplyCount:(unint64_t)a3 allDatasourceItems:(id)a4 isOccludedForAssociatedSize:(CGSize)a5 outMaxY:(double *)a6;
- (BOOL)previousStatusItemStatusOrientation:(id)a3 isOccludedByCurrentItem:(id)a4;
- (BOOL)supportsCommunicationSafety;
- (BOOL)wantsMoreMenu;
- (BOOL)wasDetonated;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CGSize)size;
- (CKChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (CKChatItem)initWithNotification:(id)a3 maxWidth:(double)a4;
- (IMFileTransfer)commSafetyFileTransfer;
- (NSAttributedString)alternateTranscriptText;
- (NSAttributedString)transcriptDrawerText;
- (NSAttributedString)transcriptText;
- (NSString)cellIdentifier;
- (NSString)commSafetyMessageGUID;
- (NSString)description;
- (NSString)layoutGroupIdentifier;
- (NSURL)commSafetyTransferLocalURL;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)stickerReactionInsets;
- (UIEdgeInsets)textAlignmentInsets;
- (double)_additionalBottomPaddingForChatItem:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 prevChatItem:(id)a6 layoutEnvironment:(id)a7 sizeOverride:(CGSize)a8;
- (double)_additionalTopPaddingForChatItem:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 prevChatItem:(id)a6 layoutEnvironment:(id)a7 sizeOverride:(CGSize)a8;
- (id)layoutItemSpacingForReplyContextPreviewWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6;
- (id)layoutItemSpacingForReplyItemWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)layoutItemSpacingForReplyThreadOriginatorWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)layoutItemWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5;
- (id)syndicationBehaviorString;
- (int64_t)chatItemReplyLineContiguousTypeForChatStyle:(unsigned __int8)a3;
- (int64_t)syndicationBehavior;
- (int64_t)syndicationType;
- (unsigned)attachmentContiguousType;
- (unsigned)contiguousType;
- (void)setMaxWidth:(double)a3;
- (void)setTranscriptTraitCollection:(id)a3;
- (void)unloadTranscriptText;
- (void)updateWithBalloonMaxWidth:(double)a3 fullMaxWidth:(double)a4 transcriptTraitCollection:(id)a5 transcriptBackgroundLuminance:(double)a6;
@end

@implementation CKChatItem

- (unsigned)attachmentContiguousType
{
  if ([(CKChatItem *)self useContiguousTypeOverride])
  {

    return [(CKChatItem *)self contiguousTypeOverride];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 supportsContiguousAttachments];

    if (v5)
    {
      v6 = [(CKChatItem *)self IMChatItem];
      v7 = [v6 attachmentContiguousType];

      return v7;
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)isFromMe
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isFromMe];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(v4))
    {
      v6 = IMTranscriptChatItemEqual();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)syndicationBehaviorString
{
  if ([(CKChatItem *)self syndicationBehavior])
  {
    return @"IMChatItemSyndicationBehaviorEnabled";
  }

  else
  {
    return @"IMChatItemSyndicationBehaviorNone";
  }
}

- (NSString)description
{
  v18 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = CKChatItem;
  v16 = [(CKChatItem *)&v19 description];
  v15 = [(CKChatItem *)self IMChatItem];
  v17 = [(CKChatItem *)self IMChatItem];
  v14 = [v17 contiguousType];
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 attachmentContiguousType];
  maxWidth = self->_maxWidth;
  v6 = NSStringFromCGSize(self->_size);
  v7 = NSStringFromUIEdgeInsets(self->_textAlignmentInsets);
  v8 = [(CKChatItem *)self transcriptOrientation];
  if ([(CKChatItem *)self isHighlighted])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(CKChatItem *)self syndicationBehaviorString];
  if ([(CKChatItem *)self wasDetonated])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v18 stringWithFormat:@"[%@ [IMChatItem: %@], contiguousType:%d, attachmentContiguousType:%d, maxWidth:%f, size:%@, textAlignmentInsets:%@, transcriptOrientation: %d, isHighlighted: %@, syndicationBehavior: %@, wasDetonated: %@]", v16, v15, v14, v4, *&maxWidth, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (NSString)layoutGroupIdentifier
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 layoutGroupIdentifier];

  return v3;
}

- (unsigned)contiguousType
{
  if ([(CKChatItem *)self useContiguousTypeOverride])
  {

    return [(CKChatItem *)self contiguousTypeOverride];
  }

  else
  {
    v4 = [(CKChatItem *)self IMChatItem];
    v5 = [v4 contiguousType];

    return v5;
  }
}

- (NSAttributedString)transcriptText
{
  if (!self->_transcriptText)
  {
    v3 = [(CKChatItem *)self loadTranscriptText];
    v4 = [v3 copy];
    transcriptText = self->_transcriptText;
    self->_transcriptText = v4;

    if ([(CKChatItem *)self wantsGUIDAppended])
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
      [v6 appendAttributedString:self->_transcriptText];
      v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v6 appendAttributedString:v7];

      v25 = +[CKUIBehavior sharedBehaviors];
      v8 = [v25 transcriptRegularFontAttributes];
      v9 = +[CKUIBehavior sharedBehaviors];
      v10 = [v9 transcriptEmphasizedFontAttributes];
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"INTERNAL_GUID_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v13 = [(CKChatItem *)self IMChatItem];
      v14 = [v13 guid];
      v20 = CKAttributedFormatString(v8, v10, v12, v15, v16, v17, v18, v19, v14);
      [v6 appendAttributedString:v20];

      v21 = [v6 copy];
      v22 = self->_transcriptText;
      self->_transcriptText = v21;
    }
  }

  v23 = self->_transcriptText;

  return v23;
}

- (NSAttributedString)alternateTranscriptText
{
  if (!self->_alternateTranscriptText && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(CKChatItem *)self loadAlternateTranscriptText];
    v4 = [v3 copy];
    alternateTranscriptText = self->_alternateTranscriptText;
    self->_alternateTranscriptText = v4;
  }

  v6 = self->_alternateTranscriptText;

  return v6;
}

- (void)unloadTranscriptText
{
  transcriptText = self->_transcriptText;
  self->_transcriptText = 0;

  transcriptDrawerText = self->_transcriptDrawerText;
  self->_transcriptDrawerText = 0;
}

- (CGSize)size
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_sizeLoaded)
  {
    width = self->_size.width;
    height = self->_size.height;
  }

  else
  {
    maxWidth = self->_maxWidth;
    if (maxWidth == 0.0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v6 bounds];
        v8 = v7;
        v10 = v9;

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Transcript sizing race condition. Please file a bug on Messages.", &v14, 2u);
          }
        }

        maxWidth = fmin(v8, v10);
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [MEMORY[0x1E696AF00] callStackSymbols];
            v14 = 138412290;
            v15 = v13;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%@", &v14, 0xCu);
          }
        }
      }
    }

    self->_sizeLoaded = 1;
    [(CKChatItem *)self loadSizeThatFits:&self->_textAlignmentInsets textAlignmentInsets:maxWidth, 1.79769313e308];
    self->_size.width = width;
    self->_size.height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)textAlignmentInsets
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_sizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    maxWidth = self->_maxWidth;
    if (maxWidth == 0.0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v5 bounds];
        v7 = v6;
        v9 = v8;

        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Transcript sizing race condition. Please file a bug on Messages.", &v19, 2u);
          }
        }

        maxWidth = fmin(v7, v9);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [MEMORY[0x1E696AF00] callStackSymbols];
            v19 = 138412290;
            v20 = v12;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%@", &v19, 0xCu);
          }
        }
      }
    }

    self->_sizeLoaded = 1;
    [(CKChatItem *)self loadSizeThatFits:&self->_textAlignmentInsets textAlignmentInsets:maxWidth, 1.79769313e308];
    self->_size.width = v13;
    self->_size.height = v14;
    objc_autoreleasePoolPop(v3);
  }

  top = self->_textAlignmentInsets.top;
  left = self->_textAlignmentInsets.left;
  bottom = self->_textAlignmentInsets.bottom;
  right = self->_textAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (void)unloadSizesOfChatItems:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CKChatItemSizeCache sharedInstance];
  [v4 invalidateCachedSizeForChatItems:v3 reason:@"chatitem_unloadsizes"];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) unloadSize];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setTranscriptTraitCollection:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CKChatItem *)self transcriptTraitCollection];
  objc_storeStrong(&self->_transcriptTraitCollection, a3);
  if ([(CKChatItem *)self shouldUnloadTranscriptTextForChangeFromTraitCollection:v6 toTraitCollection:v5])
  {
    [(CKChatItem *)self unloadTranscriptText];
    v8[0] = self;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [CKChatItem unloadSizesOfChatItems:v7];
  }
}

- (UIEdgeInsets)contentInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NSString)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSAttributedString)transcriptDrawerText
{
  transcriptDrawerText = self->_transcriptDrawerText;
  if (!transcriptDrawerText)
  {
    v4 = [(CKChatItem *)self loadTranscriptDrawerText];
    v5 = [v4 copy];
    v6 = self->_transcriptDrawerText;
    self->_transcriptDrawerText = v5;

    transcriptDrawerText = self->_transcriptDrawerText;
  }

  return transcriptDrawerText;
}

- (BOOL)wantsMoreMenu
{
  v3 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKChatItem *)self IMChatItem];
    v6 = [v5 scheduleState];
    v7 = (v6 < 6) & (0x39u >> v6);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)canDelete
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 canDelete];

  return v3;
}

- (BOOL)canRetract
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 canRetract];

  return v3;
}

- (BOOL)canEditMessageText
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 canEditMessageText];

  if (canEditMessageText_onceToken != -1)
  {
    [CKChatItem canEditMessageText];
  }

  return (canEditMessageText_canAlwaysEditMessageText | v3) & 1;
}

void __32__CKChatItem_canEditMessageText__block_invoke()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    canEditMessageText_canAlwaysEditMessageText = [v2 BOOLForKey:@"CanAlwaysEditMessages"];
  }

  else
  {
    canEditMessageText_canAlwaysEditMessageText = 0;
  }
}

- (BOOL)isEditedMessageHistory
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isEditedMessageHistory];

  return v3;
}

- (UIEdgeInsets)stickerReactionInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)supportsCommunicationSafety
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 supportsCommunicationSafety];

  return v3;
}

- (NSURL)commSafetyTransferLocalURL
{
  v2 = [(CKChatItem *)self commSafetyFileTransfer];
  v3 = [v2 localURL];

  return v3;
}

- (NSString)commSafetyMessageGUID
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 guid];

  return v3;
}

- (IMFileTransfer)commSafetyFileTransfer
{
  if (-[CKChatItem supportsCommunicationSafety](self, "supportsCommunicationSafety") && (-[CKChatItem commSafetyTransferGUID](self, "commSafetyTransferGUID"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, v4))
  {
    v5 = [MEMORY[0x1E69A5B80] sharedInstance];
    v6 = [(CKChatItem *)self commSafetyTransferGUID];
    v7 = [v5 transferForGUID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCommSafetySensitiveViewable
{
  if (![(CKChatItem *)self supportsCommunicationSafety])
  {
    return 0;
  }

  v3 = [(CKChatItem *)self commSafetyFileTransfer];
  v4 = [v3 commSafetySensitive] == 2;

  return v4;
}

- (BOOL)isCommSafetySensitiveNotViewable
{
  if (![(CKChatItem *)self supportsCommunicationSafety])
  {
    return 0;
  }

  v3 = [(CKChatItem *)self commSafetyFileTransfer];
  v4 = [v3 commSafetySensitive] == 1;

  return v4;
}

- (BOOL)isCommSafetySensitive
{
  v3 = [(CKChatItem *)self supportsCommunicationSafety];
  if (v3)
  {
    if ([(CKChatItem *)self isCommSafetySensitiveViewable])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(CKChatItem *)self isCommSafetySensitiveNotViewable];
    }
  }

  return v3;
}

- (void)updateWithBalloonMaxWidth:(double)a3 fullMaxWidth:(double)a4 transcriptTraitCollection:(id)a5 transcriptBackgroundLuminance:(double)a6
{
  v10 = a5;
  [(CKChatItem *)self setTranscriptTraitCollection:v10];
  [objc_opt_class() resultingMaxWidthWithBalloonMaxWidth:v10 fullMaxWidth:a3 transcriptTraitCollection:a4 transcriptBackgroundLuminance:a6];
  v12 = v11;

  [(CKChatItem *)self setMaxWidth:v12];
}

- (BOOL)invalidateContiguousTypeOverride
{
  v3 = [(CKChatItem *)self useContiguousTypeOverride];
  [(CKChatItem *)self setUseContiguousTypeOverride:0];
  v4 = [(CKChatItem *)self IMChatItem];
  self->_contiguousTypeOverride = [v4 contiguousType];

  return v3;
}

- (void)setMaxWidth:(double)a3
{
  if (self->_maxWidth != a3)
  {
    self->_maxWidth = a3;
    [(CKChatItem *)self unloadSize];
  }
}

- (CKChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKChatItem;
  v8 = [(CKChatItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imChatItem, a3);
    v9->_maxWidth = a4;
  }

  return v9;
}

- (CKChatItem)initWithNotification:(id)a3 maxWidth:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKChatItem;
  v8 = [(CKChatItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notification, a3);
    v9->_maxWidth = a4;
  }

  return v9;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  if (a4)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v4;
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)syndicationBehavior
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 syndicationBehavior];

  return v3;
}

- (BOOL)isHighlighted
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isHighlighted];

  return v3;
}

- (int64_t)syndicationType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 syndicationType];

  return v3;
}

- (BOOL)wasDetonated
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 wasDetonated];

  return v3;
}

+ (id)chatItemWithIMChatItem:(id)a3 balloonMaxWidth:(double)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_msgSend(v5 "__ck_chatItemClass"))];

  return v6;
}

+ (id)chatItemWithIMChatItem:(id)a3 balloonMaxWidth:(double)a4 fullMaxWidth:(double)a5 transcriptTraitCollection:(id)a6 transcriptBackgroundLuminance:(double)a7 overlayLayout:(BOOL)a8
{
  v8 = a8;
  v13 = a6;
  v14 = a3;
  v15 = [v14 __ck_chatItemClass];
  [v15 resultingMaxWidthWithBalloonMaxWidth:v13 fullMaxWidth:a4 transcriptTraitCollection:a5 transcriptBackgroundLuminance:a7];
  v17 = [[v15 alloc] initWithIMChatItem:v14 maxWidth:v16];

  [v17 setTranscriptTraitCollection:v13];
  [v17 setTranscriptBackgroundLuminance:a7];
  [v17 setWantsOverlayLayout:v8];
  [v17 setOriginalMaxWidth:a5];

  return v17;
}

+ (id)chatItemWithNotification:(id)a3 balloonMaxWidth:(double)a4 fullMaxWidth:(double)a5
{
  v6 = a3;
  v7 = [(CKChatItem *)[CKTextMessagePartChatItem alloc] initWithNotification:v6 maxWidth:a4];

  return v7;
}

- (id)layoutItemWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  [(CKChatItem *)self size];
  v10 = v9;
  v12 = v11;
  [(CKChatItem *)self contentInsets];
  v14 = v13;
  v16 = v15;
  [v7 marginInsets];
  v18 = v17;
  v20 = v19;
  v21 = [v7 messageEditingContext];
  v22 = v21;
  v23 = v12 + v14 + v18 + v16 + v20;
  if (v21)
  {
    v24 = [v21 editedMessageGuid];
    v25 = [(CKChatItem *)self IMChatItem];
    v26 = [v25 guid];

    if ([v26 isEqualToString:v24])
    {
      [v22 editedMessageHeight];
      v23 = v27;
    }
  }

  if (CKPixelWidth_once_6 != -1)
  {
    [CKChatItem(Layout) layoutItemWithEnvironment:datasourceItemIndex:allDatasourceItems:];
  }

  if (v23 < *&CKPixelWidth_sPixel_6)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v41.width = v10;
        v41.height = v23;
        v29 = NSStringFromCGSize(v41);
        v33 = 136315650;
        v34 = "[CKChatItem(Layout) layoutItemWithEnvironment:datasourceItemIndex:allDatasourceItems:]";
        v35 = 2112;
        v36 = v29;
        v37 = 2112;
        v38 = self;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s chatItem has invalid height < _1PX, has %@: %@", &v33, 0x20u);
      }
    }

    if (CKPixelWidth_once_6 != -1)
    {
      [CKChatItem(Layout) layoutItemWithEnvironment:datasourceItemIndex:allDatasourceItems:];
    }

    v23 = *&CKPixelWidth_sPixel_6;
  }

  v30 = [CKChatItemLayoutUtilities dynamicWidthLayoutSizeWithHeight:v23];
  v31 = [MEMORY[0x1E6995578] itemWithLayoutSize:v30];

  return v31;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v48 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (a4 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 objectAtIndex:a4 - 1];
  }

  if ([(CKChatItem *)self layoutType]== 13)
  {
    v17 = [(CKChatItem *)self layoutItemSpacingForReplyItemWithEnvironment:v13 datasourceItemIndex:a4 allDatasourceItems:v14 supplementryItems:v15 sizeOverride:width, height];
LABEL_29:
    v27 = v17;
    goto LABEL_30;
  }

  if ([(CKChatItem *)self layoutType]== 14)
  {
    v17 = [(CKChatItem *)self layoutItemSpacingForReplyContextPreviewWithEnvironment:v13 datasourceItemIndex:a4 allDatasourceItems:v14 supplementryItems:v15];
    goto LABEL_29;
  }

  if ([(CKChatItem *)self layoutType]== 15)
  {
    v17 = [(CKChatItem *)self layoutItemSpacingForReplyThreadOriginatorWithEnvironment:v13 datasourceItemIndex:a4 allDatasourceItems:v14 supplementryItems:v15 sizeOverride:width, height];
    goto LABEL_29;
  }

  if ([(CKChatItem *)self layoutType]== 1 || [(CKChatItem *)self layoutType]== 18)
  {
    v18 = 0.0;
    switch([v16 layoutType])
    {
      case 1:
      case 15:
        v19 = +[CKUIBehavior sharedBehaviors];
        [v19 balloonBalloonTranscriptSpace:{objc_msgSend(v16, "contiguousType")}];
        goto LABEL_27;
      case 2:
      case 3:
      case 8:
      case 11:
      case 12:
      case 18:
      case 27:
        v19 = +[CKUIBehavior sharedBehaviors];
        [v19 mediumTranscriptSpace];
        goto LABEL_27;
      case 5:
      case 6:
      case 16:
        v28 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:a4 - 1 allDatasourceItems:v14];
        v19 = +[CKUIBehavior sharedBehaviors];
        if (!v28)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 7:
        v19 = +[CKUIBehavior sharedBehaviors];
        [v19 extraSmallTranscriptSpace];
        goto LABEL_27;
      case 13:
        v19 = +[CKUIBehavior sharedBehaviors];
LABEL_22:
        [v19 extraLargeTranscriptSpace];
        goto LABEL_27;
      case 17:
        break;
      case 19:
        v19 = +[CKUIBehavior sharedBehaviors];
LABEL_26:
        [v19 smallTranscriptSpace];
LABEL_27:
        v18 = v20;

        break;
      default:
        if (v16 && IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v39 = objc_opt_class();
            v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKChatItem layoutType](self, "layoutType")}];
            v38 = objc_opt_class();
            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "layoutType")}];
            *buf = 138413058;
            v41 = v39;
            v42 = 2112;
            v43 = v37;
            v44 = 2112;
            v45 = v38;
            v46 = 2112;
            v47 = v34;
            _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ (%@) shouldn't follow %@ (%@)", buf, 0x2Au);
          }
        }

        v35 = +[CKUIBehavior sharedBehaviors];
        [v35 smallTranscriptSpace];
        v18 = v36;

        break;
    }

    [(CKChatItem *)self _additionalTopPaddingForChatItem:self datasourceItemIndex:a4 allDatasourceItems:v14 prevChatItem:v16 layoutEnvironment:v13 sizeOverride:width, height];
    v30 = v29;
    [(CKChatItem *)self _additionalBottomPaddingForChatItem:self datasourceItemIndex:a4 allDatasourceItems:v14 prevChatItem:v16 layoutEnvironment:v13 sizeOverride:width, height];
    v17 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v18 + v30 bottomSpacing:v31];
    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = objc_opt_class();
      v22 = v41;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKChatItem_Layout: Returning default spacing for %@, should be implemented in subclass!!", buf, 0xCu);
    }
  }

  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 smallTranscriptSpace];
  v25 = v24;

  v26 = [MEMORY[0x1E6995590] fixedSpacing:v25];
  v27 = [MEMORY[0x1E6995560] spacingForLeading:0 top:v26 trailing:0 bottom:v26];

LABEL_30:

  return v27;
}

- (double)_additionalTopPaddingForChatItem:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 prevChatItem:(id)a6 layoutEnvironment:(id)a7 sizeOverride:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v112 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v94 = a5;
  v14 = a6;
  v15 = 0.0;
  if ([(CKChatItem *)self layoutType]!= 19 && ([(CKChatItem *)self layoutType]!= 18 || [(CKChatItem *)self transcriptOrientation]))
  {
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      [v13 size];
      width = v17;
      height = v18;
    }

    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 balloonBalloonTranscriptSpace:0];
    v98 = v20;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 visibleAssociatedMessageChatItemsIncludingTapbacks];
    }

    else
    {
      [v13 visibleAssociatedMessageChatItems];
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    obj = v108 = 0u;
    v99 = [obj countByEnumeratingWithState:&v107 objects:v111 count:16];
    if (v99)
    {
      v21 = 0;
      v22 = *v108;
      v89 = a4 - 2;
      v90 = *(MEMORY[0x1E695F058] + 24);
      v91 = *(MEMORY[0x1E695F058] + 16);
      v93 = *v108;
      v100 = height;
      do
      {
        v23 = 0;
        do
        {
          if (*v108 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v107 + 1) + 8 * v23);
          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          if (v24 && ([v24 geometryDescriptor], v103 == 10))
          {
            v25 = +[CKUIBehavior sharedBehaviors];
            [v25 messageAcknowledgmentTranscriptBalloonRelativePosition];
            v27 = v26;
            v29 = v28;

            [v24 size];
            v31 = v30;
            v102 = 0;
            [v14 size];
            v33 = v32;
            v97 = [v14 layoutType];
            if (v97 == 7)
            {
              v34 = [v14 transcriptOrientation];
              v35 = +[CKUIBehavior sharedBehaviors];
              [v35 senderTranscriptInsets];
              v37 = v36;
              v38 = v29;
              v40 = v39;

              if (v34)
              {
                v41 = v40;
              }

              else
              {
                v41 = v37;
              }

              v29 = v38;
              v33 = v33 + fabs(v41);
            }

            v42 = width - (v31 - v27);
            v92 = [v14 transcriptOrientation];
            v43 = [v13 transcriptOrientation];
            [v24 size];
            v44 = [(CKChatItem *)self previousReplyCount:a4 allDatasourceItems:v94 isOccludedForAssociatedSize:&v102 outMaxY:?];
            v45 = [(CKChatItem *)self previousPhotoActionItemIsOccluded:a4 allDatasourceItems:v94];
            v46 = [(CKChatItem *)self previousStatusItemStatusOrientation:v14 isOccludedByCurrentItem:v13];
            if (v33 > v42 || (v14 ? (v47 = v92 == v43) : (v47 = 0), v47 ? (v48 = 0) : (v48 = 1), ((v48 | v45 | v46 | v44) & 1) != 0))
            {
              if (v45)
              {
                v49 = +[CKUIBehavior sharedBehaviors];
                [v49 smallTranscriptSpace];
                v15 = v50 + v50;
              }

              else
              {
                [v24 size];
                if (v15 < v29 + v78)
                {
                  v15 = v29 + v78;
                }
              }
            }

            v79 = [CKChatItemLayoutUtilities layoutTypeIsMessageBalloonForChatItem:v14];
            v22 = v93;
            if (v97 != 7 && a4 >= 2 && !v79)
            {
              v80 = [v94 objectAtIndexedSubscript:v89];
              v81 = [v14 transcriptOrientation];
              v82 = [v80 transcriptOrientation];
              [v80 size];
              if (v81 == v82 && v83 > v42)
              {
                v84 = +[CKUIBehavior sharedBehaviors];
                [v84 mediumTranscriptSpace];
                v86 = v85;

                if (v15 < v86)
                {
                  v15 = v86;
                }
              }

              v22 = v93;
            }
          }

          else
          {
            v101 = v15;
            if ([(CKChatItem *)self _associatedChatItemIsReaction:v24, v89])
            {
              v51 = +[CKUIBehavior sharedBehaviors];
              [v51 stickerReactionTranscriptPaddingPercentage];
              v53 = v52;

              v54 = [v13 itemIsFromMe];
              [v13 stickerReactionInsets];
              [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v21 reactionIndex:v54 parentIsFromMe:0.0 insets:0.0, width, height, v55, v56, v57, v58];
              v60 = v59;
              v61 = width;
              v63 = v62;
              v64 = +[CKUIBehavior sharedBehaviors];
              [v64 stickerReactionSize];
              v66 = v65;
              v68 = v67;

              v113.origin.x = v60;
              height = v100;
              v113.origin.y = v63;
              v113.size.height = v90;
              v113.size.width = v91;
              v114 = CGRectInset(v113, -(v66 * v53), -(v68 * v53));
              x = v114.origin.x;
              v70 = v114.size.width;
              v71 = v114.size.height;
              ++v21;
            }

            else
            {
              [v24 frameRelativeToParentFrame:{0.0, 0.0, width, height}];
              v61 = width;
              x = v72;
              v70 = v73;
              v71 = v74;
            }

            v75 = v98 + v114.origin.y;
            v115.origin.x = 0.0;
            v115.origin.y = 0.0;
            width = v61;
            v115.size.width = v61;
            v115.size.height = height;
            MinY = CGRectGetMinY(v115);
            v116.origin.x = x;
            v116.origin.y = v75;
            v116.size.width = v70;
            v116.size.height = v71;
            v77 = MinY - CGRectGetMinY(v116) - v98;
            v15 = v101;
            if (v101 < v77)
            {
              v15 = v77;
            }
          }

          ++v23;
          height = v100;
        }

        while (v99 != v23);
        v87 = [obj countByEnumeratingWithState:&v107 objects:v111 count:16];
        v99 = v87;
      }

      while (v87);
    }
  }

  return v15;
}

- (double)_additionalBottomPaddingForChatItem:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 prevChatItem:(id)a6 layoutEnvironment:(id)a7 sizeOverride:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v60 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isExpressiveTextEnabled];

  if (!v13)
  {
    [v11 size];
    width = v17;
    [v11 size];
    goto LABEL_9;
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [v11 size];
    width = v16;
LABEL_9:
    height = v15;
  }

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 balloonBalloonTranscriptSpace:0];
  v20 = v19;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [v11 visibleAssociatedMessageChatItems];
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v56;
    v26 = 0.0;
    rect = *(MEMORY[0x1E695F058] + 24);
    v53 = *(MEMORY[0x1E695F058] + 16);
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v56 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v55 + 1) + 8 * i);
        if (v28)
        {
          [v28 geometryDescriptor];
        }

        if ([(CKChatItem *)self _associatedChatItemIsReaction:v28])
        {
          v29 = +[CKUIBehavior sharedBehaviors];
          [v29 stickerReactionTranscriptPaddingPercentage];
          v54 = v30;

          v31 = [v11 itemIsFromMe];
          [v11 stickerReactionInsets];
          [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v24 reactionIndex:v31 parentIsFromMe:0.0 insets:0.0, width, height, v32, v33, v34, v35];
          v37 = v36;
          v38 = height;
          v39 = width;
          v40 = v20;
          v42 = v41;
          v43 = +[CKUIBehavior sharedBehaviors];
          [v43 stickerReactionSize];
          v45 = v44;
          v47 = v46;

          v61.size.width = v53;
          v61.origin.x = v37;
          v61.origin.y = v42;
          v20 = v40;
          width = v39;
          height = v38;
          v61.size.height = rect;
          v62 = CGRectInset(v61, -(v45 * v54), -(v47 * v54));
          ++v24;
        }

        else
        {
          [v28 frameRelativeToParentFrame:{0.0, 0.0, width, height}];
        }

        v48 = v20 + v62.origin.y;
        MaxY = CGRectGetMaxY(v62);
        v63.origin.x = 0.0;
        v63.origin.y = 0.0;
        v63.size.width = width;
        v63.size.height = height;
        v50 = MaxY - CGRectGetMaxY(v63);
        if (v26 < v50)
        {
          v26 = v50;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v23);
  }

  else
  {
    v26 = 0.0;
  }

  return v26;
}

- (BOOL)_associatedChatItemIsReaction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isReaction];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)layoutItemSpacingForReplyItemWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v55 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if ([(CKChatItem *)self layoutType]== 13)
  {
    if (a4 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v14 objectAtIndex:a4 - 1];
    }

    if ([v16 itemIsReplyCount])
    {
      v19 = [(CKChatItem *)self itemIsFromMe];
      if (v19 != [v16 itemIsFromMe])
      {
        goto LABEL_16;
      }

      v23 = [CKChatItemLayoutUtilities needsAdditionalBracketPaddingForChatItem:self prevChatItem:v16];
      v24 = +[CKUIBehavior sharedBehaviors];
      v21 = v24;
      if (v23)
      {
        [v24 replyLineBracketRadius];
        v26 = v25;
        v27 = +[CKUIBehavior sharedBehaviors];
        [v27 replyLineViewVerticalPadding];
        v29 = v28;
        v30 = +[CKUIBehavior sharedBehaviors];
        [v30 textBalloonMinHeight];
        v32 = v26 + v29 * 2.0 + v31 * -0.5;

LABEL_32:
LABEL_33:
        [(CKChatItem *)self _additionalTopPaddingForChatItem:self datasourceItemIndex:a4 allDatasourceItems:v14 prevChatItem:v16 layoutEnvironment:v13 sizeOverride:width, height];
        v37 = v36;
        [(CKChatItem *)self _additionalBottomPaddingForChatItem:self datasourceItemIndex:a4 allDatasourceItems:v14 prevChatItem:v16 layoutEnvironment:v13 sizeOverride:width, height];
        v18 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v32 + v37 bottomSpacing:v38];

        goto LABEL_34;
      }

LABEL_30:
      [v21 balloonBalloonTranscriptSpace:{objc_msgSend(v16, "contiguousType")}];
      goto LABEL_31;
    }

    v20 = [v16 layoutType];
    if (v20 > 6)
    {
      if (v20 > 13)
      {
        if ((v20 - 14) >= 2)
        {
          goto LABEL_38;
        }

        v33 = [(CKChatItem *)self itemIsFromMe];
        v34 = [v16 itemIsFromMe];
        v35 = +[CKUIBehavior sharedBehaviors];
        v21 = v35;
        if (((v33 ^ v34) & 1) == 0)
        {
          [v35 selfReplyTranscriptSpace];
          goto LABEL_31;
        }

LABEL_27:
        [v21 mediumTranscriptSpace];
        goto LABEL_31;
      }

      if (v20 == 7)
      {
        v21 = +[CKUIBehavior sharedBehaviors];
        [v21 extraSmallTranscriptSpace];
        goto LABEL_31;
      }

      if (v20 != 8)
      {
        if (v20 == 13)
        {
LABEL_29:
          v21 = +[CKUIBehavior sharedBehaviors];
          goto LABEL_30;
        }

LABEL_38:
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v46 = objc_opt_class();
            v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKChatItem layoutType](self, "layoutType")}];
            v45 = objc_opt_class();
            v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "layoutType")}];
            *buf = 138413058;
            v48 = v46;
            v49 = 2112;
            v50 = v44;
            v51 = 2112;
            v52 = v45;
            v53 = 2112;
            v54 = v41;
            _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "CKChatItem_Layout: Reply Item Spacing: %@ (%@) shouldn't follow %@ (%@)", buf, 0x2Au);
          }
        }

        v42 = +[CKUIBehavior sharedBehaviors];
        [v42 smallTranscriptSpace];
        v32 = v43;

        goto LABEL_33;
      }
    }

    else if ((v20 - 2) >= 2)
    {
      if ((v20 - 5) < 2)
      {
LABEL_16:
        v21 = +[CKUIBehavior sharedBehaviors];
        [v21 smallTranscriptSpace];
LABEL_31:
        v32 = v22;
        goto LABEL_32;
      }

      if (v20 == 1)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }

    v21 = +[CKUIBehavior sharedBehaviors];
    goto LABEL_27;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v48 = "[CKChatItem(Layout) layoutItemSpacingForReplyItemWithEnvironment:datasourceItemIndex:allDatasourceItems:supplementryItems:sizeOverride:]";
      v49 = 2048;
      v50 = [(CKChatItem *)self layoutType];
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s asked to generate spacing for non-reply type %lu", buf, 0x16u);
    }
  }

  v18 = 0;
LABEL_34:

  return v18;
}

- (id)layoutItemSpacingForReplyContextPreviewWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(CKChatItem *)self layoutType]== 14)
  {
    if (a4 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v11 objectAtIndex:a4 - 1];
    }

    v16 = [v13 layoutType];
    if (v16 <= 0x10)
    {
      if (((1 << v16) & 0x1206A) != 0)
      {
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 extraLargeTranscriptSpace];
LABEL_17:
        v19 = v18;

LABEL_18:
        v15 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v13 topSpacing:v19 bottomSpacing:0.0];

        goto LABEL_19;
      }

      if (((1 << v16) & 0x104) != 0)
      {
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 mediumTranscriptSpace];
        goto LABEL_17;
      }

      if (v16 == 7)
      {
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 extraSmallTranscriptSpace];
        goto LABEL_17;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKChatItem layoutType](self, "layoutType")}];
        v24 = objc_opt_class();
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "layoutType")}];
        v28 = 138413058;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        v32 = 2112;
        v33 = v24;
        v34 = 2112;
        v35 = v25;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKChatItem_Layout: Reply Context Preview Spacing: %@ (%@) shouldn't follow %@ (%@)", &v28, 0x2Au);
      }
    }

    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 smallTranscriptSpace];
    v19 = v27;

    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v28 = 136315394;
      v29 = "[CKChatItem(Layout) layoutItemSpacingForReplyContextPreviewWithEnvironment:datasourceItemIndex:allDatasourceItems:supplementryItems:]";
      v30 = 2048;
      v31 = [(CKChatItem *)self layoutType];
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s asked to generate spacing for non-reply context preview type %lu", &v28, 0x16u);
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)layoutItemSpacingForReplyThreadOriginatorWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v45 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if ([(CKChatItem *)self layoutType]== 15)
  {
    if (a4 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v14 objectAtIndex:a4 - 1];
    }

    v19 = [v16 layoutType];
    if (v19 > 6)
    {
      if (v19 > 12)
      {
        if (v19 == 13)
        {
          goto LABEL_23;
        }

        if (v19 == 16)
        {
          v22 = +[CKUIBehavior sharedBehaviors];
LABEL_25:
          [v22 smallTranscriptSpace];
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      if (v19 == 7)
      {
        v22 = +[CKUIBehavior sharedBehaviors];
        [v22 extraSmallTranscriptSpace];
        goto LABEL_29;
      }

      if (v19 != 8)
      {
        goto LABEL_34;
      }
    }

    else if ((v19 - 2) >= 2)
    {
      if ((v19 - 5) < 2)
      {
        v20 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:a4 - 1 allDatasourceItems:v14];
        v21 = [CKChatItemLayoutUtilities nextMessageIsReplyForIndex:a4 allDatasourceItems:v14];
        v22 = +[CKUIBehavior sharedBehaviors];
        if (v20 || v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if (v19 == 1)
      {
LABEL_23:
        if ([(CKChatItem *)self itemIsSameThreadAsOtherItem:v16])
        {
          v24 = [CKChatItemLayoutUtilities nextMessageIsReplyForIndex:a4 allDatasourceItems:v14];
          v22 = +[CKUIBehavior sharedBehaviors];
          if (!v24)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v22 = +[CKUIBehavior sharedBehaviors];
        }

LABEL_28:
        [v22 extraLargeTranscriptSpace];
        goto LABEL_29;
      }

LABEL_34:
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKChatItem layoutType](self, "layoutType")}];
          v35 = objc_opt_class();
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "layoutType")}];
          *buf = 138413058;
          v38 = v36;
          v39 = 2112;
          v40 = v34;
          v41 = 2112;
          v42 = v35;
          v43 = 2112;
          v44 = v31;
          _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "CKChatItem_Layout: Reply Thread Originator Spacing: %@ (%@) shouldn't follow %@ (%@)", buf, 0x2Au);
        }
      }

      v32 = +[CKUIBehavior sharedBehaviors];
      [v32 smallTranscriptSpace];
      v25 = v33;

      goto LABEL_30;
    }

    v22 = +[CKUIBehavior sharedBehaviors];
    [v22 mediumTranscriptSpace];
LABEL_29:
    v25 = v23;

LABEL_30:
    [(CKChatItem *)self _additionalTopPaddingForChatItem:self datasourceItemIndex:a4 allDatasourceItems:v14 prevChatItem:v16 layoutEnvironment:v13 sizeOverride:width, height];
    v27 = v26;
    [(CKChatItem *)self _additionalBottomPaddingForChatItem:self datasourceItemIndex:a4 allDatasourceItems:v14 prevChatItem:v16 layoutEnvironment:v13 sizeOverride:width, height];
    v18 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v25 + v27 bottomSpacing:v28];

    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v38 = "[CKChatItem(Layout) layoutItemSpacingForReplyThreadOriginatorWithEnvironment:datasourceItemIndex:allDatasourceItems:supplementryItems:sizeOverride:]";
      v39 = 2048;
      v40 = [(CKChatItem *)self layoutType];
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s asked to generate spacing for non-thread originator preview type %lu", buf, 0x16u);
    }
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (BOOL)previousReplyCount:(unint64_t)a3 allDatasourceItems:(id)a4 isOccludedForAssociatedSize:(CGSize)a5 outMaxY:(double *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  v11 = [(CKChatItem *)self itemIsReply];
  LOBYTE(self) = 0;
  if (v11 && (a3 - 1) >= 1)
  {
    while (1)
    {
      v13 = [v10 objectAtIndex:--a3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (a3 <= 1)
      {
        LOBYTE(self) = 0;
        goto LABEL_15;
      }
    }

    v14 = v13;
    v15 = [v14 replyCount];
    [v14 size];
    v17 = v16;
    [v14 size];
    v19 = height <= v18 && width <= v17;
    LODWORD(self) = v15 > 1 && v19;
    if (self == 1)
    {
      [v14 size];
      *a6 = v20;
    }
  }

LABEL_15:

  return self;
}

- (BOOL)previousStatusItemStatusOrientation:(id)a3 isOccludedByCurrentItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v6 transcriptOrientation];
    v9 = [v7 transcriptOrientation];
    v10 = [v7 statusAlignment];

    v12 = v8 == v9 && v8 != v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)previousPhotoActionItemIsOccluded:(unint64_t)a3 allDatasourceItems:(id)a4
{
  v4 = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)itemIsReply
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(CKChatItem *)self isReply];
}

- (BOOL)itemIsFromMe
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isFromMe];

  return v3;
}

- (BOOL)itemIsReplyFromMe
{
  v3 = [(CKChatItem *)self conformsToProtocol:&unk_1F053F238];
  if (v3)
  {

    LOBYTE(v3) = [(CKChatItem *)self replyIsFromMe];
  }

  return v3;
}

- (BOOL)itemIsReplyContextPreview
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(CKChatItem *)self isReplyContextPreview];
}

- (BOOL)itemIsThreadOriginator
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 itemIsThreadOriginator];

  return v3;
}

- (BOOL)itemIsSameThreadAsOtherItem:(id)a3
{
  v4 = a3;
  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 threadIdentifier];
  v7 = [v4 IMChatItem];

  v8 = [v7 threadIdentifier];
  v9 = [v6 isEqualToString:v8];

  return v9;
}

- (int64_t)chatItemReplyLineContiguousTypeForChatStyle:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [(CKChatItem *)self contiguousType];
  v5 = 1;
  if (v4 == 1)
  {
    v5 = v3 == 45;
  }

  if (v4 == 2)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end