@interface CKPhotoAttachmentStatusChatItem
- (BOOL)wantsDrawerLayout;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
@end

@implementation CKPhotoAttachmentStatusChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v29 = *MEMORY[0x1E69E9840];
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

  v15 = [v14 layoutType];
  if (v15 <= 10)
  {
    if (v15 <= 4)
    {
      if ((v15 - 2) < 2)
      {
        goto LABEL_18;
      }

      if (v15 != 1)
      {
        goto LABEL_27;
      }
    }

    else if ((v15 - 5) >= 2 && (v15 - 8) >= 2)
    {
      if (v15 != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

LABEL_20:
    v18 = [CKChatItemLayoutUtilities nextItemIsOriginatorWithRepliesForIndex:a4 allDatasourceItems:v12];
    v19 = +[CKUIBehavior sharedBehaviors];
    v16 = v19;
    if (!v18)
    {
      [v19 mediumTranscriptSpace];
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v15 > 0x18)
  {
    goto LABEL_9;
  }

  if (((1 << v15) & 0x4C000) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v15) & 0x1800000) != 0)
  {
LABEL_18:
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 largeTranscriptSpace];
    goto LABEL_23;
  }

  if (v15 == 19)
  {
LABEL_16:
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 smallTranscriptSpace];
LABEL_23:
    v20 = v17;

    goto LABEL_24;
  }

LABEL_9:
  if ((v15 - 11) < 2)
  {
    goto LABEL_18;
  }

  if (v15 == 13)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
LABEL_21:
    [v16 extraLargeTranscriptSpace];
    goto LABEL_23;
  }

LABEL_27:
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      *v28 = 138412546;
      *&v28[4] = v24;
      *&v28[12] = 2112;
      *&v28[14] = objc_opt_class();
      v25 = *&v28[14];
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", v28, 0x16u);
    }
  }

  v26 = [CKUIBehavior sharedBehaviors:*v28];
  [v26 smallTranscriptSpace];
  v20 = v27;

