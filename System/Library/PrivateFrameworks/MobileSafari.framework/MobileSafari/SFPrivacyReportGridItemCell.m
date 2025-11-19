@interface SFPrivacyReportGridItemCell
- (void)setReportView:(id)a3;
@end

@implementation SFPrivacyReportGridItemCell

- (void)setReportView:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(SFPrivacyReportGridItemCell *)self contentView];
  reportView = self->_reportView;
  if (reportView == v5)
  {
    if ([(UIView *)v5 isDescendantOfView:v6])
    {
      goto LABEL_8;
    }

    reportView = self->_reportView;
  }

  v8 = [(UIView *)reportView superview];

  if (v8 == v6)
  {
    [(UIView *)self->_reportView removeFromSuperview];
  }

  objc_storeStrong(&self->_reportView, a3);
  v9 = self->_reportView;
  if (v9)
  {
    [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:self->_reportView];
    v18 = MEMORY[0x1E696ACD8];
    v23 = [(UIView *)self->_reportView topAnchor];
    v22 = [v6 topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v24[0] = v21;
    v20 = [(UIView *)self->_reportView leftAnchor];
    v19 = [v6 leftAnchor];
    v10 = [v20 constraintEqualToAnchor:v19];
    v24[1] = v10;
    v11 = [(UIView *)self->_reportView bottomAnchor];
    v12 = [v6 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[2] = v13;
    v14 = [(UIView *)self->_reportView rightAnchor];
    v15 = [v6 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v17];
  }

LABEL_8:
}

@end