@interface HUHomeHubHeaderView
- (HUHomeHubHeaderView)initWithMessage:(id)message;
- (id)_setupConstraints;
- (id)_setupImageView;
- (id)_setupMessage:(id)message;
@end

@implementation HUHomeHubHeaderView

- (HUHomeHubHeaderView)initWithMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
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
      v25 = messageCopy;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@, message = %@", buf, 0x20u);
    }

    _setupImageView = [(HUHomeHubHeaderView *)v6 _setupImageView];
    [(HUHomeHubHeaderView *)v6 setImageView:_setupImageView];

    v10 = [(HUHomeHubHeaderView *)v6 _setupMessage:messageCopy];
    [(HUHomeHubHeaderView *)v6 setMessage:v10];

    contentView = [(HUHomeHubHeaderView *)v6 contentView];
    imageView = [(HUHomeHubHeaderView *)v6 imageView];
    [contentView naui_addAutoLayoutSubview:imageView];

    contentView2 = [(HUHomeHubHeaderView *)v6 contentView];
    message = [(HUHomeHubHeaderView *)v6 message];
    [contentView2 naui_addAutoLayoutSubview:message];

    _setupConstraints = [(HUHomeHubHeaderView *)v6 _setupConstraints];
    [(HUHomeHubHeaderView *)v6 setConstraints:_setupConstraints];

    v16 = MEMORY[0x277CCAAD0];
    constraints = [(HUHomeHubHeaderView *)v6 constraints];
    [v16 activateConstraints:constraints];
  }

  return v6;
}

- (id)_setupMessage:(id)message
{
  v3 = MEMORY[0x277D756B8];
  messageCopy = message;
  v5 = objc_alloc_init(v3);
  [v5 setText:messageCopy];

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
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 setTintColor:systemOrangeColor];

  return v4;
}

- (id)_setupConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  imageView = [(HUHomeHubHeaderView *)self imageView];
  topAnchor = [imageView topAnchor];
  contentView = [(HUHomeHubHeaderView *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  [array addObject:v8];

  imageView2 = [(HUHomeHubHeaderView *)self imageView];
  centerXAnchor = [imageView2 centerXAnchor];
  contentView2 = [(HUHomeHubHeaderView *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v13];

  message = [(HUHomeHubHeaderView *)self message];
  centerXAnchor3 = [message centerXAnchor];
  centerXAnchor4 = [(HUHomeHubHeaderView *)self centerXAnchor];
  v17 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [array addObject:v17];

  message2 = [(HUHomeHubHeaderView *)self message];
  topAnchor3 = [message2 topAnchor];
  imageView3 = [(HUHomeHubHeaderView *)self imageView];
  bottomAnchor = [imageView3 bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  [array addObject:v22];

  message3 = [(HUHomeHubHeaderView *)self message];
  bottomAnchor2 = [message3 bottomAnchor];
  contentView3 = [(HUHomeHubHeaderView *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [array addObject:v27];

  message4 = [(HUHomeHubHeaderView *)self message];
  leadingAnchor = [message4 leadingAnchor];
  contentView4 = [(HUHomeHubHeaderView *)self contentView];
  safeAreaLayoutGuide = [contentView4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  [array addObject:v33];

  message5 = [(HUHomeHubHeaderView *)self message];
  trailingAnchor = [message5 trailingAnchor];
  contentView5 = [(HUHomeHubHeaderView *)self contentView];
  safeAreaLayoutGuide2 = [contentView5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:5.0];
  [array addObject:v39];

  return array;
}

@end