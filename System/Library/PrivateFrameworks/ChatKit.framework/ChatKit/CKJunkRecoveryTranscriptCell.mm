@interface CKJunkRecoveryTranscriptCell
+ (id)attributedRecoverConversationStringWithDeletionDate:(id)date;
+ (id)generateDeleteConversationButton;
+ (id)generateRecoverConversationLabel;
+ (id)generateRecoverJunkButton;
+ (id)reuseIdentifier;
- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKJunkRecoveryTranscriptCell)initWithFrame:(CGRect)frame;
- (CKJunkRecoveryTranscriptCellDelegate)delegate;
- (UIButton)deleteConversationButton;
- (UIButton)recoverJunkButton;
- (UILabel)recoverConversationLabel;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)deleteConversationButtonPressed:(id)pressed;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)recoverJunkButtonPressed:(id)pressed;
- (void)updateRecoverConversationLabelContentForDate:(id)date;
@end

@implementation CKJunkRecoveryTranscriptCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = CKJunkRecoveryTranscriptCell;
  [(CKTranscriptStampCell *)&v16 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  iMChatItem = [itemCopy IMChatItem];
  objc_opt_class();
  LOBYTE(animatedCopy) = objc_opt_isKindOfClass();

  if (animatedCopy)
  {
    iMChatItem2 = [itemCopy IMChatItem];
    earliestMessageDate = [iMChatItem2 earliestMessageDate];
    [(CKJunkRecoveryTranscriptCell *)self updateRecoverConversationLabelContentForDate:earliestMessageDate];
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
    centerTranscriptButtonTextAttributes = 0;
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    centerTranscriptButtonTextAttributes = [v5 centerTranscriptButtonTextAttributes];
  }

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"DELETE_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [v7 localizedStringWithFormat:v9, 1];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v13 = @"\u200F";
  }

  else
  {
    v13 = @"\u200E";
  }

  v14 = [(__CFString *)v13 stringByAppendingString:v10];

  v15 = [v6 initWithString:v14 attributes:centerTranscriptButtonTextAttributes];
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
    centerTranscriptButtonTextAttributes = 0;
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    centerTranscriptButtonTextAttributes = [v5 centerTranscriptButtonTextAttributes];
  }

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOT_SPAM" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [v6 initWithString:v8 attributes:centerTranscriptButtonTextAttributes];

  [v2 setAttributedTitle:v9 forState:0];

  return v2;
}

+ (id)generateRecoverConversationLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = [self attributedRecoverConversationStringWithDeletionDate:0];
  [v4 setAttributedText:v5];

  return v4;
}

+ (id)attributedRecoverConversationStringWithDeletionDate:(id)date
{
  v21 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = [CKUtilities daysUntilJunkFilterDeletionForDate:dateCopy];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = dateCopy;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Computing JunkRecovery text with date %@ → %lu days", buf, 0x16u);
    }
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"JUNK_CONVERSATION_WILL_BE_DELETED_IN_DAYS" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [v6 localizedStringWithFormat:v8, v4];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  LODWORD(v7) = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

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
  transcriptEmphasizedFontAttributes = [v13 transcriptEmphasizedFontAttributes];

  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12 attributes:transcriptEmphasizedFontAttributes];

  return v15;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
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

- (CKJunkRecoveryTranscriptCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CKJunkRecoveryTranscriptCell;
  v3 = [(CKTranscriptLabelCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if ((isModernFilteringEnabled & 1) == 0)
    {
      contentView = [(CKEditableCollectionViewCell *)v3 contentView];
      recoverConversationLabel = [(CKJunkRecoveryTranscriptCell *)v3 recoverConversationLabel];
      [contentView addSubview:recoverConversationLabel];

      contentView2 = [(CKEditableCollectionViewCell *)v3 contentView];
      deleteConversationButton = [(CKJunkRecoveryTranscriptCell *)v3 deleteConversationButton];
      [contentView2 addSubview:deleteConversationButton];

      contentView3 = [(CKEditableCollectionViewCell *)v3 contentView];
      recoverJunkButton = [(CKJunkRecoveryTranscriptCell *)v3 recoverJunkButton];
      [contentView3 addSubview:recoverJunkButton];
    }
  }

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v41.receiver = self;
  v41.super_class = CKJunkRecoveryTranscriptCell;
  [(CKTranscriptStampCell *)&v41 layoutSubviewsForAlignmentContents];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v9 = v7;
  if (isModernFilteringEnabled)
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

    traitCollection = [(CKJunkRecoveryTranscriptCell *)self traitCollection];
    [traitCollection displayScale];
    v16 = MidX - round(v15 * ((v13 + -48.0) * 0.5)) / v15;

    [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v16, v10, v13, v11];
    [(CKJunkRecoveryTranscriptCell *)self _layoutLabelInAlignmentContentRect:v16, v10, v13, v11];
    deleteConversationButton = [(CKJunkRecoveryTranscriptCell *)self deleteConversationButton];
    [deleteConversationButton sizeThatFits:{v13, 1.79769313e308}];
    v19 = v18;
    v40 = v20;

    v42.origin.x = v16;
    v42.origin.y = v10;
    v42.size.width = v13;
    v42.size.height = v11;
    v21 = CGRectGetMidX(v42);
    traitCollection2 = [(CKJunkRecoveryTranscriptCell *)self traitCollection];
    [traitCollection2 displayScale];
    v24 = v21 - round(v19 * 0.5 * v23) / v23;

    recoverConversationLabel = [(CKJunkRecoveryTranscriptCell *)self recoverConversationLabel];
    [recoverConversationLabel frame];
    MaxY = CGRectGetMaxY(v43);

    deleteConversationButton2 = [(CKJunkRecoveryTranscriptCell *)self deleteConversationButton];
    [deleteConversationButton2 setFrame:{v24, MaxY, v19, v40}];

    recoverJunkButton = [(CKJunkRecoveryTranscriptCell *)self recoverJunkButton];
    [recoverJunkButton sizeThatFits:{v13, 1.79769313e308}];
    v30 = v29;
    v32 = v31;

    v44.origin.x = v16;
    v44.origin.y = v10;
    v44.size.width = v13;
    v44.size.height = v11;
    v33 = CGRectGetMidX(v44);
    traitCollection3 = [(CKJunkRecoveryTranscriptCell *)self traitCollection];
    [traitCollection3 displayScale];
    v36 = v33 - round(v30 * 0.5 * v35) / v35;

    deleteConversationButton3 = [(CKJunkRecoveryTranscriptCell *)self deleteConversationButton];
    [deleteConversationButton3 frame];
    v38 = CGRectGetMaxY(v45) + 10.0;

    recoverJunkButton2 = [(CKJunkRecoveryTranscriptCell *)self recoverJunkButton];
    [recoverJunkButton2 setFrame:{v36, v38, v30, v32}];
  }
}

- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if ((isModernFilteringEnabled & 1) == 0)
  {
    recoverConversationLabel = [(CKJunkRecoveryTranscriptCell *)self recoverConversationLabel];
    [recoverConversationLabel sizeThatFits:{width, 1.79769313e308}];
    [recoverConversationLabel setFrame:{x, 8.0, v8, v9}];
  }
}

- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  label = [(CKTranscriptLabelCell *)self label];
  v12 = label;
  v14 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v15 = width + -48.0;
  if (label)
  {
    attributedText = [label attributedText];

    if (attributedText)
    {
      attributedText2 = [v12 attributedText];
      [attributedText2 boundingRectWithSize:1 options:0 context:{v15, 1.79769313e308}];
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
  if (layoutCopy)
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

- (void)recoverJunkButtonPressed:(id)pressed
{
  delegate = [(CKJunkRecoveryTranscriptCell *)self delegate];
  [delegate recoverJunkPressedInTranscriptCell:self];
}

- (void)deleteConversationButtonPressed:(id)pressed
{
  delegate = [(CKJunkRecoveryTranscriptCell *)self delegate];
  [delegate deleteConversationPressedInTranscriptCell:self];
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

- (void)updateRecoverConversationLabelContentForDate:(id)date
{
  v7 = [CKJunkRecoveryTranscriptCell attributedRecoverConversationStringWithDeletionDate:date];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
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