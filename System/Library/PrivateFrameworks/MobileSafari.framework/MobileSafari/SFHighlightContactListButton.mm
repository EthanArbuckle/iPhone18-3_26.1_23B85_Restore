@interface SFHighlightContactListButton
- (SFHighlightContactListButton)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundColor;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFHighlightContactListButton

- (SFHighlightContactListButton)initWithFrame:(CGRect)frame
{
  v42[7] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = SFHighlightContactListButton;
  v3 = [(SFHighlightContactListButton *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = *MEMORY[0x1E69DDCF8];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v3->_titleLabel setFont:v7];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(SFHighlightContactListButton *)v3 addSubview:v3->_titleLabel];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v8;

    [(UIImageView *)v3->_imageView setContentMode:4];
    sf_safariAccentColor = [MEMORY[0x1E69DC888] sf_safariAccentColor];
    [(UIImageView *)v3->_imageView setTintColor:sf_safariAccentColor];

    v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v6 scale:3];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v11];

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1144766464;
    [(UIImageView *)v3->_imageView setContentCompressionResistancePriority:0 forAxis:v12];
    [(SFHighlightContactListButton *)v3 addSubview:v3->_imageView];
    layoutMarginsGuide = [(SFHighlightContactListButton *)v3 layoutMarginsGuide];
    v31 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[0] = v38;
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v35 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v42[1] = v35;
    centerYAnchor = [(UILabel *)v3->_titleLabel centerYAnchor];
    centerYAnchor2 = [(SFHighlightContactListButton *)v3 centerYAnchor];
    v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v42[2] = v32;
    leadingAnchor3 = [(UIImageView *)v3->_imageView leadingAnchor];
    trailingAnchor = [(UILabel *)v3->_titleLabel trailingAnchor];
    v27 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v42[3] = v27;
    centerYAnchor3 = [(UIImageView *)v3->_imageView centerYAnchor];
    centerYAnchor4 = [(SFHighlightContactListButton *)v3 centerYAnchor];
    v15 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v42[4] = v15;
    topAnchor3 = [(UIImageView *)v3->_imageView topAnchor];
    v30 = layoutMarginsGuide;
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v18 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    v42[5] = v18;
    trailingAnchor2 = [(UIImageView *)v3->_imageView trailingAnchor];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v21 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v42[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:7];
    [v31 activateConstraints:v22];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(SFHighlightContactListButton *)v3 setTintColor:labelColor];

    [(SFHighlightContactListButton *)v3 _updateBackgroundColor];
    v24 = v3;
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SFHighlightContactListButton;
  [(SFHighlightContactListButton *)&v4 setHighlighted:highlighted];
  [(SFHighlightContactListButton *)self _updateBackgroundColor];
}

- (void)_updateBackgroundColor
{
  if (([(SFHighlightContactListButton *)self isHighlighted]& 1) != 0)
  {
    [MEMORY[0x1E69DC888] systemGray4Color];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v3 = ;
  [(SFHighlightContactListButton *)self setBackgroundColor:v3];
}

@end