@interface CKMessageStatusChatItem
+ (CKTranscriptLegibilityButton)sizingButton;
+ (id)todayDateFormatter;
+ (void)appendChevronToStatusText:(id)a3 withButtonTextColor:(id)a4 textAttributes:(id)a5;
- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)a3 toTraitCollection:(id)a4;
- (BOOL)wantsDrawerLayout;
- (CGSize)buttonSize;
- (CGSize)labelSize;
- (CGSize)loadButtonSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CGSize)loadLabelSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CGSize)size;
- (Class)cellClass;
- (NSAttributedString)transcriptButtonText;
- (UIEdgeInsets)buttonTextAlignmentInsets;
- (UIEdgeInsets)labelTextAlignmentInsets;
- (UIEdgeInsets)transcriptTextAlignmentInsets;
- (char)statusAlignment;
- (char)transcriptOrientation;
- (id)_styledStatusTextWithStatusText:(id)a3 orientation:(char)a4 dateSubText:(id)a5 buttonSubText:(id)a6 errorSubText:(id)a7 overrideTextColor:(id)a8 overrideButtonColor:(id)a9 shouldReplaceWarningIcon:(BOOL)a10 shouldDisplayChevronWithTranscriptBackground:(BOOL)a11;
- (id)createReplayText;
- (id)effectsControlStatusTextForEffectStyleID:(id)a3;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptButtonText;
- (id)loadTranscriptText;
- (id)time;
- (int64_t)buttonType;
- (int64_t)expireStatusType;
- (int64_t)statusType;
- (unint64_t)count;
- (void)unloadSize;
- (void)unloadTranscriptText;
@end

@implementation CKMessageStatusChatItem

- (char)transcriptOrientation
{
  if ([(CKChatItem *)self isFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (CKTranscriptLegibilityButton)sizingButton
{
  v2 = _sizingButton;
  if (!_sizingButton)
  {
    v3 = +[CKTranscriptStatusCell statusButton];
    v4 = _sizingButton;
    _sizingButton = v3;

    v2 = _sizingButton;
  }

  return v2;
}

- (Class)cellClass
{
  if ([(CKMessageStatusChatItem *)self buttonType]!= 5)
  {
    [(CKMessageStatusChatItem *)self isAddChoiceStamp];
  }

  v3 = objc_opt_class();

  return v3;
}

- (void)unloadTranscriptText
{
  v4.receiver = self;
  v4.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v4 unloadTranscriptText];
  transcriptButtonText = self->_transcriptButtonText;
  self->_transcriptButtonText = 0;
}

- (void)unloadSize
{
  v3.receiver = self;
  v3.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v3 unloadSize];
  self->_buttonSizeLoaded = 0;
  self->_labelSizeLoaded = 0;
}

- (UIEdgeInsets)transcriptTextAlignmentInsets
{
  v19.receiver = self;
  v19.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v19 transcriptTextAlignmentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKMessageStatusChatItem *)self buttonTextAlignmentInsets];
  v12 = fmax(v4, v11);
  v14 = fmax(v6, v13);
  v16 = fmax(v8, v15);
  v18 = fmax(v10, v17);
  result.right = v18;
  result.bottom = v16;
  result.left = v14;
  result.top = v12;
  return result;
}

- (BOOL)wantsDrawerLayout
{
  v5.receiver = self;
  v5.super_class = CKMessageStatusChatItem;
  if ([(CKChatItem *)&v5 wantsDrawerLayout])
  {
    return 1;
  }

  v3 = +[CKUIBehavior sharedBehaviors];
  v2 = [v3 timestampsPushBalloons];

  return v2;
}

