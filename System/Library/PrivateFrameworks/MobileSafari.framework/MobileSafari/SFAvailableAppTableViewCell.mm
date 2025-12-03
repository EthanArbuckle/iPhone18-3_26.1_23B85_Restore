@interface SFAvailableAppTableViewCell
- (SFAvailableAppTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setLockupView:(id)view;
@end

@implementation SFAvailableAppTableViewCell

- (SFAvailableAppTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SFAvailableAppTableViewCell;
  v4 = [(SFAvailableAppTableViewCell *)&v29 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SFAvailableAppTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v5->_stackView;
    v5->_stackView = v7;

    [(UIStackView *)v5->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_stackView setAxis:1];
    [contentView addSubview:v5->_stackView];
    v21 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIStackView *)v5->_stackView topAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v25;
    bottomAnchor = [(UIStackView *)v5->_stackView bottomAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v20;
    leadingAnchor = [(UIStackView *)v5->_stackView leadingAnchor];
    layoutMarginsGuide3 = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v11;
    trailingAnchor = [(UIStackView *)v5->_stackView trailingAnchor];
    layoutMarginsGuide4 = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v21 activateConstraints:v16];

    v17 = v5;
  }

  return v5;
}

- (void)setLockupView:(id)view
{
  viewCopy = view;
  lockupView = self->_lockupView;
  if (lockupView && [(ASCLockupView *)lockupView isDescendantOfView:self->_stackView])
  {
    [(UIStackView *)self->_stackView removeArrangedSubview:self->_lockupView];
    [(ASCLockupView *)self->_lockupView removeFromSuperview];
  }

  objc_storeStrong(&self->_lockupView, view);
  v6 = self->_lockupView;
  if (v6)
  {
    [(ASCLockupView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView addArrangedSubview:self->_lockupView];
  }
}

@end