@interface _HKReportTableViewCell
- (_HKReportTableViewCell)init;
- (void)setReportName:(id)a3 reportImage:(id)a4;
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
  v9 = [(_HKReportTableViewCell *)self contentView];
  [v9 addSubview:self->_reportLabel];

  v10 = [(_HKReportTableViewCell *)self contentView];
  [v10 addSubview:self->_reportImageView];

  v27 = MEMORY[0x1E696ACD8];
  v34 = [(UIImageView *)self->_reportImageView topAnchor];
  v35 = [(_HKReportTableViewCell *)self contentView];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:30.0];
  v36[0] = v32;
  v30 = [(UIImageView *)self->_reportImageView centerXAnchor];
  v31 = [(_HKReportTableViewCell *)self contentView];
  v29 = [v31 centerXAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v36[1] = v28;
  v26 = [(UILabel *)self->_reportLabel topAnchor];
  v25 = [(UIImageView *)self->_reportImageView bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:30.0];
  v36[2] = v24;
  v11 = [(UILabel *)self->_reportLabel centerXAnchor];
  v12 = [(_HKReportTableViewCell *)self contentView];
  v13 = [v12 centerXAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v36[3] = v14;
  v15 = [(UILabel *)self->_reportLabel bottomAnchor];
  v16 = [(_HKReportTableViewCell *)self contentView];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v36[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
  [v27 activateConstraints:v19];

  v20 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v21 = [(_HKReportTableViewCell *)self contentView];
  [v21 setBackgroundColor:v20];

  v22 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v23 = [(_HKReportTableViewCell *)self backgroundView];
  [v23 setBackgroundColor:v22];

  [(_HKReportTableViewCell *)self setSelectionStyle:0];
}

- (void)setReportName:(id)a3 reportImage:(id)a4
{
  reportLabel = self->_reportLabel;
  v7 = a4;
  [(UILabel *)reportLabel setText:a3];
  [(UIImageView *)self->_reportImageView setImage:v7];
}

@end