@interface CKAppContainerTitleView
- (CKAppContainerTitleView)init;
- (UIImage)iconImage;
- (void)setIconImage:(id)image;
- (void)setup;
@end

@implementation CKAppContainerTitleView

- (CKAppContainerTitleView)init
{
  v5.receiver = self;
  v5.super_class = CKAppContainerTitleView;
  v2 = [(CKAppContainerTitleView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKAppContainerTitleView *)v2 setup];
  }

  return v3;
}

- (void)setup
{
  v45[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  iconImageView = self->_iconImageView;
  self->_iconImageView = v3;

  [(UIImageView *)self->_iconImageView setContentMode:1];
  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  label = self->_label;
  self->_label = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  appLabelFont = [v7 appLabelFont];
  [(UILabel *)self->_label setFont:appLabelFont];

  v9 = [MEMORY[0x1E69DC738] buttonWithType:7];
  closeButton = self->_closeButton;
  self->_closeButton = v9;

  v11 = self->_label;
  v45[0] = self->_iconImageView;
  v45[1] = v11;
  v45[2] = self->_closeButton;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __32__CKAppContainerTitleView_setup__block_invoke;
  v43[3] = &unk_1E72F3438;
  v43[4] = self;
  [v12 __imForEach:v43];

  widthAnchor = [(UIImageView *)self->_iconImageView widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:40.0];
  iconWidthConstraint = self->_iconWidthConstraint;
  self->_iconWidthConstraint = v14;

  heightAnchor = [(UIImageView *)self->_iconImageView heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:30.0];
  iconHeightConstraint = self->_iconHeightConstraint;
  self->_iconHeightConstraint = v17;

  v35 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIImageView *)self->_iconImageView leadingAnchor];
  leadingAnchor2 = [(CKAppContainerTitleView *)self leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v19 = self->_iconWidthConstraint;
  v44[0] = v40;
  v44[1] = v19;
  v44[2] = self->_iconHeightConstraint;
  centerYAnchor = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor2 = [(CKAppContainerTitleView *)self centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44[3] = v37;
  leadingAnchor3 = [(UILabel *)self->_label leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
  v33 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
  v44[4] = v33;
  centerYAnchor3 = [(UILabel *)self->_label centerYAnchor];
  centerYAnchor4 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v44[5] = v30;
  trailingAnchor2 = [(UILabel *)self->_label trailingAnchor];
  leadingAnchor4 = [(UIButton *)self->_closeButton leadingAnchor];
  v22 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor4];
  v44[6] = v22;
  centerYAnchor5 = [(UIButton *)self->_closeButton centerYAnchor];
  centerYAnchor6 = [(CKAppContainerTitleView *)self centerYAnchor];
  v25 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v44[7] = v25;
  trailingAnchor3 = [(UIButton *)self->_closeButton trailingAnchor];
  trailingAnchor4 = [(CKAppContainerTitleView *)self trailingAnchor];
  v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v44[8] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:9];
  [v35 activateConstraints:v29];
}

void __32__CKAppContainerTitleView_setup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 32) addSubview:v3];
}

- (UIImage)iconImage
{
  iconImageView = [(CKAppContainerTitleView *)self iconImageView];
  image = [iconImageView image];

  return image;
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  iconImageView = [(CKAppContainerTitleView *)self iconImageView];
  [iconImageView setImage:imageCopy];

  if (imageCopy)
  {
    [imageCopy size];
    v6 = v5;
    [imageCopy size];
    v8 = v6 == v7;
    if (v6 == v7)
    {
      v9 = 36.0;
    }

    else
    {
      v9 = 30.0;
    }

    if (v8)
    {
      v10 = 36.0;
    }

    else
    {
      v10 = 40.0;
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  iconWidthConstraint = [(CKAppContainerTitleView *)self iconWidthConstraint];
  [iconWidthConstraint setConstant:v10];

  iconHeightConstraint = [(CKAppContainerTitleView *)self iconHeightConstraint];
  [iconHeightConstraint setConstant:v9];
}

@end