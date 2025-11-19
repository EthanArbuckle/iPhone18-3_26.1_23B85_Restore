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

    v11 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v2->_separatorView setBackgroundColor:v11];

    [(HUFaceRecognitionAddPersonSearchBar *)v2 addSubview:v2->_separatorView];
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUFaceRecognitionAddPersonSearchBar *)v2 setBackgroundColor:v12];
  }

  return v2;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = HUFaceRecognitionAddPersonSearchBar;
  [(HUFaceRecognitionAddPersonSearchBar *)&v16 layoutSubviews];
  v3 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
  [v3 bounds];
  v5 = v4 * 0.5;
  v6 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = 1.0 / v9;

  [(HUFaceRecognitionAddPersonSearchBar *)self bounds];
  v12 = v11;
  v14 = v13 - v10;
  v15 = [(HUFaceRecognitionAddPersonSearchBar *)self separatorView];
  [v15 setFrame:{0.0, v14, v12, v10}];
}

- (void)updateConstraints
{
  v53[9] = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = HUFaceRecognitionAddPersonSearchBar;
  [(HUFaceRecognitionAddPersonSearchBar *)&v52 updateConstraints];
  v3 = [(HUFaceRecognitionAddPersonSearchBar *)self constraints];

  if (!v3)
  {
    v4 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v5 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v51 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v49 = [v51 leadingAnchor];
    v50 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v53[0] = v47;
    v46 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v45 = [v46 heightAnchor];
    v44 = [v45 constraintEqualToConstant:44.0];
    v53[1] = v44;
    v43 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v41 = [v43 widthAnchor];
    v42 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v40 = [v42 heightAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v53[2] = v39;
    v38 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v36 = [v38 topAnchor];
    v37 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    v35 = [v37 topAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v53[3] = v34;
    v33 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v31 = [v33 bottomAnchor];
    v32 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    v30 = [v32 bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v53[4] = v29;
    v28 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    v26 = [v28 leadingAnchor];
    v27 = [(HUFaceRecognitionAddPersonSearchBar *)self faceCropView];
    v25 = [v27 trailingAnchor];
    v24 = [v26 constraintEqualToSystemSpacingAfterAnchor:v25 multiplier:1.0];
    v53[5] = v24;
    v23 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    v21 = [v23 trailingAnchor];
    v22 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    v20 = [v22 trailingAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v53[6] = v19;
    v18 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    v17 = [v18 topAnchor];
    v6 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    v7 = [v6 topAnchor];
    v8 = [v17 constraintEqualToAnchor:v7];
    v53[7] = v8;
    v9 = [(HUFaceRecognitionAddPersonSearchBar *)self searchTextField];
    v10 = [v9 bottomAnchor];
    v11 = [(HUFaceRecognitionAddPersonSearchBar *)self layoutMarginsGuide];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v53[8] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];
    [(HUFaceRecognitionAddPersonSearchBar *)self setConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [(HUFaceRecognitionAddPersonSearchBar *)self constraints];
    [v15 activateConstraints:v16];
  }
}

@end