- (CGSize)size
{
  v13.receiver = self;
  v13.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v13 size];
  v3 = self;
  [(CKMessageStatusChatItem *)v3 buttonSize];
  v5 = v4;
  [(CKMessageStatusChatItem *)v3 labelSize];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [(CKMessageStatusChatItem *)v3 buttonSize];
  v8 = v7;
  [(CKMessageStatusChatItem *)v3 labelSize];
  v10 = v9;

  v11 = v8 + v10;
  v12 = v5;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)loadTranscriptText
{
  v3 = [(CKMessageStatusChatItem *)self transcriptOrientation];
  v4 = [(CKMessageStatusChatItem *)self statusType];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  switch(v4)
  {
    case 0:
      if (![(CKMessageStatusChatItem *)self expireStatusType])
      {
        v28 = CKFrameworkBundle();
        v29 = v28;
        v30 = @"MESSAGE_STATUS_NOSTATUS";
        goto LABEL_42;
      }

      v6 = 0;
      v5 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_70;
    case 1:
      v33 = [(CKChatItem *)self IMChatItem];
      v34 = [v33 isStewie];

      v28 = CKFrameworkBundle();
      v29 = v28;
      if (v34)
      {
        v30 = @"MESSAGE_STATUS_SENT_VIA_STEWIE";
        v35 = @"ChatKit-SYDROB_FEATURES";
      }

      else
      {
        v30 = @"MESSAGE_STATUS_DELIVERED";
        v35 = @"ChatKit";
      }

      goto LABEL_43;
    case 2:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
      goto LABEL_42;
    case 3:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_NOTIFIED_RECIPIENT";
      goto LABEL_42;
    case 4:
      v19 = [(CKMessageStatusChatItem *)self time];
      v20 = [(CKMessageStatusChatItem *)self now];
      if (!v19)
      {
        v48 = CKFrameworkBundle();
        v49 = v48;
        v50 = @"MESSAGE_STATUS_READ";
        goto LABEL_40;
      }

      v21 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v22 = [v21 __ck_unitOfDisambiguityFromDate:v19 toDate:v20];

      switch(v22)
      {
        case 4:
LABEL_14:
          v23 = +[CKMessageStatusChatItem thePastDateFormatter];
          v7 = [v23 stringFromDate:v19];
          v24 = MEMORY[0x1E696AEC0];
          v25 = CKFrameworkBundle();
          v26 = v25;
          v27 = @"MESSAGE_STATUS_READ_DATE";
          goto LABEL_55;
        case 16:
          v23 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v87 = 0;
          v7 = [v23 stringFromDate:v19 isRelative:&v87];
          v55 = v87;
          v24 = MEMORY[0x1E696AEC0];
          v25 = CKFrameworkBundle();
          v26 = v25;
          v56 = @"MESSAGE_STATUS_READ_DAY";
          v57 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          goto LABEL_50;
        case 8:
          goto LABEL_14;
      }

      v23 = +[CKMessageStatusChatItem todayDateFormatter];
      v7 = [v23 stringFromDate:v19];
      v24 = MEMORY[0x1E696AEC0];
      v25 = CKFrameworkBundle();
      v26 = v25;
      v27 = @"MESSAGE_STATUS_READ_TIME";
      goto LABEL_55;
    case 5:
      v19 = [(CKMessageStatusChatItem *)self time];
      v20 = [(CKMessageStatusChatItem *)self now];
      if (v19)
      {
        v31 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
        v32 = [v31 __ck_unitOfDisambiguityFromDate:v19 toDate:v20];

        switch(v32)
        {
          case 4:
LABEL_20:
            v23 = +[CKMessageStatusChatItem thePastDateFormatter];
            v7 = [v23 stringFromDate:v19];
            v24 = MEMORY[0x1E696AEC0];
            v25 = CKFrameworkBundle();
            v26 = v25;
            v27 = @"MESSAGE_STATUS_PLAYED_DATE";
            break;
          case 16:
            v23 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
            v86 = 0;
            v7 = [v23 stringFromDate:v19 isRelative:&v86];
            v55 = v86;
            v24 = MEMORY[0x1E696AEC0];
            v25 = CKFrameworkBundle();
            v26 = v25;
            v56 = @"MESSAGE_STATUS_PLAYED_DAY";
            v57 = @"MESSAGE_STATUS_PLAYED_RELATIVE_DAY";
LABEL_50:
            if (v55)
            {
              v27 = v57;
            }

            else
            {
              v27 = v56;
            }

            break;
          case 8:
            goto LABEL_20;
          default:
            v23 = +[CKMessageStatusChatItem todayDateFormatter];
            v7 = [v23 stringFromDate:v19];
            v24 = MEMORY[0x1E696AEC0];
            v25 = CKFrameworkBundle();
            v26 = v25;
            v27 = @"MESSAGE_STATUS_PLAYED_TIME";
            break;
        }

LABEL_55:
        v58 = [v25 localizedStringForKey:v27 value:&stru_1F04268F8 table:@"ChatKit"];
        v59 = [v24 stringWithFormat:v58, v7];

        v60 = [MEMORY[0x1E69DC668] sharedApplication];
        v61 = [v60 userInterfaceLayoutDirection];

        if (v61 == 1)
        {
          v62 = @"\u200F";
        }

        else
        {
          v62 = @"\u200E";
        }

        v8 = [(__CFString *)v62 stringByAppendingString:v59];
      }

      else
      {
        v48 = CKFrameworkBundle();
        v49 = v48;
        v50 = @"MESSAGE_STATUS_PLAYED";
LABEL_40:
        v8 = [v48 localizedStringForKey:v50 value:&stru_1F04268F8 table:@"ChatKit"];

        v7 = 0;
      }

LABEL_68:

      goto LABEL_69;
    case 6:
      v36 = [(CKMessageStatusChatItem *)self time];
      v19 = v36;
      if (v36)
      {
        v20 = v36;
        v37 = [(CKMessageStatusChatItem *)self now];
        v38 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
        v39 = [v38 __ck_unitOfDisambiguityFromDate:v20 toDate:v37];

        v84 = v37;
        if (v39 != 4)
        {
          if (v39 == 16)
          {
            v40 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
            v85 = 0;
            v7 = [v40 stringFromDate:v20 isRelative:&v85];
            v63 = v85;
            v64 = MEMORY[0x1E696AEC0];
            v65 = CKFrameworkBundle();
            v66 = v65;
            if (v63)
            {
              v67 = @"MESSAGE_STATUS_SAVED_RELATIVE_DAY";
            }

            else
            {
              v67 = @"MESSAGE_STATUS_SAVED_DAY";
            }
          }

          else
          {
            if (v39 == 8)
            {
              goto LABEL_30;
            }

            v40 = +[CKMessageStatusChatItem todayDateFormatter];
            v7 = [v40 stringFromDate:v20];
            v64 = MEMORY[0x1E696AEC0];
            v65 = CKFrameworkBundle();
            v66 = v65;
            v67 = @"MESSAGE_STATUS_SAVED_TIME";
          }

          v68 = [v65 localizedStringForKey:v67 value:&stru_1F04268F8 table:@"ChatKit"];
          v69 = [v64 stringWithFormat:v68, v7];

          v70 = [MEMORY[0x1E69DC668] sharedApplication];
          v71 = [v70 userInterfaceLayoutDirection];

          if (v71 == 1)
          {
            v72 = @"\u200F";
          }

          else
          {
            v72 = @"\u200E";
          }

          v8 = [(__CFString *)v72 stringByAppendingString:v69];

          goto LABEL_67;
        }

LABEL_30:
        v40 = +[CKMessageStatusChatItem thePastDateFormatter];
        v7 = [v40 stringFromDate:v20];
        v41 = MEMORY[0x1E696AEC0];
        v42 = CKFrameworkBundle();
        v43 = [v42 localizedStringForKey:@"MESSAGE_STATUS_SAVED_DATE" value:&stru_1F04268F8 table:@"ChatKit"];
        v44 = [v41 stringWithFormat:v43, v7];

        v45 = [MEMORY[0x1E69DC668] sharedApplication];
        v46 = [v45 userInterfaceLayoutDirection];

        if (v46 == 1)
        {
          v47 = @"\u200F";
        }

        else
        {
          v47 = @"\u200E";
        }

        v8 = [(__CFString *)v47 stringByAppendingString:v44];

LABEL_67:
        goto LABEL_68;
      }

      v51 = [(CKMessageStatusChatItem *)self count];
      if (v51 == 1)
      {
        v52 = CKFrameworkBundle();
        v53 = v52;
        v54 = @"MESSAGE_STATUS_SAVED_GROUP_ONE";
        goto LABEL_74;
      }

      if (!v51)
      {
        v52 = CKFrameworkBundle();
        v53 = v52;
        v54 = @"MESSAGE_STATUS_SAVED";
LABEL_74:
        v8 = [v52 localizedStringForKey:v54 value:&stru_1F04268F8 table:@"ChatKit"];
        goto LABEL_79;
      }

      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v51];
      v75 = MEMORY[0x1E696AEC0];
      v76 = CKFrameworkBundle();
      v77 = [v76 localizedStringForKey:@"MESSAGE_STATUS_SAVED_GROUP_MULTIPLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v78 = [v53 __ck_localizedString];
      v79 = [v75 stringWithFormat:v77, v78];

      v80 = [MEMORY[0x1E69DC668] sharedApplication];
      v81 = [v80 userInterfaceLayoutDirection];

      if (v81 == 1)
      {
        v82 = @"\u200F";
      }

      else
      {
        v82 = @"\u200E";
      }

      v8 = [(__CFString *)v82 stringByAppendingString:v79];

LABEL_79:
      v7 = 0;
LABEL_69:

      v6 = 0;
      v5 = 0;
LABEL_70:
      LOBYTE(v83) = v6;
      v73 = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v8 orientation:v3 dateSubText:v7 buttonSubText:0 errorSubText:0 overrideTextColor:v5 shouldReplaceWarningIcon:v83];

      return v73;
    case 7:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_SENTASTEXTMESSAGE";
      goto LABEL_42;
    case 8:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_SENTASSMS";
      goto LABEL_42;
    case 9:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_SENTTOEMAIL";
      goto LABEL_42;
    case 10:
      v14 = CKFrameworkBundle();
      v8 = [v14 localizedStringForKey:@"MESSAGE_STATUS_NOTDELIVERED" value:&stru_1F04268F8 table:@"ChatKit"];

      if (CKShowInternalErrors())
      {
        v15 = [(CKChatItem *)self IMChatItem];
        v16 = [v15 errorText];

        v8 = v16;
      }

      v17 = +[CKUIBehavior sharedBehaviors];
      v18 = [v17 theme];
      v5 = [v18 statusFailureTextColor];

      v6 = 0;
      goto LABEL_44;
    case 12:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_RAISETOLISTEN";
      goto LABEL_42;
    case 13:
      v28 = CKFrameworkBundle();
      v29 = v28;
      v30 = @"MESSAGE_STATUS_RAISETOTALK";
LABEL_42:
      v35 = @"ChatKit";
LABEL_43:
      v8 = [v28 localizedStringForKey:v30 value:&stru_1F04268F8 table:v35];

      v6 = 0;
      v5 = 0;
LABEL_44:
      v7 = 0;
      goto LABEL_70;
    case 17:
      v9 = CKFrameworkBundle();
      v8 = [v9 localizedStringForKey:@"HAWKING_MESSAGE_STATUS_BLACKHOLED" value:&stru_1F04268F8 table:@"ChatKit"];

      if (CKShowInternalErrors())
      {
        v10 = [(CKChatItem *)self IMChatItem];
        v11 = [v10 errorText];

        v8 = v11;
      }

      v12 = +[CKUIBehavior sharedBehaviors];
      v13 = [v12 theme];
      v5 = [v13 statusTextColor];

      v7 = 0;
      v6 = 1;
      goto LABEL_70;
    default:
      goto LABEL_70;
  }
}

