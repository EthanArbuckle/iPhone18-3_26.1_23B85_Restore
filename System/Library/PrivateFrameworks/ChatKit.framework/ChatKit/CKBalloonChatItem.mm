@interface CKBalloonChatItem
- (BOOL)needsAdjustedTextAlignmentInsets;
- (BOOL)needsPreservedAspectRatio;
- (BOOL)shouldCacheSize;
- (CGSize)balloonSizeAtMaxWidth;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
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
    v5 = [(CKBalloonChatItem *)self sender];
    v6 = [(CKEntity *)v4 initWithIMHandle:v5];

    v7 = self->_entity;
    self->_entity = v6;

    entity = self->_entity;
  }

  return [(CKEntity *)entity cnContact];
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
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
  v11 = [(CKBalloonChatItem *)self balloonViewClass];
  if (v11 == objc_opt_class())
  {
    v13 = 0;
  }

  else
  {
    v12 = [(CKBalloonChatItem *)self balloonViewClass];
    v13 = v12 != objc_opt_class();
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
    if (a4)
    {
      v16 = v68;
      *&a4->top = v67;
      *&a4->bottom = v16;
    }

    [(CKBalloonChatItem *)self setTranslationSecondaryTextSize:v65];
    v18 = *(&v66 + 1);
    v17 = *&v66;
    goto LABEL_68;
  }

  v19 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [(CKChatItem *)self IMChatItem];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v20 chatInScrutinyMode];
  if (v21)
  {
    v22 = [v20 guid];
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
    if (!v20)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = 0;
    if (!v20)
    {
      goto LABEL_39;
    }
  }

  v25 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (([v25 isInternalInstall]& 1) == 0)
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
        v28 = [v20 guid];
        v29 = [v20 isCorrupt];
        v30 = @"NO";
        if (v29)
        {
          v30 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "DEBUG: message %@ isCorrupt %@", buf, 0x16u);
      }
    }

    if (![v20 isCorrupt])
    {
      v58 = [v20 text];
      v25 = [v58 string];

      if ([v25 isEqualToString:@"internal_poison_hang"])
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

      if ([v25 isEqualToString:@"internal_poison_crash"])
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
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "We are corrupt already, not crashing", buf, 2u);
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
      [v31 sizeThatFits:&v64 translationSecondaryTextSize:buf tailInsets:a4 textAlignmentInsets:v69 isSingleLine:{width, height}];
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
        [(CKBalloonChatItem *)self setTextAlignmentInsetsAtMaxWidth:a4->top, a4->left, a4->bottom, a4->right];
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
      a4->top = v35;
      a4->left = v36;
      a4->bottom = v37;
      a4->right = v38;
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
    [v31 sizeThatFits:a4 textAlignmentInsets:buf tailInsets:{width, height}];
    v17 = v46;
    v41 = v47;
  }

  v18 = v41 - (*buf + *&buf[16]);
  if ([(CKBalloonChatItem *)self shouldCacheSize]&& (v17 != *v9 || v18 != v9[1]))
  {
    if (a4)
    {
      v53 = *&a4->bottom;
      v67 = *&a4->top;
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
    v54 = v21;
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
  v4 = [v3 timestampDateFormatter];

  v5 = [(CKBalloonChatItem *)self time];
  v6 = [v4 stringFromDate:v5];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 drawerTranscriptTextAttributes];

  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v8];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(CKBalloonChatItem *)self time];
        v12 = [(CKChatItem *)self IMChatItem];
        v13 = [v12 guid];
        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "loadTranscriptDrawerText: nil timestamp for time: %@, IMChatItem guid: %@", &v15, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldCacheSize
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = v2 != 0;

  return v3;
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  v5 = [(CKBalloonChatItem *)self balloonOrientation];
  v6 = [(CKBalloonChatItem *)self balloonShape];
  if ([(CKChatItem *)self hasTail])
  {
    v7 = [(CKBalloonChatItem *)self tailShape];
  }

  else
  {
    v7 = 0;
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
  v23 = [(CKBalloonChatItem *)self balloonCorners];
  [(CKBalloonChatItem *)self balloonCornerRadius];
  v25 = v24;
  v26 = [(CKBalloonChatItem *)self needsVibrantOuterStrokeOverBackground];
  v31 = [(CKChatItem *)self transcriptTraitCollection];
  v27 = [v31 userInterfaceStyle];
  v28 = [(CKChatItem *)self transcriptTraitCollection];
  v29 = CKBackgroundLevelForTraitCollection(v28);
  retstr->var0 = v6;
  retstr->var1 = v7;
  retstr->var2 = 0;
  retstr->var3 = v5;
  retstr->var4 = v23;
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
  retstr->var9 = v26;
  retstr->var10 = v27;
  retstr->var11 = v29;
  *&retstr->var12 = 0;
  retstr->var14 = 0;
  retstr->var15 = v7 != 0;
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
  v2 = [(CKBalloonChatItem *)self balloonViewClass];
  v3 = objc_opt_class();

  return [(objc_class *)v2 isSubclassOfClass:v3];
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