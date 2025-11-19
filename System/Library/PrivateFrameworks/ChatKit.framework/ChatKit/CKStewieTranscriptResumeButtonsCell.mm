@interface CKStewieTranscriptResumeButtonsCell
+ (CGSize)_sizeForButton:(id)a3 withSizingWidth:(double)a4;
+ (double)heightForChatItem:(id)a3 fittingSize:(CGSize)a4;
+ (id)_buttonWithSystemImageName:(id)a3 titleString:(id)a4;
+ (id)_createButtonConfigurationWithSystemImageName:(id)a3 titleString:(id)a4;
+ (id)_makeCallEmergencyServicesButton;
+ (id)_makeTextViaStewieButton;
+ (void)_configureLabel:(id)a3;
- (CKStewieTranscriptResumeButtonsCell)initWithFrame:(CGRect)a3;
- (UIButton)callEmergencyServicesButton;
- (UIButton)textViaStewieButton;
- (id)attributedButtonText;
- (void)_layoutLabelInAlignmentContentRect:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setShowStewieTextButton:(BOOL)a3;
- (void)touchUpInsideCallEmergencyServicesButton:(id)a3;
- (void)touchUpInsideTextViaStewieButton:(id)a3;
@end

@implementation CKStewieTranscriptResumeButtonsCell

+ (double)heightForChatItem:(id)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 shouldShowStewieTextButton];
  }

  else
  {
    v7 = 1;
  }

  v8 = [a1 createStampLabelView];
  [a1 _configureLabel:v8];
  v9 = [objc_opt_class() _makeCallEmergencyServicesButton];
  v10 = [objc_opt_class() _makeTextViaStewieButton];
  [v6 contentInsets];
  v13 = width - (v11 + v12);
  v14 = [v8 attributedText];
  [v14 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  v16 = v15;

  if (v13 + -32.0 <= 400.0)
  {
    v17 = v13 + -32.0;
  }

  else
  {
    v17 = 400.0;
  }

  [a1 _sizeForButton:v9 withSizingWidth:v17];
  v19 = v18;
  if (v7)
  {
    [a1 _sizeForButton:v10 withSizingWidth:v17];
  }

  else
  {
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  v21 = v16 + 24.0 + v19 + 16.0 + v20 + 32.0;

  return v21;
}

+ (void)_configureLabel:(id)a3
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  v9 = [v4 transcriptEmphasizedFontAttributes];

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"CALL_EMERGENCY_SERVICES_IF_YOU_NEED_HELP" value:&stru_1F04268F8 table:@"ChatKit-SYDROB_FEATURES"];
  v8 = [v5 initWithString:v7 attributes:v9];
  [v3 setAttributedText:v8];

  [v3 setNumberOfLines:0];
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

+ (id)_createButtonConfigurationWithSystemImageName:(id)a3 titleString:(id)a4
{
  v5 = MEMORY[0x1E69DC740];
  v6 = a4;
  v7 = a3;
  v8 = [v5 filledButtonConfiguration];
  [v8 setButtonSize:3];
  [v8 setCornerStyle:4];
  v9 = [MEMORY[0x1E69DC888] systemRedColor];
  [v8 setBaseBackgroundColor:v9];

  v10 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v8 setBaseForegroundColor:v10];

  [v8 setTitle:v6];
  v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7];

  v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v13 = [v11 imageWithConfiguration:v12];
  [v8 setImage:v13];

  [v8 setImagePadding:5.0];
  [v8 contentInsets];
  [v8 setContentInsets:?];

  return v8;
}

+ (id)_buttonWithSystemImageName:(id)a3 titleString:(id)a4
{
  v4 = MEMORY[0x1E69DC738];
  v5 = [CKStewieTranscriptResumeButtonsCell _createButtonConfigurationWithSystemImageName:a3 titleString:a4];
  v6 = [v4 buttonWithConfiguration:v5 primaryAction:0];

  return v6;
}

- (CKStewieTranscriptResumeButtonsCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CKStewieTranscriptResumeButtonsCell;
  v3 = [(CKTranscriptLabelCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(CKTranscriptLabelCell *)v3 label];
    [v4 _configureLabel:v5];

    v6 = [(CKEditableCollectionViewCell *)v3 contentView];
    v7 = [(CKStewieTranscriptResumeButtonsCell *)v3 callEmergencyServicesButton];
    [v6 addSubview:v7];

    v8 = [(CKEditableCollectionViewCell *)v3 contentView];
    v9 = [(CKStewieTranscriptResumeButtonsCell *)v3 textViaStewieButton];
    [v8 addSubview:v9];
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
  v11 = [(CKStewieTranscriptResumeButtonsCell *)self callEmergencyServicesButton];
  v12 = [(CKStewieTranscriptResumeButtonsCell *)self textViaStewieButton];
  if (v8 + -32.0 <= 400.0)
  {
    v13 = v8 + -32.0;
  }

  else
  {
    v13 = 400.0;
  }

  [objc_opt_class() _sizeForButton:v11 withSizingWidth:v13];
  v15 = v14;
  v17 = v16;
  if ([(CKStewieTranscriptResumeButtonsCell *)self isShowingStewieTextButton])
  {
    [objc_opt_class() _sizeForButton:v12 withSizingWidth:v13];
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
  v23 = [(CKStewieTranscriptResumeButtonsCell *)self traitCollection];
  [v23 displayScale];
  v25 = MidX - round(v24 * (v21 * 0.5)) / v24;

  v26 = [(CKTranscriptLabelCell *)self label];
  [v26 frame];
  v27 = CGRectGetMaxY(v30) + 24.0;

  [v11 setFrame:{v25, v27, v21, v17}];
  [v11 frame];
  [v12 setFrame:{v25, CGRectGetMaxY(v31) + 16.0, v21, v20}];
  [v12 setHidden:{-[CKStewieTranscriptResumeButtonsCell isShowingStewieTextButton](self, "isShowingStewieTextButton") ^ 1}];
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

+ (CGSize)_sizeForButton:(id)a3 withSizingWidth:(double)a4
{
  [a3 sizeThatFits:{a4, 1.79769313e308}];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setShowStewieTextButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKStewieTranscriptResumeButtonsCell *)self textViaStewieButton];
  v6 = [v5 isHidden];

  if (self->_showStewieTextButton != v3 || ((v6 ^ v3) & 1) == 0)
  {
    v7 = [(CKStewieTranscriptResumeButtonsCell *)self textViaStewieButton];
    [v7 setHidden:!v3];

    [(CKStewieTranscriptResumeButtonsCell *)self setNeedsLayout];
    [(CKStewieTranscriptResumeButtonsCell *)self layoutIfNeeded];
  }

  self->_showStewieTextButton = v3;
}

- (id)attributedButtonText
{
  v2 = [(CKStewieTranscriptResumeButtonsCell *)self callEmergencyServicesButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKStewieTranscriptResumeButtonsCell;
  [(CKTranscriptStampCell *)&v3 prepareForReuse];
  [(CKStewieTranscriptResumeButtonsCell *)self setNeedsLayout];
}

- (void)touchUpInsideCallEmergencyServicesButton:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "called touchUpInsideCallEmergencyServicesButton: %@", &v6, 0xCu);
    }
  }

  v5 = [MEMORY[0x1E69A5B00] sharedInstance];
  [v5 placeEmergencyCallToHandle:0 completion:0];
}

- (void)touchUpInsideTextViaStewieButton:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "called touchUpInsideTextViaStewieButton: %@", &v6, 0xCu);
    }
  }

  v5 = [MEMORY[0x1E69A5B00] sharedInstance];
  [v5 openStewieAppForChatIdentifier:*MEMORY[0x1E69A7C40] completion:0];
}

- (UIButton)callEmergencyServicesButton
{
  v2 = self;
  v38 = *MEMORY[0x1E69E9840];
  callEmergencyServicesButton = self->_callEmergencyServicesButton;
  if (!callEmergencyServicesButton)
  {
    v4 = [objc_opt_class() _makeCallEmergencyServicesButton];
    v5 = v2->_callEmergencyServicesButton;
    v2->_callEmergencyServicesButton = v4;

    v6 = [MEMORY[0x1E69A5B00] sharedInstance];
    v7 = [v6 emergencyHandles];

    if ([v7 count] < 2)
    {
      [(UIButton *)v2->_callEmergencyServicesButton addTarget:v2 action:sel_touchUpInsideCallEmergencyServicesButton_ forEvents:64];
    }

    else
    {
      v30 = [MEMORY[0x1E695DF70] array];
      [v7 keysSortedByValueUsingComparator:&__block_literal_global_51];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v36 = 0u;
      v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v27 = v2;
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

            v14 = v7;
            v15 = [v7 objectForKey:v11];

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
              v21 = [v10 value];
              if ([v11 isEqualToString:v21])
              {
                [v20 setSubtitle:&stru_1F04268F8];
              }

              else
              {
                v22 = [v10 value];
                [v20 setSubtitle:v22];
              }
            }

            [v30 addObject:v20];

            ++v12;
            v13 = v11;
            v7 = v14;
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
      v24 = [v30 copy];
      v25 = [v23 menuWithChildren:v24];

      v2 = v27;
      [(UIButton *)v27->_callEmergencyServicesButton setShowsMenuAsPrimaryAction:1];
      [(UIButton *)v27->_callEmergencyServicesButton setMenu:v25];
    }

    callEmergencyServicesButton = v2->_callEmergencyServicesButton;
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
    v4 = [objc_opt_class() _makeTextViaStewieButton];
    v5 = self->_textViaStewieButton;
    self->_textViaStewieButton = v4;

    [(UIButton *)self->_textViaStewieButton addTarget:self action:sel_touchUpInsideTextViaStewieButton_ forEvents:64];
    textViaStewieButton = self->_textViaStewieButton;
  }

  return textViaStewieButton;
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKStewieTranscriptResumeButtonsCell;
  v12 = a3;
  [(CKTranscriptStampCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 shouldShowStewieTextButton];

  [(CKStewieTranscriptResumeButtonsCell *)self setShowStewieTextButton:v13];
  [(CKStewieTranscriptResumeButtonsCell *)self setNeedsLayout];
}

@end