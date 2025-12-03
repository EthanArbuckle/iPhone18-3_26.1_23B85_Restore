@interface CKSentWithSiriViewController
- (CKSentWithSiriViewController)initWithConversation:(id)conversation;
- (id)_titleLabelText;
- (id)localizedStringWithLanguageCode:(id)code format:(id)format;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CKSentWithSiriViewController

- (CKSentWithSiriViewController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v9.receiver = self;
  v9.super_class = CKSentWithSiriViewController;
  v6 = [(CKSentWithSiriViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, conversation);
  }

  return v7;
}

- (void)viewDidLoad
{
  v141.receiver = self;
  v141.super_class = CKSentWithSiriViewController;
  [(CKSentWithSiriViewController *)&v141 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(CKSentWithSiriViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:3];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setBackgroundColor:systemBackgroundColor];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView = self->_contentView;
  self->_contentView = v7;

  [(UIView *)self->_contentView setBackgroundColor:systemBackgroundColor];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  contextDescriptionLabel = self->_contextDescriptionLabel;
  self->_contextDescriptionLabel = v9;

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_CONTEXT_DESCRIPTION" value:? table:?];
  [(UILabel *)self->_contextDescriptionLabel setText:v12];

  v13 = *MEMORY[0x1E69DDCF8];
  v14 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_contextDescriptionLabel setFont:v14];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_contextDescriptionLabel setTextColor:secondaryLabelColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_contextDescriptionLabel setBackgroundColor:clearColor];

  [(UILabel *)self->_contextDescriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_contextDescriptionLabel setTextAlignment:1];
  v17 = +[CKUIBehavior sharedBehaviors];
  siriLogoImage = [v17 siriLogoImage];

  v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:siriLogoImage];
  heroImageView = self->_heroImageView;
  self->_heroImageView = v18;

  [(UIImageView *)self->_heroImageView setOpaque:0];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_heroImageView setBackgroundColor:clearColor2];

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v21;

  _titleLabelText = [(CKSentWithSiriViewController *)self _titleLabelText];
  [(UILabel *)self->_titleLabel setText:_titleLabelText];

  v139 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD58] addingSymbolicTraits:2 options:0];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v139 size:0.0];
  [(UILabel *)self->_titleLabel setFont:v24];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:labelColor];

  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:clearColor3];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v27;

  v29 = CKFrameworkBundle();
  v30 = [v29 localizedStringForKey:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [(UILabel *)self->_subtitleLabel setText:v30];

  v31 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:v13];
  [(UILabel *)self->_subtitleLabel setFont:v31];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:labelColor2];

  clearColor4 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:clearColor4];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  detailLabel = self->_detailLabel;
  self->_detailLabel = v34;

  v36 = CKFrameworkBundle();
  v37 = [v36 localizedStringForKey:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_DETAILED_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
  [(UILabel *)self->_detailLabel setText:v37];

  v38 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:v13];
  [(UILabel *)self->_detailLabel setFont:v38];

  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_detailLabel setTextColor:secondaryLabelColor2];

  clearColor5 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_detailLabel setBackgroundColor:clearColor5];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(UILabel *)self->_detailLabel setTextAlignment:1];
  view2 = [(CKSentWithSiriViewController *)self view];
  [view2 addSubview:self->_scrollView];

  [(UIScrollView *)self->_scrollView addSubview:self->_contentView];
  [(UIView *)self->_contentView addSubview:self->_contextDescriptionLabel];
  [(UIView *)self->_contentView addSubview:self->_heroImageView];
  [(UIView *)self->_contentView addSubview:self->_titleLabel];
  [(UIView *)self->_contentView addSubview:self->_subtitleLabel];
  [(UIView *)self->_contentView addSubview:self->_detailLabel];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_contextDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_heroImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view3 = [(CKSentWithSiriViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v45 setActive:1];

  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view4 = [(CKSentWithSiriViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v49 setActive:1];

  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view5 = [(CKSentWithSiriViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v53 setActive:1];

  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view6 = [(CKSentWithSiriViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v57 setActive:1];

  leadingAnchor3 = [(UIView *)self->_contentView leadingAnchor];
  frameLayoutGuide = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  leadingAnchor4 = [frameLayoutGuide leadingAnchor];
  v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v61 setActive:1];

  trailingAnchor3 = [(UIView *)self->_contentView trailingAnchor];
  frameLayoutGuide2 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  trailingAnchor4 = [frameLayoutGuide2 trailingAnchor];
  v65 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v65 setActive:1];

  topAnchor3 = [(UIView *)self->_contentView topAnchor];
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide topAnchor];
  v69 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v69 setActive:1];

  bottomAnchor3 = [(UIView *)self->_contentView bottomAnchor];
  contentLayoutGuide2 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  bottomAnchor4 = [contentLayoutGuide2 bottomAnchor];
  v73 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v73 setActive:1];

  topAnchor5 = [(UILabel *)self->_contextDescriptionLabel topAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_contentView safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide topAnchor];
  v77 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:60.0];
  [v77 setActive:1];

  topAnchor7 = [(UIImageView *)self->_heroImageView topAnchor];
  bottomAnchor5 = [(UILabel *)self->_contextDescriptionLabel bottomAnchor];
  v80 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:40.0];
  [v80 setActive:1];

  heightAnchor = [(UIImageView *)self->_heroImageView heightAnchor];
  v82 = [heightAnchor constraintEqualToConstant:120.0];
  [v82 setActive:1];

  topAnchor8 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor6 = [(UIImageView *)self->_heroImageView bottomAnchor];
  v85 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:16.0];
  [v85 setActive:1];

  topAnchor9 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor7 = [(UILabel *)self->_titleLabel bottomAnchor];
  v88 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:4.0];
  [v88 setActive:1];

  topAnchor10 = [(UILabel *)self->_detailLabel topAnchor];
  bottomAnchor8 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v91 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:48.0];
  [v91 setActive:1];

  safeAreaLayoutGuide2 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  bottomAnchor9 = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor10 = [(UILabel *)self->_detailLabel bottomAnchor];
  v95 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:16.0];
  [v95 setActive:1];

  leadingAnchor5 = [(UILabel *)self->_contextDescriptionLabel leadingAnchor];
  readableContentGuide = [(UIView *)self->_contentView readableContentGuide];
  leadingAnchor6 = [readableContentGuide leadingAnchor];
  v99 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v99 setActive:1];

  trailingAnchor5 = [(UILabel *)self->_contextDescriptionLabel trailingAnchor];
  readableContentGuide2 = [(UIView *)self->_contentView readableContentGuide];
  trailingAnchor6 = [readableContentGuide2 trailingAnchor];
  v103 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v103 setActive:1];

  widthAnchor = [(UIImageView *)self->_heroImageView widthAnchor];
  v105 = [widthAnchor constraintEqualToConstant:120.0];
  [v105 setActive:1];

  centerXAnchor = [(UIImageView *)self->_heroImageView centerXAnchor];
  readableContentGuide3 = [(UIView *)self->_contentView readableContentGuide];
  centerXAnchor2 = [readableContentGuide3 centerXAnchor];
  v109 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v109 setActive:1];

  leadingAnchor7 = [(UILabel *)self->_titleLabel leadingAnchor];
  readableContentGuide4 = [(UIView *)self->_contentView readableContentGuide];
  leadingAnchor8 = [readableContentGuide4 leadingAnchor];
  v113 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v113 setActive:1];

  trailingAnchor7 = [(UILabel *)self->_titleLabel trailingAnchor];
  readableContentGuide5 = [(UIView *)self->_contentView readableContentGuide];
  trailingAnchor8 = [readableContentGuide5 trailingAnchor];
  v117 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v117 setActive:1];

  leadingAnchor9 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  readableContentGuide6 = [(UIView *)self->_contentView readableContentGuide];
  leadingAnchor10 = [readableContentGuide6 leadingAnchor];
  v121 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v121 setActive:1];

  trailingAnchor9 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  readableContentGuide7 = [(UIView *)self->_contentView readableContentGuide];
  trailingAnchor10 = [readableContentGuide7 trailingAnchor];
  v125 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v125 setActive:1];

  leadingAnchor11 = [(UILabel *)self->_detailLabel leadingAnchor];
  readableContentGuide8 = [(UIView *)self->_contentView readableContentGuide];
  leadingAnchor12 = [readableContentGuide8 leadingAnchor];
  v129 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  [v129 setActive:1];

  trailingAnchor11 = [(UILabel *)self->_detailLabel trailingAnchor];
  readableContentGuide9 = [(UIView *)self->_contentView readableContentGuide];
  trailingAnchor12 = [readableContentGuide9 trailingAnchor];
  v133 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  [v133 setActive:1];

  LODWORD(v134) = 1148846080;
  [(UIScrollView *)self->_scrollView setContentCompressionResistancePriority:0 forAxis:v134];
  LODWORD(v135) = 1144750080;
  [(UIScrollView *)self->_scrollView setContentCompressionResistancePriority:1 forAxis:v135];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v137 = [standardUserDefaults integerForKey:@"SentWithSiriLearningUIShownNumberOfTimes"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setInteger:v137 + 1 forKey:@"SentWithSiriLearningUIShownNumberOfTimes"];
}