- (id)_styledStatusTextWithStatusText:(id)a3 orientation:(char)a4 dateSubText:(id)a5 buttonSubText:(id)a6 errorSubText:(id)a7 overrideTextColor:(id)a8 overrideButtonColor:(id)a9 shouldReplaceWarningIcon:(BOOL)a10 shouldDisplayChevronWithTranscriptBackground:(BOOL)a11
{
  v15 = a4;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v71 = a7;
  v19 = a8;
  v20 = a9;
  v21 = +[CKUIBehavior sharedBehaviors];
  v22 = v21;
  if (v15)
  {
    [v21 rightStatusTranscriptTextAttributes];
  }

  else
  {
    [v21 leftStatusTranscriptTextAttributes];
  }
  v23 = ;

  v67 = v19;
  if (v19)
  {
    v24 = [v23 mutableCopy];
    [v24 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    v25 = [v24 copy];

    v23 = v25;
  }

  v69 = v16;
  v70 = v18;
  if (v16)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16 attributes:v23];
    v16 = v26;
    v27 = v26 != 0;
    if (v17 && v26)
    {
      v28 = [v26 string];
      v29 = [v28 rangeOfString:v17];
      v31 = v30;

      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = *MEMORY[0x1E69DB648];
        v33 = +[CKUIBehavior sharedBehaviors];
        v34 = [v33 transcriptMessageStatusDateFont];
        [v16 addAttribute:v32 value:v34 range:{v29, v31}];
      }

      v27 = 1;
      v18 = v70;
    }
  }

  else
  {
    v27 = 0;
  }

  v68 = v17;
  if (v20)
  {
    v35 = v20;
  }

  else
  {
    v36 = +[CKUIBehavior sharedBehaviors];
    v37 = [v36 theme];
    v35 = [v37 transcriptMessageStatusButtonTextColor];
  }

  if (v18)
  {
    v38 = !v27;
  }

  else
  {
    v38 = 1;
  }

  if ((v38 & 1) == 0)
  {
    v39 = [v16 string];
    v40 = [v39 rangeOfString:v18];
    v42 = v41;

    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(CKMessageStatusChatItem *)self isAddChoiceStamp])
      {
        v43 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
        [v43 __ck_fontWithWeight:*MEMORY[0x1E69DB980]];
      }

      else
      {
        v43 = +[CKUIBehavior sharedBehaviors];
        [v43 transcriptBoldFont];
      }
      v44 = ;

      [v16 addAttribute:*MEMORY[0x1E69DB648] value:v44 range:{v40, v42}];
      [v16 addAttribute:*MEMORY[0x1E69DB650] value:v35 range:{v40, v42}];
    }
  }

  if (v71)
  {
    v45 = !v27;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    v46 = [v16 string];
    v47 = [v46 rangeOfString:v71];
    v49 = v48;

    if (v47 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = +[CKUIBehavior sharedBehaviors];
      v51 = [v50 theme];
      v52 = [v51 statusFailureTextColor];

      [v16 addAttribute:*MEMORY[0x1E69DB650] value:v52 range:{v47, v49}];
    }
  }

  if (v27 && a10)
  {
    v53 = [v16 string];
    v54 = [v53 rangeOfString:@"(!)"];
    v56 = v55;

    if (v54 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v16 replaceCharactersInRange:v54 withString:{v56, &stru_1F04268F8}];
      v57 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v58 = +[CKUIBehavior sharedBehaviors];
      v59 = [v58 messageStatusWarningIconRed];

      [v57 setImage:v59];
      v60 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v57];
      v61 = [v60 mutableCopy];

      [v61 addAttributes:v23 range:{0, objc_msgSend(v61, "length")}];
      [v16 insertAttributedString:v61 atIndex:v54];
    }
  }

  if (a11)
  {
    v62 = [(CKChatItem *)self transcriptTraitCollection];
    if ([v62 isTranscriptBackgroundActive])
    {
    }

    else
    {
      ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();

      if (!ShouldDifferentiateWithoutColor)
      {
        goto LABEL_39;
      }
    }

    [CKMessageStatusChatItem appendChevronToStatusText:v16 withButtonTextColor:v35 textAttributes:v23];
  }

LABEL_39:
  v64 = [v16 copy];

  return v64;
}

+ (void)appendChevronToStatusText:(id)a3 withButtonTextColor:(id)a4 textAttributes:(id)a5
{
  v7 = MEMORY[0x1E696AAB0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v16 = [[v7 alloc] initWithString:@" " attributes:v8];
  [v10 appendAttributedString:v16];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 messageStatusChevronWithButtonColor:v9];

  v13 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v13 setImage:v12];
  v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  v15 = [v14 mutableCopy];
  [v15 addAttributes:v8 range:{0, objc_msgSend(v15, "length")}];

  [v10 appendAttributedString:v15];
}

- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)a3 toTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isTranscriptBackgroundActive];
  if (v8 == [v7 isTranscriptBackgroundActive])
  {
    v11.receiver = self;
    v11.super_class = CKMessageStatusChatItem;
    v9 = [(CKChatItem *)&v11 shouldUnloadTranscriptTextForChangeFromTraitCollection:v6 toTraitCollection:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(CKChatItem *)self transcriptText];
  if ([v8 length])
  {
    [(CKMessageStatusChatItem *)self loadLabelSizeThatFits:a4 textAlignmentInsets:width, height];
  }

  else
  {
    [(CKMessageStatusChatItem *)self loadButtonSizeThatFits:a4 textAlignmentInsets:width, height];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (NSAttributedString)transcriptButtonText
{
  transcriptButtonText = self->_transcriptButtonText;
  if (!transcriptButtonText)
  {
    v4 = [(CKMessageStatusChatItem *)self loadTranscriptButtonText];
    v5 = [v4 copy];
    v6 = self->_transcriptButtonText;
    self->_transcriptButtonText = v5;

    transcriptButtonText = self->_transcriptButtonText;
  }

  return transcriptButtonText;
}

- (CGSize)buttonSize
{
  if (!self->_buttonSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_buttonSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadButtonSizeThatFits:&self->_buttonTextAlignmentInsets textAlignmentInsets:?];
    self->_buttonSize.width = v4;
    self->_buttonSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)labelSize
{
  if (!self->_labelSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_labelSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadLabelSizeThatFits:&self->_labelTextAlignmentInsets textAlignmentInsets:?];
    self->_labelSize.width = v4;
    self->_labelSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  width = self->_labelSize.width;
  height = self->_labelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)labelTextAlignmentInsets
{
  if (!self->_labelSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_labelSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadLabelSizeThatFits:&self->_labelTextAlignmentInsets textAlignmentInsets:?];
    self->_labelSize.width = v4;
    self->_labelSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  top = self->_labelTextAlignmentInsets.top;
  left = self->_labelTextAlignmentInsets.left;
  bottom = self->_labelTextAlignmentInsets.bottom;
  right = self->_labelTextAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)buttonTextAlignmentInsets
{
  if (!self->_buttonSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_buttonSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadButtonSizeThatFits:&self->_buttonTextAlignmentInsets textAlignmentInsets:?];
    self->_buttonSize.width = v4;
    self->_buttonSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  top = self->_buttonTextAlignmentInsets.top;
  left = self->_buttonTextAlignmentInsets.left;
  bottom = self->_buttonTextAlignmentInsets.bottom;
  right = self->_buttonTextAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (int64_t)buttonType
{
  v3 = [(CKMessageStatusChatItem *)self expireStatusType]- 1;
  if (v3 < 3)
  {
    v4 = (&unk_190DCED78 + 8 * v3);
    return *v4;
  }

  v5 = [(CKMessageStatusChatItem *)self statusType];
  if (v5 < 0x29)
  {
    v4 = (&unk_190DCED90 + 8 * v5);
    return *v4;
  }

  return 3;
}

- (char)statusAlignment
{
  v3 = 2;
  if ([(CKMessageStatusChatItem *)self buttonType]!= 1)
  {
    if ([(CKChatItem *)self isFromMe])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (int64_t)statusType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 messageStatusType];

  return v3;
}

- (int64_t)expireStatusType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 expireStatusType];

  return v3;
}

- (id)time
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 time];

  return v3;
}

