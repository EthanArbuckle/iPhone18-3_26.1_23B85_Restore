@interface SFSiteIconCell
- (SFSiteIconCell)initWithCoder:(id)coder;
- (SFSiteIconCell)initWithFrame:(CGRect)frame;
- (id)focusEffect;
- (void)_setAction:(id)action backgroundEffect:(id)effect;
- (void)configureUsingAction:(id)action backgroundEffect:(id)effect;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIcon:(id)icon;
- (void)setIconFromBookmark:(id)bookmark;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation SFSiteIconCell

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = SFSiteIconCell;
  [(SFSiteIconCell *)&v4 updateConstraints];
  text = [(UILabel *)self->_subtitleLabel text];
  -[UILabel setHidden:](self->_subtitleLabel, "setHidden:", [text length] == 0);
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SFSiteIconCell;
  [(SFSiteIconCell *)&v7 layoutSubviews];
  traitCollection = [(SFSiteIconCell *)self traitCollection];
  sf_alternateUserInterfaceStyle = [traitCollection sf_alternateUserInterfaceStyle];

  [(UILabel *)self->_titleLabel setOverrideUserInterfaceStyle:sf_alternateUserInterfaceStyle];
  [(UILabel *)self->_subtitleLabel setOverrideUserInterfaceStyle:sf_alternateUserInterfaceStyle];
  traitCollection2 = [(SFSiteIconCell *)self traitCollection];
  sf_alternateTintColor = [traitCollection2 sf_alternateTintColor];
  [(UILabel *)self->_titleLabel setTintColor:sf_alternateTintColor];
}

- (SFSiteIconCell)initWithFrame:(CGRect)frame
{
  v53[8] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = SFSiteIconCell;
  v3 = [(SFSiteIconCell *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFSiteIconCell *)v3 setAccessibilityIdentifier:@"SFSiteIconCell"];
    contentView = [(SFSiteIconCell *)v4 contentView];
    v6 = objc_alloc_init(_SFSiteIconView);
    iconView = v4->_iconView;
    v4->_iconView = v6;

    [(_SFSiteIconView *)v4->_iconView setAllowsDropShadow:1];
    [(_SFSiteIconView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_iconView];
    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    [(_SFSiteIconView *)v4->_iconView bounds];
    v9 = [v8 initWithFrame:?];
    iconDimmingView = v4->_iconDimmingView;
    v4->_iconDimmingView = v9;

    +[_SFSiteIcon cornerRadius];
    [(UIView *)v4->_iconDimmingView _setContinuousCornerRadius:?];
    [(UIView *)v4->_iconDimmingView setAlpha:0.0];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v4->_iconDimmingView setBackgroundColor:v11];

    [(UIView *)v4->_iconDimmingView setAutoresizingMask:18];
    [(_SFSiteIconView *)v4->_iconView addSubview:v4->_iconDimmingView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v12;

    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v15 = [v14 fontDescriptorWithSymbolicTraits:32770];

    v16 = MEMORY[0x1E69DB878];
    [v15 pointSize];
    v17 = [v16 fontWithDescriptor:v15 size:?];

    [(UILabel *)v4->_titleLabel setFont:v17];
    [(UILabel *)v4->_titleLabel setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:labelColor];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel _setUseShortcutIntrinsicContentSize:1];
    LODWORD(v19) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v20];
    [contentView addSubview:v4->_titleLabel];
    widthAnchor = [(UILabel *)v4->_titleLabel widthAnchor];
    widthAnchor2 = [contentView widthAnchor];
    v47 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.15];

    v41 = MEMORY[0x1E696ACD8];
    widthAnchor3 = [(_SFSiteIconView *)v4->_iconView widthAnchor];
    heightAnchor = [(_SFSiteIconView *)v4->_iconView heightAnchor];
    v49 = [widthAnchor3 constraintEqualToAnchor:heightAnchor];
    v53[0] = v49;
    widthAnchor4 = [(_SFSiteIconView *)v4->_iconView widthAnchor];
    widthAnchor5 = [contentView widthAnchor];
    v45 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v53[1] = v45;
    centerXAnchor = [(_SFSiteIconView *)v4->_iconView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v53[2] = v42;
    v53[3] = v47;
    centerXAnchor3 = [(UILabel *)v4->_titleLabel centerXAnchor];
    centerXAnchor4 = [contentView centerXAnchor];
    v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v53[4] = v37;
    topAnchor = [(_SFSiteIconView *)v4->_iconView topAnchor];
    v40 = contentView;
    topAnchor2 = [contentView topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[5] = v23;
    topAnchor3 = [(UILabel *)v4->_titleLabel topAnchor];
    bottomAnchor = [(_SFSiteIconView *)v4->_iconView bottomAnchor];
    v26 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v53[6] = v26;
    bottomAnchor2 = [contentView bottomAnchor];
    bottomAnchor3 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v29 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    LODWORD(v30) = 1143930880;
    v31 = [v29 sf_withPriority:v30];
    v53[7] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:8];
    [v41 activateConstraints:v32];

    v33 = v4;
  }

  return v4;
}

