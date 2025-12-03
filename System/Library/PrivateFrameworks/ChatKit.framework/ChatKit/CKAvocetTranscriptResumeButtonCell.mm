@interface CKAvocetTranscriptResumeButtonCell
+ (double)heightForChatItem:(id)item fittingSize:(CGSize)size;
+ (id)_buttonWithSystemImageName:(id)name titleString:(id)string;
+ (id)_createButtonConfigurationWithSystemImageName:(id)name titleString:(id)string;
+ (id)_makeTextViaStewieButton;
+ (void)_configureLabel:(id)label;
- (CKAvocetTranscriptResumeButtonCell)initWithFrame:(CGRect)frame;
- (UIButton)textViaStewieButton;
- (id)attributedButtonText;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setChatIdentifier:(id)identifier;
- (void)setShowStewieTextButton:(BOOL)button;
- (void)touchUpInsideTextViaStewieButton:(id)button;
@end

@implementation CKAvocetTranscriptResumeButtonCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v15.receiver = self;
  v15.super_class = CKAvocetTranscriptResumeButtonCell;
  itemCopy = item;
  [(CKTranscriptStampCell *)&v15 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  chatIdentifier = [itemCopy chatIdentifier];
  [(CKAvocetTranscriptResumeButtonCell *)self setChatIdentifier:chatIdentifier];

  shouldShowStewieTextButton = [itemCopy shouldShowStewieTextButton];
  [(CKAvocetTranscriptResumeButtonCell *)self setShowStewieTextButton:shouldShowStewieTextButton];
  [(CKAvocetTranscriptResumeButtonCell *)self setNeedsLayout];
}

+ (double)heightForChatItem:(id)item fittingSize:(CGSize)size
{
  width = size.width;
  createStampLabelView = [self createStampLabelView];
  [self _configureLabel:createStampLabelView];
  _makeTextViaStewieButton = [objc_opt_class() _makeTextViaStewieButton];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptBoldTextAlignmentInsets];
  v10 = v9;
  v12 = v11;

  v13 = width - (v10 + v12);
  attributedText = [createStampLabelView attributedText];
  [attributedText boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v16 = v15;

  v17 = v13 + -32.0;
  if (v13 + -32.0 > 400.0)
  {
    v17 = 400.0;
  }

  [_makeTextViaStewieButton sizeThatFits:{v17, 1.79769313e308}];
  v19 = v16 + 24.0 + v18 + 32.0;

  return v19;
}

- (void)setChatIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  chatIdentifier = self->_chatIdentifier;
  if (chatIdentifier != identifierCopy && ![(NSString *)chatIdentifier isEqualToString:identifierCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = identifierCopy;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "chatIdentifier: %@", &v8, 0xCu);
      }
    }

    objc_storeStrong(&self->_chatIdentifier, identifier);
  }
}

+ (void)_configureLabel:(id)label
{
  labelCopy = label;
  v4 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v4 transcriptEmphasizedFontAttributes];

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"SATELLITE_CONNECTION_ENDED" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
  v8 = [v5 initWithString:v7 attributes:transcriptEmphasizedFontAttributes];
  [labelCopy setAttributedText:v8];

  [labelCopy setNumberOfLines:0];
}

+ (id)_makeTextViaStewieButton
{
  v2 = objc_opt_class();
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"TEXT_ROADSIDE_SERVICES" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
  v5 = [v2 _buttonWithSystemImageName:@"satellite.fill" titleString:v4];

  return v5;
}

+ (id)_createButtonConfigurationWithSystemImageName:(id)name titleString:(id)string
{
  v5 = MEMORY[0x1E69DC740];
  stringCopy = string;
  nameCopy = name;
  grayButtonConfiguration = [v5 grayButtonConfiguration];
  [grayButtonConfiguration setButtonSize:3];
  [grayButtonConfiguration setCornerStyle:4];
  [grayButtonConfiguration setTitle:stringCopy];

  v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy];

  v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v11 = [v9 imageWithConfiguration:v10];
  [grayButtonConfiguration setImage:v11];

  [grayButtonConfiguration setImagePadding:5.0];
  [grayButtonConfiguration contentInsets];
  [grayButtonConfiguration setContentInsets:?];

  return grayButtonConfiguration;
}

