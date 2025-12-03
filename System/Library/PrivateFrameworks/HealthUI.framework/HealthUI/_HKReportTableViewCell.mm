@interface _HKReportTableViewCell
- (_HKReportTableViewCell)init;
- (void)setReportName:(id)name reportImage:(id)image;
- (void)setUpUI;
@end

@implementation _HKReportTableViewCell

- (_HKReportTableViewCell)init
{
  v5.receiver = self;
  v5.super_class = _HKReportTableViewCell;
  v2 = [(_HKReportTableViewCell *)&v5 initWithStyle:0 reuseIdentifier:@"report_cell_identifier"];
  v3 = v2;
  if (v2)
  {
    [(_HKReportTableViewCell *)v2 setUpUI];
  }

  return v3;
}

- (void)setUpUI
{
  v36[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  reportLabel = self->_reportLabel;
  self->_reportLabel = v3;

  [(UILabel *)self->_reportLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_reportLabel;
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [(UILabel *)v5 setFont:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  reportImageView = self->_reportImageView;
  self->_reportImageView = v7;

  [(UIImageView *)self->_reportImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(_HKReportTableViewCell *)self contentView];
  [contentView addSubview:self->_reportLabel];

  contentView2 = [(_HKReportTableViewCell *)self contentView];
  [contentView2 addSubview:self->_reportImageView];

  v27 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIImageView *)self->_reportImageView topAnchor];
  contentView3 = [(_HKReportTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
  v36[0] = v32;
  centerXAnchor = [(UIImageView *)self->_reportImageView centerXAnchor];
  contentView4 = [(_HKReportTableViewCell *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v36[1] = v28;
  topAnchor3 = [(UILabel *)self->_reportLabel topAnchor];
  bottomAnchor = [(UIImageView *)self->_reportImageView bottomAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:30.0];
  v36[2] = v24;
  centerXAnchor3 = [(UILabel *)self->_reportLabel centerXAnchor];
  contentView5 = [(_HKReportTableViewCell *)self contentView];
  centerXAnchor4 = [contentView5 centerXAnchor];
  v14 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v36[3] = v14;
  bottomAnchor2 = [(UILabel *)self->_reportLabel bottomAnchor];
  contentView6 = [(_HKReportTableViewCell *)self contentView];
  bottomAnchor3 = [contentView6 bottomAnchor];
  v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v36[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
  [v27 activateConstraints:v19];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  contentView7 = [(_HKReportTableViewCell *)self contentView];
  [contentView7 setBackgroundColor:systemGroupedBackgroundColor];

  systemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  backgroundView = [(_HKReportTableViewCell *)self backgroundView];
  [backgroundView setBackgroundColor:systemGroupedBackgroundColor2];

  [(_HKReportTableViewCell *)self setSelectionStyle:0];
}

- (void)setReportName:(id)name reportImage:(id)image
{
  reportLabel = self->_reportLabel;
  imageCopy = image;
  [(UILabel *)reportLabel setText:name];
  [(UIImageView *)self->_reportImageView setImage:imageCopy];
}

@end