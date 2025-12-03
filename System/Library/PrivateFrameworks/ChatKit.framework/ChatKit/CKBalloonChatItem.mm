@interface CKBalloonChatItem
- (BOOL)needsAdjustedTextAlignmentInsets;
- (BOOL)needsPreservedAspectRatio;
- (BOOL)shouldCacheSize;
- (CGSize)balloonSizeAtMaxWidth;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)translationSecondaryTextSize;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (IMColorComponents)dynamicFillColor;
- (IMColorComponents)strokeColor;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)tailInsetsAtMaxWidth;
- (UIEdgeInsets)textAlignmentInsetsAtMaxWidth;
- (UIEdgeInsets)transcriptTextAlignmentInsets;
- (char)transcriptOrientation;
- (double)balloonCornerRadius;
- (id)cellIdentifier;
- (id)contact;
- (id)description;
- (id)loadTranscriptDrawerText;
- (unint64_t)layoutType;
@end

@implementation CKBalloonChatItem

- (char)transcriptOrientation
{
  if ([(CKBalloonChatItem *)self isFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)layoutType
{
  if ([(CKChatItem *)self itemIsReplyContextPreview])
  {
    return 14;
  }

  if ([(CKChatItem *)self itemIsThreadOriginator])
  {
    return 15;
  }

  if ([(CKChatItem *)self itemIsReply])
  {
    return 13;
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CKBalloonChatItem;
  v4 = [(CKChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@ fromMe:%d balloonOrientation:%d]", v4, -[CKBalloonChatItem isFromMe](self, "isFromMe"), -[CKBalloonChatItem balloonOrientation](self, "balloonOrientation")];

  return v5;
}

- (UIEdgeInsets)transcriptTextAlignmentInsets
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

- (id)cellIdentifier
{
  v3 = NSStringFromClass([(CKBalloonChatItem *)self balloonViewClass]);
  if (![(CKBalloonChatItem *)self isFromMe])
  {
    v4 = [v3 stringByAppendingString:@"-left"];

    v3 = v4;
  }

  return v3;
}

- (id)contact
{
  entity = self->_entity;
  if (!entity)
  {
    v4 = [CKEntity alloc];
    sender = [(CKBalloonChatItem *)self sender];
    v6 = [(CKEntity *)v4 initWithIMHandle:sender];

    v7 = self->_entity;
    self->_entity = v6;

    entity = self->_entity;
  }

  return [(CKEntity *)entity cnContact];
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v72 = *MEMORY[0x1E69E9840];
  v8 = +[CKChatItemSizeCache sharedInstance];
  v9 = MEMORY[0x1E695F060];
  v62 = *(MEMORY[0x1E69DDCE0] + 16);
  v63 = *MEMORY[0x1E69DDCE0];
  v67 = *MEMORY[0x1E69DDCE0];
  v68 = v62;
  v65 = *MEMORY[0x1E695F060];
  v66 = v65;
  v61 = v65;
  v10 = +[CKUIBehavior sharedBehaviors];
  balloonViewClass = [(CKBalloonChatItem *)self balloonViewClass];
  if (balloonViewClass == objc_opt_class())
  {
    v13 = 0;
  }

  else
  {
    balloonViewClass2 = [(CKBalloonChatItem *)self balloonViewClass];
    v13 = balloonViewClass2 != objc_opt_class();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(CKBalloonChatItem *)self balloonViewClass]!= 0 && !v13)
  {
    [v10 previewBalloonMaxWidthForBalloonMaxWidth:width];
    width = v14;
  }

  if (-[CKBalloonChatItem failed](self, "failed") && [v10 shouldAdjustWidthForSendFailure])
  {
    +[(CKTranscriptMessageCell *)CKTranscriptBalloonCell];
    width = width - v15;
  }

  if (-[CKBalloonChatItem shouldCacheSize](self, "shouldCacheSize") && [v8 cachedSizeForChatItem:self size:&v66 translationSecondaryTextSize:&v65 textAlignmentInsets:&v67 fittingSize:{width, height}])
  {
    if (insets)
    {
      v16 = v68;
      *&insets->top = v67;
      *&insets->bottom = v16;
    }

    [(CKBalloonChatItem *)self setTranslationSecondaryTextSize:v65];
    v18 = *(&v66 + 1);
    v17 = *&v66;
    goto LABEL_68;
  }

  iMChatItem = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    iMChatItem2 = 0;
  }

  chatInScrutinyMode = [iMChatItem2 chatInScrutinyMode];
  if (chatInScrutinyMode)
  {
    guid = [iMChatItem2 guid];
    v23 = IMAssociatedMessageDecodeGUID();

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Attempting to size %@", buf, 0xCu);
      }
    }

    [MEMORY[0x1E69A5AE0] storeGUIDInAttemptingListInScrutinyMode:v23];
    if (!iMChatItem2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = 0;
    if (!iMChatItem2)
    {
      goto LABEL_39;
    }
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (([mEMORY[0x1E69A60F0] isInternalInstall]& 1) == 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  v26 = IMGetCachedDomainBoolForKey();

  if (v26)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        guid2 = [iMChatItem2 guid];
        isCorrupt = [iMChatItem2 isCorrupt];
        v30 = @"NO";
        if (isCorrupt)
        {
          v30 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = guid2;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "DEBUG: message %@ isCorrupt %@", buf, 0x16u);
      }
    }

    if (![iMChatItem2 isCorrupt])
    {
      text = [iMChatItem2 text];
      mEMORY[0x1E69A60F0] = [text string];

      if ([mEMORY[0x1E69A60F0] isEqualToString:@"internal_poison_hang"])
      {
        if (IMOSLoggingEnabled())
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v59, OS_LOG_TYPE_INFO, "INTERNAL POISON PILL TEST DETECTED - Spinning", buf, 2u);
          }
        }

        while (1)
        {
          sleep(1u);
        }
      }

      if ([mEMORY[0x1E69A60F0] isEqualToString:@"internal_poison_crash"])
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          [CKBalloonChatItem loadSizeThatFits:v60 textAlignmentInsets:?];
        }

        abort();
      }

      goto LABEL_38;
    }

    if (IMOSLoggingEnabled())
    {
      mEMORY[0x1E69A60F0] = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(mEMORY[0x1E69A60F0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, mEMORY[0x1E69A60F0], OS_LOG_TYPE_INFO, "We are corrupt already, not crashing", buf, 2u);
      }

      goto LABEL_38;
    }
  }

