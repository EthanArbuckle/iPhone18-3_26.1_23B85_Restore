@interface CKAvocetTranscriptResumeButtonCell
+ (double)heightForChatItem:(id)a3 fittingSize:(CGSize)a4;
+ (id)_buttonWithSystemImageName:(id)a3 titleString:(id)a4;
+ (id)_createButtonConfigurationWithSystemImageName:(id)a3 titleString:(id)a4;
+ (id)_makeTextViaStewieButton;
+ (void)_configureLabel:(id)a3;
- (CKAvocetTranscriptResumeButtonCell)initWithFrame:(CGRect)a3;
- (UIButton)textViaStewieButton;
- (id)attributedButtonText;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setChatIdentifier:(id)a3;
- (void)setShowStewieTextButton:(BOOL)a3;
- (void)touchUpInsideTextViaStewieButton:(id)a3;
@end

@implementation CKAvocetTranscriptResumeButtonCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CKAvocetTranscriptResumeButtonCell;
  v12 = a3;
  [(CKTranscriptStampCell *)&v15 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 chatIdentifier];
  [(CKAvocetTranscriptResumeButtonCell *)self setChatIdentifier:v13];

  v14 = [v12 shouldShowStewieTextButton];
  [(CKAvocetTranscriptResumeButtonCell *)self setShowStewieTextButton:v14];
  [(CKAvocetTranscriptResumeButtonCell *)self setNeedsLayout];
}

+ (double)heightForChatItem:(id)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v6 = [a1 createStampLabelView];
  [a1 _configureLabel:v6];
  v7 = [objc_opt_class() _makeTextViaStewieButton];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptBoldTextAlignmentInsets];
  v10 = v9;
  v12 = v11;

  v13 = width - (v10 + v12);
  v14 = [v6 attributedText];
  [v14 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v16 = v15;

  v17 = v13 + -32.0;
  if (v13 + -32.0 > 400.0)
  {
    v17 = 400.0;
  }

  [v7 sizeThatFits:{v17, 1.79769313e308}];
  v19 = v16 + 24.0 + v18 + 32.0;

  return v19;
}

- (void)setChatIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  chatIdentifier = self->_chatIdentifier;
  if (chatIdentifier != v5 && ![(NSString *)chatIdentifier isEqualToString:v5])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "chatIdentifier: %@", &v8, 0xCu);
      }
    }

    objc_storeStrong(&self->_chatIdentifier, a3);
  }
}

+ (void)_configureLabel:(id)a3
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  v9 = [v4 transcriptEmphasizedFontAttributes];

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"SATELLITE_CONNECTION_ENDED" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
  v8 = [v5 initWithString:v7 attributes:v9];
  [v3 setAttributedText:v8];

  [v3 setNumberOfLines:0];
}

+ (id)_makeTextViaStewieButton
{
  v2 = objc_opt_class();
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"TEXT_ROADSIDE_SERVICES" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
  v5 = [v2 _buttonWithSystemImageName:@"satellite.fill" titleString:v4];

  return v5;
}

+ (id)_createButtonConfigurationWithSystemImageName:(id)a3 titleString:(id)a4
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  v8 = [v5 grayButtonConfiguration];
  [v8 setButtonSize:3];
  [v8 setCornerStyle:4];
  [v8 setTitle:v6];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7];

  v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v11 = [v9 imageWithConfiguration:v10];
  [v8 setImage:v11];

  [v8 setImagePadding:5.0];
  [v8 contentInsets];
  [v8 setContentInsets:?];

  return v8;
}

+ (id)_buttonWithSystemImageName:(id)a3 titleString:(id)a4
{
  v4 = MEMORY[0x1E69DC738];
  v5 = [CKAvocetTranscriptResumeButtonCell _createButtonConfigurationWithSystemImageName:a3 titleString:a4];
  v6 = [v4 buttonWithConfiguration:v5 primaryAction:0];

  return v6;
}

- (CKAvocetTranscriptResumeButtonCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKAvocetTranscriptResumeButtonCell;
  v3 = [(CKTranscriptLabelCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(CKTranscriptLabelCell *)v3 label];
    [v4 _configureLabel:v5];

    v6 = [(CKEditableCollectionViewCell *)v3 contentView];
    v7 = [(CKAvocetTranscriptResumeButtonCell *)v3 textViaStewieButton];
    [v6 addSubview:v7];
  }

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v24.receiver = self;
  v24.super_class = CKAvocetTranscriptResumeButtonCell;
  [(CKTranscriptStampCell *)&v24 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKAvocetTranscriptResumeButtonCell *)self _layoutLabelInAlignmentContentRect:?];
  v11 = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
  v12 = v11;
  v13 = v8 + -32.0;
  if (v8 + -32.0 > 400.0)
  {
    v13 = 400.0;
  }

  [v11 sizeThatFits:{v13, 1.79769313e308}];
  v15 = v14;
  v17 = fmax(v16, 200.0);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  MidX = CGRectGetMidX(v25);
  v19 = [(CKAvocetTranscriptResumeButtonCell *)self traitCollection];
  [v19 displayScale];
  v21 = MidX - round(v17 * 0.5 * v20) / v20;

  v22 = [(CKTranscriptLabelCell *)self label];
  [v22 frame];
  v23 = CGRectGetMaxY(v26) + 24.0;

  [v12 setFrame:{v21, v23, v17, v15}];
  [v12 setHidden:{-[CKAvocetTranscriptResumeButtonCell isShowingStewieTextButton](self, "isShowingStewieTextButton") ^ 1}];
}

- (void)_layoutLabelInAlignmentContentRect:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  v8 = [(CKTranscriptLabelCell *)self label:a3.origin.x];
  v5 = [v8 attributedText];
  [v5 boundingRectWithSize:1 options:0 context:{width, 1.79769313e308}];
  v7 = v6;

  [v8 setFrame:{x, 8.0, width, v7}];
}

- (void)setShowStewieTextButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
  v6 = [v5 isHidden];

  if (self->_showStewieTextButton != v3 || ((v6 ^ v3) & 1) == 0)
  {
    v7 = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
    [v7 setHidden:!v3];

    [(CKAvocetTranscriptResumeButtonCell *)self setNeedsLayout];
    [(CKAvocetTranscriptResumeButtonCell *)self layoutIfNeeded];
  }

  self->_showStewieTextButton = v3;
}

- (id)attributedButtonText
{
  v2 = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAvocetTranscriptResumeButtonCell;
  [(CKTranscriptStampCell *)&v3 prepareForReuse];
  [(CKAvocetTranscriptResumeButtonCell *)self setNeedsLayout];
}

- (void)touchUpInsideTextViaStewieButton:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      chatIdentifier = self->_chatIdentifier;
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = chatIdentifier;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "called touchUpInsideTextViaStewieButton: %@, chatIdentifier: %@", &v8, 0x16u);
    }
  }

  v7 = [MEMORY[0x1E69A5B00] sharedInstance];
  [v7 openStewieAppForChatIdentifier:self->_chatIdentifier completion:0];
}

- (UIButton)textViaStewieButton
{
  textViaStewieButton = self->_textViaStewieButton;
  if (!textViaStewieButton)
  {
    v4 = [objc_opt_class() _makeTextViaStewieButton];
    v5 = self->_textViaStewieButton;
    self->_textViaStewieButton = v4;

    [(UIButton *)self->_textViaStewieButton addTarget:self action:sel_touchUpInsideTextViaStewieButton_ forEvents:64];
    textViaStewieButton = self->_textViaStewieButton;
  }

  return textViaStewieButton;
}

@end