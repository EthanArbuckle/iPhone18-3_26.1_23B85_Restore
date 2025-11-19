@interface SFPrivacyReportGridTableViewCell
- (SFPrivacyReportGridTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setGridView:(id)a3;
@end

@implementation SFPrivacyReportGridTableViewCell

- (SFPrivacyReportGridTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = SFPrivacyReportGridTableViewCell;
  v4 = [(SFPrivacyReportGridTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SFPrivacyReportGridTableViewCell *)v4 setBackgroundView:0];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(SFPrivacyReportGridTableViewCell *)v5 setBackgroundColor:v6];

    v7 = v5;
  }

  return v5;
}

- (void)setGridView:(id)a3
{
  v23[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  gridView = self->_gridView;
  if (gridView != v5)
  {
    if ([(SFPrivacyReportGridView *)gridView isDescendantOfView:self])
    {
      [(SFPrivacyReportGridView *)self->_gridView removeFromSuperview];
    }

    objc_storeStrong(&self->_gridView, a3);
    v7 = self->_gridView;
    if (v7)
    {
      [(SFPrivacyReportGridView *)v7 setPreservesSuperviewLayoutMargins:1];
      [(SFPrivacyReportGridView *)self->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(SFPrivacyReportGridTableViewCell *)self contentView];
      [v8 addSubview:self->_gridView];
      v17 = MEMORY[0x1E696ACD8];
      v22 = [(SFPrivacyReportGridView *)self->_gridView leadingAnchor];
      v21 = [v8 leadingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v23[0] = v20;
      v19 = [(SFPrivacyReportGridView *)self->_gridView trailingAnchor];
      v18 = [v8 trailingAnchor];
      v9 = [v19 constraintEqualToAnchor:v18];
      v23[1] = v9;
      v10 = [(SFPrivacyReportGridView *)self->_gridView topAnchor];
      v11 = [v8 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v23[2] = v12;
      v13 = [(SFPrivacyReportGridView *)self->_gridView bottomAnchor];
      v14 = [v8 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v23[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
      [v17 activateConstraints:v16];
    }
  }
}

@end