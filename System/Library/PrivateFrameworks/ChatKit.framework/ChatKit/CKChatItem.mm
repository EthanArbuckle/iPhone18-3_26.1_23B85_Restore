@interface CKChatItem
+ (id)chatItemWithIMChatItem:(id)item balloonMaxWidth:(double)width;
+ (id)chatItemWithIMChatItem:(id)item balloonMaxWidth:(double)width fullMaxWidth:(double)maxWidth transcriptTraitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance overlayLayout:(BOOL)layout;
+ (id)chatItemWithNotification:(id)notification balloonMaxWidth:(double)width fullMaxWidth:(double)maxWidth;
+ (void)unloadSizesOfChatItems:(id)items;
- (BOOL)_associatedChatItemIsReaction:(id)reaction;
- (BOOL)canDelete;
- (BOOL)canEditMessageText;
- (BOOL)canRetract;
- (BOOL)invalidateContiguousTypeOverride;
- (BOOL)isCommSafetySensitive;
- (BOOL)isCommSafetySensitiveNotViewable;
- (BOOL)isCommSafetySensitiveViewable;
- (BOOL)isEditedMessageHistory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (BOOL)isHighlighted;
- (BOOL)itemIsFromMe;
- (BOOL)itemIsReply;
- (BOOL)itemIsReplyContextPreview;
- (BOOL)itemIsReplyFromMe;
- (BOOL)itemIsSameThreadAsOtherItem:(id)item;
- (BOOL)itemIsThreadOriginator;
- (BOOL)previousPhotoActionItemIsOccluded:(unint64_t)occluded allDatasourceItems:(id)items;
- (BOOL)previousReplyCount:(unint64_t)count allDatasourceItems:(id)items isOccludedForAssociatedSize:(CGSize)size outMaxY:(double *)y;
- (BOOL)previousStatusItemStatusOrientation:(id)orientation isOccludedByCurrentItem:(id)item;
- (BOOL)supportsCommunicationSafety;
- (BOOL)wantsMoreMenu;
- (BOOL)wasDetonated;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)size;
- (CKChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (CKChatItem)initWithNotification:(id)notification maxWidth:(double)width;
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
- (double)_additionalBottomPaddingForChatItem:(id)item datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items prevChatItem:(id)chatItem layoutEnvironment:(id)environment sizeOverride:(CGSize)override;
- (double)_additionalTopPaddingForChatItem:(id)item datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items prevChatItem:(id)chatItem layoutEnvironment:(id)environment sizeOverride:(CGSize)override;
- (id)layoutItemSpacingForReplyContextPreviewWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems;
- (id)layoutItemSpacingForReplyItemWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)layoutItemSpacingForReplyThreadOriginatorWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)layoutItemWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items;
- (id)syndicationBehaviorString;
- (int64_t)chatItemReplyLineContiguousTypeForChatStyle:(unsigned __int8)style;
- (int64_t)syndicationBehavior;
- (int64_t)syndicationType;
- (unsigned)attachmentContiguousType;
- (unsigned)contiguousType;
- (void)setMaxWidth:(double)width;
- (void)setTranscriptTraitCollection:(id)collection;
- (void)unloadTranscriptText;
- (void)updateWithBalloonMaxWidth:(double)width fullMaxWidth:(double)maxWidth transcriptTraitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance;
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
    supportsContiguousAttachments = [v4 supportsContiguousAttachments];

    if (supportsContiguousAttachments)
    {
      iMChatItem = [(CKChatItem *)self IMChatItem];
      attachmentContiguousType = [iMChatItem attachmentContiguousType];

      return attachmentContiguousType;
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)isFromMe
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];

  return isFromMe;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equalCopy))
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  contiguousType = [iMChatItem2 contiguousType];
  iMChatItem3 = [(CKChatItem *)self IMChatItem];
  attachmentContiguousType = [iMChatItem3 attachmentContiguousType];
  maxWidth = self->_maxWidth;
  v6 = NSStringFromCGSize(self->_size);
  v7 = NSStringFromUIEdgeInsets(self->_textAlignmentInsets);
  transcriptOrientation = [(CKChatItem *)self transcriptOrientation];
  if ([(CKChatItem *)self isHighlighted])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  syndicationBehaviorString = [(CKChatItem *)self syndicationBehaviorString];
  if ([(CKChatItem *)self wasDetonated])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v18 stringWithFormat:@"[%@ [IMChatItem: %@], contiguousType:%d, attachmentContiguousType:%d, maxWidth:%f, size:%@, textAlignmentInsets:%@, transcriptOrientation: %d, isHighlighted: %@, syndicationBehavior: %@, wasDetonated: %@]", v16, iMChatItem, contiguousType, attachmentContiguousType, *&maxWidth, v6, v7, transcriptOrientation, v9, syndicationBehaviorString, v11];

  return v12;
}