- (SFSiteIconCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFSiteIconCell;
  return [(SFSiteIconCell *)&v4 initWithCoder:coder];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = SFSiteIconCell;
  [(SFSiteIconCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SFSiteIconCell_setHighlighted___block_invoke;
  v5[3] = &unk_1E721BFA8;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v5 completion:0];
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  [(_SFSiteIconView *)self->_iconView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  +[_SFSiteIcon cornerRadius];
  v12 = *MEMORY[0x1E69796E8];

  return [v2 effectWithRoundedRect:v12 cornerRadius:v4 curve:{v6, v8, v10, v11}];
}

- (void)setIconFromBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  [(SFSiteIconCell *)self _setAction:0];
  [(_SFSiteIconView *)self->_iconView setBookmark:bookmarkCopy];
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  [(SFSiteIconCell *)self _setAction:0];
  [(_SFSiteIconView *)self->_iconView setImage:iconCopy];

  [(SFSiteIconCell *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(SFSiteIconCell *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  v30[4] = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    goto LABEL_5;
  }

  if ([subtitleCopy length])
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = self->_subtitleLabel;
    self->_subtitleLabel = v6;

    [(UILabel *)self->_subtitleLabel _setUseShortcutIntrinsicContentSize:1];
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
    v9 = [v8 fontDescriptorWithSymbolicTraits:0];

    v10 = MEMORY[0x1E69DB878];
    [v9 pointSize];
    v11 = [v10 fontWithDescriptor:v9 size:?];

    [(UILabel *)self->_subtitleLabel setFont:v11];
    [(UILabel *)self->_subtitleLabel setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    [(UILabel *)self->_subtitleLabel setTextAlignment:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UILabel *)self->_subtitleLabel setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v14];
    contentView = [(SFSiteIconCell *)self contentView];
    [contentView addSubview:self->_subtitleLabel];
    v24 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UILabel *)self->_subtitleLabel widthAnchor];
    widthAnchor2 = [contentView widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v30[0] = v27;
    centerXAnchor = [(UILabel *)self->_subtitleLabel centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30[1] = v23;
    topAnchor = [(UILabel *)self->_subtitleLabel topAnchor];
    bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
    v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
    v30[2] = v17;
    bottomAnchor2 = [contentView bottomAnchor];
    bottomAnchor3 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v20 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v30[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v24 activateConstraints:v21];
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
LABEL_5:
    [(UILabel *)subtitleLabel setText:subtitleCopy];
    [(SFSiteIconCell *)self setNeedsLayout];
  }
}

- (void)configureUsingAction:(id)action backgroundEffect:(id)effect
{
  effectCopy = effect;
  actionCopy = action;
  [(SFSiteIconCell *)self setTitle:&stru_1EFF36230];
  [(SFSiteIconCell *)self setSubtitle:&stru_1EFF36230];
  [(SFSiteIconCell *)self _setAction:actionCopy backgroundEffect:effectCopy];

  [(SFSiteIconCell *)self layoutIfNeeded];
}

- (void)_setAction:(id)action backgroundEffect:(id)effect
{
  actionCopy = action;
  effectCopy = effect;
  action = [(_SFSiteIconView *)self->_iconView action];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    [(_SFSiteIconView *)self->_iconView setAction:actionCopy backgroundEffect:effectCopy];
    title = [actionCopy title];
    [(SFSiteIconCell *)self setAccessibilityLabel:title];
  }
}

@end