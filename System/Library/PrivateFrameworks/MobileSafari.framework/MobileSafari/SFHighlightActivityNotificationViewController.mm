@interface SFHighlightActivityNotificationViewController
- (SFHighlightActivityNotificationViewController)initWithContact:(id)a3;
- (SFHighlightActivityNotificationViewController)initWithTitleText:(id)a3;
- (void)setMessageText:(id)a3;
- (void)viewDidLoad;
@end

@implementation SFHighlightActivityNotificationViewController

- (SFHighlightActivityNotificationViewController)initWithContact:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFHighlightActivityNotificationViewController;
  v5 = [(SFHighlightActivityNotificationViewController *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

- (SFHighlightActivityNotificationViewController)initWithTitleText:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFHighlightActivityNotificationViewController;
  v5 = [(SFHighlightActivityNotificationViewController *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    titleText = v5->_titleText;
    v5->_titleText = v6;

    v8 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  v99[1] = *MEMORY[0x1E69E9840];
  v95.receiver = self;
  v95.super_class = SFHighlightActivityNotificationViewController;
  [(SFHighlightActivityNotificationViewController *)&v95 viewDidLoad];
  v3 = [(SFHighlightActivityNotificationViewController *)v2 view];
  [v3 setInsetsLayoutMarginsFromSafeArea:0];
  [v3 setLayoutMargins:{8.0, 8.0, 8.0, 8.0}];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = 0x1E69DB000uLL;
  v6 = *MEMORY[0x1E69DDD28];
  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB958]];
  [v4 setFont:v7];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  [v4 setTextColor:v8];

  [v4 setTextAlignment:1];
  LODWORD(v9) = 1132593152;
  [v4 setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1144913920;
  [v4 setContentCompressionResistancePriority:1 forAxis:v10];
  [v3 addSubview:v4];
  if (v2->_contact)
  {
    v11 = [MEMORY[0x1E69C8F00] sharedContactStoreManager];
    v12 = [v11 contactStore];

    v13 = [MEMORY[0x1E695D0E0] settingsWithContactStore:v12];
    v14 = [objc_alloc(MEMORY[0x1E695D0C8]) initWithSettings:v13];
    contactViewController = v2->_contactViewController;
    v2->_contactViewController = v14;

    v99[0] = v2->_contact;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];
    v17 = v16 = v2;
    [(CNAvatarViewController *)v16->_contactViewController setContacts:v17];

    v18 = [(CNAvatarViewController *)v16->_contactViewController view];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v18];
    v19 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v20 = [v19 stringFromContact:v16->_contact];
    [v4 setText:v20];

    v2 = v16;
    v5 = 0x1E69DB000;
  }

  else
  {
    [v4 setText:v2->_titleText];
    v18 = 0;
  }

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = v2->_subtitleLabel;
  v2->_subtitleLabel = v21;

  [(UILabel *)v2->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [*(v5 + 2168) _preferredFontForTextStyle:v6 weight:*MEMORY[0x1E69DB970]];
  [(UILabel *)v2->_subtitleLabel setFont:v23];

  v24 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v2->_subtitleLabel setTextColor:v24];

  [(UILabel *)v2->_subtitleLabel setTextAlignment:1];
  [(UILabel *)v2->_subtitleLabel setText:v2->_messageText];
  [v3 addSubview:v2->_subtitleLabel];
  v25 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [v25 setIdentifier:@"SFHighlightActivityNotificationText"];
  [v3 addLayoutGuide:v25];
  v26 = [v3 layoutMarginsGuide];
  v84 = MEMORY[0x1E696ACD8];
  v93 = v2;
  v94 = v4;
  v92 = v18;
  if (v18)
  {
    v80 = [v18 topAnchor];
    v76 = [v26 topAnchor];
    v90 = [v80 constraintGreaterThanOrEqualToAnchor:v76];
    v98[0] = v90;
    v27 = [v18 centerYAnchor];
    v70 = [v3 centerYAnchor];
    v88 = v27;
    v86 = [v27 constraintEqualToAnchor:v70];
    v98[1] = v86;
    v28 = [v18 leadingAnchor];
    v78 = [v26 leadingAnchor];
    v82 = v28;
    v74 = [v28 constraintEqualToAnchor:v78];
    v98[2] = v74;
    v72 = [v18 widthAnchor];
    v68 = [v72 constraintEqualToConstant:32.0];
    v98[3] = v68;
    v66 = [v18 heightAnchor];
    v64 = [v66 constraintEqualToConstant:32.0];
    v98[4] = v64;
    v62 = [v25 leadingAnchor];
    v29 = [v18 trailingAnchor];
    v30 = [v62 constraintEqualToSystemSpacingAfterAnchor:v29 multiplier:1.0];
    v98[5] = v30;
    v31 = [v26 trailingAnchor];
    [v25 trailingAnchor];
    v33 = v32 = v26;
    [v31 constraintEqualToAnchor:v33 constant:24.0];
    v35 = v34 = v25;
    v98[6] = v35;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:7];
    v37 = v36 = v3;
    [v84 activateConstraints:v37];

    v3 = v36;
    v38 = v70;

    v25 = v34;
    v39 = v76;

    v26 = v32;
    v40 = v80;

    v2 = v93;
    v4 = v94;
  }

  else
  {
    v40 = [v25 leadingAnchor];
    v39 = [v26 leadingAnchor];
    v90 = [v40 constraintEqualToAnchor:v39 constant:16.0];
    v97[0] = v90;
    v41 = [v26 trailingAnchor];
    v42 = [v25 trailingAnchor];
    v88 = v41;
    v43 = v41;
    v38 = v42;
    v86 = [v43 constraintEqualToAnchor:v42 constant:16.0];
    v97[1] = v86;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    [v84 activateConstraints:?];
  }

  v60 = v3;
  v61 = v26;

  v67 = MEMORY[0x1E696ACD8];
  v91 = [v25 topAnchor];
  v89 = [v26 topAnchor];
  v87 = [v91 constraintGreaterThanOrEqualToAnchor:v89];
  v96[0] = v87;
  v85 = [v25 centerYAnchor];
  v83 = [v3 centerYAnchor];
  v81 = [v85 constraintEqualToAnchor:v83];
  v96[1] = v81;
  v79 = [v4 leadingAnchor];
  v77 = [v25 leadingAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v96[2] = v75;
  v73 = [v4 widthAnchor];
  v71 = [v25 widthAnchor];
  v69 = [v73 constraintEqualToAnchor:v71];
  v96[3] = v69;
  v65 = [v4 topAnchor];
  v63 = [v25 topAnchor];
  v59 = [v65 constraintEqualToAnchor:v63];
  v96[4] = v59;
  v58 = [(UILabel *)v2->_subtitleLabel leadingAnchor];
  v57 = [v25 leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v96[5] = v56;
  [(UILabel *)v2->_subtitleLabel widthAnchor];
  v55 = v44 = v25;
  v45 = [v25 widthAnchor];
  v46 = [v55 constraintEqualToAnchor:v45];
  v96[6] = v46;
  v47 = [(UILabel *)v2->_subtitleLabel topAnchor];
  v48 = [v4 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  v96[7] = v49;
  v50 = [(UILabel *)v2->_subtitleLabel bottomAnchor];
  v51 = v44;
  v52 = [v44 bottomAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  v96[8] = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:9];
  [v67 activateConstraints:v54];

  [v60 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(SFHighlightActivityNotificationViewController *)v93 setPreferredContentSize:?];
}

- (void)setMessageText:(id)a3
{
  v7 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v7 copy];
    messageText = self->_messageText;
    self->_messageText = v4;

    [(UILabel *)self->_subtitleLabel setText:v7];
    v6 = [(SFHighlightActivityNotificationViewController *)self viewIfLoaded];
    [v6 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(SFHighlightActivityNotificationViewController *)self setPreferredContentSize:?];
  }
}

@end