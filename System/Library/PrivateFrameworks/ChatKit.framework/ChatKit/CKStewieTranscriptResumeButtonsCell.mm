@interface CKStewieTranscriptResumeButtonsCell
+ (CGSize)_sizeForButton:(id)button withSizingWidth:(double)width;
+ (double)heightForChatItem:(id)item fittingSize:(CGSize)size;
+ (id)_buttonWithSystemImageName:(id)name titleString:(id)string;
+ (id)_createButtonConfigurationWithSystemImageName:(id)name titleString:(id)string;
+ (id)_makeCallEmergencyServicesButton;
+ (id)_makeTextViaStewieButton;
+ (void)_configureLabel:(id)label;
- (CKStewieTranscriptResumeButtonsCell)initWithFrame:(CGRect)frame;
- (UIButton)callEmergencyServicesButton;
- (UIButton)textViaStewieButton;
- (id)attributedButtonText;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)rect;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setShowStewieTextButton:(BOOL)button;
- (void)touchUpInsideCallEmergencyServicesButton:(id)button;
- (void)touchUpInsideTextViaStewieButton:(id)button;
@end

@implementation CKStewieTranscriptResumeButtonsCell

+ (double)heightForChatItem:(id)item fittingSize:(CGSize)size
{
  width = size.width;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shouldShowStewieTextButton = [itemCopy shouldShowStewieTextButton];
  }

  else
  {
    shouldShowStewieTextButton = 1;
  }

  createStampLabelView = [self createStampLabelView];
  [self _configureLabel:createStampLabelView];
  _makeCallEmergencyServicesButton = [objc_opt_class() _makeCallEmergencyServicesButton];
  _makeTextViaStewieButton = [objc_opt_class() _makeTextViaStewieButton];
  [itemCopy contentInsets];
  v13 = width - (v11 + v12);
  attributedText = [createStampLabelView attributedText];
  [attributedText boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v16 = v15;

  if (v13 + -32.0 <= 400.0)
  {
    v17 = v13 + -32.0;
  }

  else
  {
    v17 = 400.0;
  }

  [self _sizeForButton:_makeCallEmergencyServicesButton withSizingWidth:v17];
  v19 = v18;
  if (shouldShowStewieTextButton)
  {
    [self _sizeForButton:_makeTextViaStewieButton withSizingWidth:v17];
  }

  else
  {
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  v21 = v16 + 24.0 + v19 + 16.0 + v20 + 32.0;

  return v21;
}

+ (void)_configureLabel:(id)label
{
  labelCopy = label;
  v4 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v4 transcriptEmphasizedFontAttributes];

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"CALL_EMERGENCY_SERVICES_IF_YOU_NEED_HELP" value:&stru_1F04268F8 table:@"ChatKit-SYDROB_FEATURES"];
  v8 = [v5 initWithString:v7 attributes:transcriptEmphasizedFontAttributes];
  [labelCopy setAttributedText:v8];

  [labelCopy setNumberOfLines:0];
}

+ (id)_makeCallEmergencyServicesButton
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"CALL_EMERGENCY_SERVICES" value:&stru_1F04268F8 table:@"ChatKit-SYDROB_FEATURES"];

  v4 = [objc_opt_class() _buttonWithSystemImageName:@"phone.fill" titleString:v3];

  return v4;
}

+ (id)_makeTextViaStewieButton
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"TEXT_EMERGENCY_SERVICES" value:&stru_1F04268F8 table:@"ChatKit-SYDROB_FEATURES"];

  v4 = [objc_opt_class() _buttonWithSystemImageName:@"message.fill" titleString:v3];

  return v4;
}

+ (id)_createButtonConfigurationWithSystemImageName:(id)name titleString:(id)string
{
  v5 = MEMORY[0x1E69DC740];
  stringCopy = string;
  nameCopy = name;
  filledButtonConfiguration = [v5 filledButtonConfiguration];
  [filledButtonConfiguration setButtonSize:3];
  [filledButtonConfiguration setCornerStyle:4];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [filledButtonConfiguration setBaseBackgroundColor:systemRedColor];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [filledButtonConfiguration setBaseForegroundColor:systemWhiteColor];

  [filledButtonConfiguration setTitle:stringCopy];
  v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy];

  v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v13 = [v11 imageWithConfiguration:v12];
  [filledButtonConfiguration setImage:v13];

  [filledButtonConfiguration setImagePadding:5.0];
  [filledButtonConfiguration contentInsets];
  [filledButtonConfiguration setContentInsets:?];

  return filledButtonConfiguration;
}

