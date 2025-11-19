@interface CKSentWithSiriViewController
- (CKSentWithSiriViewController)initWithConversation:(id)a3;
- (id)_titleLabelText;
- (id)localizedStringWithLanguageCode:(id)a3 format:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CKSentWithSiriViewController

- (CKSentWithSiriViewController)initWithConversation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKSentWithSiriViewController;
  v6 = [(CKSentWithSiriViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v141.receiver = self;
  v141.super_class = CKSentWithSiriViewController;
  [(CKSentWithSiriViewController *)&v141 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(CKSentWithSiriViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:3];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setBackgroundColor:v3];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView = self->_contentView;
  self->_contentView = v7;

  [(UIView *)self->_contentView setBackgroundColor:v3];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  contextDescriptionLabel = self->_contextDescriptionLabel;
  self->_contextDescriptionLabel = v9;

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_CONTEXT_DESCRIPTION" value:? table:?];
  [(UILabel *)self->_contextDescriptionLabel setText:v12];

  v13 = *MEMORY[0x1E69DDCF8];
  v14 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_contextDescriptionLabel setFont:v14];

  v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_contextDescriptionLabel setTextColor:v15];

  v16 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_contextDescriptionLabel setBackgroundColor:v16];

  [(UILabel *)self->_contextDescriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_contextDescriptionLabel setTextAlignment:1];
  v17 = +[CKUIBehavior sharedBehaviors];
  v140 = [v17 siriLogoImage];

  v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v140];
  heroImageView = self->_heroImageView;
  self->_heroImageView = v18;

  [(UIImageView *)self->_heroImageView setOpaque:0];
  v20 = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_heroImageView setBackgroundColor:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v21;

  v23 = [(CKSentWithSiriViewController *)self _titleLabelText];
  [(UILabel *)self->_titleLabel setText:v23];

  v139 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD58] addingSymbolicTraits:2 options:0];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v139 size:0.0];
  [(UILabel *)self->_titleLabel setFont:v24];

  v25 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v25];

  v26 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v26];

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

  v32 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v32];

  v33 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:v33];

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

  v39 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_detailLabel setTextColor:v39];

  v40 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_detailLabel setBackgroundColor:v40];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(UILabel *)self->_detailLabel setTextAlignment:1];
  v41 = [(CKSentWithSiriViewController *)self view];
  [v41 addSubview:self->_scrollView];

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
  v42 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v43 = [(CKSentWithSiriViewController *)self view];
  v44 = [v43 leadingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v47 = [(CKSentWithSiriViewController *)self view];
  v48 = [v47 trailingAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(UIScrollView *)self->_scrollView topAnchor];
  v51 = [(CKSentWithSiriViewController *)self view];
  v52 = [v51 topAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  [v53 setActive:1];

  v54 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v55 = [(CKSentWithSiriViewController *)self view];
  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = [(UIView *)self->_contentView leadingAnchor];
  v59 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v60 = [v59 leadingAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  [v61 setActive:1];

  v62 = [(UIView *)self->_contentView trailingAnchor];
  v63 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v64 = [v63 trailingAnchor];
  v65 = [v62 constraintEqualToAnchor:v64];
  [v65 setActive:1];

  v66 = [(UIView *)self->_contentView topAnchor];
  v67 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v68 = [v67 topAnchor];
  v69 = [v66 constraintEqualToAnchor:v68];
  [v69 setActive:1];

  v70 = [(UIView *)self->_contentView bottomAnchor];
  v71 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v72 = [v71 bottomAnchor];
  v73 = [v70 constraintEqualToAnchor:v72];
  [v73 setActive:1];

  v74 = [(UILabel *)self->_contextDescriptionLabel topAnchor];
  v75 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  v76 = [v75 topAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:60.0];
  [v77 setActive:1];

  v78 = [(UIImageView *)self->_heroImageView topAnchor];
  v79 = [(UILabel *)self->_contextDescriptionLabel bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:40.0];
  [v80 setActive:1];

  v81 = [(UIImageView *)self->_heroImageView heightAnchor];
  v82 = [v81 constraintEqualToConstant:120.0];
  [v82 setActive:1];

  v83 = [(UILabel *)self->_titleLabel topAnchor];
  v84 = [(UIImageView *)self->_heroImageView bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:16.0];
  [v85 setActive:1];

  v86 = [(UILabel *)self->_subtitleLabel topAnchor];
  v87 = [(UILabel *)self->_titleLabel bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:4.0];
  [v88 setActive:1];

  v89 = [(UILabel *)self->_detailLabel topAnchor];
  v90 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:48.0];
  [v91 setActive:1];

  v92 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  v93 = [v92 bottomAnchor];
  v94 = [(UILabel *)self->_detailLabel bottomAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:16.0];
  [v95 setActive:1];

  v96 = [(UILabel *)self->_contextDescriptionLabel leadingAnchor];
  v97 = [(UIView *)self->_contentView readableContentGuide];
  v98 = [v97 leadingAnchor];
  v99 = [v96 constraintEqualToAnchor:v98];
  [v99 setActive:1];

  v100 = [(UILabel *)self->_contextDescriptionLabel trailingAnchor];
  v101 = [(UIView *)self->_contentView readableContentGuide];
  v102 = [v101 trailingAnchor];
  v103 = [v100 constraintEqualToAnchor:v102];
  [v103 setActive:1];

  v104 = [(UIImageView *)self->_heroImageView widthAnchor];
  v105 = [v104 constraintEqualToConstant:120.0];
  [v105 setActive:1];

  v106 = [(UIImageView *)self->_heroImageView centerXAnchor];
  v107 = [(UIView *)self->_contentView readableContentGuide];
  v108 = [v107 centerXAnchor];
  v109 = [v106 constraintEqualToAnchor:v108];
  [v109 setActive:1];

  v110 = [(UILabel *)self->_titleLabel leadingAnchor];
  v111 = [(UIView *)self->_contentView readableContentGuide];
  v112 = [v111 leadingAnchor];
  v113 = [v110 constraintEqualToAnchor:v112];
  [v113 setActive:1];

  v114 = [(UILabel *)self->_titleLabel trailingAnchor];
  v115 = [(UIView *)self->_contentView readableContentGuide];
  v116 = [v115 trailingAnchor];
  v117 = [v114 constraintEqualToAnchor:v116];
  [v117 setActive:1];

  v118 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v119 = [(UIView *)self->_contentView readableContentGuide];
  v120 = [v119 leadingAnchor];
  v121 = [v118 constraintEqualToAnchor:v120];
  [v121 setActive:1];

  v122 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v123 = [(UIView *)self->_contentView readableContentGuide];
  v124 = [v123 trailingAnchor];
  v125 = [v122 constraintEqualToAnchor:v124];
  [v125 setActive:1];

  v126 = [(UILabel *)self->_detailLabel leadingAnchor];
  v127 = [(UIView *)self->_contentView readableContentGuide];
  v128 = [v127 leadingAnchor];
  v129 = [v126 constraintEqualToAnchor:v128];
  [v129 setActive:1];

  v130 = [(UILabel *)self->_detailLabel trailingAnchor];
  v131 = [(UIView *)self->_contentView readableContentGuide];
  v132 = [v131 trailingAnchor];
  v133 = [v130 constraintEqualToAnchor:v132];
  [v133 setActive:1];

  LODWORD(v134) = 1148846080;
  [(UIScrollView *)self->_scrollView setContentCompressionResistancePriority:0 forAxis:v134];
  LODWORD(v135) = 1144750080;
  [(UIScrollView *)self->_scrollView setContentCompressionResistancePriority:1 forAxis:v135];
  v136 = [MEMORY[0x1E695E000] standardUserDefaults];
  v137 = [v136 integerForKey:@"SentWithSiriLearningUIShownNumberOfTimes"];

  v138 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v138 setInteger:v137 + 1 forKey:@"SentWithSiriLearningUIShownNumberOfTimes"];
}