- (unint64_t)count
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 count];

  return v3;
}

+ (id)todayDateFormatter
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 timestampDateFormatter];

  return v3;
}

- (id)effectsControlStatusTextForEffectStyleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.messages.effect.CKConfettiEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_CONFETTI";
LABEL_27:
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_28;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKLasersEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_LASERS";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKFireworksEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_FIREWORKS";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKShootingStarEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_SHOOTING_STAR";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKHappyBirthdayEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_BALLOONS";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKSparklesEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_CELEBRATION";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKHeartEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_LOVE";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKEchoEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_ECHO";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.messages.effect.CKSpotlightEffect"])
  {
    v4 = @"FSM_CONTROL_BUTTON_TITLE_SPOTLIGHT";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
  {
    v4 = @"EFFECT_CONTROL_BUTTON_TITLE_IMPACT";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.loud"])
  {
    v4 = @"EFFECT_CONTROL_BUTTON_TITLE_LOUD";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.gentle"])
  {
    v4 = @"EFFECT_CONTROL_BUTTON_TITLE_GENTLE";
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"com.apple.MobileSMS.expressivesend.focus"])
  {
    v4 = @"EFFECT_CONTROL_BUTTON_TITLE_FOCUS";
    goto LABEL_27;
  }

  v6 = 0;
LABEL_28:

  return v6;
}

- (id)loadTranscriptButtonText
{
  v227[2] = *MEMORY[0x1E69E9840];
  switch([(CKMessageStatusChatItem *)self buttonType])
  {
    case 0:
      if ([(CKMessageStatusChatItem *)self expireStatusType]!= 2)
      {
        goto LABEL_56;
      }

      v3 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      v4 = +[CKUIBehavior sharedBehaviors];
      v5 = v4;
      if (v3)
      {
        [v4 rightTranscriptButtonTextAttributes];
      }

      else
      {
        [v4 leftTranscriptButtonTextAttributes];
      }
      v33 = ;

      v148 = objc_alloc(MEMORY[0x1E696AD98]);
      IMMessageItemExpireStateExpiringDuration();
      v34 = [v148 initWithUnsignedInteger:v149 / 0x3C];
      v35 = MEMORY[0x1E696AEC0];
      v36 = CKFrameworkBundle();
      v37 = v36;
      v38 = @"MESSAGE_STATUS_EXPIRING";
      goto LABEL_88;
    case 1:
      v33 = +[CKUIBehavior sharedBehaviors];
      v39 = [v33 statusSaveButtonTranscriptText];
      goto LABEL_147;
    case 2:
      v226[0] = *MEMORY[0x1E69DB648];
      v28 = +[CKUIBehavior sharedBehaviors];
      v29 = [v28 transcriptBoldFont];
      v227[0] = v29;
      v226[1] = *MEMORY[0x1E69DB650];
      v30 = +[CKUIBehavior sharedBehaviors];
      v31 = [v30 theme];
      v32 = [v31 appTintColor];
      v227[1] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v227 forKeys:v226 count:2];

      v34 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[CKMessageStatusChatItem count](self, "count")}];
      v35 = MEMORY[0x1E696AEC0];
      v36 = CKFrameworkBundle();
      v37 = v36;
      v38 = @"PLAY_ALL_BUTTON_TITLE";
