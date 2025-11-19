@interface MTNotificationView
- (MTNotificationView)init;
- (NSString)statusString;
- (NSString)timeString;
- (void)setStatusString:(id)a3;
- (void)setTimeString:(id)a3;
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

    v4 = [(MTNotificationView *)v2 labelContainer];
    [(MTNotificationView *)v2 addLayoutGuide:v4];

    v5 = objc_opt_new();
    [(MTNotificationView *)v2 setTimeLabel:v5];

    v6 = objc_opt_new();
    [(MTNotificationView *)v2 setStatusLabel:v6];

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v7 = [(MTNotificationView *)v2 timeLabel];
    v83[0] = v7;
    v8 = [(MTNotificationView *)v2 statusLabel];
    v83[1] = v8;
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
    v17 = [v16 mtui_fontByAddingTimeFontAttributes];
    v18 = [(MTNotificationView *)v2 timeLabel];
    [v18 setFont:v17];

    v19 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightRegular];
    v20 = [(MTNotificationView *)v2 statusLabel];
    [v20 setFont:v19];

    v21 = objc_opt_new();
    v22 = [(MTNotificationView *)v2 labelContainer];
    v23 = [v22 topAnchor];
    v24 = [(MTNotificationView *)v2 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v21 addObject:v25];

    v26 = [(MTNotificationView *)v2 labelContainer];
    v27 = [v26 bottomAnchor];
    v28 = [(MTNotificationView *)v2 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v21 addObject:v29];

    v30 = [(MTNotificationView *)v2 timeLabel];
    v31 = [v30 lastBaselineAnchor];
    v32 = [(MTNotificationView *)v2 labelContainer];
    v33 = [v32 topAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:155.0];
    [v21 addObject:v34];

    v35 = [(MTNotificationView *)v2 labelContainer];
    v36 = [v35 bottomAnchor];
    v37 = [(MTNotificationView *)v2 statusLabel];
    v38 = [v37 lastBaselineAnchor];
    v39 = [v36 constraintEqualToAnchor:v38 constant:63.0];
    [v21 addObject:v39];

    v40 = [(MTNotificationView *)v2 statusLabel];
    v41 = [v40 lastBaselineAnchor];
    v42 = [(MTNotificationView *)v2 timeLabel];
    v43 = [v42 lastBaselineAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:46.0];
    [v21 addObject:v44];

    v45 = [(MTNotificationView *)v2 labelContainer];
    v46 = [v45 centerXAnchor];
    v47 = [(MTNotificationView *)v2 centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v21 addObject:v48];

    v49 = [(MTNotificationView *)v2 labelContainer];
    v50 = [v49 centerYAnchor];
    v51 = [(MTNotificationView *)v2 centerYAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:-3.0];
    [v21 addObject:v52];

    v53 = [(MTNotificationView *)v2 timeLabel];
    v54 = [v53 leadingAnchor];
    v55 = [(MTNotificationView *)v2 labelContainer];
    v56 = [v55 leadingAnchor];
    v57 = [v54 constraintEqualToAnchor:v56];
    [v21 addObject:v57];

    v58 = [(MTNotificationView *)v2 timeLabel];
    v59 = [v58 trailingAnchor];
    v60 = [(MTNotificationView *)v2 labelContainer];
    v61 = [v60 trailingAnchor];
    v62 = [v59 constraintEqualToAnchor:v61];
    [v21 addObject:v62];

    v63 = [(MTNotificationView *)v2 timeLabel];
    v64 = [v63 centerXAnchor];
    v65 = [(MTNotificationView *)v2 centerXAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    [v21 addObject:v66];

    v67 = [(MTNotificationView *)v2 statusLabel];
    v68 = [v67 centerXAnchor];
    v69 = [(MTNotificationView *)v2 centerXAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];
    [v21 addObject:v70];

    v71 = [(MTNotificationView *)v2 statusLabel];
    v72 = [v71 widthAnchor];
    v73 = [(MTNotificationView *)v2 timeLabel];
    v74 = [v73 widthAnchor];
    v75 = [v72 constraintEqualToAnchor:v74];
    [v21 addObject:v75];

    [NSLayoutConstraint activateConstraints:v21];
    v76 = [(MTNotificationView *)v2 layer];
    [v76 setAllowsGroupBlending:0];
  }

  return v2;
}

- (void)setTimeString:(id)a3
{
  v4 = a3;
  v5 = [(MTNotificationView *)self timeLabel];
  [v5 setText:v4];

  [(MTNotificationView *)self setNeedsUpdateConstraints];
}

- (NSString)timeString
{
  v2 = [(MTNotificationView *)self timeLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setStatusString:(id)a3
{
  v4 = a3;
  v5 = [(MTNotificationView *)self statusLabel];
  [v5 setText:v4];

  [(MTNotificationView *)self setNeedsUpdateConstraints];
}

- (NSString)statusString
{
  v2 = [(MTNotificationView *)self statusLabel];
  v3 = [v2 text];

  return v3;
}

@end