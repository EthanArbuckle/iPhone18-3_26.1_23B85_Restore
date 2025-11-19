@interface CKJunkRecoveryTranscriptCell
+ (id)attributedRecoverConversationStringWithDeletionDate:(id)a3;
+ (id)generateDeleteConversationButton;
+ (id)generateRecoverConversationLabel;
+ (id)generateRecoverJunkButton;
+ (id)reuseIdentifier;
- (CGSize)layoutSizeForWidth:(double)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKJunkRecoveryTranscriptCell)initWithFrame:(CGRect)a3;
- (CKJunkRecoveryTranscriptCellDelegate)delegate;
- (UIButton)deleteConversationButton;
- (UIButton)recoverJunkButton;
- (UILabel)recoverConversationLabel;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)deleteConversationButtonPressed:(id)a3;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)recoverJunkButtonPressed:(id)a3;
- (void)updateRecoverConversationLabelContentForDate:(id)a3;
@end

@implementation CKJunkRecoveryTranscriptCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = CKJunkRecoveryTranscriptCell;
  [(CKTranscriptStampCell *)&v16 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 IMChatItem];
  objc_opt_class();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  if (v9)
  {
    v14 = [v12 IMChatItem];
    v15 = [v14 earliestMessageDate];
    [(CKJunkRecoveryTranscriptCell *)self updateRecoverConversationLabelContentForDate:v15];
  }

  [(CKJunkRecoveryTranscriptCell *)self setNeedsLayout];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)generateDeleteConversationButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptButtonContentEdgeInsets];
  [v2 setContentEdgeInsets:?];

  if (CKIsRunningInMacCatalyst())
  {
    v4 = 0;
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v4 = [v5 centerTranscriptButtonTextAttributes];
  }

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"DELETE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [v7 localizedStringWithFormat:v9, 1];

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  if (v12 == 1)
  {
    v13 = @"\u200F";
  }

  else
  {
    v13 = @"\u200E";
  }

  v14 = [(__CFString *)v13 stringByAppendingString:v10];

  v15 = [v6 initWithString:v14 attributes:v4];
  [v2 setAttributedTitle:v15 forState:0];

  return v2;
}

+ (id)generateRecoverJunkButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptButtonContentEdgeInsets];
  [v2 setContentEdgeInsets:?];

  if (CKIsRunningInMacCatalyst())
  {
    v4 = 0;
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v4 = [v5 centerTranscriptButtonTextAttributes];
  }

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOT_SPAM" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [v6 initWithString:v8 attributes:v4];

  [v2 setAttributedTitle:v9 forState:0];

  return v2;
}

+ (id)generateRecoverConversationLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = [a1 attributedRecoverConversationStringWithDeletionDate:0];
  [v4 setAttributedText:v5];

  return v4;
}

