@interface _DBStatusBarCloseView
- (_DBStatusBarCloseView)initWithFrame:(CGRect)a3;
- (void)_traitEnvironmentDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)setShowFocusedState:(BOOL)a3;
@end

@implementation _DBStatusBarCloseView

- (_DBStatusBarCloseView)initWithFrame:(CGRect)a3
{
  v42[6] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = _DBStatusBarCloseView;
  v3 = [(_DBStatusBarCloseView *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_DBStatusBarCloseView *)v3 setUserInteractionEnabled:0];
    v5 = [(_DBStatusBarCloseView *)v4 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75348] labelColor];
    v8 = [v7 colorWithAlphaComponent:0.15];
    [v6 setBackgroundColor:v8];

    v9 = [v6 layer];
    [v9 setCornerRadius:11.0];

    v10 = *MEMORY[0x277CDA5E8];
    v11 = [v6 layer];
    [v11 setCompositingFilter:v10];

    [(_DBStatusBarCloseView *)v4 addSubview:v6];
    objc_storeStrong(&v4->_backgroundView, v6);
    v39 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74420]];
    v38 = [MEMORY[0x277D755D0] configurationWithFont:v39 scale:1];
    v37 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v38];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v37];
    objc_storeStrong(&v4->_symbolImageView, v12);
    v13 = [MEMORY[0x277D75348] labelColor];
    [v12 setTintColor:v13];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_DBStatusBarCloseView *)v4 addSubview:v12];
    v28 = MEMORY[0x277CCAAD0];
    v36 = [v6 leadingAnchor];
    v35 = [(_DBStatusBarCloseView *)v4 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v42[0] = v34;
    v33 = [v6 trailingAnchor];
    v32 = [(_DBStatusBarCloseView *)v4 trailingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v42[1] = v31;
    v30 = [v6 topAnchor];
    v29 = [(_DBStatusBarCloseView *)v4 topAnchor];
    v27 = [v30 constraintEqualToAnchor:v29];
    v42[2] = v27;
    v26 = [v6 bottomAnchor];
    v25 = [(_DBStatusBarCloseView *)v4 bottomAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v42[3] = v24;
    v14 = [v12 centerXAnchor];
    v15 = [(_DBStatusBarCloseView *)v4 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v42[4] = v16;
    v17 = [v12 centerYAnchor];
    v18 = [(_DBStatusBarCloseView *)v4 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v42[5] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:6];
    [v28 activateConstraints:v20];

    v41 = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v22 = [(_DBStatusBarCloseView *)v4 registerForTraitChanges:v21 withTarget:v4 action:sel__traitEnvironmentDidChange_previousTraitCollection_];
  }

  return v4;
}

- (void)setShowFocusedState:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v5 = ;
  v6 = [(_DBStatusBarCloseView *)self symbolImageView];
  [v6 setTintColor:v5];

  if (a3)
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] labelColor];
    [v5 colorWithAlphaComponent:0.15];
  }
  v8 = ;
  v7 = [(_DBStatusBarCloseView *)self backgroundView];
  [v7 setBackgroundColor:v8];

  if (!a3)
  {

    v8 = v5;
  }
}

- (void)_traitEnvironmentDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(_DBStatusBarCloseView *)self traitCollection:a3];
  v6 = [v5 userInterfaceStyle];

  v7 = MEMORY[0x277CDA5E8];
  if (v6 != 2)
  {
    v7 = MEMORY[0x277CDA5D8];
  }

  v8 = *v7;
  v10 = [(_DBStatusBarCloseView *)self backgroundView];
  v9 = [v10 layer];
  [v9 setCompositingFilter:v8];
}

@end