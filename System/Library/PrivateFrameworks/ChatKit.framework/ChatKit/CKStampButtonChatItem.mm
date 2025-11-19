@interface CKStampButtonChatItem
- (BOOL)wantsGUIDAppended;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
@end

@implementation CKStampButtonChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 stampTranscriptInsets];
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

- (BOOL)wantsGUIDAppended
{
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = IMGetDomainBoolForKey();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    a4->top = v9;
    a4->left = v10;
    a4->bottom = v11;
    a4->right = v12;
  }

  v13 = +[CKChatItemSizeCache sharedInstance];
  v30 = *MEMORY[0x1E695F060];
  if ([v13 cachedSizeForChatItem:self size:&v30 textAlignmentInsets:0 fittingSize:{width, height}])
  {
    v15 = *(&v30 + 1);
    v14 = *&v30;
  }

  else
  {
    [(CKStampButtonChatItem *)self contentInsets];
    v18 = width - (v16 + v17);
    v21 = height - (v19 + v20);
    v22 = [(CKChatItem *)self transcriptText];
    [v22 boundingRectWithSize:1 options:0 context:{v18, v21}];
    v24 = v23;
    v26 = v25;
    if (CKMainScreenScale_once_65 != -1)
    {
      [CKStampButtonChatItem loadSizeThatFits:textAlignmentInsets:];
    }

    v27 = *&CKMainScreenScale_sMainScreenScale_65;
    if (*&CKMainScreenScale_sMainScreenScale_65 == 0.0)
    {
      v27 = 1.0;
    }

    v14 = ceil(v24 * v27) / v27;
    v15 = ceil(v26 * v27) / v27;
    [v13 setCachedSizeForChatItem:self size:v14 textAlignmentInsets:v15 fittingSize:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), width, height}];
  }

  v28 = v14;
  v29 = v15;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a4 - 1;
  if (a4 >= 1 && ([v12 objectAtIndex:v14], v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) != 0))
  {
    v17 = [v15 layoutType];
    if (v17 <= 0x18)
    {
      if (((1 << v17) & 0x18C9B6E) != 0)
      {
        v18 = +[CKUIBehavior sharedBehaviors];
        goto LABEL_6;
      }

      if (v17 == 10)
      {
        v18 = +[CKUIBehavior sharedBehaviors];
        [v18 balloonBalloonTranscriptSpace:{objc_msgSend(v16, "contiguousType")}];
        goto LABEL_7;
      }

      if (v17 == 13)
      {
        v25 = [CKChatItemLayoutUtilities prevMessageIsReplyForIndex:a4 allDatasourceItems:v12];
        v26 = +[CKUIBehavior sharedBehaviors];
        v18 = v26;
        if (v25)
        {
          [v26 extraLargeTranscriptSpace];
          goto LABEL_7;
        }

LABEL_6:
        [v18 mediumTranscriptSpace];
LABEL_7:
        v20 = v19;

        goto LABEL_9;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        *v32 = 138412546;
        *&v32[4] = v28;
        *&v32[12] = 2112;
        *&v32[14] = objc_opt_class();
        v29 = *&v32[14];
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", v32, 0x16u);
      }
    }

    v30 = [CKUIBehavior sharedBehaviors:*v32];
    [v30 smallTranscriptSpace];
    v20 = v31;
  }

  else
  {
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 topTranscriptSpace];
    v20 = v22;

    v16 = 0;
  }

LABEL_9:
  v23 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v16 topSpacing:v20 bottomSpacing:0.0];

  return v23;
}

@end