+ (id)attributedRecoverConversationStringWithDeletionDate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [CKUtilities daysUntilJunkFilterDeletionForDate:v3];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v3;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Computing JunkRecovery text with date %@ → %lu days", buf, 0x16u);
    }
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"JUNK_CONVERSATION_WILL_BE_DELETED_IN_DAYS" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [v6 localizedStringWithFormat:v8, v4];

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  LODWORD(v7) = [v10 userInterfaceLayoutDirection] == 1;

  if (v7)
  {
    v11 = @"\u200F";
  }

  else
  {
    v11 = @"\u200E";
  }

  v12 = [(__CFString *)v11 stringByAppendingString:v9];

  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 transcriptEmphasizedFontAttributes];

  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12 attributes:v14];

  return v15;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  if (v6)
  {

    [(CKJunkRecoveryTranscriptCell *)self layoutSizeForWidth:0 applyLayout:width];
  }

  else
  {
    v9 = +[CKJunkRecoveryTranscriptCell generateRecoverConversationLabel];
    v10 = +[CKJunkRecoveryTranscriptCell generateDeleteConversationButton];
    v11 = +[CKJunkRecoveryTranscriptCell generateRecoverJunkButton];
    v12 = width + -48.0;
    [v9 sizeThatFits:{v12, 1.79769313e308}];
    v14 = v13;
    [v10 sizeThatFits:{v12, 1.79769313e308}];
    v16 = v15;
    [v11 sizeThatFits:{v12, 1.79769313e308}];
    v18 = v17 + v16 + v14 + 8.0 + 10.0 + 10.0 + 32.0;

    v7 = v12;
    v8 = v18;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CKJunkRecoveryTranscriptCell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CKJunkRecoveryTranscriptCell;
  v3 = [(CKTranscriptLabelCell *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isModernFilteringEnabled];

    if ((v5 & 1) == 0)
    {
      v6 = [(CKEditableCollectionViewCell *)v3 contentView];
      v7 = [(CKJunkRecoveryTranscriptCell *)v3 recoverConversationLabel];
      [v6 addSubview:v7];

      v8 = [(CKEditableCollectionViewCell *)v3 contentView];
      v9 = [(CKJunkRecoveryTranscriptCell *)v3 deleteConversationButton];
      [v8 addSubview:v9];

      v10 = [(CKEditableCollectionViewCell *)v3 contentView];
      v11 = [(CKJunkRecoveryTranscriptCell *)v3 recoverJunkButton];
      [v10 addSubview:v11];
    }
  }

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v41.receiver = self;
  v41.super_class = CKJunkRecoveryTranscriptCell;
  [(CKTranscriptStampCell *)&v41 layoutSubviewsForAlignmentContents];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v9 = v7;
  if (v4)
  {
    [(CKJunkRecoveryTranscriptCell *)self layoutSizeForWidth:1 applyLayout:v7];
  }

  else
  {
    v10 = v6;
    v11 = v8;
    MidX = CGRectGetMidX(*&v5);
    if (v9 + -48.0 <= 420.0)
    {
      v13 = v9 + -48.0;
    }

    else
    {
      v13 = 420.0;
    }

    v14 = [(CKJunkRecoveryTranscriptCell *)self traitCollection];
    [v14 displayScale];
    v16 = MidX - round(v15 * ((v13 + -48.0) * 0.5)) / v15;

    [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v16, v10, v13, v11];
    [(CKJunkRecoveryTranscriptCell *)self _layoutLabelInAlignmentContentRect:v16, v10, v13, v11];
    v17 = [(CKJunkRecoveryTranscriptCell *)self deleteConversationButton];
    [v17 sizeThatFits:{v13, 1.79769313e308}];
    v19 = v18;
    v40 = v20;

    v42.origin.x = v16;
    v42.origin.y = v10;
    v42.size.width = v13;
    v42.size.height = v11;
    v21 = CGRectGetMidX(v42);
    v22 = [(CKJunkRecoveryTranscriptCell *)self traitCollection];
    [v22 displayScale];
    v24 = v21 - round(v19 * 0.5 * v23) / v23;

    v25 = [(CKJunkRecoveryTranscriptCell *)self recoverConversationLabel];
    [v25 frame];
    MaxY = CGRectGetMaxY(v43);

    v27 = [(CKJunkRecoveryTranscriptCell *)self deleteConversationButton];
    [v27 setFrame:{v24, MaxY, v19, v40}];

    v28 = [(CKJunkRecoveryTranscriptCell *)self recoverJunkButton];
    [v28 sizeThatFits:{v13, 1.79769313e308}];
    v30 = v29;
    v32 = v31;

    v44.origin.x = v16;
    v44.origin.y = v10;
    v44.size.width = v13;
    v44.size.height = v11;
    v33 = CGRectGetMidX(v44);
    v34 = [(CKJunkRecoveryTranscriptCell *)self traitCollection];
    [v34 displayScale];
    v36 = v33 - round(v30 * 0.5 * v35) / v35;

    v37 = [(CKJunkRecoveryTranscriptCell *)self deleteConversationButton];
    [v37 frame];
    v38 = CGRectGetMaxY(v45) + 10.0;

    v39 = [(CKJunkRecoveryTranscriptCell *)self recoverJunkButton];
    [v39 setFrame:{v36, v38, v30, v32}];
  }
}

- (void)_layoutLabelInAlignmentContentRect:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isModernFilteringEnabled];

  if ((v7 & 1) == 0)
  {
    v10 = [(CKJunkRecoveryTranscriptCell *)self recoverConversationLabel];
    [v10 sizeThatFits:{width, 1.79769313e308}];
    [v10 setFrame:{x, 8.0, v8, v9}];
  }
}

