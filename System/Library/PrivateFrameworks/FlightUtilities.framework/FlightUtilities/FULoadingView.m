@interface FULoadingView
- (FULoadingView)init;
@end

@implementation FULoadingView

- (FULoadingView)init
{
  v19[5] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = FULoadingView;
  v2 = [(FULoadingView *)&v18 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 startAnimating];
    v4 = +[(TLKLabel *)FULabel];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v4 setFont:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Loading Flight Status…" value:@"Loading Flight Status…" table:@"Localizable"];
    [v4 setText:v7];

    [(FULoadingView *)v2 addSubview:v4];
    [(FULoadingView *)v2 addSubview:v3];
    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:8 relatedBy:0 toItem:v4 attribute:8 multiplier:3.0 constant:0.0];
    LODWORD(v9) = 1128792064;
    [v8 setPriority:v9];
    v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:-26.0];
    v19[0] = v10;
    v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
    v19[1] = v11;
    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v2 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v19[2] = v12;
    v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v3 attribute:6 multiplier:1.0 constant:12.0];
    v19[3] = v13;
    v19[4] = v8;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
    [(FULoadingView *)v2 addConstraints:v14];

    [(FULoadingView *)v2 setLoadingLabel:v4];
    v15 = v2;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

@end