- (NSString)layoutGroupIdentifier
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  layoutGroupIdentifier = [iMChatItem layoutGroupIdentifier];

  return layoutGroupIdentifier;
}

- (unsigned)contiguousType
{
  if ([(CKChatItem *)self useContiguousTypeOverride])
  {

    return [(CKChatItem *)self contiguousTypeOverride];
  }

  else
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    contiguousType = [iMChatItem contiguousType];

    return contiguousType;
  }
}

- (NSAttributedString)transcriptText
{
  if (!self->_transcriptText)
  {
    loadTranscriptText = [(CKChatItem *)self loadTranscriptText];
    v4 = [loadTranscriptText copy];
    transcriptText = self->_transcriptText;
    self->_transcriptText = v4;

    if ([(CKChatItem *)self wantsGUIDAppended])
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
      [v6 appendAttributedString:self->_transcriptText];
      v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v6 appendAttributedString:v7];

      v25 = +[CKUIBehavior sharedBehaviors];
      transcriptRegularFontAttributes = [v25 transcriptRegularFontAttributes];
      v9 = +[CKUIBehavior sharedBehaviors];
      transcriptEmphasizedFontAttributes = [v9 transcriptEmphasizedFontAttributes];
      v11 = CKFrameworkBundle();
      v12 = [v11 localizedStringForKey:@"INTERNAL_GUID_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      iMChatItem = [(CKChatItem *)self IMChatItem];
      guid = [iMChatItem guid];
      v20 = CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, v12, v15, v16, v17, v18, v19, guid);
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
    loadAlternateTranscriptText = [(CKChatItem *)self loadAlternateTranscriptText];
    v4 = [loadAlternateTranscriptText copy];
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
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
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
            callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
            v14 = 138412290;
            v15 = callStackSymbols;
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
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
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
            callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
            v19 = 138412290;
            v20 = callStackSymbols;
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

+ (void)unloadSizesOfChatItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = +[CKChatItemSizeCache sharedInstance];
  [v4 invalidateCachedSizeForChatItems:itemsCopy reason:@"chatitem_unloadsizes"];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = itemsCopy;
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

- (void)setTranscriptTraitCollection:(id)collection
{
  v8[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
  objc_storeStrong(&self->_transcriptTraitCollection, collection);
  if ([(CKChatItem *)self shouldUnloadTranscriptTextForChangeFromTraitCollection:transcriptTraitCollection toTraitCollection:collectionCopy])
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
    loadTranscriptDrawerText = [(CKChatItem *)self loadTranscriptDrawerText];
    v5 = [loadTranscriptDrawerText copy];
    v6 = self->_transcriptDrawerText;
    self->_transcriptDrawerText = v5;

    transcriptDrawerText = self->_transcriptDrawerText;
  }

  return transcriptDrawerText;
}

- (BOOL)wantsMoreMenu
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
    scheduleState = [iMChatItem2 scheduleState];
    v7 = (scheduleState < 6) & (0x39u >> scheduleState);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)canDelete
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  canDelete = [iMChatItem canDelete];

  return canDelete;
}

- (BOOL)canRetract
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  canRetract = [iMChatItem canRetract];

  return canRetract;
}

- (BOOL)canEditMessageText
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  canEditMessageText = [iMChatItem canEditMessageText];

  if (canEditMessageText_onceToken != -1)
  {
    [CKChatItem canEditMessageText];
  }

  return (canEditMessageText_canAlwaysEditMessageText | canEditMessageText) & 1;
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isEditedMessageHistory = [iMChatItem isEditedMessageHistory];

  return isEditedMessageHistory;
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  supportsCommunicationSafety = [iMChatItem supportsCommunicationSafety];

  return supportsCommunicationSafety;
}

