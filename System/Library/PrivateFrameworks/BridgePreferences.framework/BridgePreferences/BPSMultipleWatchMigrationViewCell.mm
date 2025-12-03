@interface BPSMultipleWatchMigrationViewCell
- (BPSMultipleWatchMigrationViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation BPSMultipleWatchMigrationViewCell

- (BPSMultipleWatchMigrationViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v28.receiver = self;
  v28.super_class = BPSMultipleWatchMigrationViewCell;
  v4 = [(BPSMultipleWatchMigrationViewCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(BPSCheckMarkView);
    checkmarkView = v4->_checkmarkView;
    v4->_checkmarkView = v5;

    [(BPSCheckMarkView *)v4->_checkmarkView setIsChecked:0];
    contentView = [(BPSMultipleWatchMigrationViewCell *)v4 contentView];
    [contentView addSubview:v4->_checkmarkView];

    v8 = [BPSRemoveMigrationWatchView alloc];
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [(BPSRemoveMigrationWatchView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], v10, v11, v12];
    watchView = v4->_watchView;
    v4->_watchView = v13;

    contentView2 = [(BPSMultipleWatchMigrationViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_watchView];

    appearance = [MEMORY[0x277D3FA48] appearance];
    textColor = [appearance textColor];

    textLabel = [(BPSMultipleWatchMigrationViewCell *)v4 textLabel];
    [textLabel setTextColor:textColor];

    v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    deviceDetailLabel = v4->_deviceDetailLabel;
    v4->_deviceDetailLabel = v19;

    v21 = v4->_deviceDetailLabel;
    v22 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v4->_deviceDetailLabel setTextColor:textColor];
    contentView3 = [(BPSMultipleWatchMigrationViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_deviceDetailLabel];

    appearance2 = [MEMORY[0x277D3FA48] appearance];
    cellHighlightColor = [appearance2 cellHighlightColor];

    if (cellHighlightColor)
    {
      v26 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v26 setBackgroundColor:cellHighlightColor];
      [(BPSMultipleWatchMigrationViewCell *)v4 setSelectedBackgroundView:v26];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = BPSMultipleWatchMigrationViewCell;
  [(BPSMultipleWatchMigrationViewCell *)&v42 layoutSubviews];
  [(BPSMultipleWatchMigrationViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v36 = *MEMORY[0x277CBF3A8];
  [(BPSRemoveMigrationWatchView *)self->_watchView sizeThatFits:?];
  v41 = v12;
  v14 = v13;
  v43.origin.x = v4;
  v38 = v6;
  v39 = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  v15 = (CGRectGetHeight(v43) - v14) * 0.5;
  v40 = floorf(v15);
  [(BPSRemoveMigrationWatchView *)self->_watchView setFrame:?];
  [(BPSCheckMarkView *)self->_checkmarkView sizeThatFits:v36, v11];
  v17 = v16;
  v19 = v18;
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  v20 = (CGRectGetHeight(v44) - v19) * 0.5;
  [(BPSCheckMarkView *)self->_checkmarkView setFrame:20.0, floorf(v20), v17, v19];
  textLabel = [(BPSMultipleWatchMigrationViewCell *)self textLabel];
  [textLabel sizeThatFits:{v36, v11}];
  v23 = v22;
  v25 = v24;

  deviceDetailLabel = [(BPSMultipleWatchMigrationViewCell *)self deviceDetailLabel];
  [deviceDetailLabel sizeThatFits:{v36, v11}];
  v37 = v27;
  v29 = v28;

  v45.origin.x = 65.0;
  v45.origin.y = v40;
  v45.size.height = v14;
  v45.size.width = v41;
  v30 = CGRectGetMaxX(v45) + 16.0;
  v46.origin.y = v38;
  v46.origin.x = v39;
  v46.size.width = v8;
  v46.size.height = v10;
  v31 = (CGRectGetHeight(v46) - (v25 + v29 + 4.0)) * 0.5;
  v32 = floorf(v31);
  v47.origin.x = v30;
  v47.origin.y = v32;
  v47.size.width = v23;
  v47.size.height = v25;
  v33 = CGRectGetMaxY(v47) + 4.0;
  textLabel2 = [(BPSMultipleWatchMigrationViewCell *)self textLabel];
  [textLabel2 setFrame:{v30, v32, v23, v25}];

  deviceDetailLabel2 = [(BPSMultipleWatchMigrationViewCell *)self deviceDetailLabel];
  [deviceDetailLabel2 setFrame:{v30, v33, v37, v29}];
}

@end