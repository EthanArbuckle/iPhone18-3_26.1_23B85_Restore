@interface SFPrivateBrowsingExplanationItemCell
- (SFPrivateBrowsingExplanationItemCell)initWithFrame:(CGRect)a3;
- (void)_updateImageViewWidth;
- (void)setItem:(id)a3;
@end

@implementation SFPrivateBrowsingExplanationItemCell

- (SFPrivateBrowsingExplanationItemCell)initWithFrame:(CGRect)a3
{
  v56[10] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = SFPrivateBrowsingExplanationItemCell;
  v3 = [(SFPrivateBrowsingExplanationItemCell *)&v55 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:4];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v6];

    [(UIImageView *)v3->_imageView setTintAdjustmentMode:1];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v3->_imageView setTintColor:v7];

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(SFPrivateBrowsingExplanationItemCell *)v3 contentView];
    [v8 addSubview:v3->_imageView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_titleLabel setFont:v11];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v12];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v3->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v13;

    [(UILabel *)v3->_messageLabel setAdjustsFontForContentSizeCategory:1];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v3->_messageLabel setFont:v15];

    [(UILabel *)v3->_messageLabel setNumberOfLines:0];
    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_messageLabel setTextColor:v16];

    [(UILabel *)v3->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v3->_messageLabel];
    v17 = [(UIImageView *)v3->_imageView widthAnchor];
    v18 = [v17 constraintEqualToConstant:0.0];
    imageViewWidthConstraint = v3->_imageViewWidthConstraint;
    v3->_imageViewWidthConstraint = v18;

    [(SFPrivateBrowsingExplanationItemCell *)v3 _updateImageViewWidth];
    v44 = MEMORY[0x1E696ACD8];
    v56[0] = v3->_imageViewWidthConstraint;
    v54 = [(UIImageView *)v3->_imageView leadingAnchor];
    v53 = [v8 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v56[1] = v52;
    v51 = [(UIImageView *)v3->_imageView firstBaselineAnchor];
    v50 = [(UILabel *)v3->_titleLabel firstBaselineAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v56[2] = v49;
    v48 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v47 = [(UIImageView *)v3->_imageView trailingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:10.0];
    v56[3] = v46;
    v45 = [(UILabel *)v3->_titleLabel topAnchor];
    v43 = [v8 topAnchor];
    v42 = [v45 constraintEqualToAnchor:v43];
    v56[4] = v42;
    v40 = [v8 trailingAnchor];
    v39 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v56[5] = v38;
    v37 = [(UILabel *)v3->_messageLabel leadingAnchor];
    v36 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v56[6] = v35;
    v34 = [(UILabel *)v3->_messageLabel firstBaselineAnchor];
    v20 = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v21 = [v34 constraintEqualToSystemSpacingBelowAnchor:v20 multiplier:1.0];
    v56[7] = v21;
    v22 = v8;
    v41 = v8;
    v23 = [v8 trailingAnchor];
    v24 = [(UILabel *)v3->_messageLabel trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v56[8] = v25;
    v26 = [v22 bottomAnchor];
    v27 = [(UILabel *)v3->_messageLabel bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v56[9] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:10];
    [v44 activateConstraints:v29];

    v30 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingImageLookup];
    v31 = [(SFPrivateBrowsingExplanationItemCell *)v3 registerForTraitChanges:v30 withAction:sel__updateImageViewWidth];

    v32 = v3;
  }

  return v3;
}

- (void)setItem:(id)a3
{
  v8 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_item, a3);
    v5 = [v8 image];
    [(UIImageView *)self->_imageView setImage:v5];

    v6 = [v8 message];
    [(UILabel *)self->_messageLabel setText:v6];

    v7 = [v8 title];
    [(UILabel *)self->_titleLabel setText:v7];
  }
}

- (void)_updateImageViewWidth
{
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v4 = [(SFPrivateBrowsingExplanationItemCell *)self traitCollection];
  [v3 scaledValueForValue:v4 compatibleWithTraitCollection:30.0];
  [(NSLayoutConstraint *)self->_imageViewWidthConstraint setConstant:?];

  [(SFPrivateBrowsingExplanationItemCell *)self invalidateIntrinsicContentSize];
}

@end