- (NSURL)commSafetyTransferLocalURL
{
  commSafetyFileTransfer = [(CKChatItem *)self commSafetyFileTransfer];
  localURL = [commSafetyFileTransfer localURL];

  return localURL;
}

- (NSString)commSafetyMessageGUID
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  guid = [iMChatItem guid];

  return guid;
}

- (IMFileTransfer)commSafetyFileTransfer
{
  if (-[CKChatItem supportsCommunicationSafety](self, "supportsCommunicationSafety") && (-[CKChatItem commSafetyTransferGUID](self, "commSafetyTransferGUID"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, v4))
  {
    mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
    commSafetyTransferGUID = [(CKChatItem *)self commSafetyTransferGUID];
    v7 = [mEMORY[0x1E69A5B80] transferForGUID:commSafetyTransferGUID];
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

  commSafetyFileTransfer = [(CKChatItem *)self commSafetyFileTransfer];
  v4 = [commSafetyFileTransfer commSafetySensitive] == 2;

  return v4;
}

- (BOOL)isCommSafetySensitiveNotViewable
{
  if (![(CKChatItem *)self supportsCommunicationSafety])
  {
    return 0;
  }

  commSafetyFileTransfer = [(CKChatItem *)self commSafetyFileTransfer];
  v4 = [commSafetyFileTransfer commSafetySensitive] == 1;

  return v4;
}

- (BOOL)isCommSafetySensitive
{
  supportsCommunicationSafety = [(CKChatItem *)self supportsCommunicationSafety];
  if (supportsCommunicationSafety)
  {
    if ([(CKChatItem *)self isCommSafetySensitiveViewable])
    {
      LOBYTE(supportsCommunicationSafety) = 1;
    }

    else
    {

      LOBYTE(supportsCommunicationSafety) = [(CKChatItem *)self isCommSafetySensitiveNotViewable];
    }
  }

  return supportsCommunicationSafety;
}

- (void)updateWithBalloonMaxWidth:(double)width fullMaxWidth:(double)maxWidth transcriptTraitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance
{
  collectionCopy = collection;
  [(CKChatItem *)self setTranscriptTraitCollection:collectionCopy];
  [objc_opt_class() resultingMaxWidthWithBalloonMaxWidth:collectionCopy fullMaxWidth:width transcriptTraitCollection:maxWidth transcriptBackgroundLuminance:luminance];
  v12 = v11;

  [(CKChatItem *)self setMaxWidth:v12];
}

- (BOOL)invalidateContiguousTypeOverride
{
  useContiguousTypeOverride = [(CKChatItem *)self useContiguousTypeOverride];
  [(CKChatItem *)self setUseContiguousTypeOverride:0];
  iMChatItem = [(CKChatItem *)self IMChatItem];
  self->_contiguousTypeOverride = [iMChatItem contiguousType];

  return useContiguousTypeOverride;
}

- (void)setMaxWidth:(double)width
{
  if (self->_maxWidth != width)
  {
    self->_maxWidth = width;
    [(CKChatItem *)self unloadSize];
  }
}

- (CKChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CKChatItem;
  v8 = [(CKChatItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imChatItem, item);
    v9->_maxWidth = width;
  }

  return v9;
}

- (CKChatItem)initWithNotification:(id)notification maxWidth:(double)width
{
  notificationCopy = notification;
  v11.receiver = self;
  v11.super_class = CKChatItem;
  v8 = [(CKChatItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notification, notification);
    v9->_maxWidth = width;
  }

  return v9;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  if (insets)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v4;
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)syndicationBehavior
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  syndicationBehavior = [iMChatItem syndicationBehavior];

  return syndicationBehavior;
}

- (BOOL)isHighlighted
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isHighlighted = [iMChatItem isHighlighted];

  return isHighlighted;
}

- (int64_t)syndicationType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  syndicationType = [iMChatItem syndicationType];

  return syndicationType;
}

