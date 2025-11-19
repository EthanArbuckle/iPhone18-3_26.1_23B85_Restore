@interface CKMomentShareStatusChatItem
- (BOOL)wantsDrawerLayout;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
@end

@implementation CKMomentShareStatusChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 senderTranscriptInsets];
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

- (char)transcriptOrientation
{
  v2 = [(CKMomentShareStatusChatItem *)self _statusChatItem];
  v3 = [v2 isFromMe];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)wantsDrawerLayout
{
  v5.receiver = self;
  v5.super_class = CKMomentShareStatusChatItem;
  if ([(CKChatItem *)&v5 wantsDrawerLayout])
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    v3 = [v2 timestampsPushBalloons] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)loadTranscriptText
{
  v57[3] = *MEMORY[0x1E69E9840];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ATTRIBUTION_TEXT_PHOTOS_EXTENSION" value:&stru_1F04268F8 table:@"ChatKit"];

  v52 = [(CKMomentShareStatusChatItem *)self _statusChatItem];
  v5 = [v52 activityTitle];
  v6 = 0x1E69DC000uLL;
  v51 = v4;
  if (v5)
  {
    goto LABEL_11;
  }

  v7 = [v52 expirationDate];
  v8 = v7;
  if (_TitleForExpirationDate_predicate != -1)
  {
    [CKMomentShareStatusChatItem loadTranscriptText];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = [_TitleForExpirationDate_dateFormatter stringFromDate:v8];
  v10 = MEMORY[0x1E696AEC0];
  v11 = CKFrameworkBundle();
  [v11 localizedStringForKey:@"MOMENT_SHARE_EXPIRATION_DATE_PREFIX_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = v12 = v4;
  v14 = [v10 stringWithFormat:v13, v9];

  v4 = v12;
  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = [v15 userInterfaceLayoutDirection];

  if (v16 == 1)
  {
    v17 = @"\u200F";
  }

  else
  {
    v17 = @"\u200E";
  }

  v5 = [(__CFString *)v17 stringByAppendingString:v14];

  v6 = 0x1E69DC000;
LABEL_10:

  if (!v5)
  {
    v53 = v4;
    goto LABEL_15;
  }

LABEL_11:
  v18 = MEMORY[0x1E696AEC0];
  v19 = CKFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"MOMENT_SHARE_STATUS_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v21 = [v18 stringWithFormat:v20, v4, v5];

  v22 = [*(v6 + 1640) sharedApplication];
  v23 = [v22 userInterfaceLayoutDirection];

  if (v23 == 1)
  {
    v24 = @"\u200F";
  }

  else
  {
    v24 = @"\u200E";
  }

  v53 = [(__CFString *)v24 stringByAppendingString:v21];

LABEL_15:
  v25 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v26 = [v25 mutableCopy];

  [v26 setAlignment:{2 * (-[CKMomentShareStatusChatItem transcriptOrientation](self, "transcriptOrientation") != 0)}];
  [v26 setLineBreakMode:2];
  v27 = *MEMORY[0x1E69DB648];
  v56[0] = *MEMORY[0x1E69DB648];
  v28 = +[CKUIBehavior sharedBehaviors];
  v29 = [v28 transcriptRegularFont];
  v57[0] = v29;
  v30 = *MEMORY[0x1E69DB650];
  v56[1] = *MEMORY[0x1E69DB650];
  v31 = +[CKUIBehavior sharedBehaviors];
  v32 = [v31 theme];
  v33 = [v32 transcriptTextColor];
  v34 = *MEMORY[0x1E69DB688];
  v56[2] = *MEMORY[0x1E69DB688];
  v57[1] = v33;
  v57[2] = v26;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

  v36 = v53;
  v50 = v35;
  v37 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v53 attributes:v35];
  v38 = [v37 string];
  v39 = v51;
  v40 = [v38 rangeOfString:v51];
  v49 = v41;

  if (v40 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v54[0] = v27;
    v42 = +[CKUIBehavior sharedBehaviors];
    v43 = [v42 transcriptMessageStatusFont];
    v55[0] = v43;
    v54[1] = v30;
    v44 = +[CKUIBehavior sharedBehaviors];
    v45 = [v44 theme];
    v46 = [v45 transcriptTextColor];
    v54[2] = v34;
    v55[1] = v46;
    v55[2] = v26;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];

    v36 = v53;
    [v37 setAttributes:v47 range:{v40, v49}];

    v39 = v51;
  }

  return v37;
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

  v13 = [(CKChatItem *)self transcriptText];
  v14 = [(CKChatItem *)self transcriptTraitCollection];
  [v14 displayScale];
  [CKTranscriptMomentShareLabelCell sizeThatFits:v13 attributedText:width displayScale:height, v15];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v12 objectAtIndex:a4 - 1];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 smallTranscriptSpace];
  v17 = v16;

  v18 = [v14 layoutType];
  if (v18 <= 0x13 && ((1 << v18) & 0xC0002) != 0)
  {
    if ([v14 hasTail])
    {
      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 balloonMaskTailSizeForTailShape:1];
      v17 = v17 + v20;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      *v26 = 138543618;
      *&v26[4] = v22;
      *&v26[12] = 2114;
      *&v26[14] = objc_opt_class();
      v23 = *&v26[14];
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %{public}@ shouldn't follow %{public}@", v26, 0x16u);
    }
  }

  v24 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v17 bottomSpacing:0.0, *v26, *&v26[16], v27];

  return v24;
}

@end