- (CGSize)layoutSizeForWidth:(double)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  v11 = [(CKTranscriptLabelCell *)self label];
  v12 = v11;
  v14 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v15 = a3 + -48.0;
  if (v11)
  {
    v16 = [v11 attributedText];

    if (v16)
    {
      v17 = [v12 attributedText];
      [v17 boundingRectWithSize:1 options:0 context:{v15, 1.79769313e308}];
      v14 = v18;
      v13 = v19;
    }
  }

  if (CKMainScreenScale_once_59 != -1)
  {
    [CKJunkRecoveryTranscriptCell layoutSizeForWidth:applyLayout:];
  }

  v20 = *&CKMainScreenScale_sMainScreenScale_59;
  [v12 setNumberOfLines:0];
  if (v4)
  {
    v21 = 1.0;
    if (v20 != 0.0)
    {
      v21 = v20;
    }

    [v12 setFrame:{floor((v8 + (v10 - v14) * 0.5) * v21) / v21, 8.0, v14, v13}];
  }

  v22 = v15;
  v23 = v13 + 8.0;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKJunkRecoveryTranscriptCell;
  [(CKTranscriptStampCell *)&v3 prepareForReuse];
  [(CKJunkRecoveryTranscriptCell *)self setNeedsLayout];
}

- (void)recoverJunkButtonPressed:(id)a3
{
  v4 = [(CKJunkRecoveryTranscriptCell *)self delegate];
  [v4 recoverJunkPressedInTranscriptCell:self];
}

- (void)deleteConversationButtonPressed:(id)a3
{
  v4 = [(CKJunkRecoveryTranscriptCell *)self delegate];
  [v4 deleteConversationPressedInTranscriptCell:self];
}

- (UILabel)recoverConversationLabel
{
  recoverConversationLabel = self->_recoverConversationLabel;
  if (!recoverConversationLabel)
  {
    v4 = +[CKJunkRecoveryTranscriptCell generateRecoverConversationLabel];
    v5 = self->_recoverConversationLabel;
    self->_recoverConversationLabel = v4;

    [(UILabel *)self->_recoverConversationLabel setAdjustsFontForContentSizeCategory:1];
    recoverConversationLabel = self->_recoverConversationLabel;
  }

  return recoverConversationLabel;
}

- (void)updateRecoverConversationLabelContentForDate:(id)a3
{
  v7 = [CKJunkRecoveryTranscriptCell attributedRecoverConversationStringWithDeletionDate:a3];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernFilteringEnabled];

  if (v5)
  {
    [(CKTranscriptLabelCell *)self label];
  }

  else
  {
    [(CKJunkRecoveryTranscriptCell *)self recoverConversationLabel];
  }
  v6 = ;
  [v6 setAttributedText:v7];
}

- (UIButton)deleteConversationButton
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    deleteConversationButton = self->_deleteConversationButton;
    if (!deleteConversationButton)
    {
      v7 = +[CKJunkRecoveryTranscriptCell generateDeleteConversationButton];
      v8 = self->_deleteConversationButton;
      self->_deleteConversationButton = v7;

      [(UIButton *)self->_deleteConversationButton addTarget:self action:sel_deleteConversationButtonPressed_ forEvents:64];
      deleteConversationButton = self->_deleteConversationButton;
    }

    v5 = deleteConversationButton;
  }

  return v5;
}

- (UIButton)recoverJunkButton
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    recoverJunkButton = self->_recoverJunkButton;
    if (!recoverJunkButton)
    {
      v7 = +[CKJunkRecoveryTranscriptCell generateRecoverJunkButton];
      v8 = self->_recoverJunkButton;
      self->_recoverJunkButton = v7;

      [(UIButton *)self->_recoverJunkButton addTarget:self action:sel_recoverJunkButtonPressed_ forEvents:64];
      recoverJunkButton = self->_recoverJunkButton;
    }

    v5 = recoverJunkButton;
  }

  return v5;
}

- (CKJunkRecoveryTranscriptCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end