@interface CKKeyTransparencyTranscriptCell
+ (double)heightForChatItem:(id)item fittingSize:(CGSize)size;
+ (id)generateActionButton;
+ (id)generateLabel;
+ (id)generateWarningImageView;
+ (id)reuseIdentifier;
- (CKKeyTransparencyTranscriptCell)initWithFrame:(CGRect)frame;
- (CKKeyTransparencyTranscriptCellDelegate)delegate;
- (UIButton)actionButton;
- (UIImageView)warningImageView;
- (UILabel)label;
- (id)clearWarningAction;
- (id)learnMoreAction;
- (id)menuForKTStatusError;
- (id)menuForKTStatusTurnedOff;
- (id)menuForKTStatusUnavailable;
- (id)reportToAppleAction;
- (id)verifyConversationAction;
- (void)_layoutButtonInAlignmentContentRect:(CGRect)rect;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect;
- (void)_layoutWarningImageInAlignmentContentRect:(CGRect)rect;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setAttributedText:(id)text;
- (void)setIsGroupChat:(BOOL)chat;
- (void)setKeyTransparencyStatus:(unint64_t)status;
- (void)setupKeyTransparencyMenu;
@end

@implementation CKKeyTransparencyTranscriptCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v15.receiver = self;
  v15.super_class = CKKeyTransparencyTranscriptCell;
  itemCopy = item;
  [(CKTranscriptCell *)&v15 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];
  [(CKKeyTransparencyTranscriptCell *)self setAttributedText:transcriptText];

  iMChatItem = [itemCopy IMChatItem];

  if (iMChatItem)
  {
    -[CKKeyTransparencyTranscriptCell setIsGroupChat:](self, "setIsGroupChat:", [iMChatItem isGroupChat]);
    -[CKKeyTransparencyTranscriptCell setKeyTransparencyStatus:](self, "setKeyTransparencyStatus:", [iMChatItem status]);
  }
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)generateWarningImageView
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v4 = [v2 imageByApplyingSymbolConfiguration:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
  v6 = +[CKUIBehavior sharedBehaviors];
  theme = [v6 theme];
  transcriptTextColor = [theme transcriptTextColor];
  [v5 setTintColor:transcriptTextColor];

  return v5;
}

+ (id)generateActionButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptButtonContentEdgeInsets];
  [v2 setContentEdgeInsets:?];

  v4 = +[CKUIBehavior sharedBehaviors];
  centerTranscriptButtonTextAttributes = [v4 centerTranscriptButtonTextAttributes];

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"KT_MORE_TRANSCRIPT_LINK" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v9 = [v6 initWithString:v8 attributes:centerTranscriptButtonTextAttributes];

  [v2 setAttributedTitle:v9 forState:0];

  return v2;
}

+ (id)generateLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setNumberOfLines:0];

  return v3;
}

+ (double)heightForChatItem:(id)item fittingSize:(CGSize)size
{
  width = size.width;
  itemCopy = item;
  v6 = +[CKKeyTransparencyTranscriptCell generateLabel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = itemCopy;
    iMChatItem = [v7 IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iMChatItem2 = [v7 IMChatItem];
      affectedHandles = [iMChatItem2 affectedHandles];
      v12 = +[CKKeyTransparencyTranscriptUtilities transcriptStringFromHandles:status:](CKKeyTransparencyTranscriptUtilities, "transcriptStringFromHandles:status:", affectedHandles, [iMChatItem2 status]);

      [v6 setAttributedText:v12];
    }
  }

  v13 = width + -64.0;
  [v6 sizeThatFits:{v13, 1.79769313e308}];
  v15 = v14;
  v16 = +[CKKeyTransparencyTranscriptCell generateActionButton];
  [v16 sizeThatFits:{v13, 1.79769313e308}];
  v18 = v17 + -2.0;
  v19 = +[CKKeyTransparencyTranscriptCell generateWarningImageView];
  [v19 frame];
  v21 = v15 + 16.0 + v18 + v20 + 8.0;

  return v21;
}

- (CKKeyTransparencyTranscriptCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CKKeyTransparencyTranscriptCell;
  v3 = [(CKTranscriptCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    warningImageView = [(CKKeyTransparencyTranscriptCell *)v4 warningImageView];
    [contentView addSubview:warningImageView];

    contentView2 = [(CKEditableCollectionViewCell *)v4 contentView];
    label = [(CKKeyTransparencyTranscriptCell *)v4 label];
    [contentView2 addSubview:label];

    contentView3 = [(CKEditableCollectionViewCell *)v4 contentView];
    actionButton = [(CKKeyTransparencyTranscriptCell *)v4 actionButton];
    [contentView3 addSubview:actionButton];
  }

  return v4;
}

- (void)layoutSubviewsForAlignmentContents
{
  v8.receiver = self;
  v8.super_class = CKKeyTransparencyTranscriptCell;
  [(CKEditableCollectionViewCell *)&v8 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  if (width > 420.0)
  {
    width = 420.0;
  }

  v7 = MidX + width * -0.5;
  [(CKKeyTransparencyTranscriptCell *)self _layoutWarningImageInAlignmentContentRect:v7, y, width, height];
  [(CKKeyTransparencyTranscriptCell *)self _layoutLabelInAlignmentContentRect:v7, y, width, height];
  [(CKKeyTransparencyTranscriptCell *)self _layoutButtonInAlignmentContentRect:v7, y, width, height];
}

- (void)_layoutWarningImageInAlignmentContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  warningImageView = [(CKKeyTransparencyTranscriptCell *)self warningImageView];
  v18 = warningImageView;
  v9 = width + -64.0;
  if (width + -64.0 > 420.0)
  {
    v9 = 420.0;
  }

  [warningImageView sizeThatFits:{v9, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  traitCollection = [(CKKeyTransparencyTranscriptCell *)self traitCollection];
  [traitCollection displayScale];
  v17 = MidX - round(v11 * 0.5 * v16) / v16;

  [v18 setFrame:{v17, 8.0, v11, v13}];
}

- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  label = [(CKKeyTransparencyTranscriptCell *)self label];
  [label sizeThatFits:{width, 1.79769313e308}];
  v9 = v8;
  v11 = v10;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  traitCollection = [(CKKeyTransparencyTranscriptCell *)self traitCollection];
  [traitCollection displayScale];
  v15 = MidX - round(v9 * 0.5 * v14) / v14;

  warningImageView = [(CKKeyTransparencyTranscriptCell *)self warningImageView];
  [warningImageView frame];
  v17 = CGRectGetMaxY(v21) + 8.0;

  [label setFrame:{v15, v17, v9, v11}];
}

- (void)_layoutButtonInAlignmentContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  actionButton = [(CKKeyTransparencyTranscriptCell *)self actionButton];
  v20 = actionButton;
  v9 = width + -64.0;
  if (width + -64.0 > 420.0)
  {
    v9 = 420.0;
  }

  [actionButton sizeThatFits:{v9, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidX = CGRectGetMidX(v22);
  traitCollection = [(CKKeyTransparencyTranscriptCell *)self traitCollection];
  [traitCollection displayScale];
  v17 = MidX - round(v11 * 0.5 * v16) / v16;

  label = [(CKKeyTransparencyTranscriptCell *)self label];
  [label frame];
  v19 = CGRectGetMaxY(v23) + -2.0;

  [v20 setFrame:{v17, v19, v11, v13}];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (self->_attributedText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_attributedText, text);
    [(UILabel *)self->_label setAttributedText:v6];
    textCopy = v6;
  }
}

- (void)setIsGroupChat:(BOOL)chat
{
  if (self->_isGroupChat != chat)
  {
    self->_isGroupChat = chat;
  }
}

- (void)setKeyTransparencyStatus:(unint64_t)status
{
  if (self->_keyTransparencyStatus != status)
  {
    self->_keyTransparencyStatus = status;
    [(CKKeyTransparencyTranscriptCell *)self setupKeyTransparencyMenu];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKKeyTransparencyTranscriptCell;
  [(CKTranscriptCell *)&v3 prepareForReuse];
  [(CKKeyTransparencyTranscriptCell *)self setNeedsLayout];
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = +[CKKeyTransparencyTranscriptCell generateLabel];
    v5 = self->_label;
    self->_label = v4;

    label = self->_label;
  }

  return label;
}

- (UIButton)actionButton
{
  actionButton = self->_actionButton;
  if (!actionButton)
  {
    v4 = +[CKKeyTransparencyTranscriptCell generateActionButton];
    v5 = self->_actionButton;
    self->_actionButton = v4;

    actionButton = self->_actionButton;
  }

  return actionButton;
}

- (UIImageView)warningImageView
{
  warningImageView = self->_warningImageView;
  if (!warningImageView)
  {
    v4 = +[CKKeyTransparencyTranscriptCell generateWarningImageView];
    v5 = self->_warningImageView;
    self->_warningImageView = v4;

    warningImageView = self->_warningImageView;
  }

  return warningImageView;
}

- (void)setupKeyTransparencyMenu
{
  [(UIButton *)self->_actionButton setShowsMenuAsPrimaryAction:1];
  keyTransparencyStatus = self->_keyTransparencyStatus;
  if (keyTransparencyStatus - 5 < 2)
  {
    actionButton = self->_actionButton;
    menuForKTStatusError = [(CKKeyTransparencyTranscriptCell *)self menuForKTStatusError];
  }

  else if (keyTransparencyStatus == 9)
  {
    actionButton = self->_actionButton;
    menuForKTStatusError = [(CKKeyTransparencyTranscriptCell *)self menuForKTStatusTurnedOff];
  }

  else
  {
    if (keyTransparencyStatus != 11)
    {
      return;
    }

    actionButton = self->_actionButton;
    menuForKTStatusError = [(CKKeyTransparencyTranscriptCell *)self menuForKTStatusUnavailable];
  }

  v6 = menuForKTStatusError;
  [(UIButton *)actionButton setMenu:?];
}

- (id)menuForKTStatusError
{
  v17[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  learnMoreAction = [(CKKeyTransparencyTranscriptCell *)self learnMoreAction];
  reportToAppleAction = [(CKKeyTransparencyTranscriptCell *)self reportToAppleAction];
  verifyConversationAction = [(CKKeyTransparencyTranscriptCell *)self verifyConversationAction];
  clearWarningAction = [(CKKeyTransparencyTranscriptCell *)self clearWarningAction];
  v8 = MEMORY[0x1E69DCC60];
  v17[0] = clearWarningAction;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v10 = [v8 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v9];

  v16[0] = v10;
  v16[1] = verifyConversationAction;
  v16[2] = reportToAppleAction;
  v16[3] = learnMoreAction;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [array addObjectsFromArray:v11];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyReportToAppleEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyReportToAppleEnabled];

  if ((isKeyTransparencyReportToAppleEnabled & 1) == 0)
  {
    [array removeObject:reportToAppleAction];
  }

  if (self->_isGroupChat)
  {
    [array removeObject:verifyConversationAction];
  }

  v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:array];

  return v14;
}

- (id)menuForKTStatusUnavailable
{
  v16[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  learnMoreAction = [(CKKeyTransparencyTranscriptCell *)self learnMoreAction];
  reportToAppleAction = [(CKKeyTransparencyTranscriptCell *)self reportToAppleAction];
  clearWarningAction = [(CKKeyTransparencyTranscriptCell *)self clearWarningAction];
  v7 = MEMORY[0x1E69DCC60];
  v16[0] = clearWarningAction;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v7 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v8];

  v15[0] = v9;
  v15[1] = reportToAppleAction;
  v15[2] = learnMoreAction;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [array addObjectsFromArray:v10];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyReportToAppleEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyReportToAppleEnabled];

  if ((isKeyTransparencyReportToAppleEnabled & 1) == 0)
  {
    [array removeObject:reportToAppleAction];
  }

  v13 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:array];

  return v13;
}

