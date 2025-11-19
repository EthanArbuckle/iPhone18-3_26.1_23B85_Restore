@interface CKTranscriptPluginBreadcrumbChatItem
- (CGSize)iconSizePlusHorizontalPadding;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIImage)iconImage;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
- (unint64_t)_breadcrumbOptionFlags;
- (unint64_t)layoutType;
@end

@implementation CKTranscriptPluginBreadcrumbChatItem

- (char)transcriptOrientation
{
  if ([(CKTranscriptPluginBreadcrumbChatItem *)self _wantsCenteredOrientation])
  {
    return 1;
  }

  v4 = [(CKChatItem *)self IMChatItem];
  if ([v4 isFromMe])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 breadcrumbTranscriptTextAttributes];

  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 statusText];
  if (v6)
  {
    v7 = v6;
LABEL_4:
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v4];
    goto LABEL_5;
  }

  v8 = [v5 dataSource];
  v7 = [v8 statusString];

  if (v7)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  [(CKTranscriptPluginBreadcrumbChatItem *)self iconSizePlusHorizontalPadding];
  v9 = v8;
  v25.receiver = self;
  v25.super_class = CKTranscriptPluginBreadcrumbChatItem;
  [(CKMultilineStampLabelChatItem *)&v25 loadSizeThatFits:a4 textAlignmentInsets:width - v8, height];
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 scale];
  UIRoundToScale();
  v16 = v15;

  if (a4)
  {
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v17 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v18 = a4->bottom - v16;
    if (v17)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v9;
    }

    v20 = v19 + a4->left;
    if (v17)
    {
      v21 = v9;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = a4->right + v21;
    a4->top = a4->top - v16;
    a4->left = v20;
    a4->bottom = v18;
    a4->right = v22;
  }

  v23 = v9 + v11;
  v24 = v13;
  result.height = v24;
  result.width = v23;
  return result;
}

- (UIImage)iconImage
{
  if ([(CKTranscriptPluginBreadcrumbChatItem *)self _wantsIconImage])
  {
    iconImage = self->_iconImage;
    if (!iconImage)
    {
      v4 = [(CKChatItem *)self IMChatItem];
      v5 = [v4 dataSource];

      v6 = [MEMORY[0x1E69A5AD0] sharedInstance];
      v7 = [v5 bundleID];
      v8 = [v6 balloonPluginForBundleID:v7];

      v9 = [v8 __ck_breadcrumbImage];
      v10 = self->_iconImage;
      self->_iconImage = v9;

      if (!self->_iconImage)
      {
        v11 = [v5 pluginPayload];
        v12 = [v11 payloadDictionary];

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __49__CKTranscriptPluginBreadcrumbChatItem_iconImage__block_invoke;
        v17[3] = &unk_1E72F0CF8;
        v17[4] = self;
        v13 = [MEMORY[0x1E69A5AC0] __ck_appIconFromPayloadDictionary:v12 withCompletionBlock:v17];
        v14 = self->_iconImage;
        self->_iconImage = v13;
      }

      iconImage = self->_iconImage;
    }

    v15 = iconImage;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __49__CKTranscriptPluginBreadcrumbChatItem_iconImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__CKTranscriptPluginBreadcrumbChatItem_iconImage__block_invoke_2;
    v5[3] = &unk_1E72EB8D0;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (CGSize)iconSizePlusHorizontalPadding
{
  if ([(CKTranscriptPluginBreadcrumbChatItem *)self _wantsIconImage])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 transcriptCustomStatusImageDefaultSize];
    v5 = v4;
    v7 = v6;

    v8 = [(CKTranscriptPluginBreadcrumbChatItem *)self iconImage];
    v9 = v8;
    if (v8)
    {
      [v8 size];
      v5 = v10;
      v7 = v11;
    }

    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 transcriptCustomStatusImagePadding];
    v14 = v5 + v13;
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v15 = v14;
  v16 = v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (unint64_t)_breadcrumbOptionFlags
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 optionFlags];

  return v3;
}

- (unint64_t)layoutType
{
  if ([(CKChatItem *)self itemIsReply])
  {
    return 13;
  }

  else
  {
    return 9;
  }
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v10 = a5;
  v39 = a6;
  if (a4 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 objectAtIndex:a4 - 1];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 smallTranscriptSpace];
  v15 = v14;

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 mediumTranscriptSpace];
  v18 = v17;

  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 largeTranscriptSpace];
  v21 = v20;

  v22 = [v11 layoutType];
  if (v22 > 10)
  {
    if (v22 <= 17)
    {
      if ((v22 - 13) >= 3)
      {
        if ((v22 - 11) < 2)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if ((v22 - 23) < 2)
    {
      goto LABEL_37;
    }

    if (v22 == 18)
    {
      v23 = +[CKUIBehavior sharedBehaviors];
      [v23 mediumTranscriptSpace];
      goto LABEL_29;
    }

    if (v22 == 19)
    {
      v23 = +[CKUIBehavior sharedBehaviors];
      [v23 smallTranscriptSpace];
LABEL_29:
      v21 = v24;
      goto LABEL_30;
    }

LABEL_32:
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = objc_opt_class();
        *buf = 138412546;
        v42 = v34;
        v43 = 2112;
        v44 = objc_opt_class();
        v35 = v44;
        _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", buf, 0x16u);
      }
    }

    v21 = v15;
    goto LABEL_37;
  }

  if (v22 > 6)
  {
    if (v22 == 7)
    {
      v21 = v18;
      goto LABEL_37;
    }

    if (v22 == 8)
    {
      goto LABEL_37;
    }

    if (v22 != 10)
    {
      goto LABEL_32;
    }

    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 balloonBalloonTranscriptSpace:{objc_msgSend(v11, "contiguousType")}];
    goto LABEL_29;
  }

  if ((v22 - 2) < 2)
  {
    goto LABEL_37;
  }

  if ((v22 - 5) >= 2)
  {
    if (v22 == 1)
    {
LABEL_24:
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_37;
      }

      v25 = [(CKChatItem *)self IMChatItem];
      v26 = [v25 dataSource];
      v27 = [v26 messageGUID];
      v28 = [v11 IMChatItem];
      v29 = [v28 dataSource];
      v30 = [v29 messageGUID];
      v31 = [v27 isEqualToString:v30];

      if (!v31)
      {
        goto LABEL_37;
      }

      v21 = v15;
      if (![v11 hasTail])
      {
        goto LABEL_37;
      }

      v23 = +[CKUIBehavior sharedBehaviors];
      [v23 balloonMaskTailSizeForTailShape:1];
      v21 = v15 + v32;
LABEL_30:

      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if ([(CKTranscriptPluginBreadcrumbChatItem *)self transcriptOrientation]!= 1)
  {
    v21 = v15;
  }

LABEL_37:
  v36 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v11 topSpacing:v21 bottomSpacing:0.0];

  return v36;
}

@end