LABEL_24:
  v21 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v20 bottomSpacing:0.0];

  return v21;
}

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
  v2 = [(CKPhotoAttachmentStatusChatItem *)self _photoAttachmentStatusChatItem];
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
  v5.super_class = CKPhotoAttachmentStatusChatItem;
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
  v94[3] = *MEMORY[0x1E69E9840];
  v2 = [(CKPhotoAttachmentStatusChatItem *)self _photoAttachmentStatusChatItem];
  v3 = [v2 numberOfPhotos];
  v4 = [v2 numberOfVideos];
  v85 = v2;
  v5 = [v2 numberOfSavedAssets];
  if (v4 + v3)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    v7 = 1;
    if (v3 != 0 || v4 == 0)
    {
      v7 = 2;
    }

    if (!v6)
    {
      v7 = 0;
    }

    v8 = off_1E72F4390[v7];
    v9 = MEMORY[0x1E696AEC0];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v9 localizedStringWithFormat:v11, v4 + v3];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 userInterfaceLayoutDirection];

    if (v14 == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v16 = [(__CFString *)v15 stringByAppendingString:v12];
  }

  else
  {
    v12 = CKFrameworkBundle();
    v16 = [v12 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_ITEMS_FALLBACK_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v17 = v16;

  v87 = v17;
  if (v5)
  {
    if (v4)
    {
      v18 = 1;
    }

    else
    {
      v18 = v3 == 0;
    }

    v19 = 1;
    if (v3 != 0 || v4 == 0)
    {
      v19 = 2;
    }

    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v4 + v3 == v5)
    {
      v21 = CKFrameworkBundle();
      v22 = v21;
      if (v20 == 2)
      {
        v28 = [v21 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_ALL_ITEMS_SAVED" value:&stru_1F04268F8 table:@"ChatKit"];
        v23 = 0x1E69DC000;
      }

      else
      {
        v23 = 0x1E69DC000uLL;
        if (v20 == 1)
        {
          v24 = @"PHOTO_ATTACHMENT_STATUS_ALL_VIDEOS_SAVED";
        }

        else
        {
          v24 = @"PHOTO_ATTACHMENT_STATUS_ALL_PHOTOS_SAVED";
        }

        v28 = [v21 localizedStringForKey:v24 value:&stru_1F04268F8 table:@"ChatKit"];
      }
    }

    else
    {
      v32 = off_1E72F43A8[v20];
      v33 = MEMORY[0x1E696AEC0];
      v34 = CKFrameworkBundle();
      v35 = [v34 localizedStringForKey:v32 value:&stru_1F04268F8 table:@"ChatKit"];
      v22 = [v33 localizedStringWithFormat:v35, v5];

      v23 = 0x1E69DC000uLL;
      v36 = [MEMORY[0x1E69DC668] sharedApplication];
      v37 = [v36 userInterfaceLayoutDirection];

      if (v37 == 1)
      {
        v38 = @"\u200F";
      }

      else
      {
        v38 = @"\u200E";
      }

      v28 = [(__CFString *)v38 stringByAppendingString:v22];
    }

    v39 = MEMORY[0x1E696AEC0];
    v40 = CKFrameworkBundle();
    v41 = [v40 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_HAS_SAVED_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
    v42 = [v39 stringWithFormat:v41, v17, v28];

    v43 = [*(v23 + 1640) sharedApplication];
    v44 = [v43 userInterfaceLayoutDirection];

    if (v44 == 1)
    {
      v45 = @"\u200F";
    }

    else
    {
      v45 = @"\u200E";
    }

    v86 = [(__CFString *)v45 stringByAppendingString:v42];
  }

  else
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = CKFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
    v28 = [v25 stringWithFormat:v27, v17];

    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    v30 = [v29 userInterfaceLayoutDirection];

    if (v30 == 1)
    {
      v31 = @"\u200F";
    }

    else
    {
      v31 = @"\u200E";
    }

    v86 = [(__CFString *)v31 stringByAppendingString:v28];
  }

  v46 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v47 = [v46 mutableCopy];

  [v47 setAlignment:{2 * (-[CKPhotoAttachmentStatusChatItem transcriptOrientation](self, "transcriptOrientation") != 0)}];
  [v47 setLineBreakMode:2];
  v91 = *MEMORY[0x1E69DB648];
  v81 = v91;
  v48 = +[CKUIBehavior sharedBehaviors];
  v49 = [v48 transcriptRegularFont];
  v94[0] = v49;
  v92 = *MEMORY[0x1E69DB650];
  v50 = v92;
  v51 = +[CKUIBehavior sharedBehaviors];
  v52 = [v51 theme];
  v53 = [v52 transcriptTextColor];
  v93 = *MEMORY[0x1E69DB688];
  v54 = v93;
  v94[1] = v53;
  v94[2] = v47;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v91 count:3];

  v56 = +[CKUIBehavior sharedBehaviors];
  v57 = [v56 transcriptMessageStatusFont];

  v58 = +[CKUIBehavior sharedBehaviors];
  v59 = [v58 theme];
  v60 = [v59 attachmentBalloonActionColor];

  v61 = objc_alloc(MEMORY[0x1E696AD40]);
  v84 = v55;
  v62 = v55;
  v63 = v47;
  v64 = [v61 initWithString:v86 attributes:v62];
  v65 = [v64 string];
  v66 = [v65 rangeOfString:v87];
  v68 = v67;

  v89[0] = v81;
  v89[1] = v50;
  v82 = v57;
  v90[0] = v57;
  v90[1] = v60;
  v89[2] = v54;
  v90[2] = v47;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:3];
  if (v66 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v64 setAttributes:v69 range:{v66, v68}];
  }

  v70 = [v64 string];
  v71 = [v70 rangeOfString:@"__IMAGE_PLACEHOLDER__"];
  v73 = v72;

  if (v71 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v74 = MEMORY[0x1E69DCAD8];
    v88 = v60;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    v76 = [v74 configurationWithPaletteColors:v75];

    v77 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.grid.2x2.fill" withConfiguration:v76];
    v78 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v77];
    v79 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttachment:v78 attributes:v69];
    [v64 replaceCharactersInRange:v71 withAttributedString:{v73, v79}];
  }

  return v64;
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

  v8 = [(CKChatItem *)self transcriptText];
  v9 = [(CKChatItem *)self transcriptTraitCollection];
  [v9 displayScale];
  [CKTranscriptActionButtonCell sizeThatFits:v8 attributedText:width displayScale:height, v10];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end