- (BOOL)wasDetonated
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  wasDetonated = [iMChatItem wasDetonated];

  return wasDetonated;
}

+ (id)chatItemWithIMChatItem:(id)item balloonMaxWidth:(double)width
{
  itemCopy = item;
  v6 = [objc_alloc(objc_msgSend(itemCopy "__ck_chatItemClass"))];

  return v6;
}

+ (id)chatItemWithIMChatItem:(id)item balloonMaxWidth:(double)width fullMaxWidth:(double)maxWidth transcriptTraitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance overlayLayout:(BOOL)layout
{
  layoutCopy = layout;
  collectionCopy = collection;
  itemCopy = item;
  __ck_chatItemClass = [itemCopy __ck_chatItemClass];
  [__ck_chatItemClass resultingMaxWidthWithBalloonMaxWidth:collectionCopy fullMaxWidth:width transcriptTraitCollection:maxWidth transcriptBackgroundLuminance:luminance];
  v17 = [[__ck_chatItemClass alloc] initWithIMChatItem:itemCopy maxWidth:v16];

  [v17 setTranscriptTraitCollection:collectionCopy];
  [v17 setTranscriptBackgroundLuminance:luminance];
  [v17 setWantsOverlayLayout:layoutCopy];
  [v17 setOriginalMaxWidth:maxWidth];

  return v17;
}

+ (id)chatItemWithNotification:(id)notification balloonMaxWidth:(double)width fullMaxWidth:(double)maxWidth
{
  notificationCopy = notification;
  v7 = [(CKChatItem *)[CKTextMessagePartChatItem alloc] initWithNotification:notificationCopy maxWidth:width];

  return v7;
}

- (id)layoutItemWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  [(CKChatItem *)self size];
  v10 = v9;
  v12 = v11;
  [(CKChatItem *)self contentInsets];
  v14 = v13;
  v16 = v15;
  [environmentCopy marginInsets];
  v18 = v17;
  v20 = v19;
  messageEditingContext = [environmentCopy messageEditingContext];
  v22 = messageEditingContext;
  v23 = v12 + v14 + v18 + v16 + v20;
  if (messageEditingContext)
  {
    editedMessageGuid = [messageEditingContext editedMessageGuid];
    iMChatItem = [(CKChatItem *)self IMChatItem];
    guid = [iMChatItem guid];

    if ([guid isEqualToString:editedMessageGuid])
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
        selfCopy = self;
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

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  v48 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [itemsCopy objectAtIndex:index - 1];
  }

  if ([(CKChatItem *)self layoutType]== 13)
  {
    height = [(CKChatItem *)self layoutItemSpacingForReplyItemWithEnvironment:environmentCopy datasourceItemIndex:index allDatasourceItems:itemsCopy supplementryItems:supplementryItemsCopy sizeOverride:width, height];
LABEL_29:
    v27 = height;
    goto LABEL_30;
  }

  if ([(CKChatItem *)self layoutType]== 14)
  {
    height = [(CKChatItem *)self layoutItemSpacingForReplyContextPreviewWithEnvironment:environmentCopy datasourceItemIndex:index allDatasourceItems:itemsCopy supplementryItems:supplementryItemsCopy];
    goto LABEL_29;
  }

  if ([(CKChatItem *)self layoutType]== 15)
  {
    height = [(CKChatItem *)self layoutItemSpacingForReplyThreadOriginatorWithEnvironment:environmentCopy datasourceItemIndex:index allDatasourceItems:itemsCopy supplementryItems:supplementryItemsCopy sizeOverride:width, height];
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
        v28 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:index - 1 allDatasourceItems:itemsCopy];
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

    [(CKChatItem *)self _additionalTopPaddingForChatItem:self datasourceItemIndex:index allDatasourceItems:itemsCopy prevChatItem:v16 layoutEnvironment:environmentCopy sizeOverride:width, height];
    v30 = v29;
    [(CKChatItem *)self _additionalBottomPaddingForChatItem:self datasourceItemIndex:index allDatasourceItems:itemsCopy prevChatItem:v16 layoutEnvironment:environmentCopy sizeOverride:width, height];
    height = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v18 + v30 bottomSpacing:v31];
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

