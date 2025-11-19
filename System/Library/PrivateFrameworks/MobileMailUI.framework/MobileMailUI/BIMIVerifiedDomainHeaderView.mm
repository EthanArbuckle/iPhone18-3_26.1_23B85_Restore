@interface BIMIVerifiedDomainHeaderView
- (BIMIVerifiedDomainHeaderView)initWithViewModel:(id)a3;
- (void)_setupSubViews;
- (void)learnMoreButtonPressed:(id)a3;
@end

@implementation BIMIVerifiedDomainHeaderView

- (BIMIVerifiedDomainHeaderView)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BIMIVerifiedDomainHeaderView;
  v6 = [(BIMIVerifiedDomainHeaderView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(BIMIVerifiedDomainHeaderView *)v7 setAxis:1];
    [(BIMIVerifiedDomainHeaderView *)v7 setAlignment:1];
    [(BIMIVerifiedDomainHeaderView *)v7 setDistribution:0];
    [(BIMIVerifiedDomainHeaderView *)v7 setSpacing:1.17549435e-38];
    [(BIMIVerifiedDomainHeaderView *)v7 setLayoutMarginsRelativeArrangement:1];
    [(BIMIVerifiedDomainHeaderView *)v7 setDirectionalLayoutMargins:16.0, 0.0, 16.0, 0.0];
    [(BIMIVerifiedDomainHeaderView *)v7 _setupSubViews];
  }

  return v7;
}

- (void)_setupSubViews
{
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v19 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v8 = [(BIMIVerifiedDomainHeaderView *)self viewModel];
  v9 = [v8 title];
  [v19 setText:v9];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v19 setFont:v10];

  [(BIMIVerifiedDomainHeaderView *)self addArrangedSubview:v19];
  v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v12 = [(BIMIVerifiedDomainHeaderView *)self viewModel];
  v13 = [v12 body];
  [v11 setText:v13];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v11 setFont:v14];

  v15 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v11 setTextColor:v15];

  [v11 setNumberOfLines:0];
  [v11 setLineBreakMode:0];
  [(BIMIVerifiedDomainHeaderView *)self addArrangedSubview:v11];
  v16 = [MEMORY[0x277D75220] buttonWithType:1];
  v17 = [(BIMIVerifiedDomainHeaderView *)self viewModel];
  v18 = [v17 learnMoreTitle];
  [v16 setTitle:v18 forState:0];

  [v16 addTarget:self action:sel_learnMoreButtonPressed_ forControlEvents:0x2000];
  [(BIMIVerifiedDomainHeaderView *)self addArrangedSubview:v16];
}

- (void)learnMoreButtonPressed:(id)a3
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"BIMI_KB_LINK" value:&stru_2826D1AD8 table:@"Main"];
  v6 = [v3 URLWithString:v5];
  [v7 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

@end