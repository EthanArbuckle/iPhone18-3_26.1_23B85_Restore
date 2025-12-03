@interface SFHighlightActivityNotificationViewController
- (SFHighlightActivityNotificationViewController)initWithContact:(id)contact;
- (SFHighlightActivityNotificationViewController)initWithTitleText:(id)text;
- (void)setMessageText:(id)text;
- (void)viewDidLoad;
@end

@implementation SFHighlightActivityNotificationViewController

- (SFHighlightActivityNotificationViewController)initWithContact:(id)contact
{
  contactCopy = contact;
  v10.receiver = self;
  v10.super_class = SFHighlightActivityNotificationViewController;
  v5 = [(SFHighlightActivityNotificationViewController *)&v10 init];
  if (v5)
  {
    v6 = [contactCopy copy];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

- (SFHighlightActivityNotificationViewController)initWithTitleText:(id)text
{
  textCopy = text;
  v10.receiver = self;
  v10.super_class = SFHighlightActivityNotificationViewController;
  v5 = [(SFHighlightActivityNotificationViewController *)&v10 init];
  if (v5)
  {
    v6 = [textCopy copy];
    titleText = v5->_titleText;
    v5->_titleText = v6;

    v8 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v99[1] = *MEMORY[0x1E69E9840];
  v95.receiver = self;
  v95.super_class = SFHighlightActivityNotificationViewController;
  [(SFHighlightActivityNotificationViewController *)&v95 viewDidLoad];
  view = [(SFHighlightActivityNotificationViewController *)selfCopy view];
  [view setInsetsLayoutMarginsFromSafeArea:0];
  [view setLayoutMargins:{8.0, 8.0, 8.0, 8.0}];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = 0x1E69DB000uLL;
  v6 = *MEMORY[0x1E69DDD28];
  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB958]];
  [v4 setFont:v7];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v4 setTextColor:labelColor];

  [v4 setTextAlignment:1];
  LODWORD(v9) = 1132593152;
  [v4 setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1144913920;
  [v4 setContentCompressionResistancePriority:1 forAxis:v10];
  [view addSubview:v4];
  if (selfCopy->_contact)
  {
    mEMORY[0x1E69C8F00] = [MEMORY[0x1E69C8F00] sharedContactStoreManager];
    contactStore = [mEMORY[0x1E69C8F00] contactStore];

    v13 = [MEMORY[0x1E695D0E0] settingsWithContactStore:contactStore];
    v14 = [objc_alloc(MEMORY[0x1E695D0C8]) initWithSettings:v13];
    contactViewController = selfCopy->_contactViewController;
    selfCopy->_contactViewController = v14;

    v99[0] = selfCopy->_contact;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];
    v17 = v16 = selfCopy;
    [(CNAvatarViewController *)v16->_contactViewController setContacts:v17];

    view2 = [(CNAvatarViewController *)v16->_contactViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:view2];
    v19 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v20 = [v19 stringFromContact:v16->_contact];
    [v4 setText:v20];

    selfCopy = v16;
    v5 = 0x1E69DB000;
  }

  else
  {
    [v4 setText:selfCopy->_titleText];
    view2 = 0;
  }

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = selfCopy->_subtitleLabel;
  selfCopy->_subtitleLabel = v21;

  [(UILabel *)selfCopy->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [*(v5 + 2168) _preferredFontForTextStyle:v6 weight:*MEMORY[0x1E69DB970]];
  [(UILabel *)selfCopy->_subtitleLabel setFont:v23];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)selfCopy->_subtitleLabel setTextColor:secondaryLabelColor];

  [(UILabel *)selfCopy->_subtitleLabel setTextAlignment:1];
  [(UILabel *)selfCopy->_subtitleLabel setText:selfCopy->_messageText];
  [view addSubview:selfCopy->_subtitleLabel];
  v25 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [v25 setIdentifier:@"SFHighlightActivityNotificationText"];
  [view addLayoutGuide:v25];
  layoutMarginsGuide = [view layoutMarginsGuide];
  v84 = MEMORY[0x1E696ACD8];
  v93 = selfCopy;
  v94 = v4;
  v92 = view2;
  if (view2)
  {
    topAnchor = [view2 topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v90 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v98[0] = v90;
    centerYAnchor = [view2 centerYAnchor];
    centerYAnchor2 = [view centerYAnchor];
    v88 = centerYAnchor;
    v86 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v98[1] = v86;
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v82 = leadingAnchor;
    v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v98[2] = v74;
    widthAnchor = [view2 widthAnchor];
    v68 = [widthAnchor constraintEqualToConstant:32.0];
    v98[3] = v68;
    heightAnchor = [view2 heightAnchor];
    v64 = [heightAnchor constraintEqualToConstant:32.0];
    v98[4] = v64;
    leadingAnchor3 = [v25 leadingAnchor];
    trailingAnchor = [view2 trailingAnchor];
    v30 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v98[5] = v30;
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    [v25 trailingAnchor];
    v33 = v32 = layoutMarginsGuide;
    [trailingAnchor2 constraintEqualToAnchor:v33 constant:24.0];
    v35 = v34 = v25;
    v98[6] = v35;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:7];
    v37 = v36 = view;
    [v84 activateConstraints:v37];

    view = v36;
    v38 = centerYAnchor2;

    v25 = v34;
    leadingAnchor5 = topAnchor2;

    layoutMarginsGuide = v32;
    leadingAnchor4 = topAnchor;

    selfCopy = v93;
    v4 = v94;
  }

  else
  {
    leadingAnchor4 = [v25 leadingAnchor];
    leadingAnchor5 = [layoutMarginsGuide leadingAnchor];
    v90 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
    v97[0] = v90;
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    trailingAnchor4 = [v25 trailingAnchor];
    v88 = trailingAnchor3;
    v43 = trailingAnchor3;
    v38 = trailingAnchor4;
    v86 = [v43 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
    v97[1] = v86;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    [v84 activateConstraints:?];
  }

  v60 = view;
  v61 = layoutMarginsGuide;

  v67 = MEMORY[0x1E696ACD8];
  topAnchor3 = [v25 topAnchor];
  topAnchor4 = [layoutMarginsGuide topAnchor];
  v87 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v96[0] = v87;
  centerYAnchor3 = [v25 centerYAnchor];
  centerYAnchor4 = [view centerYAnchor];
  v81 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v96[1] = v81;
  leadingAnchor6 = [v4 leadingAnchor];
  leadingAnchor7 = [v25 leadingAnchor];
  v75 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v96[2] = v75;
  widthAnchor2 = [v4 widthAnchor];
  widthAnchor3 = [v25 widthAnchor];
  v69 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v96[3] = v69;
  topAnchor5 = [v4 topAnchor];
  topAnchor6 = [v25 topAnchor];
  v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v96[4] = v59;
  leadingAnchor8 = [(UILabel *)selfCopy->_subtitleLabel leadingAnchor];
  leadingAnchor9 = [v25 leadingAnchor];
  v56 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v96[5] = v56;
  [(UILabel *)selfCopy->_subtitleLabel widthAnchor];
  v55 = v44 = v25;
  widthAnchor4 = [v25 widthAnchor];
  v46 = [v55 constraintEqualToAnchor:widthAnchor4];
  v96[6] = v46;
  topAnchor7 = [(UILabel *)selfCopy->_subtitleLabel topAnchor];
  bottomAnchor = [v4 bottomAnchor];
  v49 = [topAnchor7 constraintEqualToAnchor:bottomAnchor];
  v96[7] = v49;
  bottomAnchor2 = [(UILabel *)selfCopy->_subtitleLabel bottomAnchor];
  v51 = v44;
  bottomAnchor3 = [v44 bottomAnchor];
  v53 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v96[8] = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:9];
  [v67 activateConstraints:v54];

  [v60 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(SFHighlightActivityNotificationViewController *)v93 setPreferredContentSize:?];
}

- (void)setMessageText:(id)text
{
  textCopy = text;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [textCopy copy];
    messageText = self->_messageText;
    self->_messageText = v4;

    [(UILabel *)self->_subtitleLabel setText:textCopy];
    viewIfLoaded = [(SFHighlightActivityNotificationViewController *)self viewIfLoaded];
    [viewIfLoaded systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(SFHighlightActivityNotificationViewController *)self setPreferredContentSize:?];
  }
}

@end