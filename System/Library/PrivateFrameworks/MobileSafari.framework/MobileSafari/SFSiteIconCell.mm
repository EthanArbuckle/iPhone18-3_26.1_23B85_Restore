@interface SFSiteIconCell
- (SFSiteIconCell)initWithCoder:(id)a3;
- (SFSiteIconCell)initWithFrame:(CGRect)a3;
- (id)focusEffect;
- (void)_setAction:(id)a3 backgroundEffect:(id)a4;
- (void)configureUsingAction:(id)a3 backgroundEffect:(id)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setIconFromBookmark:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation SFSiteIconCell

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = SFSiteIconCell;
  [(SFSiteIconCell *)&v4 updateConstraints];
  v3 = [(UILabel *)self->_subtitleLabel text];
  -[UILabel setHidden:](self->_subtitleLabel, "setHidden:", [v3 length] == 0);
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SFSiteIconCell;
  [(SFSiteIconCell *)&v7 layoutSubviews];
  v3 = [(SFSiteIconCell *)self traitCollection];
  v4 = [v3 sf_alternateUserInterfaceStyle];

  [(UILabel *)self->_titleLabel setOverrideUserInterfaceStyle:v4];
  [(UILabel *)self->_subtitleLabel setOverrideUserInterfaceStyle:v4];
  v5 = [(SFSiteIconCell *)self traitCollection];
  v6 = [v5 sf_alternateTintColor];
  [(UILabel *)self->_titleLabel setTintColor:v6];
}

- (SFSiteIconCell)initWithFrame:(CGRect)a3
{
  v53[8] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = SFSiteIconCell;
  v3 = [(SFSiteIconCell *)&v52 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFSiteIconCell *)v3 setAccessibilityIdentifier:@"SFSiteIconCell"];
    v5 = [(SFSiteIconCell *)v4 contentView];
    v6 = objc_alloc_init(_SFSiteIconView);
    iconView = v4->_iconView;
    v4->_iconView = v6;

    [(_SFSiteIconView *)v4->_iconView setAllowsDropShadow:1];
    [(_SFSiteIconView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_iconView];
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
    v18 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v18];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel _setUseShortcutIntrinsicContentSize:1];
    LODWORD(v19) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v20];
    [v5 addSubview:v4->_titleLabel];
    v21 = [(UILabel *)v4->_titleLabel widthAnchor];
    v22 = [v5 widthAnchor];
    v47 = [v21 constraintEqualToAnchor:v22 multiplier:1.15];

    v41 = MEMORY[0x1E696ACD8];
    v51 = [(_SFSiteIconView *)v4->_iconView widthAnchor];
    v50 = [(_SFSiteIconView *)v4->_iconView heightAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v53[0] = v49;
    v48 = [(_SFSiteIconView *)v4->_iconView widthAnchor];
    v46 = [v5 widthAnchor];
    v45 = [v48 constraintEqualToAnchor:v46];
    v53[1] = v45;
    v44 = [(_SFSiteIconView *)v4->_iconView centerXAnchor];
    v43 = [v5 centerXAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v53[2] = v42;
    v53[3] = v47;
    v39 = [(UILabel *)v4->_titleLabel centerXAnchor];
    v38 = [v5 centerXAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v53[4] = v37;
    v36 = [(_SFSiteIconView *)v4->_iconView topAnchor];
    v40 = v5;
    v35 = [v5 topAnchor];
    v23 = [v36 constraintEqualToAnchor:v35];
    v53[5] = v23;
    v24 = [(UILabel *)v4->_titleLabel topAnchor];
    v25 = [(_SFSiteIconView *)v4->_iconView bottomAnchor];
    v26 = [v24 constraintEqualToSystemSpacingBelowAnchor:v25 multiplier:1.0];
    v53[6] = v26;
    v27 = [v5 bottomAnchor];
    v28 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    LODWORD(v30) = 1143930880;
    v31 = [v29 sf_withPriority:v30];
    v53[7] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:8];
    [v41 activateConstraints:v32];

    v33 = v4;
  }

  return v4;
}

- (SFSiteIconCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFSiteIconCell;
  return [(SFSiteIconCell *)&v4 initWithCoder:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SFSiteIconCell;
  [(SFSiteIconCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SFSiteIconCell_setHighlighted___block_invoke;
  v5[3] = &unk_1E721BFA8;
  v5[4] = self;
  v6 = a3;
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

- (void)setIconFromBookmark:(id)a3
{
  v4 = a3;
  [(SFSiteIconCell *)self _setAction:0];
  [(_SFSiteIconView *)self->_iconView setBookmark:v4];
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  [(SFSiteIconCell *)self _setAction:0];
  [(_SFSiteIconView *)self->_iconView setImage:v4];

  [(SFSiteIconCell *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(SFSiteIconCell *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    goto LABEL_5;
  }

  if ([v4 length])
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
    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v12];

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UILabel *)self->_subtitleLabel setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v14];
    v15 = [(SFSiteIconCell *)self contentView];
    [v15 addSubview:self->_subtitleLabel];
    v24 = MEMORY[0x1E696ACD8];
    v29 = [(UILabel *)self->_subtitleLabel widthAnchor];
    v28 = [v15 widthAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v30[0] = v27;
    v26 = [(UILabel *)self->_subtitleLabel centerXAnchor];
    v25 = [v15 centerXAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v30[1] = v23;
    v22 = [(UILabel *)self->_subtitleLabel topAnchor];
    v16 = [(UILabel *)self->_titleLabel bottomAnchor];
    v17 = [v22 constraintEqualToAnchor:v16 constant:0.0];
    v30[2] = v17;
    v18 = [v15 bottomAnchor];
    v19 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v30[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v24 activateConstraints:v21];
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
LABEL_5:
    [(UILabel *)subtitleLabel setText:v4];
    [(SFSiteIconCell *)self setNeedsLayout];
  }
}

- (void)configureUsingAction:(id)a3 backgroundEffect:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SFSiteIconCell *)self setTitle:&stru_1EFF36230];
  [(SFSiteIconCell *)self setSubtitle:&stru_1EFF36230];
  [(SFSiteIconCell *)self _setAction:v7 backgroundEffect:v6];

  [(SFSiteIconCell *)self layoutIfNeeded];
}

- (void)_setAction:(id)a3 backgroundEffect:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(_SFSiteIconView *)self->_iconView action];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    [(_SFSiteIconView *)self->_iconView setAction:v10 backgroundEffect:v6];
    v9 = [v10 title];
    [(SFSiteIconCell *)self setAccessibilityLabel:v9];
  }
}

@end