- (id)menuForKTStatusTurnedOff
{
  v13[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  learnMoreAction = [(CKKeyTransparencyTranscriptCell *)self learnMoreAction];
  clearWarningAction = [(CKKeyTransparencyTranscriptCell *)self clearWarningAction];
  v6 = MEMORY[0x1E69DCC60];
  v13[0] = clearWarningAction;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v6 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v7];

  v12[0] = v8;
  v12[1] = learnMoreAction;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [array addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:array];

  return v10;
}

- (id)learnMoreAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_LEARN_MORE_ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CKKeyTransparencyTranscriptCell_learnMoreAction__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __50__CKKeyTransparencyTranscriptCell_learnMoreAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyTranscriptCellDidSelectLearnMore:v3];
}

- (id)reportToAppleAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_REPORT_TO_APPLE_ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CKKeyTransparencyTranscriptCell_reportToAppleAction__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __54__CKKeyTransparencyTranscriptCell_reportToAppleAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyTranscriptCellDidRequestReportToApple:v3];
}

- (id)verifyConversationAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_VERIFY_CONVERSATION_ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CKKeyTransparencyTranscriptCell_verifyConversationAction__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __59__CKKeyTransparencyTranscriptCell_verifyConversationAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyTranscriptCellDidRequestVerification:v3];
}

- (id)clearWarningAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_CLEAR_WARNING" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __53__CKKeyTransparencyTranscriptCell_clearWarningAction__block_invoke;
  v11 = &unk_1E72EBCD8;
  objc_copyWeak(&v12, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:&v8];

  [v6 setAttributes:{2, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __53__CKKeyTransparencyTranscriptCell_clearWarningAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyTranscriptCellDidSelectIgnoreFailures:v3];
}

- (CKKeyTransparencyTranscriptCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end