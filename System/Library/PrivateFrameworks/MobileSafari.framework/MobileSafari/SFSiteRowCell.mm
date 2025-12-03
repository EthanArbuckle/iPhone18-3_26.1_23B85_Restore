@interface SFSiteRowCell
- (SFSiteRowCell)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFSiteRowCell

- (SFSiteRowCell)initWithFrame:(CGRect)frame
{
  v31[5] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = SFSiteRowCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SFSiteRowCell *)v3 contentView];
    defaultBackgroundConfiguration = [(SFStartPageFilledBackgroundCell *)v4 defaultBackgroundConfiguration];
    [defaultBackgroundConfiguration setCornerRadius:20.0];
    [(SFSiteRowCell *)v4 setBackgroundConfiguration:defaultBackgroundConfiguration];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v6;

    [(UILabel *)v4->_label setAdjustsFontForContentSizeCategory:1];
    v8 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDD80] symbolicTraits:0x8000];
    [(UILabel *)v4->_label setFont:v8];

    [(UILabel *)v4->_label setNumberOfLines:1];
    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_label];
    v22 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UILabel *)v4->_label centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31[0] = v26;
    leadingAnchor = [(UILabel *)v4->_label leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    +[SFSiteRowCell leadingSpace];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v31[1] = v23;
    centerYAnchor = [(UILabel *)v4->_label centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[2] = v9;
    topAnchor = [(UILabel *)v4->_label topAnchor];
    topAnchor2 = [contentView topAnchor];
    v12 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:10.0];
    v31[3] = v12;
    heightAnchor = [contentView heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:48.0];
    LODWORD(v15) = 1132068864;
    v16 = [v14 sf_withPriority:v15];
    v31[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
    [v22 activateConstraints:v17];

    v18 = v4;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SFSiteRowCell *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = SFSiteRowCell;
  [(SFSiteRowCell *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    backgroundEffectView = [(SFStartPageFilledBackgroundCell *)self backgroundEffectView];
    configurationState = [(SFSiteRowCell *)self configurationState];
    [backgroundEffectView sf_setHighlighted:highlightedCopy cellState:configurationState];
  }
}

@end