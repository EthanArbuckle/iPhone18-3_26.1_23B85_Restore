@interface OBTrayButton(HUAdditions)
- (id)activityIndicator;
@end

@implementation OBTrayButton(HUAdditions)

- (id)activityIndicator
{
  v20[3] = *MEMORY[0x277D85DE8];
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [v4 setColor:systemWhiteColor];

    [v4 setAlpha:0.5];
    [v4 setHidesWhenStopped:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [self addSubview:v4];
    v15 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v4 leadingAnchor];
    leadingAnchor2 = [self leadingAnchor];
    v17 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:7.0];
    v20[0] = v17;
    _titleView = [self _titleView];
    leadingAnchor3 = [_titleView leadingAnchor];
    trailingAnchor = [v4 trailingAnchor];
    v7 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v20[1] = v7;
    centerYAnchor = [v4 centerYAnchor];
    _titleView2 = [self _titleView];
    centerYAnchor2 = [_titleView2 centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    [v15 activateConstraints:v12];

    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

@end