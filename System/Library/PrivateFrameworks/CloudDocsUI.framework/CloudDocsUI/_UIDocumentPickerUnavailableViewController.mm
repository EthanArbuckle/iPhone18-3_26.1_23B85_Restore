@interface _UIDocumentPickerUnavailableViewController
- (_UIDocumentPickerUnavailableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_buttonBackgroundImageForState:(unint64_t)state traits:(id)traits;
- (void)_buttonPressed:(id)pressed;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UIDocumentPickerUnavailableViewController

- (_UIDocumentPickerUnavailableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v156[2] = *MEMORY[0x277D85DE8];
  v153.receiver = self;
  v153.super_class = _UIDocumentPickerUnavailableViewController;
  v4 = [(_UIDocumentPickerUnavailableViewController *)&v153 initWithNibName:name bundle:bundle];
  if (!v4)
  {
    return v4;
  }

  v5 = MEMORY[0x277D74300];
  v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0 options:1];
  v7 = [v5 fontWithDescriptor:v6 size:0.0];

  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = [v8 localizedStringForKey:@"iCloud Drive[unavailable nav title]" value:@"iCloud Drive" table:@"Localizable"];
  [(_UIDocumentPickerUnavailableViewController *)v4 setTitle:v9];

  [(_UIDocumentPickerUnavailableViewController *)v4 setEdgesForExtendedLayout:0];
  v10 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(_UIDocumentPickerUnavailableViewController *)v4 setLeadImageView:v10];

  view = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  leadImageView = [(_UIDocumentPickerUnavailableViewController *)v4 leadImageView];
  [view addSubview:leadImageView];

  leadImageView2 = [(_UIDocumentPickerUnavailableViewController *)v4 leadImageView];
  [leadImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  leadImageView3 = [(_UIDocumentPickerUnavailableViewController *)v4 leadImageView];
  centerXAnchor = [leadImageView3 centerXAnchor];
  view2 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  centerXAnchor2 = [view2 centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v18 setActive:1];

  leadImageView4 = [(_UIDocumentPickerUnavailableViewController *)v4 leadImageView];
  topAnchor = [leadImageView4 topAnchor];
  view3 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  topAnchor2 = [view3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(_UIDocumentPickerUnavailableViewController *)v4 setTopConstraint:v23];

  topConstraint = [(_UIDocumentPickerUnavailableViewController *)v4 topConstraint];
  [topConstraint setActive:1];

  v25 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(_UIDocumentPickerUnavailableViewController *)v4 setTitleLabel:v25];

  titleLabel = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  [titleLabel setNumberOfLines:1];

  titleLabel2 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  [titleLabel2 setTextAlignment:1];

  v28 = [MEMORY[0x277D74300] _lightSystemFontOfSize:32.0];
  titleLabel3 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  [titleLabel3 setFont:v28];

  view4 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  titleLabel4 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  [view4 addSubview:titleLabel4];

  titleLabel5 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  centerXAnchor3 = [titleLabel6 centerXAnchor];
  view5 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  centerXAnchor4 = [view5 centerXAnchor];
  v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v37 setActive:1];

  titleLabel7 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  lastBaselineAnchor = [titleLabel7 lastBaselineAnchor];
  leadImageView5 = [(_UIDocumentPickerUnavailableViewController *)v4 leadImageView];
  bottomAnchor = [leadImageView5 bottomAnchor];
  v42 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor];
  [(_UIDocumentPickerUnavailableViewController *)v4 setImageToTitleConstraint:v42];

  imageToTitleConstraint = [(_UIDocumentPickerUnavailableViewController *)v4 imageToTitleConstraint];
  [imageToTitleConstraint setActive:1];

  v44 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(_UIDocumentPickerUnavailableViewController *)v4 setTextLabel:v44];

  textLabel = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  [textLabel setNumberOfLines:0];

  textLabel2 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  [textLabel2 setTextAlignment:1];

  textLabel3 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  v152 = v7;
  [textLabel3 setFont:v7];

  view6 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  textLabel4 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  [view6 addSubview:textLabel4];

  textLabel5 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  [textLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v141 = MEMORY[0x277CCAAD0];
  textLabel6 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  leftAnchor = [textLabel6 leftAnchor];
  view7 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  layoutMarginsGuide = [view7 layoutMarginsGuide];
  leftAnchor2 = [layoutMarginsGuide leftAnchor];
  v52 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v156[0] = v52;
  textLabel7 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  rightAnchor = [textLabel7 rightAnchor];
  view8 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
  layoutMarginsGuide2 = [view8 layoutMarginsGuide];
  rightAnchor2 = [layoutMarginsGuide2 rightAnchor];
  v58 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v156[1] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:2];
  [v141 activateConstraints:v59];

  textLabel8 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  firstBaselineAnchor = [textLabel8 firstBaselineAnchor];
  titleLabel8 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  lastBaselineAnchor2 = [titleLabel8 lastBaselineAnchor];
  v64 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  [(_UIDocumentPickerUnavailableViewController *)v4 setTitleToTextConstraint:v64];

  titleToTextConstraint = [(_UIDocumentPickerUnavailableViewController *)v4 titleToTextConstraint];
  [titleToTextConstraint setActive:1];

  if (+[_UIDocumentPickerDescriptor cloudMigrationStatus]<= 1)
  {
    v66 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v67 = [v66 localizedStringForKey:@"iCloud Drive[unavailable view title]" value:@"iCloud Drive" table:@"Localizable"];

    v68 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v69 = [v68 localizedStringForKey:@"NO_ICLOUD_MIGRATION_TEXT" value:@"Store your files in iCloud and access them anytime on all your devices." table:@"Localizable"];

    v70 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v71 = [v70 localizedStringForKey:@"NO_ICLOUD_MIGRATION_TEXT2" value:@"Make edits on any device or any app table:{the most up-to-date version of your document is available everywhere.", @"Localizable"}];

    v72 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v73 = [v72 localizedStringForKey:@"Upgrade" value:@"Upgrade" table:@"Localizable"];

    v74 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=CASTLE&path=CKDATABASESERVICE"];
    [(_UIDocumentPickerUnavailableViewController *)v4 setButtonURL:v74];
