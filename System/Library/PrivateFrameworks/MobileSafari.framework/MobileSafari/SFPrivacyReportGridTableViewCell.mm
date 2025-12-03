@interface SFPrivacyReportGridTableViewCell
- (SFPrivacyReportGridTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setGridView:(id)view;
@end

@implementation SFPrivacyReportGridTableViewCell

- (SFPrivacyReportGridTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = SFPrivacyReportGridTableViewCell;
  v4 = [(SFPrivacyReportGridTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SFPrivacyReportGridTableViewCell *)v4 setBackgroundView:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFPrivacyReportGridTableViewCell *)v5 setBackgroundColor:clearColor];

    v7 = v5;
  }

  return v5;
}

- (void)setGridView:(id)view
{
  v23[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  gridView = self->_gridView;
  if (gridView != viewCopy)
  {
    if ([(SFPrivacyReportGridView *)gridView isDescendantOfView:self])
    {
      [(SFPrivacyReportGridView *)self->_gridView removeFromSuperview];
    }

    objc_storeStrong(&self->_gridView, view);
    v7 = self->_gridView;
    if (v7)
    {
      [(SFPrivacyReportGridView *)v7 setPreservesSuperviewLayoutMargins:1];
      [(SFPrivacyReportGridView *)self->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(SFPrivacyReportGridTableViewCell *)self contentView];
      [contentView addSubview:self->_gridView];
      v17 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(SFPrivacyReportGridView *)self->_gridView leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v23[0] = v20;
      trailingAnchor = [(SFPrivacyReportGridView *)self->_gridView trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v23[1] = v9;
      topAnchor = [(SFPrivacyReportGridView *)self->_gridView topAnchor];
      topAnchor2 = [contentView topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v23[2] = v12;
      bottomAnchor = [(SFPrivacyReportGridView *)self->_gridView bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v23[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
      [v17 activateConstraints:v16];
    }
  }
}

@end