+ (id)_buttonWithSystemImageName:(id)name titleString:(id)string
{
  v4 = MEMORY[0x1E69DC738];
  v5 = [CKStewieTranscriptResumeButtonsCell _createButtonConfigurationWithSystemImageName:name titleString:string];
  v6 = [v4 buttonWithConfiguration:v5 primaryAction:0];

  return v6;
}

- (CKStewieTranscriptResumeButtonsCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = CKStewieTranscriptResumeButtonsCell;
  v3 = [(CKTranscriptLabelCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    label = [(CKTranscriptLabelCell *)v3 label];
    [v4 _configureLabel:label];

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    callEmergencyServicesButton = [(CKStewieTranscriptResumeButtonsCell *)v3 callEmergencyServicesButton];
    [contentView addSubview:callEmergencyServicesButton];

    contentView2 = [(CKEditableCollectionViewCell *)v3 contentView];
    textViaStewieButton = [(CKStewieTranscriptResumeButtonsCell *)v3 textViaStewieButton];
    [contentView2 addSubview:textViaStewieButton];
  }

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v28.receiver = self;
  v28.super_class = CKStewieTranscriptResumeButtonsCell;
  [(CKTranscriptStampCell *)&v28 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKStewieTranscriptResumeButtonsCell *)self _layoutLabelInAlignmentContentRect:?];
  callEmergencyServicesButton = [(CKStewieTranscriptResumeButtonsCell *)self callEmergencyServicesButton];
  textViaStewieButton = [(CKStewieTranscriptResumeButtonsCell *)self textViaStewieButton];
  if (v8 + -32.0 <= 400.0)
  {
    v13 = v8 + -32.0;
  }

  else
  {
    v13 = 400.0;
  }

  [objc_opt_class() _sizeForButton:callEmergencyServicesButton withSizingWidth:v13];
  v15 = v14;
  v17 = v16;
  if ([(CKStewieTranscriptResumeButtonsCell *)self isShowingStewieTextButton])
  {
    [objc_opt_class() _sizeForButton:textViaStewieButton withSizingWidth:v13];
    v20 = v19;
  }

  else
  {
    v18 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v15 >= v18)
  {
    v18 = v15;
  }

  v21 = fmax(v18, 200.0);
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MidX = CGRectGetMidX(v29);
  traitCollection = [(CKStewieTranscriptResumeButtonsCell *)self traitCollection];
  [traitCollection displayScale];
  v25 = MidX - round(v24 * (v21 * 0.5)) / v24;

  label = [(CKTranscriptLabelCell *)self label];
  [label frame];
  v27 = CGRectGetMaxY(v30) + 24.0;

  [callEmergencyServicesButton setFrame:{v25, v27, v21, v17}];
  [callEmergencyServicesButton frame];
  [textViaStewieButton setFrame:{v25, CGRectGetMaxY(v31) + 16.0, v21, v20}];
  [textViaStewieButton setHidden:{-[CKStewieTranscriptResumeButtonsCell isShowingStewieTextButton](self, "isShowingStewieTextButton") ^ 1}];
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

+ (CGSize)_sizeForButton:(id)button withSizingWidth:(double)width
{
  [button sizeThatFits:{width, 1.79769313e308}];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setShowStewieTextButton:(BOOL)button
{
  buttonCopy = button;
  textViaStewieButton = [(CKStewieTranscriptResumeButtonsCell *)self textViaStewieButton];
  isHidden = [textViaStewieButton isHidden];

  if (self->_showStewieTextButton != buttonCopy || ((isHidden ^ buttonCopy) & 1) == 0)
  {
    textViaStewieButton2 = [(CKStewieTranscriptResumeButtonsCell *)self textViaStewieButton];
    [textViaStewieButton2 setHidden:!buttonCopy];

    [(CKStewieTranscriptResumeButtonsCell *)self setNeedsLayout];
    [(CKStewieTranscriptResumeButtonsCell *)self layoutIfNeeded];
  }

  self->_showStewieTextButton = buttonCopy;
}

- (id)attributedButtonText
{
  callEmergencyServicesButton = [(CKStewieTranscriptResumeButtonsCell *)self callEmergencyServicesButton];
  v3 = [callEmergencyServicesButton attributedTitleForState:0];

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKStewieTranscriptResumeButtonsCell;
  [(CKTranscriptStampCell *)&v3 prepareForReuse];
  [(CKStewieTranscriptResumeButtonsCell *)self setNeedsLayout];
}

- (void)touchUpInsideCallEmergencyServicesButton:(id)button
{
  v8 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = buttonCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "called touchUpInsideCallEmergencyServicesButton: %@", &v6, 0xCu);
    }
  }

  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  [mEMORY[0x1E69A5B00] placeEmergencyCallToHandle:0 completion:0];
}

