@interface HUFaceRecognitionAddPersonSearchBar
- (HUFaceRecognitionAddPersonSearchBar)init;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation HUFaceRecognitionAddPersonSearchBar

- (HUFaceRecognitionAddPersonSearchBar)init
{
  v14.receiver = self;
  v14.super_class = HUFaceRecognitionAddPersonSearchBar;
  v2 = [(HUFaceRecognitionAddPersonSearchBar *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D755E8]);
    faceCropView = v2->_faceCropView;
    v2->_faceCropView = v3;

    [(UIImageView *)v2->_faceCropView setClipsToBounds:1];
    [(HUFaceRecognitionAddPersonSearchBar *)v2 addSubview:v2->_faceCropView];
    v5 = objc_alloc_init(MEMORY[0x277D75BB8]);
    searchTextField = v2->_searchTextField;
    v2->_searchTextField = v5;

    [(UITextField *)v2->_searchTextField setAutocapitalizationType:1];
    [(UITextField *)v2->_searchTextField setAutocorrectionType:1];
    [(UITextField *)v2->_searchTextField setClearButtonMode:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v2->_searchTextField setFont:v7];

    v8 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonNameCellUnknownPerson", @"HUFaceRecognitionPersonNameCellUnknownPerson", 1);
    [(UITextField *)v2->_searchTextField setPlaceholder:v8];

    [(UITextField *)v2->_searchTextField setReturnKeyType:9];
    [(HUFaceRecognitionAddPersonSearchBar *)v2 addSubview:v2->_searchTextField];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v2->_separatorView;
    v2->_separatorView = v9;

    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v2->_separatorView setBackgroundColor:separatorColor];

    [(HUFaceRecognitionAddPersonSearchBar *)v2 addSubview:v2->_separatorView];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUFaceRecognitionAddPersonSearchBar *)v2 setBackgroundColor:systemBackgroundColor];
  }

  return v2;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = HUFaceRecognitionAddPersonSearchBar;
  [(HUFaceRecognitionAddPersonSearchBar *)&v16 layoutSubviews];
  faceCropView = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
  [faceCropView bounds];
  v5 = v4 * 0.5;
  faceCropView2 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
  layer = [faceCropView2 layer];
  [layer setCornerRadius:v5];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = 1.0 / v9;

  [(HUFaceRecognitionAddPersonSearchBar *)self bounds];
  v12 = v11;
  v14 = v13 - v10;
  separatorView = [(HUFaceRecognitionAddPersonSearchBar *)self separatorView];
  [separatorView setFrame:{0.0, v14, v12, v10}];
}

- (void)updateConstraints
{
  v53[9] = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = HUFaceRecognitionAddPersonSearchBar;
  [(HUFaceRecognitionAddPersonSearchBar *)&v52 updateConstraints];
  constraints = [(HUFaceRecognitionAddPersonSearchBar *)self constraints];

  if (!constraints)
  {
    faceCropView = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    [faceCropView setTranslatesAutoresizingMaskIntoConstraints:0];

    searchTextField = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    [searchTextField setTranslatesAutoresizingMaskIntoConstraints:0];

    faceCropView2 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    leadingAnchor = [faceCropView2 leadingAnchor];
    layoutMarginsGuide = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v53[0] = v47;
    faceCropView3 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    heightAnchor = [faceCropView3 heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:44.0];
    v53[1] = v44;
    faceCropView4 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    widthAnchor = [faceCropView4 widthAnchor];
    faceCropView5 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    heightAnchor2 = [faceCropView5 heightAnchor];
    v39 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v53[2] = v39;
    faceCropView6 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    topAnchor = [faceCropView6 topAnchor];
    layoutMarginsGuide2 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[3] = v34;
    faceCropView7 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    bottomAnchor = [faceCropView7 bottomAnchor];
    layoutMarginsGuide3 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v53[4] = v29;
    searchTextField2 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    leadingAnchor3 = [searchTextField2 leadingAnchor];
    faceCropView8 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    trailingAnchor = [faceCropView8 trailingAnchor];
    v24 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v53[5] = v24;
    searchTextField3 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    trailingAnchor2 = [searchTextField3 trailingAnchor];
    layoutMarginsGuide4 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
    v19 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v53[6] = v19;
    searchTextField4 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    topAnchor3 = [searchTextField4 topAnchor];
    layoutMarginsGuide5 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide5 topAnchor];
    v8 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v53[7] = v8;
    searchTextField5 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    bottomAnchor3 = [searchTextField5 bottomAnchor];
    layoutMarginsGuide6 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide6 bottomAnchor];
    v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v53[8] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];
    [(HUFaceRecognitionAddPersonSearchBar *)self setConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUFaceRecognitionAddPersonSearchBar *)self constraints];
    [v15 activateConstraints:constraints2];
  }
}

@end