LABEL_7:
    v78 = 0;
    goto LABEL_8;
  }

  v75 = +[_UIDocumentPickerDescriptor cloudEnabledStatus];
  v76 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v67 = [v76 localizedStringForKey:@"No Documents[unavailable view title]" value:@"No Documents" table:@"Localizable"];

  v77 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v74 = v77;
  if (v75 != -2)
  {
    v69 = [v77 localizedStringForKey:@"NO_ICLOUD_DISABLED_TEXT" value:@"Documents in iCloud Drive are not available because the iCloud Drive setting is disabled." table:@"Localizable"];

    v79 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v73 = [v79 localizedStringForKey:@"Enable iCloud Drive" value:@"Enable iCloud Drive" table:@"Localizable"];

    v74 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=CASTLE&path=CKDATABASESERVICE"];
    [(_UIDocumentPickerUnavailableViewController *)v4 setButtonURL:v74];
    v71 = 0;
    goto LABEL_7;
  }

  v69 = [v77 localizedStringForKey:@"NO_ICLOUD_MDM_TEXT" value:@"Access to iCloud documents has been disabled by a device management profile." table:@"Localizable"];
  v73 = 0;
  v71 = 0;
  v78 = 1;
LABEL_8:

  titleLabel9 = [(_UIDocumentPickerUnavailableViewController *)v4 titleLabel];
  v149 = v67;
  [titleLabel9 setText:v67];

  textLabel9 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  v147 = v69;
  [textLabel9 setText:v69];

  leadImageView6 = [(_UIDocumentPickerUnavailableViewController *)v4 leadImageView];
  [leadImageView6 setHidden:v78];

  textLabel10 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
  v151 = v73;
  if ([v71 length])
  {
    v84 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(_UIDocumentPickerUnavailableViewController *)v4 setTextLabel2:v84];

    textLabel22 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    [textLabel22 setNumberOfLines:0];

    textLabel23 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    [textLabel23 setTextAlignment:1];

    textLabel24 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    [textLabel24 setFont:v152];

    view9 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
    textLabel25 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    [view9 addSubview:textLabel25];

    textLabel26 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    [textLabel26 setTranslatesAutoresizingMaskIntoConstraints:0];

    textLabel27 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];

    textLabel28 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    firstBaselineAnchor2 = [textLabel28 firstBaselineAnchor];
    textLabel11 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel];
    lastBaselineAnchor3 = [textLabel11 lastBaselineAnchor];
    v95 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor3];
    [(_UIDocumentPickerUnavailableViewController *)v4 setTextToTextConstraint:v95];

    v134 = MEMORY[0x277CCAAD0];
    textLabel29 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    leftAnchor3 = [textLabel29 leftAnchor];
    view10 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
    layoutMarginsGuide3 = [view10 layoutMarginsGuide];
    leftAnchor4 = [layoutMarginsGuide3 leftAnchor];
    v136 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v155[0] = v136;
    textLabel210 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    rightAnchor3 = [textLabel210 rightAnchor];
    view11 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
    layoutMarginsGuide4 = [view11 layoutMarginsGuide];
    rightAnchor4 = [layoutMarginsGuide4 rightAnchor];
    v96 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v155[1] = v96;
    textLabel211 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    centerXAnchor5 = [textLabel211 centerXAnchor];
    view12 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
    centerXAnchor6 = [view12 centerXAnchor];
    v101 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v155[2] = v101;
    textToTextConstraint = [(_UIDocumentPickerUnavailableViewController *)v4 textToTextConstraint];
    v155[3] = textToTextConstraint;
    v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:4];
    [v134 activateConstraints:v103];

    v73 = v151;
    textLabel212 = [(_UIDocumentPickerUnavailableViewController *)v4 textLabel2];
    [textLabel212 setText:v71];

    textLabel10 = textLabel27;
  }

  if (v73)
  {
    v105 = [BRTintColorButton buttonWithType:0];
    [(_UIDocumentPickerUnavailableViewController *)v4 setButton:v105];

    button = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    [button setTitle:v73 forState:0];

    button2 = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    [button2 setTranslatesAutoresizingMaskIntoConstraints:0];

    button3 = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    [button3 addTarget:v4 action:sel__buttonPressed_ forControlEvents:64];

    v109 = [MEMORY[0x277D74300] _thinSystemFontOfSize:26.0];
    button4 = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    titleLabel10 = [button4 titleLabel];
    [titleLabel10 setFont:v109];

    view13 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
    button5 = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    [view13 addSubview:button5];

    button6 = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    topAnchor3 = [button6 topAnchor];
    lastBaselineAnchor4 = [textLabel10 lastBaselineAnchor];
    [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor4];
    v117 = v145 = textLabel10;
    [(_UIDocumentPickerUnavailableViewController *)v4 setTextToButtonConstraint:v117];

    v118 = MEMORY[0x277CCAAD0];
    button7 = [(_UIDocumentPickerUnavailableViewController *)v4 button];
    centerXAnchor7 = [button7 centerXAnchor];
    view14 = [(_UIDocumentPickerUnavailableViewController *)v4 view];
    centerXAnchor8 = [view14 centerXAnchor];
    [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v124 = v123 = v71;
    v154[0] = v124;
    textToButtonConstraint = [(_UIDocumentPickerUnavailableViewController *)v4 textToButtonConstraint];
    v154[1] = textToButtonConstraint;
    v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:2];
    v127 = v118;
    textLabel10 = v145;
    [v127 activateConstraints:v126];

    v71 = v123;
    v73 = v151;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v4 selector:sel__fontSizeDidChange_ name:*MEMORY[0x277D76810] object:0];

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = _UIDocumentPickerUnavailableViewController;
  [(_UIDocumentPickerUnavailableViewController *)&v4 dealloc];
}