LABEL_39:
  v31 = CKBalloonViewForClass([(CKBalloonChatItem *)self balloonViewClass]);
  [(CKBalloonChatItem *)self configureBalloonView:v31];
  [v31 setCanUseOpaqueMask:{objc_msgSend(v10, "transcriptCanUseOpaqueMask")}];
  [v31 prepareForDisplayIfNeeded];
  [v31 frame];
  [v31 setFrame:?];
  v64 = v61;
  *buf = v63;
  *&buf[16] = v62;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_isMultilineText || ([(CKBalloonChatItem *)self balloonSizeAtMaxWidth], v32 <= 0.0) || ([(CKBalloonChatItem *)self balloonSizeAtMaxWidth], v33 <= 0.0) || ([(CKBalloonChatItem *)self balloonSizeAtMaxWidth], v34 >= width))
    {
      v69[0] = 0;
      [v31 sizeThatFits:&v64 translationSecondaryTextSize:buf tailInsets:insets textAlignmentInsets:v69 isSingleLine:{width, height}];
      v17 = v48;
      v41 = v49;
      if (v69[0])
      {
        v50 = *v9;
        v51 = v9[1];
        v52 = *&v64 != *v9;
        if (*(&v64 + 1) != v51)
        {
          v52 = 1;
        }

        self->_isMultilineText = v52;
        [(CKBalloonChatItem *)self setBalloonSizeAtMaxWidth:v48, v49, v50, v51];
        [(CKBalloonChatItem *)self setTextAlignmentInsetsAtMaxWidth:insets->top, insets->left, insets->bottom, insets->right];
        [(CKBalloonChatItem *)self setTailInsetsAtMaxWidth:*buf, *&buf[8], *&buf[16]];
      }

      else
      {
        self->_isMultilineText = 1;
      }

      [(CKBalloonChatItem *)self setTranslationSecondaryTextSize:v64];
    }

    else
    {
      [(CKBalloonChatItem *)self textAlignmentInsetsAtMaxWidth];
      insets->top = v35;
      insets->left = v36;
      insets->bottom = v37;
      insets->right = v38;
      [(CKBalloonChatItem *)self balloonSizeAtMaxWidth];
      v17 = v39;
      v41 = v40;
      [(CKBalloonChatItem *)self tailInsetsAtMaxWidth];
      *buf = v42;
      *&buf[8] = v43;
      *&buf[16] = v44;
      *&buf[24] = v45;
    }
  }

  else
  {
    [v31 sizeThatFits:insets textAlignmentInsets:buf tailInsets:{width, height}];
    v17 = v46;
    v41 = v47;
  }

  v18 = v41 - (*buf + *&buf[16]);
  if ([(CKBalloonChatItem *)self shouldCacheSize]&& (v17 != *v9 || v18 != v9[1]))
  {
    if (insets)
    {
      v53 = *&insets->bottom;
      v67 = *&insets->top;
      v68 = v53;
    }

    else
    {
      v67 = v63;
      v68 = v62;
    }

    [v8 setCachedSizeForChatItem:self size:v17 translationSecondaryTextSize:v18 textAlignmentInsets:v64 fittingSize:{v67, v68, *&width, *&height}];
  }

  CKBalloonViewReuse(v31);
  if (v23)
  {
    v54 = chatInScrutinyMode;
  }

  else
  {
    v54 = 0;
  }

  if (v54 == 1)
  {
    [MEMORY[0x1E69A5AE0] removeGUIDInAttemptingListInScrutinyMode:v23];
    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *v69 = 138412290;
        v70 = v23;
        _os_log_impl(&dword_19020E000, v55, OS_LOG_TYPE_INFO, "Marked %@ as safe", v69, 0xCu);
      }
    }
  }

