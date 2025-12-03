@interface _DBStatusBarCloseView
- (_DBStatusBarCloseView)initWithFrame:(CGRect)frame;
- (void)_traitEnvironmentDidChange:(id)change previousTraitCollection:(id)collection;
- (void)setShowFocusedState:(BOOL)state;
@end

@implementation _DBStatusBarCloseView

- (_DBStatusBarCloseView)initWithFrame:(CGRect)frame
{
  v42[6] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = _DBStatusBarCloseView;
  v3 = [(_DBStatusBarCloseView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_DBStatusBarCloseView *)v3 setUserInteractionEnabled:0];
    layer = [(_DBStatusBarCloseView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v8 = [labelColor colorWithAlphaComponent:0.15];
    [v6 setBackgroundColor:v8];

    layer2 = [v6 layer];
    [layer2 setCornerRadius:11.0];

    v10 = *MEMORY[0x277CDA5E8];
    layer3 = [v6 layer];
    [layer3 setCompositingFilter:v10];

    [(_DBStatusBarCloseView *)v4 addSubview:v6];
    objc_storeStrong(&v4->_backgroundView, v6);
    v39 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74420]];
    v38 = [MEMORY[0x277D755D0] configurationWithFont:v39 scale:1];
    v37 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v38];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v37];
    objc_storeStrong(&v4->_symbolImageView, v12);
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [v12 setTintColor:labelColor2];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_DBStatusBarCloseView *)v4 addSubview:v12];
    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [(_DBStatusBarCloseView *)v4 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[0] = v34;
    trailingAnchor = [v6 trailingAnchor];
    trailingAnchor2 = [(_DBStatusBarCloseView *)v4 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[1] = v31;
    topAnchor = [v6 topAnchor];
    topAnchor2 = [(_DBStatusBarCloseView *)v4 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[2] = v27;
    bottomAnchor = [v6 bottomAnchor];
    bottomAnchor2 = [(_DBStatusBarCloseView *)v4 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[3] = v24;
    centerXAnchor = [v12 centerXAnchor];
    centerXAnchor2 = [(_DBStatusBarCloseView *)v4 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v42[4] = v16;
    centerYAnchor = [v12 centerYAnchor];
    centerYAnchor2 = [(_DBStatusBarCloseView *)v4 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v42[5] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:6];
    [v28 activateConstraints:v20];

    v41 = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v22 = [(_DBStatusBarCloseView *)v4 registerForTraitChanges:v21 withTarget:v4 action:sel__traitEnvironmentDidChange_previousTraitCollection_];
  }

  return v4;
}

- (void)setShowFocusedState:(BOOL)state
{
  if (state)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  labelColor = ;
  symbolImageView = [(_DBStatusBarCloseView *)self symbolImageView];
  [symbolImageView setTintColor:labelColor];

  if (state)
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [labelColor colorWithAlphaComponent:0.15];
  }
  v8 = ;
  backgroundView = [(_DBStatusBarCloseView *)self backgroundView];
  [backgroundView setBackgroundColor:v8];

  if (!state)
  {

    v8 = labelColor;
  }
}

- (void)_traitEnvironmentDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(_DBStatusBarCloseView *)self traitCollection:change];
  userInterfaceStyle = [v5 userInterfaceStyle];

  v7 = MEMORY[0x277CDA5E8];
  if (userInterfaceStyle != 2)
  {
    v7 = MEMORY[0x277CDA5D8];
  }

  v8 = *v7;
  backgroundView = [(_DBStatusBarCloseView *)self backgroundView];
  layer = [backgroundView layer];
  [layer setCompositingFilter:v8];
}

@end