- (void)_buttonPressed:(id)pressed
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  buttonURL = [(_UIDocumentPickerUnavailableViewController *)self buttonURL];
  [defaultWorkspace openSensitiveURL:buttonURL withOptions:0];
}

- (id)_buttonBackgroundImageForState:(unint64_t)state traits:(id)traits
{
  [traits displayScale];
  __asm { FMOV            V0.2D, #7.0 }

  v9 = _UIGraphicsDrawIntoImageContextWithOptions();
  v10 = [v9 imageWithRenderingMode:2];

  UIEdgeInsetsMakeWithEdges();
  v11 = [v10 resizableImageWithCapInsets:?];

  return v11;
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(_UIDocumentPickerUnavailableViewController *)self traitCollection];
  view = [(_UIDocumentPickerUnavailableViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen _referenceBounds];
  v8 = v7;

  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v11 = [v9 imageNamed:@"iCloudNoDocs" inBundle:v10 compatibleWithTraitCollection:traitCollection];

  [v11 alignmentRectInsets];
  if (v12 == 0.0)
  {
    [traitCollection displayScale];
    if (fabs(v13 + -1.0) >= 2.22044605e-16)
    {
      if (fabs(v13 + -2.0) >= 2.22044605e-16)
      {
        if (fabs(v13 + -3.0) >= 2.22044605e-16)
        {
          goto LABEL_9;
        }

        v14 = 23.6666667;
      }

      else
      {
        v14 = 23.5;
      }
    }

    else
    {
      v14 = 25.0;
    }

    v15 = [v11 imageWithAlignmentRectInsets:{v14, 0.0, 31.0, 0.0}];

    v11 = v15;
  }

LABEL_9:
  leadImageView = [(_UIDocumentPickerUnavailableViewController *)self leadImageView];
  [leadImageView setImage:v11];

  v17 = MEMORY[0x277D74300];
  v18 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0 options:1];
  v19 = [v17 fontWithDescriptor:v18 size:0.0];

  v20 = MEMORY[0x277D74300];
  v21 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:0 options:1];
  v22 = [v20 fontWithDescriptor:v21 size:0.0];

  [traitCollection displayScale];
  v24 = v23;
  topConstraint = [(_UIDocumentPickerUnavailableViewController *)self topConstraint];
  v26 = topConstraint;
  v27 = 28.0;
  if (v8 <= 480.0)
  {
    v27 = 20.0;
  }

  v28 = v27 + 1.0 / v24;
  if (v8 > 480.0)
  {
    v29 = 21.0;
  }

  else
  {
    v29 = 20.0;
  }

  [topConstraint setConstant:v28];

  v30 = [MEMORY[0x277D74300] _lightSystemFontOfSize:32.0];
  v31 = MEMORY[0x277D74300];
  [v19 _scaledValueForValue:32.0];
  v32 = [v31 _lightSystemFontOfSize:?];
  titleLabel = [(_UIDocumentPickerUnavailableViewController *)self titleLabel];
  [titleLabel setFont:v32];

  textLabel = [(_UIDocumentPickerUnavailableViewController *)self textLabel];
  [textLabel setFont:v19];

  textLabel2 = [(_UIDocumentPickerUnavailableViewController *)self textLabel2];
  [textLabel2 setFont:v19];

  button = [(_UIDocumentPickerUnavailableViewController *)self button];
  titleLabel2 = [button titleLabel];
  [titleLabel2 setFont:v22];

  button2 = [(_UIDocumentPickerUnavailableViewController *)self button];
  traitCollection2 = [(_UIDocumentPickerUnavailableViewController *)self traitCollection];
  v40 = [(_UIDocumentPickerUnavailableViewController *)self _buttonBackgroundImageForState:0 traits:traitCollection2];
  [button2 setBackgroundImage:v40 forState:0];

  button3 = [(_UIDocumentPickerUnavailableViewController *)self button];
  button4 = [(_UIDocumentPickerUnavailableViewController *)self button];
  tintColor = [button4 tintColor];
  [button3 setTitleColor:tintColor forState:0];

  button5 = [(_UIDocumentPickerUnavailableViewController *)self button];
  traitCollection3 = [(_UIDocumentPickerUnavailableViewController *)self traitCollection];
  v46 = [(_UIDocumentPickerUnavailableViewController *)self _buttonBackgroundImageForState:1 traits:traitCollection3];
  [button5 setBackgroundImage:v46 forState:1];

  button6 = [(_UIDocumentPickerUnavailableViewController *)self button];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [button6 setTitleColor:systemBackgroundColor forState:1];

  view2 = [(_UIDocumentPickerUnavailableViewController *)self view];
  UIRoundToViewScale();
  v51 = v50;
  view3 = [(_UIDocumentPickerUnavailableViewController *)self view];
  UIFloorToViewScale();
  v54 = v53;
  button7 = [(_UIDocumentPickerUnavailableViewController *)self button];
  [button7 setContentEdgeInsets:{v51, 11.0, v54, 11.0}];

  [v32 _bodyLeading];
  v57 = v56 * 23.0;
  [v30 _bodyLeading];
  v59 = v29 + v57 / v58;
  imageToTitleConstraint = [(_UIDocumentPickerUnavailableViewController *)self imageToTitleConstraint];
  [imageToTitleConstraint setConstant:v59];

  [v19 _scaledValueForValue:36.0];
  v62 = v61;
  titleToTextConstraint = [(_UIDocumentPickerUnavailableViewController *)self titleToTextConstraint];
  [titleToTextConstraint setConstant:v62];

  [v19 _scaledValueForValue:28.0];
  v65 = v64;
  textToTextConstraint = [(_UIDocumentPickerUnavailableViewController *)self textToTextConstraint];
  [textToTextConstraint setConstant:v65];

  [v19 _scaledValueForValue:24.0];
  v68 = v67;
  textToButtonConstraint = [(_UIDocumentPickerUnavailableViewController *)self textToButtonConstraint];
  [textToButtonConstraint setConstant:v68];
}

@end