@interface CSQueueAddSongCell
- (CSQueueAddSongCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CSQueueAddSongCell

- (CSQueueAddSongCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v60.receiver = self;
  v60.super_class = CSQueueAddSongCell;
  v4 = [(CSQueueAddSongCell *)&v60 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    v6 = [MEMORY[0x277D75340] colorWithRed:0.196078431 green:0.192156863 blue:0.215686275 alpha:1.0];
    [v5 setBackgroundColor:v6];

    layer = [v5 layer];
    [layer setCornerRadius:6.0];

    [v5 setClipsToBounds:1];
    contentView = [(CSQueueAddSongCell *)v4 contentView];
    [contentView addSubview:v5];

    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = MEMORY[0x277D755B0];
    v11 = [MEMORY[0x277D755D8] configurationWithPointSize:7 weight:20.0];
    v12 = [v10 systemImageNamed:@"plus" withConfiguration:v11];
    v13 = [v9 initWithImage:v12];

    systemRedColor = [MEMORY[0x277D75340] systemRedColor];
    [v13 setTintColor:systemRedColor];

    [v5 addSubview:v13];
    v15 = objc_alloc_init(MEMORY[0x277D756C0]);
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v17 = [v16 localizedStringForKey:@"QUEUE_ADD_SONG_TITLE" value:&stru_285797E10 table:0];
    [v15 setText:v17];

    labelColor = [MEMORY[0x277D75340] labelColor];
    [v15 setTextColor:labelColor];

    v19 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76928] weight:*MEMORY[0x277D74410]];
    [v15 setFont:v19];

    contentView2 = [(CSQueueAddSongCell *)v4 contentView];
    [contentView2 addSubview:v15];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = MEMORY[0x277CCAAD0];
    centerYAnchor = [v5 centerYAnchor];
    contentView3 = [(CSQueueAddSongCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v59[0] = v54;
    leadingAnchor = [v5 leadingAnchor];
    contentView4 = [(CSQueueAddSongCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:35.0];
    v59[1] = v50;
    widthAnchor = [v5 widthAnchor];
    heightAnchor = [v5 heightAnchor];
    v46 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v59[2] = v46;
    heightAnchor2 = [v5 heightAnchor];
    contentView5 = [(CSQueueAddSongCell *)v4 contentView];
    heightAnchor3 = [contentView5 heightAnchor];
    v41 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.857142857];
    v59[3] = v41;
    centerXAnchor = [v13 centerXAnchor];
    centerXAnchor2 = [v5 centerXAnchor];
    v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v59[4] = v37;
    centerYAnchor3 = [v13 centerYAnchor];
    centerYAnchor4 = [v5 centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v59[5] = v34;
    leadingAnchor3 = [v15 leadingAnchor];
    contentView6 = [(CSQueueAddSongCell *)v4 contentView];
    leadingAnchor4 = [contentView6 leadingAnchor];
    v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:94.0];
    v59[6] = v21;
    v38 = v15;
    trailingAnchor = [v15 trailingAnchor];
    [(CSQueueAddSongCell *)v4 contentView];
    v23 = v58 = v4;
    trailingAnchor2 = [v23 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-35.0];
    v59[7] = v25;
    centerYAnchor5 = [v15 centerYAnchor];
    centerYAnchor6 = [v5 centerYAnchor];
    v28 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v59[8] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:9];
    [v43 activateConstraints:v29];

    v4 = v58;
  }

  return v4;
}

@end