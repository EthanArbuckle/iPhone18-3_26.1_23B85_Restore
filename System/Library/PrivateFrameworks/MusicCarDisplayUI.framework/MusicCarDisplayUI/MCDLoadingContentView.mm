@interface MCDLoadingContentView
- (MCDLoadingContentView)initWithFrame:(CGRect)a3;
@end

@implementation MCDLoadingContentView

- (MCDLoadingContentView)initWithFrame:(CGRect)a3
{
  v49[7] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = MCDLoadingContentView;
  v3 = [(MCDLoadingContentView *)&v48 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] tableBackgroundColor];
    [(MCDLoadingContentView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = MCDCarDisplayBundle();
    v12 = [v11 localizedStringForKey:@"LOADING_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    [v10 setText:v12];

    v13 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76A20]);
    [v10 setFont:v13];

    [v10 setTextAlignment:1];
    [v10 setNumberOfLines:0];
    v14 = [MEMORY[0x277D75348] labelColor];
    [v10 setTextColor:v14];

    v15 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{v6, v7, v8, v9}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [MEMORY[0x277D75348] labelColor];
    [v15 setColor:v16];

    [v15 setActivityIndicatorViewStyle:21];
    [v15 sizeToFit];
    [v15 startAnimating];
    v17 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(MCDLoadingContentView *)v3 addLayoutGuide:v17];
    [(MCDLoadingContentView *)v3 addSubview:v15];
    [(MCDLoadingContentView *)v3 addSubview:v10];
    v36 = MEMORY[0x277CCAAD0];
    v46 = [v17 topAnchor];
    v47 = [(MCDLoadingContentView *)v3 safeAreaLayoutGuide];
    v45 = [v47 topAnchor];
    [v46 constraintEqualToAnchor:v45];
    v44 = v43 = v17;
    v49[0] = v44;
    v42 = [v17 heightAnchor];
    v41 = [(MCDLoadingContentView *)v3 heightAnchor];
    v40 = [v42 constraintEqualToAnchor:v41 multiplier:0.15 constant:0.0];
    v49[1] = v40;
    v39 = [v10 topAnchor];
    v38 = [v17 bottomAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v49[2] = v37;
    v34 = [v10 leadingAnchor];
    v35 = [(MCDLoadingContentView *)v3 safeAreaLayoutGuide];
    v33 = [v35 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:12.0];
    v49[3] = v32;
    v30 = [v10 trailingAnchor];
    v31 = [(MCDLoadingContentView *)v3 safeAreaLayoutGuide];
    v29 = [v31 trailingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:-12.0];
    v49[4] = v28;
    v18 = [v15 centerXAnchor];
    v19 = [(MCDLoadingContentView *)v3 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v49[5] = v20;
    v21 = [v15 topAnchor];
    v22 = [v10 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:28.0];
    v49[6] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:7];
    [v36 activateConstraints:v24];

    v25 = v3;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

@end