- (void)touchUpInsideTextViaStewieButton:(id)button
{
  v8 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = buttonCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "called touchUpInsideTextViaStewieButton: %@", &v6, 0xCu);
    }
  }

  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  [mEMORY[0x1E69A5B00] openStewieAppForChatIdentifier:*MEMORY[0x1E69A7C40] completion:0];
}

- (UIButton)callEmergencyServicesButton
{
  selfCopy = self;
  v38 = *MEMORY[0x1E69E9840];
  callEmergencyServicesButton = self->_callEmergencyServicesButton;
  if (!callEmergencyServicesButton)
  {
    _makeCallEmergencyServicesButton = [objc_opt_class() _makeCallEmergencyServicesButton];
    v5 = selfCopy->_callEmergencyServicesButton;
    selfCopy->_callEmergencyServicesButton = _makeCallEmergencyServicesButton;

    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    emergencyHandles = [mEMORY[0x1E69A5B00] emergencyHandles];

    if ([emergencyHandles count] < 2)
    {
      [(UIButton *)selfCopy->_callEmergencyServicesButton addTarget:selfCopy action:sel_touchUpInsideCallEmergencyServicesButton_ forEvents:64];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      [emergencyHandles keysSortedByValueUsingComparator:&__block_literal_global_51];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v36 = 0u;
      v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v27 = selfCopy;
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = 0;
        v29 = *v34;
        do
        {
          v12 = 0;
          v13 = v11;
          do
          {
            if (*v34 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v33 + 1) + 8 * v12);

            v14 = emergencyHandles;
            v15 = [emergencyHandles objectForKey:v11];

            v16 = MEMORY[0x1E69DC628];
            v17 = CKFrameworkBundle();
            v18 = [v17 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];
            v19 = StringGUID();
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __66__CKStewieTranscriptResumeButtonsCell_callEmergencyServicesButton__block_invoke_2;
            v31[3] = &unk_1E72EC060;
            v10 = v15;
            v32 = v10;
            v20 = [v16 actionWithTitle:v18 image:0 identifier:v19 handler:v31];

            if (v10)
            {
              value = [v10 value];
              if ([v11 isEqualToString:value])
              {
                [v20 setSubtitle:&stru_1F04268F8];
              }

              else
              {
                value2 = [v10 value];
                [v20 setSubtitle:value2];
              }
            }

            [array addObject:v20];

            ++v12;
            v13 = v11;
            emergencyHandles = v14;
          }

          while (v9 != v12);
          v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v9);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v23 = MEMORY[0x1E69DCC60];
      v24 = [array copy];
      v25 = [v23 menuWithChildren:v24];

      selfCopy = v27;
      [(UIButton *)v27->_callEmergencyServicesButton setShowsMenuAsPrimaryAction:1];
      [(UIButton *)v27->_callEmergencyServicesButton setMenu:v25];
    }

    callEmergencyServicesButton = selfCopy->_callEmergencyServicesButton;
  }

  return callEmergencyServicesButton;
}

uint64_t __66__CKStewieTranscriptResumeButtonsCell_callEmergencyServicesButton__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 value];
  v6 = [v5 intValue];
  v7 = [v4 value];

  if (v6 > [v7 intValue])
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

void __66__CKStewieTranscriptResumeButtonsCell_callEmergencyServicesButton__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5B00] sharedInstance];
  [v2 placeEmergencyCallToHandle:*(a1 + 32) completion:0];
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

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKStewieTranscriptResumeButtonsCell;
  itemCopy = item;
  [(CKTranscriptStampCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  shouldShowStewieTextButton = [itemCopy shouldShowStewieTextButton];

  [(CKStewieTranscriptResumeButtonsCell *)self setShowStewieTextButton:shouldShowStewieTextButton];
  [(CKStewieTranscriptResumeButtonsCell *)self setNeedsLayout];
}

@end