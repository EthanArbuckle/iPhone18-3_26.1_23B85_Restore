@interface CPSVoiceView
- (CPSVoiceView)initWithFrame:(CGRect)a3;
- (id)_titleFont;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSVoiceView

- (CPSVoiceView)initWithFrame:(CGRect)a3
{
  v76[11] = *MEMORY[0x277D85DE8];
  v75 = a3;
  v73 = a2;
  v74 = 0;
  v72.receiver = self;
  v72.super_class = CPSVoiceView;
  v70 = [(CPSVoiceView *)&v72 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v74 = v70;
  objc_storeStrong(&v74, v70);
  if (v70)
  {
    [(CPSVoiceView *)v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D75348] tableBackgroundColor];
    [(CPSVoiceView *)v74 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v10);
    v3 = [CPSAbridgableLabel alloc];
    v22 = MEMORY[0x277CBF3A0];
    v4 = [(CPSAbridgableLabel *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleLabel = v74->_titleLabel;
    v74->_titleLabel = v4;
    MEMORY[0x277D82BD8](titleLabel);
    v12 = [(CPSVoiceView *)v74 _titleFont];
    v11 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)v11 setFont:v12];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v14 = [MEMORY[0x277D75348] clearColor];
    v13 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)v13 setBackgroundColor:v14];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v15 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](v15);
    v16 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)v16 setTextAlignment:?];
    MEMORY[0x277D82BD8](v16);
    v17 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)v17 setNumberOfLines:2];
    MEMORY[0x277D82BD8](v17);
    v19 = [MEMORY[0x277D75348] labelColor];
    v18 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSAbridgableLabel *)v18 setTextColor:v19];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v20 = v74;
    v21 = [(CPSVoiceView *)v74 titleLabel];
    [(CPSVoiceView *)v20 addSubview:?];
    MEMORY[0x277D82BD8](v21);
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{*v22, v22[1], v22[2], v22[3]}];
    imageView = v74->_imageView;
    v74->_imageView = v6;
    MEMORY[0x277D82BD8](imageView);
    v24 = [MEMORY[0x277D75348] clearColor];
    v23 = [(CPSVoiceView *)v74 imageView];
    [(UIImageView *)v23 setBackgroundColor:v24];
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v25 = [(CPSVoiceView *)v74 imageView];
    [(UIImageView *)v25 setContentMode:1];
    MEMORY[0x277D82BD8](v25);
    v26 = [(CPSVoiceView *)v74 imageView];
    [(UIImageView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](v26);
    v27 = v74;
    v28 = [(CPSVoiceView *)v74 imageView];
    [(CPSVoiceView *)v27 addSubview:?];
    MEMORY[0x277D82BD8](v28);
    v71 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSVoiceView *)v74 addLayoutGuide:v71];
    v29 = MEMORY[0x277CCAAD0];
    v69 = [(CPSVoiceView *)v74 titleLabel];
    v68 = [(CPSAbridgableLabel *)v69 topAnchor];
    v67 = [(CPSVoiceView *)v74 topAnchor];
    v66 = [v68 constraintEqualToAnchor:10.0 constant:?];
    v76[0] = v66;
    v65 = [(CPSVoiceView *)v74 titleLabel];
    v64 = [(CPSAbridgableLabel *)v65 leadingAnchor];
    v63 = [(CPSVoiceView *)v74 leadingAnchor];
    v62 = [v64 constraintEqualToAnchor:12.0 constant:?];
    v76[1] = v62;
    v61 = [(CPSVoiceView *)v74 titleLabel];
    v60 = [(CPSAbridgableLabel *)v61 trailingAnchor];
    v59 = [(CPSVoiceView *)v74 trailingAnchor];
    v58 = [v60 constraintEqualToAnchor:-12.0 constant:?];
    v76[2] = v58;
    v57 = [v71 leadingAnchor];
    v56 = [(CPSVoiceView *)v74 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:?];
    v76[3] = v55;
    v54 = [v71 trailingAnchor];
    v53 = [(CPSVoiceView *)v74 trailingAnchor];
    v52 = [v54 constraintEqualToAnchor:?];
    v76[4] = v52;
    v51 = [v71 topAnchor];
    v50 = [(CPSVoiceView *)v74 titleLabel];
    v49 = [(CPSAbridgableLabel *)v50 bottomAnchor];
    v48 = [v51 constraintEqualToAnchor:?];
    v76[5] = v48;
    v47 = [v71 bottomAnchor];
    v46 = [(CPSVoiceView *)v74 bottomAnchor];
    v45 = [v47 constraintEqualToAnchor:?];
    v76[6] = v45;
    v44 = [(CPSVoiceView *)v74 imageView];
    v43 = [(UIImageView *)v44 widthAnchor];
    v42 = [v43 constraintLessThanOrEqualToConstant:?];
    v76[7] = v42;
    v41 = [(CPSVoiceView *)v74 imageView];
    v40 = [(UIImageView *)v41 heightAnchor];
    v39 = [v40 constraintLessThanOrEqualToConstant:150.0];
    v76[8] = v39;
    v38 = [(CPSVoiceView *)v74 imageView];
    v37 = [(UIImageView *)v38 centerXAnchor];
    v36 = [v71 centerXAnchor];
    v35 = [v37 constraintEqualToAnchor:?];
    v76[9] = v35;
    v34 = [(CPSVoiceView *)v74 imageView];
    v33 = [(UIImageView *)v34 centerYAnchor];
    v32 = [v71 centerYAnchor];
    v31 = [v33 constraintEqualToAnchor:?];
    v76[10] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:11];
    [v29 activateConstraints:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    objc_storeStrong(&v71, 0);
  }

  v9 = MEMORY[0x277D82BE0](v74);
  objc_storeStrong(&v74, 0);
  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = CPSVoiceView;
  [(CPSVoiceView *)&v5 traitCollectionDidChange:location[0]];
  v4 = [(CPSVoiceView *)v7 titleLabel];
  v3 = [(CPSVoiceView *)v7 _titleFont];
  [(CPSAbridgableLabel *)v4 setFont:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (id)_titleFont
{
  v17[1] = *MEMORY[0x277D85DE8];
  v13[2] = self;
  v13[1] = a2;
  v6 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76A20];
  v7 = [(CPSVoiceView *)self traitCollection];
  v13[0] = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v7);
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