LABEL_88:
      v150 = [v36 localizedStringForKey:v38 value:&stru_1F04268F8 table:@"ChatKit"];
      v151 = [v34 __ck_localizedString];
      v152 = [v35 stringWithFormat:v150, v151];

      v153 = [MEMORY[0x1E69DC668] sharedApplication];
      v154 = [v153 userInterfaceLayoutDirection];

      if (v154 == 1)
      {
        v155 = @"\u200F";
      }

      else
      {
        v155 = @"\u200E";
      }

      v58 = [(__CFString *)v155 stringByAppendingString:v152];

      v39 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v58 attributes:v33];
      goto LABEL_145;
    case 3:
      v33 = [(CKChatItem *)self IMChatItem];
      v67 = [v33 attributionType];
      v68 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      v69 = [v33 showsLearnMoreLink];
      v34 = [v33 attributionInfo];
      v58 = [v34 __ck_localizedAppNameForTranscriptAttribution];
      v70 = 0;
      v71 = 0;
      v72 = &stru_1F04268F8;
      if (v67 <= 5)
      {
        if (v67 <= 2)
        {
          if (v67 == 1)
          {
            v144 = MEMORY[0x1E696AEC0];
            v145 = CKFrameworkBundle();
            v146 = v145;
            v147 = @"ATTRIBUTION_TEXT_APP";
          }

          else
          {
            if (v67 != 2)
            {
              goto LABEL_143;
            }

            v144 = MEMORY[0x1E696AEC0];
            v145 = CKFrameworkBundle();
            v146 = v145;
            v147 = @"ATTRIBUTION_TEXT_STS";
          }
        }

        else if (v67 == 3)
        {
          v144 = MEMORY[0x1E696AEC0];
          v145 = CKFrameworkBundle();
          v146 = v145;
          v147 = @"ATTRIBUTION_TEXT_STICKER";
        }

        else
        {
          if (v67 != 4)
          {
            v129 = CKFrameworkBundle();
            v130 = v129;
            v131 = @"ATTRIBUTION_TEXT_PHOTOS_EXTENSION";
LABEL_127:
            v72 = [v129 localizedStringForKey:v131 value:&stru_1F04268F8 table:@"ChatKit"];

            goto LABEL_139;
          }

          v144 = MEMORY[0x1E696AEC0];
          v145 = CKFrameworkBundle();
          v146 = v145;
          v147 = @"ATTRIBUTION_TEXT_ASSOCIATED_STICKER";
        }

        v189 = [v145 localizedStringForKey:v147 value:&stru_1F04268F8 table:@"ChatKit"];
        v190 = [v144 stringWithFormat:v189, v58];

        v191 = [MEMORY[0x1E69DC668] sharedApplication];
        v192 = [v191 userInterfaceLayoutDirection];

        if (v192 == 1)
        {
          v193 = @"\u200F";
        }

        else
        {
          v193 = @"\u200E";
        }

        v72 = [(__CFString *)v193 stringByAppendingString:v190];

        v71 = v58;
        goto LABEL_142;
      }

      if (v67 > 8)
      {
        if (v67 == 9)
        {
          v195 = [MEMORY[0x1E69A7FC8] sharedManager];
          v71 = [v195 sensitiveStickerLinkText:0];

          v74 = [MEMORY[0x1E69A7FC8] sharedManager];
          v75 = v74;
          v76 = 0;
          goto LABEL_141;
        }

        if (v67 != 10)
        {
          if (v67 != 11)
          {
            goto LABEL_143;
          }

          v136 = CKFrameworkBundle();
          v71 = [v136 localizedStringForKey:@"ATTRIBUTION_TEXT_SENSITIVE_STICKER_REVEALED_LINK_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];

          v137 = MEMORY[0x1E696AEC0];
          v138 = CKFrameworkBundle();
          v139 = [v138 localizedStringForKey:@"%@" value:&stru_1F04268F8 table:@"ChatKit"];
          v140 = [v137 stringWithFormat:v139, v71];

          v141 = [MEMORY[0x1E69DC668] sharedApplication];
          v142 = [v141 userInterfaceLayoutDirection];

          if (v142 == 1)
          {
            v143 = @"\u200F";
          }

          else
          {
            v143 = @"\u200E";
          }

          v72 = [(__CFString *)v143 stringByAppendingString:v140];

          goto LABEL_142;
        }

        v182 = MEMORY[0x1E696AEC0];
        v183 = CKFrameworkBundle();
        v184 = [v183 localizedStringForKey:@"ATTRIBUTION_TEXT_SENT_WITH_CRITICAL_MESSAGING_API_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
        v185 = [v182 stringWithFormat:v184, v58];

        v186 = [MEMORY[0x1E69DC668] sharedApplication];
        v187 = [v186 userInterfaceLayoutDirection];

        if (v187 == 1)
        {
          v188 = @"\u200F";
        }

        else
        {
          v188 = @"\u200E";
        }

        v72 = [(__CFString *)v188 stringByAppendingString:v185];

LABEL_139:
        v71 = 0;
LABEL_142:
        v70 = 0;
        goto LABEL_143;
      }

      if (v67 != 6)
      {
        if (v67 != 7)
        {
          v73 = [MEMORY[0x1E69A7FC8] sharedManager];
          v71 = [v73 sensitiveStickerLinkText:1];

          v74 = [MEMORY[0x1E69A7FC8] sharedManager];
          v75 = v74;
          v76 = 1;
LABEL_141:
          v72 = [v74 sensitiveStickerAttributionText:v76];

          goto LABEL_142;
        }

        v129 = CKFrameworkBundle();
        v130 = v129;
        v131 = @"ATTRIBUTION_TEXT_SENT_WITH_FACETIME";
        goto LABEL_127;
      }

      v194 = CKFrameworkBundle();
      v72 = [v194 localizedStringForKey:@"ATTRIBUTION_TEXT_SENT_WITH_SIRI" value:&stru_1F04268F8 table:@"ChatKit"];

      if (!v69 || CKIsRunningInMacCatalyst())
      {
        goto LABEL_139;
      }

      v72 = v72;
      v70 = 1;
      v71 = v72;
LABEL_143:
      BYTE1(v207) = v70;
      LOBYTE(v207) = 0;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v72 orientation:v68 dateSubText:0 buttonSubText:v71 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v207 shouldDisplayChevronWithTranscriptBackground:?];
      v39 = LABEL_144:;

      goto LABEL_145;
    case 4:
      v33 = [(CKChatItem *)self IMChatItem];
      v34 = [v33 dataSource];
      v39 = [v34 statusAttributedString];
      goto LABEL_146;
    case 5:
      v39 = [(CKMessageStatusChatItem *)self createReplayText];
      goto LABEL_148;
    case 8:
      v16 = CKFrameworkBundle();
      v17 = v16;
      v18 = @"MESSAGE_STATUS_NOT_EDITED";
      goto LABEL_37;
    case 9:
      v80 = CKFrameworkBundle();
      v81 = v80;
      v82 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_58;
    case 10:
      v80 = CKFrameworkBundle();
      v81 = v80;
      v82 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
LABEL_58:
      v33 = [v80 localizedStringForKey:v82 value:&stru_1F04268F8 table:@"ChatKit"];

      v116 = CKFrameworkBundle();
      v117 = [v116 localizedStringForKey:@"MESSAGE_STATUS_NOT_EDITED" value:&stru_1F04268F8 table:@"ChatKit"];

      v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v33, v117];
      LOWORD(v210) = 257;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v118 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:0 errorSubText:v117 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v210 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_63;
    case 11:
      v93 = [(CKMessageStatusChatItem *)self time];
      v94 = [(CKMessageStatusChatItem *)self now];
      if (!v93)
      {
        v135 = CKFrameworkBundle();
        v133 = [v135 localizedStringForKey:@"MESSAGE_STATUS_READ" value:&stru_1F04268F8 table:@"ChatKit"];

        v11 = 0;
        goto LABEL_122;
      }

      v95 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v96 = [v95 __ck_unitOfDisambiguityFromDate:v93 toDate:v94];

      switch(v96)
      {
        case 4:
          goto LABEL_50;
        case 16:
          v97 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v216 = 0;
          v11 = [v97 stringFromDate:v93 isRelative:&v216];
          v168 = v216;
          v98 = MEMORY[0x1E696AEC0];
          v99 = CKFrameworkBundle();
          v100 = v99;
          if (v168)
          {
            v101 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          }

          else
          {
            v101 = @"MESSAGE_STATUS_READ_DAY";
          }

          break;
        case 8:
LABEL_50:
          v97 = +[CKMessageStatusChatItem thePastDateFormatter];
          v11 = [v97 stringFromDate:v93];
          v98 = MEMORY[0x1E696AEC0];
          v99 = CKFrameworkBundle();
          v100 = v99;
          v101 = @"MESSAGE_STATUS_READ_DATE";
          break;
        default:
          v97 = +[CKMessageStatusChatItem todayDateFormatter];
          v11 = [v97 stringFromDate:v93];
          v98 = MEMORY[0x1E696AEC0];
          v99 = CKFrameworkBundle();
          v100 = v99;
          v101 = @"MESSAGE_STATUS_READ_TIME";
          break;
      }

      v176 = [v99 localizedStringForKey:v101 value:&stru_1F04268F8 table:@"ChatKit"];
      v177 = [v98 stringWithFormat:v176, v11];

      v178 = [MEMORY[0x1E69DC668] sharedApplication];
      v179 = [v178 userInterfaceLayoutDirection];

      if (v179 == 1)
      {
        v180 = @"\u200F";
      }

      else
      {
        v180 = @"\u200E";
      }

      v133 = [(__CFString *)v180 stringByAppendingString:v177];