LABEL_68:
  v56 = v17;
  v57 = v18;
  result.height = v57;
  result.width = v56;
  return result;
}

- (id)loadTranscriptDrawerText
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  timestampDateFormatter = [v3 timestampDateFormatter];

  time = [(CKBalloonChatItem *)self time];
  v6 = [timestampDateFormatter stringFromDate:time];

  v7 = +[CKUIBehavior sharedBehaviors];
  drawerTranscriptTextAttributes = [v7 drawerTranscriptTextAttributes];

  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:drawerTranscriptTextAttributes];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        time2 = [(CKBalloonChatItem *)self time];
        iMChatItem = [(CKChatItem *)self IMChatItem];
        guid = [iMChatItem guid];
        v15 = 138412546;
        v16 = time2;
        v17 = 2112;
        v18 = guid;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "loadTranscriptDrawerText: nil timestamp for time: %@, IMChatItem guid: %@", &v15, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldCacheSize
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  v3 = iMChatItem != 0;

  return v3;
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  balloonOrientation = [(CKBalloonChatItem *)self balloonOrientation];
  balloonShape = [(CKBalloonChatItem *)self balloonShape];
  if ([(CKChatItem *)self hasTail])
  {
    tailShape = [(CKBalloonChatItem *)self tailShape];
  }

  else
  {
    tailShape = 0;
  }

  [(CKBalloonChatItem *)self dynamicFillColor];
  v32 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CKBalloonChatItem *)self strokeColor];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  balloonCorners = [(CKBalloonChatItem *)self balloonCorners];
  [(CKBalloonChatItem *)self balloonCornerRadius];
  v25 = v24;
  needsVibrantOuterStrokeOverBackground = [(CKBalloonChatItem *)self needsVibrantOuterStrokeOverBackground];
  transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
  userInterfaceStyle = [transcriptTraitCollection userInterfaceStyle];
  transcriptTraitCollection2 = [(CKChatItem *)self transcriptTraitCollection];
  v29 = CKBackgroundLevelForTraitCollection(transcriptTraitCollection2);
  retstr->var0 = balloonShape;
  retstr->var1 = tailShape;
  retstr->var2 = 0;
  retstr->var3 = balloonOrientation;
  retstr->var4 = balloonCorners;
  retstr->var5 = v25;
  retstr->var6 = -2;
  retstr->var7.red = v32;
  retstr->var7.green = v10;
  retstr->var7.blue = v12;
  retstr->var7.alpha = v14;
  retstr->var8.red = v16;
  retstr->var8.green = v18;
  retstr->var8.blue = v20;
  retstr->var8.alpha = v22;
  retstr->var9 = needsVibrantOuterStrokeOverBackground;
  retstr->var10 = userInterfaceStyle;
  retstr->var11 = v29;
  *&retstr->var12 = 0;
  retstr->var14 = 0;
  retstr->var15 = tailShape != 0;
  retstr->var16 = 0;

  return result;
}

