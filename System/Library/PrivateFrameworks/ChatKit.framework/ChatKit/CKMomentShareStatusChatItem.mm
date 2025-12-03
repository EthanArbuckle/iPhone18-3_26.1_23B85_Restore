@interface CKMomentShareStatusChatItem
- (BOOL)wantsDrawerLayout;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
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
  _statusChatItem = [(CKMomentShareStatusChatItem *)self _statusChatItem];
  isFromMe = [_statusChatItem isFromMe];

  if (isFromMe)
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

  _statusChatItem = [(CKMomentShareStatusChatItem *)self _statusChatItem];
  activityTitle = [_statusChatItem activityTitle];
  v6 = 0x1E69DC000uLL;
  v51 = v4;
  if (activityTitle)
  {
    goto LABEL_11;
  }

  expirationDate = [_statusChatItem expirationDate];
  v8 = expirationDate;
  if (_TitleForExpirationDate_predicate != -1)
  {
    [CKMomentShareStatusChatItem loadTranscriptText];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:
    activityTitle = 0;
    goto LABEL_10;
  }

  if (!expirationDate)
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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v17 = @"\u200F";
  }

  else
  {
    v17 = @"\u200E";
  }

  activityTitle = [(__CFString *)v17 stringByAppendingString:v14];

  v6 = 0x1E69DC000;
LABEL_10:

  if (!activityTitle)
  {
    v53 = v4;
    goto LABEL_15;
  }

LABEL_11:
  v18 = MEMORY[0x1E696AEC0];
  v19 = CKFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"MOMENT_SHARE_STATUS_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v21 = [v18 stringWithFormat:v20, v4, activityTitle];

  sharedApplication = [*(v6 + 1640) sharedApplication];
  userInterfaceLayoutDirection2 = [sharedApplication userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection2 == 1)
  {
    v24 = @"\u200F";
  }

  else
  {
    v24 = @"\u200E";
  }

  v53 = [(__CFString *)v24 stringByAppendingString:v21];

LABEL_15:
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v26 = [defaultParagraphStyle mutableCopy];

  [v26 setAlignment:{2 * (-[CKMomentShareStatusChatItem transcriptOrientation](self, "transcriptOrientation") != 0)}];
  [v26 setLineBreakMode:2];
  v27 = *MEMORY[0x1E69DB648];
  v56[0] = *MEMORY[0x1E69DB648];
  v28 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFont = [v28 transcriptRegularFont];
  v57[0] = transcriptRegularFont;
  v30 = *MEMORY[0x1E69DB650];
  v56[1] = *MEMORY[0x1E69DB650];
  v31 = +[CKUIBehavior sharedBehaviors];
  theme = [v31 theme];
  transcriptTextColor = [theme transcriptTextColor];
  v34 = *MEMORY[0x1E69DB688];
  v56[2] = *MEMORY[0x1E69DB688];
  v57[1] = transcriptTextColor;
  v57[2] = v26;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

  v36 = v53;
  v50 = v35;
  v37 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v53 attributes:v35];
  string = [v37 string];
  v39 = v51;
  v40 = [string rangeOfString:v51];
  v49 = v41;

  if (v40 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v54[0] = v27;
    v42 = +[CKUIBehavior sharedBehaviors];
    transcriptMessageStatusFont = [v42 transcriptMessageStatusFont];
    v55[0] = transcriptMessageStatusFont;
    v54[1] = v30;
    v44 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v44 theme];
    transcriptTextColor2 = [theme2 transcriptTextColor];
    v54[2] = v34;
    v55[1] = transcriptTextColor2;
    v55[2] = v26;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];

    v36 = v53;
    [v37 setAttributes:v47 range:{v40, v49}];

    v39 = v51;
  }

  return v37;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v9;
    insets->left = v10;
    insets->bottom = v11;
    insets->right = v12;
  }

  transcriptText = [(CKChatItem *)self transcriptText];
  transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
  [transcriptTraitCollection displayScale];
  [CKTranscriptMomentShareLabelCell sizeThatFits:transcriptText attributedText:width displayScale:height, v15];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v27 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [itemsCopy objectAtIndex:index - 1];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 smallTranscriptSpace];
  v17 = v16;

  layoutType = [v14 layoutType];
  if (layoutType <= 0x13 && ((1 << layoutType) & 0xC0002) != 0)
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