LABEL_122:
      v181 = CKFrameworkBundle();
      v174 = [v181 localizedStringForKey:@"MESSAGE_STATUS_NOT_EDITED" value:&stru_1F04268F8 table:@"ChatKit"];

      v175 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v133, v174];
      LOWORD(v213) = 257;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v175 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:v11 buttonSubText:0 errorSubText:v174 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v213 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_123;
    case 12:
      v25 = CKFrameworkBundle();
      v26 = v25;
      v27 = @"MESSAGE_STATUS_EDITED";
      goto LABEL_45;
    case 13:
      v63 = [MEMORY[0x1E69A8168] sharedInstance];
      v64 = *MEMORY[0x1E69A7678];
      v224 = *MEMORY[0x1E69A7680];
      v225 = &unk_1F04E78D8;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
      [v63 trackEvent:v64 withDictionary:v65];

      v66 = CKFrameworkBundle();
      v33 = [v66 localizedStringForKey:@"MESSAGE_STATUS_DELIVERED" value:&stru_1F04268F8 table:@"ChatKit"];

      v45 = CKFrameworkBundle();
      v46 = v45;
      v47 = @"MESSAGE_STATUS_SEND_HQ_IMAGE";
      goto LABEL_62;
    case 14:
      v19 = CKFrameworkBundle();
      v20 = v19;
      v21 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_19;
    case 15:
      v19 = CKFrameworkBundle();
      v20 = v19;
      v21 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
LABEL_19:
      v33 = [v19 localizedStringForKey:v21 value:&stru_1F04268F8 table:@"ChatKit"];

      v45 = CKFrameworkBundle();
      v46 = v45;
      v47 = @"MESSAGE_STATUS_EDITED";
      goto LABEL_62;
    case 16:
      v83 = [(CKMessageStatusChatItem *)self time];
      v84 = [(CKMessageStatusChatItem *)self now];
      if (!v83)
      {
        v134 = CKFrameworkBundle();
        v133 = [v134 localizedStringForKey:@"MESSAGE_STATUS_READ" value:&stru_1F04268F8 table:@"ChatKit"];

        v11 = 0;
        goto LABEL_115;
      }

      v85 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v86 = [v85 __ck_unitOfDisambiguityFromDate:v83 toDate:v84];

      switch(v86)
      {
        case 4:
          goto LABEL_43;
        case 16:
          v87 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v216 = 0;
          v11 = [v87 stringFromDate:v83 isRelative:&v216];
          v167 = v216;
          v88 = MEMORY[0x1E696AEC0];
          v89 = CKFrameworkBundle();
          v90 = v89;
          if (v167)
          {
            v91 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          }

          else
          {
            v91 = @"MESSAGE_STATUS_READ_DAY";
          }

          break;
        case 8:
LABEL_43:
          v87 = +[CKMessageStatusChatItem thePastDateFormatter];
          v11 = [v87 stringFromDate:v83];
          v88 = MEMORY[0x1E696AEC0];
          v89 = CKFrameworkBundle();
          v90 = v89;
          v91 = @"MESSAGE_STATUS_READ_DATE";
          break;
        default:
          v87 = +[CKMessageStatusChatItem todayDateFormatter];
          v11 = [v87 stringFromDate:v83];
          v88 = MEMORY[0x1E696AEC0];
          v89 = CKFrameworkBundle();
          v90 = v89;
          v91 = @"MESSAGE_STATUS_READ_TIME";
          break;
      }

      v169 = [v89 localizedStringForKey:v91 value:&stru_1F04268F8 table:@"ChatKit"];
      v170 = [v88 stringWithFormat:v169, v11];

      v171 = [MEMORY[0x1E69DC668] sharedApplication];
      v172 = [v171 userInterfaceLayoutDirection];

      if (v172 == 1)
      {
        v173 = @"\u200F";
      }

      else
      {
        v173 = @"\u200E";
      }

      v133 = [(__CFString *)v173 stringByAppendingString:v170];

LABEL_115:
      v164 = CKFrameworkBundle();
      v165 = v164;
      v166 = @"MESSAGE_STATUS_EDITED";
      goto LABEL_116;
    case 17:
      v25 = CKFrameworkBundle();
      v26 = v25;
      v27 = @"MESSAGE_STATUS_HIDE_EDITS";
LABEL_45:
      v92 = [v25 localizedStringForKey:v27 value:&stru_1F04268F8 table:@"ChatKit"];

      LOWORD(v207) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v92 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:v92 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v207 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_68;
    case 18:
      v119 = CKFrameworkBundle();
      v120 = v119;
      v121 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_61;
    case 19:
      v119 = CKFrameworkBundle();
      v120 = v119;
      v121 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
LABEL_61:
      v33 = [v119 localizedStringForKey:v121 value:&stru_1F04268F8 table:@"ChatKit"];

      v45 = CKFrameworkBundle();
      v46 = v45;
      v47 = @"MESSAGE_STATUS_HIDE_EDITS";