- (IMColorComponents)dynamicFillColor
{
  v2 = *MEMORY[0x1E69A6E08];
  v3 = *(MEMORY[0x1E69A6E08] + 8);
  v4 = *(MEMORY[0x1E69A6E08] + 16);
  v5 = *(MEMORY[0x1E69A6E08] + 24);
  result.alpha = v5;
  result.blue = v4;
  result.green = v3;
  result.red = v2;
  return result;
}

- (IMColorComponents)strokeColor
{
  v2 = *MEMORY[0x1E69A6E08];
  v3 = *(MEMORY[0x1E69A6E08] + 8);
  v4 = *(MEMORY[0x1E69A6E08] + 16);
  v5 = *(MEMORY[0x1E69A6E08] + 24);
  result.alpha = v5;
  result.blue = v4;
  result.green = v3;
  result.red = v2;
  return result;
}

- (double)balloonCornerRadius
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonCornerRadius];
  v4 = v3;

  return v4;
}

- (BOOL)needsPreservedAspectRatio
{
  balloonViewClass = [(CKBalloonChatItem *)self balloonViewClass];
  v3 = objc_opt_class();

  return [(objc_class *)balloonViewClass isSubclassOfClass:v3];
}

- (BOOL)needsAdjustedTextAlignmentInsets
{
  v3 = objc_opt_class();

  return [(CKBalloonChatItem *)self isMemberOfClass:v3];
}

- (CGSize)balloonSizeAtMaxWidth
{
  width = self->_balloonSizeAtMaxWidth.width;
  height = self->_balloonSizeAtMaxWidth.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)translationSecondaryTextSize
{
  width = self->_translationSecondaryTextSize.width;
  height = self->_translationSecondaryTextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)textAlignmentInsetsAtMaxWidth
{
  top = self->_textAlignmentInsetsAtMaxWidth.top;
  left = self->_textAlignmentInsetsAtMaxWidth.left;
  bottom = self->_textAlignmentInsetsAtMaxWidth.bottom;
  right = self->_textAlignmentInsetsAtMaxWidth.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)tailInsetsAtMaxWidth
{
  top = self->_tailInsetsAtMaxWidth.top;
  left = self->_tailInsetsAtMaxWidth.left;
  bottom = self->_tailInsetsAtMaxWidth.bottom;
  right = self->_tailInsetsAtMaxWidth.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)loadSizeThatFits:(NSObject *)a1 textAlignmentInsets:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19020E000, a1, OS_LOG_TYPE_INFO, "INTERNAL POISON PILL TEST DETECTED - Crashing", v2, 2u);
  }
}

@end