- (double)_additionalTopPaddingForChatItem:(id)item datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items prevChatItem:(id)chatItem layoutEnvironment:(id)environment sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  v112 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemsCopy = items;
  chatItemCopy = chatItem;
  v15 = 0.0;
  if ([(CKChatItem *)self layoutType]!= 19 && ([(CKChatItem *)self layoutType]!= 18 || [(CKChatItem *)self transcriptOrientation]))
  {
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      [itemCopy size];
      width = v17;
      height = v18;
    }

    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 balloonBalloonTranscriptSpace:0];
    v98 = v20;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [itemCopy visibleAssociatedMessageChatItemsIncludingTapbacks];
    }

    else
    {
      [itemCopy visibleAssociatedMessageChatItems];
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
      v89 = index - 2;
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
            [chatItemCopy size];
            v33 = v32;
            layoutType = [chatItemCopy layoutType];
            if (layoutType == 7)
            {
              transcriptOrientation = [chatItemCopy transcriptOrientation];
              v35 = +[CKUIBehavior sharedBehaviors];
              [v35 senderTranscriptInsets];
              v37 = v36;
              v38 = v29;
              v40 = v39;

              if (transcriptOrientation)
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
            transcriptOrientation2 = [chatItemCopy transcriptOrientation];
            transcriptOrientation3 = [itemCopy transcriptOrientation];
            [v24 size];
            v44 = [(CKChatItem *)self previousReplyCount:index allDatasourceItems:itemsCopy isOccludedForAssociatedSize:&v102 outMaxY:?];
            v45 = [(CKChatItem *)self previousPhotoActionItemIsOccluded:index allDatasourceItems:itemsCopy];
            v46 = [(CKChatItem *)self previousStatusItemStatusOrientation:chatItemCopy isOccludedByCurrentItem:itemCopy];
            if (v33 > v42 || (chatItemCopy ? (v47 = transcriptOrientation2 == transcriptOrientation3) : (v47 = 0), v47 ? (v48 = 0) : (v48 = 1), ((v48 | v45 | v46 | v44) & 1) != 0))
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

            v79 = [CKChatItemLayoutUtilities layoutTypeIsMessageBalloonForChatItem:chatItemCopy];
            v22 = v93;
            if (layoutType != 7 && index >= 2 && !v79)
            {
              v80 = [itemsCopy objectAtIndexedSubscript:v89];
              transcriptOrientation4 = [chatItemCopy transcriptOrientation];
              transcriptOrientation5 = [v80 transcriptOrientation];
              [v80 size];
              if (transcriptOrientation4 == transcriptOrientation5 && v83 > v42)
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

              itemIsFromMe = [itemCopy itemIsFromMe];
              [itemCopy stickerReactionInsets];
              [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v21 reactionIndex:itemIsFromMe parentIsFromMe:0.0 insets:0.0, width, height, v55, v56, v57, v58];
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

- (double)_additionalBottomPaddingForChatItem:(id)item datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items prevChatItem:(id)chatItem layoutEnvironment:(id)environment sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  v60 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!isExpressiveTextEnabled)
  {
    [itemCopy size];
    width = v17;
    [itemCopy size];
    goto LABEL_9;
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [itemCopy size];
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
  visibleAssociatedMessageChatItems = [itemCopy visibleAssociatedMessageChatItems];
  v22 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v55 objects:v59 count:16];
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
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
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

          itemIsFromMe = [itemCopy itemIsFromMe];
          [itemCopy stickerReactionInsets];
          [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v24 reactionIndex:itemIsFromMe parentIsFromMe:0.0 insets:0.0, width, height, v32, v33, v34, v35];
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

      v23 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v23);
  }

  else
  {
    v26 = 0.0;
  }

  return v26;
}

- (BOOL)_associatedChatItemIsReaction:(id)reaction
{
  reactionCopy = reaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isReaction = [reactionCopy isReaction];
  }

  else
  {
    isReaction = 0;
  }

  return isReaction;
}

- (id)layoutItemSpacingForReplyItemWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  v55 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if ([(CKChatItem *)self layoutType]== 13)
  {
    if (index < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [itemsCopy objectAtIndex:index - 1];
    }

    if ([v16 itemIsReplyCount])
    {
      itemIsFromMe = [(CKChatItem *)self itemIsFromMe];
      if (itemIsFromMe != [v16 itemIsFromMe])
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
        [(CKChatItem *)self _additionalTopPaddingForChatItem:self datasourceItemIndex:index allDatasourceItems:itemsCopy prevChatItem:v16 layoutEnvironment:environmentCopy sizeOverride:width, height];
        v37 = v36;
        [(CKChatItem *)self _additionalBottomPaddingForChatItem:self datasourceItemIndex:index allDatasourceItems:itemsCopy prevChatItem:v16 layoutEnvironment:environmentCopy sizeOverride:width, height];
        v18 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v32 + v37 bottomSpacing:v38];

        goto LABEL_34;
      }

LABEL_30:
      [v21 balloonBalloonTranscriptSpace:{objc_msgSend(v16, "contiguousType")}];
      goto LABEL_31;
    }

    layoutType = [v16 layoutType];
    if (layoutType > 6)
    {
      if (layoutType > 13)
      {
        if ((layoutType - 14) >= 2)
        {
          goto LABEL_38;
        }

        itemIsFromMe2 = [(CKChatItem *)self itemIsFromMe];
        itemIsFromMe3 = [v16 itemIsFromMe];
        v35 = +[CKUIBehavior sharedBehaviors];
        v21 = v35;
        if (((itemIsFromMe2 ^ itemIsFromMe3) & 1) == 0)
        {
          [v35 selfReplyTranscriptSpace];
          goto LABEL_31;
        }

LABEL_27:
        [v21 mediumTranscriptSpace];
        goto LABEL_31;
      }

      if (layoutType == 7)
      {
        v21 = +[CKUIBehavior sharedBehaviors];
        [v21 extraSmallTranscriptSpace];
        goto LABEL_31;
      }

      if (layoutType != 8)
      {
        if (layoutType == 13)
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
            layoutType2 = v44;
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

    else if ((layoutType - 2) >= 2)
    {
      if ((layoutType - 5) < 2)
      {
LABEL_16:
        v21 = +[CKUIBehavior sharedBehaviors];
        [v21 smallTranscriptSpace];
LABEL_31:
        v32 = v22;
        goto LABEL_32;
      }

      if (layoutType == 1)
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
      layoutType2 = [(CKChatItem *)self layoutType];
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s asked to generate spacing for non-reply type %lu", buf, 0x16u);
    }
  }

  v18 = 0;
LABEL_34:

  return v18;
}