LABEL_62:
      v117 = [v45 localizedStringForKey:v47 value:&stru_1F04268F8 table:@"ChatKit"];

      v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v33, v117];
      LOWORD(v211) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v118 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:v117 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v211 shouldDisplayChevronWithTranscriptBackground:?];
      v39 = LABEL_63:;

      goto LABEL_147;
    case 20:
      v6 = [(CKMessageStatusChatItem *)self time];
      v7 = [(CKMessageStatusChatItem *)self now];
      if (!v6)
      {
        v132 = CKFrameworkBundle();
        v133 = [v132 localizedStringForKey:@"MESSAGE_STATUS_READ" value:&stru_1F04268F8 table:@"ChatKit"];

        v11 = 0;
        goto LABEL_103;
      }

      v8 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v9 = [v8 __ck_unitOfDisambiguityFromDate:v6 toDate:v7];

      switch(v9)
      {
        case 4:
          goto LABEL_9;
        case 16:
          v10 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v216 = 0;
          v11 = [v10 stringFromDate:v6 isRelative:&v216];
          v158 = v216;
          v12 = MEMORY[0x1E696AEC0];
          v13 = CKFrameworkBundle();
          v14 = v13;
          if (v158)
          {
            v15 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          }

          else
          {
            v15 = @"MESSAGE_STATUS_READ_DAY";
          }

          break;
        case 8:
LABEL_9:
          v10 = +[CKMessageStatusChatItem thePastDateFormatter];
          v11 = [v10 stringFromDate:v6];
          v12 = MEMORY[0x1E696AEC0];
          v13 = CKFrameworkBundle();
          v14 = v13;
          v15 = @"MESSAGE_STATUS_READ_DATE";
          break;
        default:
          v10 = +[CKMessageStatusChatItem todayDateFormatter];
          v11 = [v10 stringFromDate:v6];
          v12 = MEMORY[0x1E696AEC0];
          v13 = CKFrameworkBundle();
          v14 = v13;
          v15 = @"MESSAGE_STATUS_READ_TIME";
          break;
      }

      v159 = [v13 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
      v160 = [v12 stringWithFormat:v159, v11];

      v161 = [MEMORY[0x1E69DC668] sharedApplication];
      v162 = [v161 userInterfaceLayoutDirection];

      if (v162 == 1)
      {
        v163 = @"\u200F";
      }

      else
      {
        v163 = @"\u200E";
      }

      v133 = [(__CFString *)v163 stringByAppendingString:v160];

LABEL_103:
      v164 = CKFrameworkBundle();
      v165 = v164;
      v166 = @"MESSAGE_STATUS_HIDE_EDITS";
LABEL_116:
      v174 = [v164 localizedStringForKey:v166 value:&stru_1F04268F8 table:@"ChatKit"];

      v175 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v133, v174];
      LOWORD(v212) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v175 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:v11 buttonSubText:v174 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v212 shouldDisplayChevronWithTranscriptBackground:?];
      v39 = LABEL_123:;

      goto LABEL_148;
    case 21:
      v48 = [MEMORY[0x1E69A8168] sharedInstance];
      v49 = *MEMORY[0x1E69A7690];
      v222 = *MEMORY[0x1E69A77B0];
      v223 = &unk_1F04E78D8;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
      [v48 trackEvent:v49 withDictionary:v50];

      v33 = [(CKChatItem *)self IMChatItem];
      v34 = [v33 recipientDisplayName];
      v51 = MEMORY[0x1E696AEC0];
      v52 = CKFrameworkBundle();
      v53 = [v52 localizedStringForKey:@"MESSAGE_STATUS_CONFIRM_SEND_VIA_SATELLITE_SUB_STATUS" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
      v54 = [v51 localizedStringWithFormat:v53, v34];

      v55 = [MEMORY[0x1E69DC668] sharedApplication];
      v56 = [v55 userInterfaceLayoutDirection];

      if (v56 == 1)
      {
        v57 = @"\u200F";
      }

      else
      {
        v57 = @"\u200E";
      }

      v58 = [(__CFString *)v57 stringByAppendingString:v54];

      v59 = CKFrameworkBundle();
      v60 = [v59 localizedStringForKey:@"MESSAGE_STATUS_CONFIRM_SEND_VIA_SATELLITE" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ \n %@", v58, v60];
      LOWORD(v208) = 256;
      v62 = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v61 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:v60 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v208 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_24;
    case 22:
      v122 = MEMORY[0x1E696AEC0];
      v123 = CKFrameworkBundle();
      v124 = [v123 localizedStringForKey:@"MESSAGE_STATUS_CONFIRM_SENT_VIA_SATELLITE" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
      v125 = [v122 localizedStringWithFormat:v124];

      v126 = [MEMORY[0x1E69DC668] sharedApplication];
      v127 = [v126 userInterfaceLayoutDirection];

      if (v127 == 1)
      {
        v128 = @"\u200F";
      }

      else
      {
        v128 = @"\u200E";
      }

      v92 = [(__CFString *)v128 stringByAppendingString:v125];

      LOWORD(v207) = 0;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v92 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:0 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v207 shouldDisplayChevronWithTranscriptBackground:?];
      v39 = LABEL_68:;

      goto LABEL_148;
    case 23:
      v16 = CKFrameworkBundle();
      v17 = v16;
      v18 = @"MESSAGE_STATUS_NOT_CANCELLED";
LABEL_37:
      v79 = [v16 localizedStringForKey:v18 value:&stru_1F04268F8 table:@"ChatKit"];

      v33 = v79;
      LOWORD(v207) = 257;
      v39 = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v33 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:0 errorSubText:v33 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v207 shouldDisplayChevronWithTranscriptBackground:?];

      goto LABEL_147;
    case 24:
      v40 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      v33 = CKFrameworkBundle();
      v34 = [v33 localizedStringForKey:@"POLLS_ADD_CHOICE" value:&stru_1F04268F8 table:@"ChatKit"];
      v41 = CKFrameworkBundle();
      v42 = [v41 localizedStringForKey:@"POLLS_ADD_CHOICE" value:&stru_1F04268F8 table:@"ChatKit"];
      v43 = +[CKUIBehavior sharedBehaviors];
      v44 = [v43 transcriptPollsAddChoiceStampButtonColor];
      LOWORD(v207) = 256;
      v39 = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v34 orientation:v40 dateSubText:0 buttonSubText:v42 errorSubText:0 overrideTextColor:0 overrideButtonColor:v44 shouldReplaceWarningIcon:v207 shouldDisplayChevronWithTranscriptBackground:?];

      goto LABEL_146;
    case 25:
      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_35;
    case 26:
      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
      goto LABEL_35;
    case 27:
      v22 = CKFrameworkBundle();
      v23 = v22;
      v24 = @"MESSAGE_STATUS_READ";
LABEL_35:
      v33 = [v22 localizedStringForKey:v24 value:&stru_1F04268F8 table:@"ChatKit"];

      v77 = CKFrameworkBundle();
      v34 = [v77 localizedStringForKey:@"POLLS_ADD_CHOICE" value:&stru_1F04268F8 table:@"ChatKit"];

      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v34, v33];
      v78 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      v72 = +[CKUIBehavior sharedBehaviors];
      v71 = [(__CFString *)v72 transcriptPollsAddChoiceStampButtonColor];
      LOWORD(v209) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v58 orientation:v78 dateSubText:0 buttonSubText:v34 errorSubText:0 overrideTextColor:0 overrideButtonColor:v71 shouldReplaceWarningIcon:v209 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_144;
    default:
      if ([(CKMessageStatusChatItem *)self statusType]!= 21)
      {
LABEL_56:
        v39 = 0;
        goto LABEL_148;
      }

      v215 = [(CKChatItem *)self IMChatItem];
      v102 = [v215 syndicationStatus];
      v219 = *MEMORY[0x1E69DB648];
      v103 = v219;
      v104 = +[CKUIBehavior sharedBehaviors];
      v105 = [v104 transcriptBoldFont];
      v221[0] = v105;
      v220 = *MEMORY[0x1E69DB650];
      v106 = v220;
      v107 = +[CKUIBehavior sharedBehaviors];
      v108 = [v107 theme];
      v109 = [v108 messageStatusLinkTextColor];
      v221[1] = v109;
      v214 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:&v219 count:2];

      v217[0] = v103;
      v110 = +[CKUIBehavior sharedBehaviors];
      v111 = [v110 transcriptMessageStatusFont];
      v217[1] = v106;
      v218[0] = v111;
      v112 = +[CKUIBehavior sharedBehaviors];
      v113 = [v112 theme];
      v114 = [v113 messageStatusChatItemAttributionButtonColor];
      v218[1] = v114;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v218 forKeys:v217 count:2];

      if (v102)
      {
        if (v102 != 1)
        {
          v39 = 0;
          v34 = v214;
          v33 = v215;
          goto LABEL_145;
        }

        v33 = v215;
        v34 = v214;
        if ([v215 wasDetectedAsSWYSpam])
        {
          v115 = objc_alloc(MEMORY[0x1E696AAB0]);
          v60 = CKFrameworkBundle();
          v61 = [v60 localizedStringForKey:@"MARKED_AS_NOT_DONATED" value:&stru_1F04268F8 table:@"ChatKit"];
          v62 = [v115 initWithString:v61 attributes:v214];
LABEL_24:
          v39 = v62;

          goto LABEL_25;
        }

        v60 = [v215 swyAppName];
        if ([v60 length])
        {
          v197 = [v215 isSpamOrUnknown];

          if (v197)
          {
            v39 = 0;
            goto LABEL_145;
          }

          v198 = objc_alloc(MEMORY[0x1E696AAB0]);
          v199 = MEMORY[0x1E696AEC0];
          v200 = CKFrameworkBundle();
          v201 = [v200 localizedStringForKey:@"MARKED_AS_NOT_DONATED_PUBLICSWY" value:&stru_1F04268F8 table:@"ChatKit"];
          v202 = [v215 swyAppName];
          v203 = [v199 stringWithFormat:v201, v202];

          v204 = [MEMORY[0x1E69DC668] sharedApplication];
          v205 = [v204 userInterfaceLayoutDirection];

          if (v205 == 1)
          {
            v206 = @"\u200F";
          }

          else
          {
            v206 = @"\u200E";
          }

          v60 = [(__CFString *)v206 stringByAppendingString:v203];

          v39 = [v198 initWithString:v60 attributes:v58];
        }

        else
        {
          v39 = 0;
        }

LABEL_25:

        goto LABEL_145;
      }

      v33 = v215;
      if ([v215 wasDetectedAsSWYSpam])
      {
        v156 = objc_alloc(MEMORY[0x1E696AAB0]);
        v60 = CKFrameworkBundle();
        v157 = [v60 localizedStringForKey:@"MARKED_AS_DONATED" value:&stru_1F04268F8 table:@"ChatKit"];
        v39 = [v156 initWithString:v157 attributes:v58];

        v34 = v214;
        goto LABEL_25;
      }

      v39 = 0;
      v34 = v214;