- (id)_titleLabelText
{
  v27[2] = *MEMORY[0x1E69E9840];
  siriLanguageCode = [MEMORY[0x1E696E958] siriLanguageCode];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getVTPreferencesClass_softClass;
  v26 = getVTPreferencesClass_softClass;
  if (!getVTPreferencesClass_softClass)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getVTPreferencesClass_block_invoke;
    v22[3] = &unk_1E72EB968;
    v22[4] = &v23;
    __getVTPreferencesClass_block_invoke(v22);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  sharedPreferences = [v4 sharedPreferences];
  voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];
  v8 = [sharedPreferences localizedTriggerPhraseForLanguageCode:siriLanguageCode];
  if ([(CKConversation *)self->_conversation hasDisplayName])
  {
    displayName = [(CKConversation *)self->_conversation displayName];
    if ([displayName ck_isSiriRecognizableWithLanguageCode:siriLanguageCode])
    {
      if (voiceTriggerEnabled)
      {
        [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_VOICE_TRIGGER_WITH_GROUP_NAME", v8, displayName];
      }

      else
      {
        [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_MANUAL_ACTIVATION_WITH_GROUP_NAME", displayName];
      }
      v10 = ;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (![v10 length])
  {
    recipients = [(CKConversation *)self->_conversation recipients];
    v12 = [recipients count] == 1;

    if (v12)
    {
      recipient = [(CKConversation *)self->_conversation recipient];
      v27[0] = *MEMORY[0x1E695C240];
      v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
      v27[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v16 = [recipient cnContactWithKeys:v15];

      if (v16)
      {
        givenName = [v16 givenName];
        if ([givenName length] && objc_msgSend(givenName, "ck_isSiriRecognizableWithLanguageCode:", siriLanguageCode))
        {
          if (voiceTriggerEnabled)
          {
            [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_VOICE_TRIGGER_WITH_RECIPIENT_GIVEN_NAME", v8, givenName];
          }

          else
          {
            [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_MANUAL_ACTIVATION_WITH_RECIPIENT_GIVEN_NAME", givenName];
          }
          v18 = ;
        }

        else
        {
          v18 = v10;
        }

        if ([v18 length])
        {
          v10 = v18;
        }

        else
        {
          v19 = [MEMORY[0x1E695CD80] stringFromContact:v16 style:0];
          if ([v19 length] && objc_msgSend(v19, "ck_isSiriRecognizableWithLanguageCode:", siriLanguageCode))
          {
            if (voiceTriggerEnabled)
            {
              [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_VOICE_TRIGGER_WITH_RECIPIENT_FULL_NAME", v8, v19];
            }

            else
            {
              [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_MANUAL_ACTIVATION_WITH_RECIPIENT_FULL_NAME", v19];
            }
            v10 = ;
          }

          else
          {
            v10 = v18;
          }
        }
      }
    }
  }

  if ([v10 length])
  {
    v20 = v10;
  }

  else
  {
    if (voiceTriggerEnabled)
    {
      [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_TITLE_FOR_VOICE_TRIGGER", v8];
    }

    else
    {
      [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:siriLanguageCode format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_TITLE_FOR_MANUAL_ACTIVATION"];
    }
    v20 = ;
  }

  return v20;
}

- (id)localizedStringWithLanguageCode:(id)code format:(id)format
{
  v5 = MEMORY[0x1E696E818];
  formatCopy = format;
  codeCopy = code;
  v8 = [v5 alloc];
  v9 = CKFrameworkBundle();
  v10 = [v8 initWithDeferredFormat:formatCopy fromTable:@"ChatKit" bundle:v9 arguments:&v14];

  v11 = [v10 localizeForLanguage:codeCopy];

  return v11;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CKSentWithSiriViewController;
  [(CKSentWithSiriViewController *)&v5 viewDidAppear:appear];
  [(CKSentWithSiriViewController *)self becomeFirstResponder];
  scrollView = [(CKSentWithSiriViewController *)self scrollView];
  [scrollView flashScrollIndicators];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy safeAreaInsets];
  v6 = v5;
  v7 = -v5;
  [scrollCopy contentOffset];
  v9 = v8;

  navigationController = [(CKSentWithSiriViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _setShadowAlpha:{(v6 + fmax(fmin(v9, 40.0 - v6), v7)) / 40.0}];
}

@end