@interface OBTrayButton(HUAdditions)
- (id)activityIndicator;
@end

@implementation OBTrayButton(HUAdditions)

- (id)activityIndicator
{
  v20[3] = *MEMORY[0x277D85DE8];
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [v4 setColor:v5];

    [v4 setAlpha:0.5];
    [v4 setHidesWhenStopped:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a1 addSubview:v4];
    v15 = MEMORY[0x277CCAAD0];
    v19 = [v4 leadingAnchor];
    v18 = [a1 leadingAnchor];
    v17 = [v19 constraintGreaterThanOrEqualToAnchor:v18 constant:7.0];
    v20[0] = v17;
    v16 = [a1 _titleView];
    v14 = [v16 leadingAnchor];
    v6 = [v4 trailingAnchor];
    v7 = [v14 constraintEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
    v20[1] = v7;
    v8 = [v4 centerYAnchor];
    v9 = [a1 _titleView];
    v10 = [v9 centerYAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v20[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    [v15 activateConstraints:v12];

    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  return v4;
}

@end