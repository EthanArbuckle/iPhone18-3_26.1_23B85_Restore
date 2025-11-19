@interface HUHomeHubHeaderView
- (HUHomeHubHeaderView)initWithMessage:(id)a3;
- (id)_setupConstraints;
- (id)_setupImageView;
- (id)_setupMessage:(id)a3;
@end

@implementation HUHomeHubHeaderView

- (HUHomeHubHeaderView)initWithMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = HUHomeHubHeaderView;
  v6 = [(HUHomeHubHeaderView *)&v19 initWithReuseIdentifier:0];
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@, message = %@", buf, 0x20u);
    }

    v9 = [(HUHomeHubHeaderView *)v6 _setupImageView];
    [(HUHomeHubHeaderView *)v6 setImageView:v9];

    v10 = [(HUHomeHubHeaderView *)v6 _setupMessage:v5];
    [(HUHomeHubHeaderView *)v6 setMessage:v10];

    v11 = [(HUHomeHubHeaderView *)v6 contentView];
    v12 = [(HUHomeHubHeaderView *)v6 imageView];
    [v11 naui_addAutoLayoutSubview:v12];

    v13 = [(HUHomeHubHeaderView *)v6 contentView];
    v14 = [(HUHomeHubHeaderView *)v6 message];
    [v13 naui_addAutoLayoutSubview:v14];

    v15 = [(HUHomeHubHeaderView *)v6 _setupConstraints];
    [(HUHomeHubHeaderView *)v6 setConstraints:v15];

    v16 = MEMORY[0x277CCAAD0];
    v17 = [(HUHomeHubHeaderView *)v6 constraints];
    [v16 activateConstraints:v17];
  }

  return v6;
}

- (id)_setupMessage:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setText:v4];

  [v5 setNumberOfLines:0];
  [v5 setLineBreakMode:0];
  [v5 setTextAlignment:1];
  [v5 sizeToFit];

  return v5;
}

- (id)_setupImageView
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:72.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:v2];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  v5 = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 setTintColor:v5];

  return v4;
}

- (id)_setupConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUHomeHubHeaderView *)self imageView];
  v5 = [v4 topAnchor];
  v6 = [(HUHomeHubHeaderView *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:15.0];
  [v3 addObject:v8];

  v9 = [(HUHomeHubHeaderView *)self imageView];
  v10 = [v9 centerXAnchor];
  v11 = [(HUHomeHubHeaderView *)self contentView];
  v12 = [v11 centerXAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v3 addObject:v13];

  v14 = [(HUHomeHubHeaderView *)self message];
  v15 = [v14 centerXAnchor];
  v16 = [(HUHomeHubHeaderView *)self centerXAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v3 addObject:v17];

  v18 = [(HUHomeHubHeaderView *)self message];
  v19 = [v18 topAnchor];
  v20 = [(HUHomeHubHeaderView *)self imageView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:20.0];
  [v3 addObject:v22];

  v23 = [(HUHomeHubHeaderView *)self message];
  v24 = [v23 bottomAnchor];
  v25 = [(HUHomeHubHeaderView *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v3 addObject:v27];

  v28 = [(HUHomeHubHeaderView *)self message];
  v29 = [v28 leadingAnchor];
  v30 = [(HUHomeHubHeaderView *)self contentView];
  v31 = [v30 safeAreaLayoutGuide];
  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor:v32 constant:5.0];
  [v3 addObject:v33];

  v34 = [(HUHomeHubHeaderView *)self message];
  v35 = [v34 trailingAnchor];
  v36 = [(HUHomeHubHeaderView *)self contentView];
  v37 = [v36 safeAreaLayoutGuide];
  v38 = [v37 trailingAnchor];
  v39 = [v35 constraintEqualToAnchor:v38 constant:5.0];
  [v3 addObject:v39];

  return v3;
}

@end