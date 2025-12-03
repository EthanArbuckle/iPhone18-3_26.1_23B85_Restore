@interface CKTranscriptPluginBreadcrumbChatItem
- (CGSize)iconSizePlusHorizontalPadding;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIImage)iconImage;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
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

  iMChatItem = [(CKChatItem *)self IMChatItem];
  if ([iMChatItem isFromMe])
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
  breadcrumbTranscriptTextAttributes = [v3 breadcrumbTranscriptTextAttributes];

  iMChatItem = [(CKChatItem *)self IMChatItem];
  statusText = [iMChatItem statusText];
  if (statusText)
  {
    statusString = statusText;
LABEL_4:
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:statusString attributes:breadcrumbTranscriptTextAttributes];
    goto LABEL_5;
  }

  dataSource = [iMChatItem dataSource];
  statusString = [dataSource statusString];

  if (statusString)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  [(CKTranscriptPluginBreadcrumbChatItem *)self iconSizePlusHorizontalPadding];
  v9 = v8;
  v25.receiver = self;
  v25.super_class = CKTranscriptPluginBreadcrumbChatItem;
  [(CKMultilineStampLabelChatItem *)&v25 loadSizeThatFits:insets textAlignmentInsets:width - v8, height];
  v11 = v10;
  v13 = v12;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRoundToScale();
  v16 = v15;

  if (insets)
  {
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v18 = insets->bottom - v16;
    if (userInterfaceLayoutDirection)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v9;
    }

    v20 = v19 + insets->left;
    if (userInterfaceLayoutDirection)
    {
      v21 = v9;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = insets->right + v21;
    insets->top = insets->top - v16;
    insets->left = v20;
    insets->bottom = v18;
    insets->right = v22;
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
      iMChatItem = [(CKChatItem *)self IMChatItem];
      dataSource = [iMChatItem dataSource];

      mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
      bundleID = [dataSource bundleID];
      v8 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:bundleID];

      __ck_breadcrumbImage = [v8 __ck_breadcrumbImage];
      v10 = self->_iconImage;
      self->_iconImage = __ck_breadcrumbImage;

      if (!self->_iconImage)
      {
        pluginPayload = [dataSource pluginPayload];
        payloadDictionary = [pluginPayload payloadDictionary];

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __49__CKTranscriptPluginBreadcrumbChatItem_iconImage__block_invoke;
        v17[3] = &unk_1E72F0CF8;
        v17[4] = self;
        v13 = [MEMORY[0x1E69A5AC0] __ck_appIconFromPayloadDictionary:payloadDictionary withCompletionBlock:v17];
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

    iconImage = [(CKTranscriptPluginBreadcrumbChatItem *)self iconImage];
    v9 = iconImage;
    if (iconImage)
    {
      [iconImage size];
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
  iMChatItem = [(CKChatItem *)self IMChatItem];
  optionFlags = [iMChatItem optionFlags];

  return optionFlags;
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

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v45 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [itemsCopy objectAtIndex:index - 1];
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

  layoutType = [v11 layoutType];
  if (layoutType > 10)
  {
    if (layoutType <= 17)
    {
      if ((layoutType - 13) >= 3)
      {
        if ((layoutType - 11) < 2)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if ((layoutType - 23) < 2)
    {
      goto LABEL_37;
    }

    if (layoutType == 18)
    {
      v23 = +[CKUIBehavior sharedBehaviors];
      [v23 mediumTranscriptSpace];
      goto LABEL_29;
    }

    if (layoutType == 19)
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

  if (layoutType > 6)
  {
    if (layoutType == 7)
    {
      v21 = v18;
      goto LABEL_37;
    }

    if (layoutType == 8)
    {
      goto LABEL_37;
    }

    if (layoutType != 10)
    {
      goto LABEL_32;
    }

    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 balloonBalloonTranscriptSpace:{objc_msgSend(v11, "contiguousType")}];
    goto LABEL_29;
  }

  if ((layoutType - 2) < 2)
  {
    goto LABEL_37;
  }

  if ((layoutType - 5) >= 2)
  {
    if (layoutType == 1)
    {
LABEL_24:
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_37;
      }

      iMChatItem = [(CKChatItem *)self IMChatItem];
      dataSource = [iMChatItem dataSource];
      messageGUID = [dataSource messageGUID];
      iMChatItem2 = [v11 IMChatItem];
      dataSource2 = [iMChatItem2 dataSource];
      messageGUID2 = [dataSource2 messageGUID];
      v31 = [messageGUID isEqualToString:messageGUID2];

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