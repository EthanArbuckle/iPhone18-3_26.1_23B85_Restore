@interface MTNotificationView
- (MTNotificationView)init;
- (NSString)statusString;
- (NSString)timeString;
- (void)setStatusString:(id)string;
- (void)setTimeString:(id)string;
@end

@implementation MTNotificationView

- (MTNotificationView)init
{
  v82.receiver = self;
  v82.super_class = MTNotificationView;
  v2 = [(MTNotificationView *)&v82 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(MTNotificationView *)v2 setLabelContainer:v3];

    labelContainer = [(MTNotificationView *)v2 labelContainer];
    [(MTNotificationView *)v2 addLayoutGuide:labelContainer];

    v5 = objc_opt_new();
    [(MTNotificationView *)v2 setTimeLabel:v5];

    v6 = objc_opt_new();
    [(MTNotificationView *)v2 setStatusLabel:v6];

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    timeLabel = [(MTNotificationView *)v2 timeLabel];
    v83[0] = timeLabel;
    statusLabel = [(MTNotificationView *)v2 statusLabel];
    v83[1] = statusLabel;
    v9 = [NSArray arrayWithObjects:v83 count:2];

    v10 = [v9 countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v79;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v79 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v78 + 1) + 8 * i);
          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          v15 = +[UIColor labelColor];
          [v14 setTextColor:v15];

          [v14 setTextAlignment:1];
          [(MTNotificationView *)v2 addSubview:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v11);
    }

    v16 = [UIFont systemFontOfSize:88.0 weight:UIFontWeightThin];
    mtui_fontByAddingTimeFontAttributes = [v16 mtui_fontByAddingTimeFontAttributes];
    timeLabel2 = [(MTNotificationView *)v2 timeLabel];
    [timeLabel2 setFont:mtui_fontByAddingTimeFontAttributes];

    v19 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightRegular];
    statusLabel2 = [(MTNotificationView *)v2 statusLabel];
    [statusLabel2 setFont:v19];

    v21 = objc_opt_new();
    labelContainer2 = [(MTNotificationView *)v2 labelContainer];
    topAnchor = [labelContainer2 topAnchor];
    topAnchor2 = [(MTNotificationView *)v2 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v21 addObject:v25];

    labelContainer3 = [(MTNotificationView *)v2 labelContainer];
    bottomAnchor = [labelContainer3 bottomAnchor];
    bottomAnchor2 = [(MTNotificationView *)v2 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v21 addObject:v29];

    timeLabel3 = [(MTNotificationView *)v2 timeLabel];
    lastBaselineAnchor = [timeLabel3 lastBaselineAnchor];
    labelContainer4 = [(MTNotificationView *)v2 labelContainer];
    topAnchor3 = [labelContainer4 topAnchor];
    v34 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:155.0];
    [v21 addObject:v34];

    labelContainer5 = [(MTNotificationView *)v2 labelContainer];
    bottomAnchor3 = [labelContainer5 bottomAnchor];
    statusLabel3 = [(MTNotificationView *)v2 statusLabel];
    lastBaselineAnchor2 = [statusLabel3 lastBaselineAnchor];
    v39 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:63.0];
    [v21 addObject:v39];

    statusLabel4 = [(MTNotificationView *)v2 statusLabel];
    lastBaselineAnchor3 = [statusLabel4 lastBaselineAnchor];
    timeLabel4 = [(MTNotificationView *)v2 timeLabel];
    lastBaselineAnchor4 = [timeLabel4 lastBaselineAnchor];
    v44 = [lastBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor4 constant:46.0];
    [v21 addObject:v44];

    labelContainer6 = [(MTNotificationView *)v2 labelContainer];
    centerXAnchor = [labelContainer6 centerXAnchor];
    centerXAnchor2 = [(MTNotificationView *)v2 centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v21 addObject:v48];

    labelContainer7 = [(MTNotificationView *)v2 labelContainer];
    centerYAnchor = [labelContainer7 centerYAnchor];
    centerYAnchor2 = [(MTNotificationView *)v2 centerYAnchor];
    v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-3.0];
    [v21 addObject:v52];

    timeLabel5 = [(MTNotificationView *)v2 timeLabel];
    leadingAnchor = [timeLabel5 leadingAnchor];
    labelContainer8 = [(MTNotificationView *)v2 labelContainer];
    leadingAnchor2 = [labelContainer8 leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 addObject:v57];

    timeLabel6 = [(MTNotificationView *)v2 timeLabel];
    trailingAnchor = [timeLabel6 trailingAnchor];
    labelContainer9 = [(MTNotificationView *)v2 labelContainer];
    trailingAnchor2 = [labelContainer9 trailingAnchor];
    v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v21 addObject:v62];

    timeLabel7 = [(MTNotificationView *)v2 timeLabel];
    centerXAnchor3 = [timeLabel7 centerXAnchor];
    centerXAnchor4 = [(MTNotificationView *)v2 centerXAnchor];
    v66 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v21 addObject:v66];

    statusLabel5 = [(MTNotificationView *)v2 statusLabel];
    centerXAnchor5 = [statusLabel5 centerXAnchor];
    centerXAnchor6 = [(MTNotificationView *)v2 centerXAnchor];
    v70 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v21 addObject:v70];

    statusLabel6 = [(MTNotificationView *)v2 statusLabel];
    widthAnchor = [statusLabel6 widthAnchor];
    timeLabel8 = [(MTNotificationView *)v2 timeLabel];
    widthAnchor2 = [timeLabel8 widthAnchor];
    v75 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v21 addObject:v75];

    [NSLayoutConstraint activateConstraints:v21];
    layer = [(MTNotificationView *)v2 layer];
    [layer setAllowsGroupBlending:0];
  }

  return v2;
}

- (void)setTimeString:(id)string
{
  stringCopy = string;
  timeLabel = [(MTNotificationView *)self timeLabel];
  [timeLabel setText:stringCopy];

  [(MTNotificationView *)self setNeedsUpdateConstraints];
}

- (NSString)timeString
{
  timeLabel = [(MTNotificationView *)self timeLabel];
  text = [timeLabel text];

  return text;
}

- (void)setStatusString:(id)string
{
  stringCopy = string;
  statusLabel = [(MTNotificationView *)self statusLabel];
  [statusLabel setText:stringCopy];

  [(MTNotificationView *)self setNeedsUpdateConstraints];
}

- (NSString)statusString
{
  statusLabel = [(MTNotificationView *)self statusLabel];
  text = [statusLabel text];

  return text;
}

@end