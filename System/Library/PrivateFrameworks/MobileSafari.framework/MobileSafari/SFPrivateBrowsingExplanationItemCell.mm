@interface SFPrivateBrowsingExplanationItemCell
- (SFPrivateBrowsingExplanationItemCell)initWithFrame:(CGRect)frame;
- (void)_updateImageViewWidth;
- (void)setItem:(id)item;
@end

@implementation SFPrivateBrowsingExplanationItemCell

- (SFPrivateBrowsingExplanationItemCell)initWithFrame:(CGRect)frame
{
  v56[10] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = SFPrivateBrowsingExplanationItemCell;
  v3 = [(SFPrivateBrowsingExplanationItemCell *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:4];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v6];

    [(UIImageView *)v3->_imageView setTintAdjustmentMode:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v3->_imageView setTintColor:labelColor];

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(SFPrivateBrowsingExplanationItemCell *)v3 contentView];
    [contentView addSubview:v3->_imageView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_titleLabel setFont:v11];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor2];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v3->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v13;

    [(UILabel *)v3->_messageLabel setAdjustsFontForContentSizeCategory:1];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v3->_messageLabel setFont:v15];

    [(UILabel *)v3->_messageLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_messageLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v3->_messageLabel];
    widthAnchor = [(UIImageView *)v3->_imageView widthAnchor];
    v18 = [widthAnchor constraintEqualToConstant:0.0];
    imageViewWidthConstraint = v3->_imageViewWidthConstraint;
    v3->_imageViewWidthConstraint = v18;

    [(SFPrivateBrowsingExplanationItemCell *)v3 _updateImageViewWidth];
    v44 = MEMORY[0x1E696ACD8];
    v56[0] = v3->_imageViewWidthConstraint;
    leadingAnchor = [(UIImageView *)v3->_imageView leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[1] = v52;
    firstBaselineAnchor = [(UIImageView *)v3->_imageView firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)v3->_titleLabel firstBaselineAnchor];
    v49 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v56[2] = v49;
    leadingAnchor3 = [(UILabel *)v3->_titleLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v3->_imageView trailingAnchor];
    v46 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v56[3] = v46;
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[4] = v42;
    trailingAnchor2 = [contentView trailingAnchor];
    trailingAnchor3 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v56[5] = v38;
    leadingAnchor4 = [(UILabel *)v3->_messageLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v35 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v56[6] = v35;
    firstBaselineAnchor3 = [(UILabel *)v3->_messageLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v21 = [firstBaselineAnchor3 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    v56[7] = v21;
    v22 = contentView;
    v41 = contentView;
    trailingAnchor4 = [contentView trailingAnchor];
    trailingAnchor5 = [(UILabel *)v3->_messageLabel trailingAnchor];
    v25 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v56[8] = v25;
    bottomAnchor = [v22 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v3->_messageLabel bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[9] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:10];
    [v44 activateConstraints:v29];

    systemTraitsAffectingImageLookup = [MEMORY[0x1E69DD1B8] systemTraitsAffectingImageLookup];
    v31 = [(SFPrivateBrowsingExplanationItemCell *)v3 registerForTraitChanges:systemTraitsAffectingImageLookup withAction:sel__updateImageViewWidth];

    v32 = v3;
  }

  return v3;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_item, item);
    image = [itemCopy image];
    [(UIImageView *)self->_imageView setImage:image];

    message = [itemCopy message];
    [(UILabel *)self->_messageLabel setText:message];

    title = [itemCopy title];
    [(UILabel *)self->_titleLabel setText:title];
  }
}

- (void)_updateImageViewWidth
{
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  traitCollection = [(SFPrivateBrowsingExplanationItemCell *)self traitCollection];
  [v3 scaledValueForValue:traitCollection compatibleWithTraitCollection:30.0];
  [(NSLayoutConstraint *)self->_imageViewWidthConstraint setConstant:?];

  [(SFPrivateBrowsingExplanationItemCell *)self invalidateIntrinsicContentSize];
}

@end