- (id)layoutItemSpacingForReplyContextPreviewWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems
{
  v36 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if ([(CKChatItem *)self layoutType]== 14)
  {
    if (index < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = [itemsCopy objectAtIndex:index - 1];
    }

    layoutType = [v13 layoutType];
    if (layoutType <= 0x10)
    {
      if (((1 << layoutType) & 0x1206A) != 0)
      {
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 extraLargeTranscriptSpace];
LABEL_17:
        v19 = v18;

LABEL_18:
        v15 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v13 topSpacing:v19 bottomSpacing:0.0];

        goto LABEL_19;
      }

      if (((1 << layoutType) & 0x104) != 0)
      {
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 mediumTranscriptSpace];
        goto LABEL_17;
      }

      if (layoutType == 7)
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
        layoutType2 = v23;
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
      layoutType2 = [(CKChatItem *)self layoutType];
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s asked to generate spacing for non-reply context preview type %lu", &v28, 0x16u);
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)layoutItemSpacingForReplyThreadOriginatorWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  height = override.height;
  width = override.width;
  v45 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if ([(CKChatItem *)self layoutType]== 15)
  {
    if (index < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [itemsCopy objectAtIndex:index - 1];
    }

    layoutType = [v16 layoutType];
    if (layoutType > 6)
    {
      if (layoutType > 12)
      {
        if (layoutType == 13)
        {
          goto LABEL_23;
        }

        if (layoutType == 16)
        {
          v22 = +[CKUIBehavior sharedBehaviors];
LABEL_25:
          [v22 smallTranscriptSpace];
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      if (layoutType == 7)
      {
        v22 = +[CKUIBehavior sharedBehaviors];
        [v22 extraSmallTranscriptSpace];
        goto LABEL_29;
      }

      if (layoutType != 8)
      {
        goto LABEL_34;
      }
    }

    else if ((layoutType - 2) >= 2)
    {
      if ((layoutType - 5) < 2)
      {
        v20 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:index - 1 allDatasourceItems:itemsCopy];
        v21 = [CKChatItemLayoutUtilities nextMessageIsReplyForIndex:index allDatasourceItems:itemsCopy];
        v22 = +[CKUIBehavior sharedBehaviors];
        if (v20 || v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if (layoutType == 1)
      {
LABEL_23:
        if ([(CKChatItem *)self itemIsSameThreadAsOtherItem:v16])
        {
          v24 = [CKChatItemLayoutUtilities nextMessageIsReplyForIndex:index allDatasourceItems:itemsCopy];
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
          layoutType2 = v34;
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
    [(CKChatItem *)self _additionalTopPaddingForChatItem:self datasourceItemIndex:index allDatasourceItems:itemsCopy prevChatItem:v16 layoutEnvironment:environmentCopy sizeOverride:width, height];
    v27 = v26;
    [(CKChatItem *)self _additionalBottomPaddingForChatItem:self datasourceItemIndex:index allDatasourceItems:itemsCopy prevChatItem:v16 layoutEnvironment:environmentCopy sizeOverride:width, height];
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
      layoutType2 = [(CKChatItem *)self layoutType];
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKChatItem_Layout - %s asked to generate spacing for non-thread originator preview type %lu", buf, 0x16u);
    }
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (BOOL)previousReplyCount:(unint64_t)count allDatasourceItems:(id)items isOccludedForAssociatedSize:(CGSize)size outMaxY:(double *)y
{
  height = size.height;
  width = size.width;
  itemsCopy = items;
  itemIsReply = [(CKChatItem *)self itemIsReply];
  LOBYTE(self) = 0;
  if (itemIsReply && (count - 1) >= 1)
  {
    while (1)
    {
      v13 = [itemsCopy objectAtIndex:--count];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (count <= 1)
      {
        LOBYTE(self) = 0;
        goto LABEL_15;
      }
    }

    v14 = v13;
    replyCount = [v14 replyCount];
    [v14 size];
    v17 = v16;
    [v14 size];
    v19 = height <= v18 && width <= v17;
    LODWORD(self) = replyCount > 1 && v19;
    if (self == 1)
    {
      [v14 size];
      *y = v20;
    }
  }

LABEL_15:

  return self;
}

- (BOOL)previousStatusItemStatusOrientation:(id)orientation isOccludedByCurrentItem:(id)item
{
  orientationCopy = orientation;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = orientationCopy;
    transcriptOrientation = [itemCopy transcriptOrientation];
    transcriptOrientation2 = [v7 transcriptOrientation];
    statusAlignment = [v7 statusAlignment];

    v12 = transcriptOrientation == transcriptOrientation2 && transcriptOrientation != statusAlignment;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)previousPhotoActionItemIsOccluded:(unint64_t)occluded allDatasourceItems:(id)items
{
  selfCopy = self;
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];

  return isFromMe;
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  itemIsThreadOriginator = [iMChatItem itemIsThreadOriginator];

  return itemIsThreadOriginator;
}

- (BOOL)itemIsSameThreadAsOtherItem:(id)item
{
  itemCopy = item;
  iMChatItem = [(CKChatItem *)self IMChatItem];
  threadIdentifier = [iMChatItem threadIdentifier];
  iMChatItem2 = [itemCopy IMChatItem];

  threadIdentifier2 = [iMChatItem2 threadIdentifier];
  v9 = [threadIdentifier isEqualToString:threadIdentifier2];

  return v9;
}

- (int64_t)chatItemReplyLineContiguousTypeForChatStyle:(unsigned __int8)style
{
  styleCopy = style;
  contiguousType = [(CKChatItem *)self contiguousType];
  v5 = 1;
  if (contiguousType == 1)
  {
    v5 = styleCopy == 45;
  }

  if (contiguousType == 2)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end