+ (id)_buttonWithSystemImageName:(id)name titleString:(id)string
{
  v4 = MEMORY[0x1E69DC738];
  v5 = [CKAvocetTranscriptResumeButtonCell _createButtonConfigurationWithSystemImageName:name titleString:string];
  v6 = [v4 buttonWithConfiguration:v5 primaryAction:0];

  return v6;
}

- (CKAvocetTranscriptResumeButtonCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKAvocetTranscriptResumeButtonCell;
  v3 = [(CKTranscriptLabelCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    label = [(CKTranscriptLabelCell *)v3 label];
    [v4 _configureLabel:label];

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    textViaStewieButton = [(CKAvocetTranscriptResumeButtonCell *)v3 textViaStewieButton];
    [contentView addSubview:textViaStewieButton];
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
  textViaStewieButton = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
  v12 = textViaStewieButton;
  v13 = v8 + -32.0;
  if (v8 + -32.0 > 400.0)
  {
    v13 = 400.0;
  }

  [textViaStewieButton sizeThatFits:{v13, 1.79769313e308}];
  v15 = v14;
  v17 = fmax(v16, 200.0);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  MidX = CGRectGetMidX(v25);
  traitCollection = [(CKAvocetTranscriptResumeButtonCell *)self traitCollection];
  [traitCollection displayScale];
  v21 = MidX - round(v17 * 0.5 * v20) / v20;

  label = [(CKTranscriptLabelCell *)self label];
  [label frame];
  v23 = CGRectGetMaxY(v26) + 24.0;

  [v12 setFrame:{v21, v23, v17, v15}];
  [v12 setHidden:{-[CKAvocetTranscriptResumeButtonCell isShowingStewieTextButton](self, "isShowingStewieTextButton") ^ 1}];
}

- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  v8 = [(CKTranscriptLabelCell *)self label:rect.origin.x];
  attributedText = [v8 attributedText];
  [attributedText boundingRectWithSize:1 options:0 context:{width, 1.79769313e308}];
  v7 = v6;

  [v8 setFrame:{x, 8.0, width, v7}];
}

- (void)setShowStewieTextButton:(BOOL)button
{
  buttonCopy = button;
  textViaStewieButton = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
  isHidden = [textViaStewieButton isHidden];

  if (self->_showStewieTextButton != buttonCopy || ((isHidden ^ buttonCopy) & 1) == 0)
  {
    textViaStewieButton2 = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
    [textViaStewieButton2 setHidden:!buttonCopy];

    [(CKAvocetTranscriptResumeButtonCell *)self setNeedsLayout];
    [(CKAvocetTranscriptResumeButtonCell *)self layoutIfNeeded];
  }

  self->_showStewieTextButton = buttonCopy;
}

- (id)attributedButtonText
{
  textViaStewieButton = [(CKAvocetTranscriptResumeButtonCell *)self textViaStewieButton];
  v3 = [textViaStewieButton attributedTitleForState:0];

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAvocetTranscriptResumeButtonCell;
  [(CKTranscriptStampCell *)&v3 prepareForReuse];
  [(CKAvocetTranscriptResumeButtonCell *)self setNeedsLayout];
}

- (void)touchUpInsideTextViaStewieButton:(id)button
{
  v12 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      chatIdentifier = self->_chatIdentifier;
      v8 = 138412546;
      v9 = buttonCopy;
      v10 = 2112;
      v11 = chatIdentifier;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "called touchUpInsideTextViaStewieButton: %@, chatIdentifier: %@", &v8, 0x16u);
    }
  }

  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  [mEMORY[0x1E69A5B00] openStewieAppForChatIdentifier:self->_chatIdentifier completion:0];
}

- (UIButton)textViaStewieButton
{
  textViaStewieButton = self->_textViaStewieButton;
  if (!textViaStewieButton)
  {
    _makeTextViaStewieButton = [objc_opt_class() _makeTextViaStewieButton];
    v5 = self->_textViaStewieButton;
    self->_textViaStewieButton = _makeTextViaStewieButton;

    [(UIButton *)self->_textViaStewieButton addTarget:self action:sel_touchUpInsideTextViaStewieButton_ forEvents:64];
    textViaStewieButton = self->_textViaStewieButton;
  }

  return textViaStewieButton;
}

@end