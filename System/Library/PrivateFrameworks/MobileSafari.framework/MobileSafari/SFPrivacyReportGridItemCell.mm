@interface SFPrivacyReportGridItemCell
- (void)setReportView:(id)view;
@end

@implementation SFPrivacyReportGridItemCell

- (void)setReportView:(id)view
{
  v24[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  contentView = [(SFPrivacyReportGridItemCell *)self contentView];
  reportView = self->_reportView;
  if (reportView == viewCopy)
  {
    if ([(UIView *)viewCopy isDescendantOfView:contentView])
    {
      goto LABEL_8;
    }

    reportView = self->_reportView;
  }

  superview = [(UIView *)reportView superview];

  if (superview == contentView)
  {
    [(UIView *)self->_reportView removeFromSuperview];
  }

  objc_storeStrong(&self->_reportView, view);
  v9 = self->_reportView;
  if (v9)
  {
    [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:self->_reportView];
    v18 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)self->_reportView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[0] = v21;
    leftAnchor = [(UIView *)self->_reportView leftAnchor];
    leftAnchor2 = [contentView leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[1] = v10;
    bottomAnchor = [(UIView *)self->_reportView bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[2] = v13;
    rightAnchor = [(UIView *)self->_reportView rightAnchor];
    rightAnchor2 = [contentView rightAnchor];
    v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v17];
  }

LABEL_8:
}

@end