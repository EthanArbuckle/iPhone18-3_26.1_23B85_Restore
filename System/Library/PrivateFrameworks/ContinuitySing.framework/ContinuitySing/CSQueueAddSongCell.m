@interface CSQueueAddSongCell
- (CSQueueAddSongCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CSQueueAddSongCell

- (CSQueueAddSongCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v60.receiver = self;
  v60.super_class = CSQueueAddSongCell;
  v4 = [(CSQueueAddSongCell *)&v60 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    v6 = [MEMORY[0x277D75340] colorWithRed:0.196078431 green:0.192156863 blue:0.215686275 alpha:1.0];
    [v5 setBackgroundColor:v6];

    v7 = [v5 layer];
    [v7 setCornerRadius:6.0];

    [v5 setClipsToBounds:1];
    v8 = [(CSQueueAddSongCell *)v4 contentView];
    [v8 addSubview:v5];

    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = MEMORY[0x277D755B0];
    v11 = [MEMORY[0x277D755D8] configurationWithPointSize:7 weight:20.0];
    v12 = [v10 systemImageNamed:@"plus" withConfiguration:v11];
    v13 = [v9 initWithImage:v12];

    v14 = [MEMORY[0x277D75340] systemRedColor];
    [v13 setTintColor:v14];

    [v5 addSubview:v13];
    v15 = objc_alloc_init(MEMORY[0x277D756C0]);
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
    v17 = [v16 localizedStringForKey:@"QUEUE_ADD_SONG_TITLE" value:&stru_285797E10 table:0];
    [v15 setText:v17];

    v18 = [MEMORY[0x277D75340] labelColor];
    [v15 setTextColor:v18];

    v19 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76928] weight:*MEMORY[0x277D74410]];
    [v15 setFont:v19];

    v20 = [(CSQueueAddSongCell *)v4 contentView];
    [v20 addSubview:v15];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = MEMORY[0x277CCAAD0];
    v56 = [v5 centerYAnchor];
    v57 = [(CSQueueAddSongCell *)v4 contentView];
    v55 = [v57 centerYAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v59[0] = v54;
    v52 = [v5 leadingAnchor];
    v53 = [(CSQueueAddSongCell *)v4 contentView];
    v51 = [v53 leadingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:35.0];
    v59[1] = v50;
    v49 = [v5 widthAnchor];
    v48 = [v5 heightAnchor];
    v46 = [v49 constraintEqualToAnchor:v48];
    v59[2] = v46;
    v44 = [v5 heightAnchor];
    v45 = [(CSQueueAddSongCell *)v4 contentView];
    v42 = [v45 heightAnchor];
    v41 = [v44 constraintEqualToAnchor:v42 multiplier:0.857142857];
    v59[3] = v41;
    v40 = [v13 centerXAnchor];
    v39 = [v5 centerXAnchor];
    v37 = [v40 constraintEqualToAnchor:v39];
    v59[4] = v37;
    v36 = [v13 centerYAnchor];
    v35 = [v5 centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v59[5] = v34;
    v32 = [v15 leadingAnchor];
    v33 = [(CSQueueAddSongCell *)v4 contentView];
    v31 = [v33 leadingAnchor];
    v21 = [v32 constraintEqualToAnchor:v31 constant:94.0];
    v59[6] = v21;
    v38 = v15;
    v22 = [v15 trailingAnchor];
    [(CSQueueAddSongCell *)v4 contentView];
    v23 = v58 = v4;
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-35.0];
    v59[7] = v25;
    v26 = [v15 centerYAnchor];
    v27 = [v5 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v59[8] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:9];
    [v43 activateConstraints:v29];

    v4 = v58;
  }

  return v4;
}

@end