LABEL_145:

LABEL_146:
LABEL_147:

LABEL_148:

      return v39;
  }
}

- (CGSize)loadLabelSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v7;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptStatusItemEdgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E695F060];
  v18 = *MEMORY[0x1E695F060];
  v19 = [(CKChatItem *)self transcriptText];
  if ([v19 length])
  {
    v20 = width - (v12 + v16);
    v21 = height - (v10 + v14);
    v22 = [(CKMessageStatusChatItem *)self transcriptButtonText];
    v23 = [v22 length];

    if (v23)
    {
      [(CKMessageStatusChatItem *)self buttonSize];
      v25 = v24;
      v26 = +[CKUIBehavior sharedBehaviors];
      [v26 transcriptButtonContentEdgeInsets];
      v18 = v25 + v27 + v28;
    }

    v29 = [(CKChatItem *)self transcriptText];
    [v29 boundingRectWithSize:3 options:0 context:{v20 - v18, v21}];
    v18 = v30;
    v32 = v31;

    v33 = [(CKChatItem *)self transcriptTraitCollection];
    [v33 displayScale];
    if (v34 == 0.0)
    {
      if (CKMainScreenScale_once_13 != -1)
      {
        [CKMessageStatusChatItem loadLabelSizeThatFits:textAlignmentInsets:];
      }

      v34 = *&CKMainScreenScale_sMainScreenScale_13;
      if (*&CKMainScreenScale_sMainScreenScale_13 == 0.0)
      {
        v34 = 1.0;
      }
    }

    v35 = ceil(v32 * v34) / v34;
  }

  else
  {
    v35 = *(v17 + 8);
  }

  v36 = v18;
  v37 = v35;
  result.height = v37;
  result.width = v36;
  return result;
}

- (CGSize)loadButtonSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v7;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptStatusItemEdgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(CKMessageStatusChatItem *)self transcriptButtonText];
  if (v17)
  {
    v18 = +[CKMessageStatusChatItem sizingButton];
    [v18 setAttributedTitle:v17 forState:0];
    v19 = objc_alloc_init(MEMORY[0x1E69DD2E8]);
    [v19 addSubview:v18];
    [v18 sizeThatFits:{width - (v12 + v16), height - (v10 + v14)}];
    v21 = v20;
    v23 = v22;
    v24 = [(CKChatItem *)self transcriptTraitCollection];
    [v24 displayScale];
    if (v25 == 0.0)
    {
      if (CKMainScreenScale_once_13 != -1)
      {
        [CKMessageStatusChatItem loadLabelSizeThatFits:textAlignmentInsets:];
      }

      v26 = *&CKMainScreenScale_sMainScreenScale_13;
      if (*&CKMainScreenScale_sMainScreenScale_13 == 0.0)
      {
        v26 = 1.0;
      }

      v27 = ceil(v21 * v26) / v26;
      v25 = *&CKMainScreenScale_sMainScreenScale_13;
      if (*&CKMainScreenScale_sMainScreenScale_13 == 0.0)
      {
        v25 = 1.0;
      }
    }

    else
    {
      v27 = ceil(v21 * v25) / v25;
    }

    v28 = ceil(v23 * v25) / v25;

    [v18 removeFromSuperview];
  }

  else
  {
    v27 = *MEMORY[0x1E695F060];
    v28 = *(MEMORY[0x1E695F060] + 8);
  }

  v29 = v27;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

- (id)createReplayText
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (-[CKMessageStatusChatItem allowsEffectAutoPlayback](self, "allowsEffectAutoPlayback") || (-[CKChatItem IMChatItem](self, "IMChatItem"), v3 = objc_claimAutoreleasedReturnValue(), [v3 effectStyleID], v4 = objc_claimAutoreleasedReturnValue(), v3, -[CKMessageStatusChatItem effectsControlStatusTextForEffectStyleID:](self, "effectsControlStatusTextForEffectStyleID:", v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = CKFrameworkBundle();
    v5 = [v6 localizedStringForKey:@"REPLAY_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v30[0] = *MEMORY[0x1E69DB648];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 transcriptBoldFont];
  v31[0] = v8;
  v30[1] = *MEMORY[0x1E69DB650];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 transcriptReplayTextColor];
  v31[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = MEMORY[0x1E69DCAD8];
  v14 = +[CKUIBehavior sharedBehaviors];
  v15 = [v14 theme];
  v16 = [v15 transcriptReplayTextColor];
  v29 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v18 = [v13 configurationWithPaletteColors:v17];

  v19 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v20 = [v18 configurationByApplyingConfiguration:v19];

  v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.counterclockwise" withConfiguration:v20];
  v22 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v21];
  v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttachment:v22 attributes:v12];
  v24 = objc_alloc(MEMORY[0x1E696AAB0]);
  v25 = [@" " stringByAppendingString:v5];
  v26 = [v24 initWithString:v25 attributes:v12];

  [v23 appendAttributedString:v26];
  v27 = [v23 copy];

  return v27;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v32 = *MEMORY[0x1E69E9840];
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
  if (v15 > 0x13)
  {
    goto LABEL_18;
  }

  if (((1 << v15) & 0xDE002) == 0)
  {
    if (((1 << v15) & 0x60) != 0)
    {
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 smallTranscriptSpace];
LABEL_13:
      v18 = v23;
      goto LABEL_14;
    }

    if (v15 == 8)
    {
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 largeTranscriptSpace];
      goto LABEL_13;
    }

LABEL_18:
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        *v31 = 138412546;
        *&v31[4] = v27;
        *&v31[12] = 2112;
        *&v31[14] = objc_opt_class();
        v28 = *&v31[14];
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", v31, 0x16u);
      }
    }

    v29 = [CKUIBehavior sharedBehaviors:*v31];
    [v29 smallTranscriptSpace];
    v18 = v30;

    goto LABEL_15;
  }

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 smallTranscriptSpace];
  v18 = v17;

  if ([v14 hasTail])
  {
    v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v20 = [v19 isRoundTailedBalloonShapeEnabled];

    if ((v20 & 1) == 0)
    {
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 balloonMaskTailSizeForTailShape:1];
      v18 = v18 + v22;
LABEL_14:
    }
  }

LABEL_15:
  v24 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v18 bottomSpacing:0.0];

  return v24;
}

@end