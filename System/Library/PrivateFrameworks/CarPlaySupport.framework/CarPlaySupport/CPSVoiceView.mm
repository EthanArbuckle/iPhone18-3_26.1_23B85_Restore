@interface CPSVoiceView
- (CPSVoiceView)initWithFrame:(CGRect)frame;
- (id)_titleFont;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSVoiceView

- (CPSVoiceView)initWithFrame:(CGRect)frame
{
  v76[11] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v73 = a2;
  v74 = 0;
  v72.receiver = self;
  v72.super_class = CPSVoiceView;
  v70 = [(CPSVoiceView *)&v72 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v74 = v70;
  objc_storeStrong(&v74, v70);
  if (v70)
  {
    [(CPSVoiceView *)v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(CPSVoiceView *)v74 setBackgroundColor:?];
    MEMORY[0x277D82BD8](tableBackgroundColor);
    v3 = [CPSAbridgableLabel alloc];
    v22 = MEMORY[0x277CBF3A0];
    v4 = [(CPSAbridgableLabel *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleLabel = v74->_titleLabel;
    v74->_titleLabel = v4;
    MEMORY[0x277D82BD8](titleLabel);
    _titleFont = [(CPSVoiceView *)v74 _titleFont];
    titleLabel = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)titleLabel setFont:_titleFont];
    MEMORY[0x277D82BD8](titleLabel);
    MEMORY[0x277D82BD8](_titleFont);
    clearColor = [MEMORY[0x277D75348] clearColor];
    titleLabel2 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)titleLabel2 setBackgroundColor:clearColor];
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](clearColor);
    titleLabel3 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](titleLabel3);
    titleLabel4 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)titleLabel4 setTextAlignment:?];
    MEMORY[0x277D82BD8](titleLabel4);
    titleLabel5 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)titleLabel5 setNumberOfLines:2];
    MEMORY[0x277D82BD8](titleLabel5);
    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel6 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)titleLabel6 setTextColor:labelColor];
    MEMORY[0x277D82BD8](titleLabel6);
    MEMORY[0x277D82BD8](labelColor);
    v20 = v74;
    titleLabel7 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSVoiceView *)v20 addSubview:?];
    MEMORY[0x277D82BD8](titleLabel7);
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{*v22, v22[1], v22[2], v22[3]}];
    imageView = v74->_imageView;
    v74->_imageView = v6;
    MEMORY[0x277D82BD8](imageView);
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    imageView = [(CPSVoiceView *)v74 imageView];
    [(UIImageView *)imageView setBackgroundColor:clearColor2];
    MEMORY[0x277D82BD8](imageView);
    MEMORY[0x277D82BD8](clearColor2);
    imageView2 = [(CPSVoiceView *)v74 imageView];
    [(UIImageView *)imageView2 setContentMode:1];
    MEMORY[0x277D82BD8](imageView2);
    imageView3 = [(CPSVoiceView *)v74 imageView];
    [(UIImageView *)imageView3 setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](imageView3);
    v27 = v74;
    imageView4 = [(CPSVoiceView *)v74 imageView];
    [(CPSVoiceView *)v27 addSubview:?];
    MEMORY[0x277D82BD8](imageView4);
    v71 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSVoiceView *)v74 addLayoutGuide:v71];
    v29 = MEMORY[0x277CCAAD0];
    titleLabel8 = [(CPSVoiceView *)v74 titleLabel];
    topAnchor = [(CPSAbridgableLabel *)titleLabel8 topAnchor];
    topAnchor2 = [(CPSVoiceView *)v74 topAnchor];
    v66 = [topAnchor constraintEqualToAnchor:10.0 constant:?];
    v76[0] = v66;
    titleLabel9 = [(CPSVoiceView *)v74 titleLabel];
    leadingAnchor = [(CPSAbridgableLabel *)titleLabel9 leadingAnchor];
    leadingAnchor2 = [(CPSVoiceView *)v74 leadingAnchor];
    v62 = [leadingAnchor constraintEqualToAnchor:12.0 constant:?];
    v76[1] = v62;
    titleLabel10 = [(CPSVoiceView *)v74 titleLabel];
    trailingAnchor = [(CPSAbridgableLabel *)titleLabel10 trailingAnchor];
    trailingAnchor2 = [(CPSVoiceView *)v74 trailingAnchor];
    v58 = [trailingAnchor constraintEqualToAnchor:-12.0 constant:?];
    v76[2] = v58;
    leadingAnchor3 = [v71 leadingAnchor];
    leadingAnchor4 = [(CPSVoiceView *)v74 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:?];
    v76[3] = v55;
    trailingAnchor3 = [v71 trailingAnchor];
    trailingAnchor4 = [(CPSVoiceView *)v74 trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:?];
    v76[4] = v52;
    topAnchor3 = [v71 topAnchor];
    titleLabel11 = [(CPSVoiceView *)v74 titleLabel];
    bottomAnchor = [(CPSAbridgableLabel *)titleLabel11 bottomAnchor];
    v48 = [topAnchor3 constraintEqualToAnchor:?];
    v76[5] = v48;
    bottomAnchor2 = [v71 bottomAnchor];
    bottomAnchor3 = [(CPSVoiceView *)v74 bottomAnchor];
    v45 = [bottomAnchor2 constraintEqualToAnchor:?];
    v76[6] = v45;
    imageView5 = [(CPSVoiceView *)v74 imageView];
    widthAnchor = [(UIImageView *)imageView5 widthAnchor];
    v42 = [widthAnchor constraintLessThanOrEqualToConstant:?];
    v76[7] = v42;
    imageView6 = [(CPSVoiceView *)v74 imageView];
    heightAnchor = [(UIImageView *)imageView6 heightAnchor];
    v39 = [heightAnchor constraintLessThanOrEqualToConstant:150.0];
    v76[8] = v39;
    imageView7 = [(CPSVoiceView *)v74 imageView];
    centerXAnchor = [(UIImageView *)imageView7 centerXAnchor];
    centerXAnchor2 = [v71 centerXAnchor];
    v35 = [centerXAnchor constraintEqualToAnchor:?];
    v76[9] = v35;
    imageView8 = [(CPSVoiceView *)v74 imageView];
    centerYAnchor = [(UIImageView *)imageView8 centerYAnchor];
    centerYAnchor2 = [v71 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:?];
    v76[10] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:11];
    [v29 activateConstraints:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](imageView8);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](imageView7);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](imageView6);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](imageView5);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](titleLabel11);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](titleLabel10);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](titleLabel9);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](titleLabel8);
    objc_storeStrong(&v71, 0);
  }

  v9 = MEMORY[0x277D82BE0](v74);
  objc_storeStrong(&v74, 0);
  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v5.receiver = selfCopy;
  v5.super_class = CPSVoiceView;
  [(CPSVoiceView *)&v5 traitCollectionDidChange:location[0]];
  titleLabel = [(CPSVoiceView *)selfCopy titleLabel];
  _titleFont = [(CPSVoiceView *)selfCopy _titleFont];
  [(CPSAbridgableLabel *)titleLabel setFont:?];
  MEMORY[0x277D82BD8](_titleFont);
  MEMORY[0x277D82BD8](titleLabel);
  objc_storeStrong(location, 0);
}

- (id)_titleFont
{
  v17[1] = *MEMORY[0x277D85DE8];
  v13[2] = self;
  v13[1] = a2;
  v6 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76A20];
  traitCollection = [(CPSVoiceView *)self traitCollection];
  v13[0] = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v16 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v17[0] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:?];
  MEMORY[0x277D82BD8](v8);
  v9 = v13[0];
  v14 = *MEMORY[0x277D74380];
  v15 = v12;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v2 = [v9 fontDescriptorByAddingAttributes:?];
  v3 = v13[0];
  v13[0] = v2;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v10);
  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v13[0] size:0.0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);

  return v11;
}

@end