- (id)_titleLabelText
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696E958] siriLanguageCode];
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
  v6 = [v4 sharedPreferences];
  v7 = [v6 voiceTriggerEnabled];
  v8 = [v6 localizedTriggerPhraseForLanguageCode:v3];
  if ([(CKConversation *)self->_conversation hasDisplayName])
  {
    v9 = [(CKConversation *)self->_conversation displayName];
    if ([v9 ck_isSiriRecognizableWithLanguageCode:v3])
    {
      if (v7)
      {
        [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_VOICE_TRIGGER_WITH_GROUP_NAME", v8, v9];
      }

      else
      {
        [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_MANUAL_ACTIVATION_WITH_GROUP_NAME", v9];
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
    v11 = [(CKConversation *)self->_conversation recipients];
    v12 = [v11 count] == 1;

    if (v12)
    {
      v13 = [(CKConversation *)self->_conversation recipient];
      v27[0] = *MEMORY[0x1E695C240];
      v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
      v27[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v16 = [v13 cnContactWithKeys:v15];

      if (v16)
      {
        v17 = [v16 givenName];
        if ([v17 length] && objc_msgSend(v17, "ck_isSiriRecognizableWithLanguageCode:", v3))
        {
          if (v7)
          {
            [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_VOICE_TRIGGER_WITH_RECIPIENT_GIVEN_NAME", v8, v17];
          }

          else
          {
            [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_MANUAL_ACTIVATION_WITH_RECIPIENT_GIVEN_NAME", v17];
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
          if ([v19 length] && objc_msgSend(v19, "ck_isSiriRecognizableWithLanguageCode:", v3))
          {
            if (v7)
            {
              [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_VOICE_TRIGGER_WITH_RECIPIENT_FULL_NAME", v8, v19];
            }

            else
            {
              [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_FORMAT_FOR_MANUAL_ACTIVATION_WITH_RECIPIENT_FULL_NAME", v19];
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
    if (v7)
    {
      [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_TITLE_FOR_VOICE_TRIGGER", v8];
    }

    else
    {
      [(CKSentWithSiriViewController *)self localizedStringWithLanguageCode:v3 format:@"SENT_WITH_SIRI_DETAIL_CONTROLLER_TITLE_FOR_MANUAL_ACTIVATION"];
    }
    v20 = ;
  }

  return v20;
}

- (id)localizedStringWithLanguageCode:(id)a3 format:(id)a4
{
  v5 = MEMORY[0x1E696E818];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = CKFrameworkBundle();
  v10 = [v8 initWithDeferredFormat:v6 fromTable:@"ChatKit" bundle:v9 arguments:&v14];

  v11 = [v10 localizeForLanguage:v7];

  return v11;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKSentWithSiriViewController;
  [(CKSentWithSiriViewController *)&v5 viewDidAppear:a3];
  [(CKSentWithSiriViewController *)self becomeFirstResponder];
  v4 = [(CKSentWithSiriViewController *)self scrollView];
  [v4 flashScrollIndicators];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 safeAreaInsets];
  v6 = v5;
  v7 = -v5;
  [v4 contentOffset];
  v9 = v8;

  v11 = [(CKSentWithSiriViewController *)self navigationController];
  v10 = [v11 navigationBar];
  [v10 _setShadowAlpha:{(v6 + fmax(fmin(v9, 40.0 - v6), v7)) / 40.0}];
}

@end