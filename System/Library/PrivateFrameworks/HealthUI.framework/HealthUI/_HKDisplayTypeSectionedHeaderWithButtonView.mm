@interface _HKDisplayTypeSectionedHeaderWithButtonView
- (_HKDisplayTypeSectionedHeaderWithButtonView)initWithFrame:(CGRect)frame;
- (void)_updatePreferredTitleFont;
- (void)prepareForReuse;
- (void)setAccessoryButtonAction:(id)action;
@end

@implementation _HKDisplayTypeSectionedHeaderWithButtonView

- (_HKDisplayTypeSectionedHeaderWithButtonView)initWithFrame:(CGRect)frame
{
  v59[4] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _HKDisplayTypeSectionedHeaderWithButtonView;
  v3 = [(_HKDisplayTypeSectionedHeaderView *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC738]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    accessoryButton = v3->_accessoryButton;
    v3->_accessoryButton = v9;

    titleLabel = [(UIButton *)v3->_accessoryButton titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    v12 = v3->_accessoryButton;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIButton *)v12 setTitleColor:systemBlueColor forState:0];

    [(UIButton *)v3->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v3->_accessoryButton setBackgroundColor:clearColor];

    [(UIButton *)v3->_accessoryButton setClipsToBounds:0];
    titleLabel2 = [(UIButton *)v3->_accessoryButton titleLabel];
    [titleLabel2 setLineBreakMode:0];

    titleLabel3 = [(UIButton *)v3->_accessoryButton titleLabel];
    [titleLabel3 setNumberOfLines:0];

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v3->_accessoryButton];
    v45 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIButton *)v3->_accessoryButton topAnchor];
    topAnchor2 = [v17 topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[0] = v51;
    bottomAnchor = [(UIButton *)v3->_accessoryButton bottomAnchor];
    bottomAnchor2 = [v17 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[1] = v18;
    leadingAnchor = [(UIButton *)v3->_accessoryButton leadingAnchor];
    leadingAnchor2 = [v17 leadingAnchor];
    v21 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v59[2] = v21;
    trailingAnchor = [(UIButton *)v3->_accessoryButton trailingAnchor];
    trailingAnchor2 = [v17 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v45 activateConstraints:v25];

    [(_HKDisplayTypeSectionedHeaderWithButtonView *)v3 _updatePreferredTitleFont];
    contentView = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    [contentView addSubview:v17];

    titleTrailingConstraint = [(_HKDisplayTypeSectionedHeaderView *)v3 titleTrailingConstraint];
    [titleTrailingConstraint setActive:0];

    v42 = MEMORY[0x1E696ACD8];
    topAnchor3 = [v17 topAnchor];
    contentView2 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    topAnchor4 = [contentView2 topAnchor];
    v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v58[0] = v50;
    bottomAnchor3 = [v17 bottomAnchor];
    contentView3 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    bottomAnchor4 = [contentView3 bottomAnchor];
    v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v58[1] = v43;
    trailingAnchor3 = [v17 trailingAnchor];
    contentView4 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    trailingAnchor4 = [contentView4 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v58[2] = v38;
    leadingAnchor3 = [v17 leadingAnchor];
    titleLabel4 = [(_HKDisplayTypeSectionedHeaderView *)v3 titleLabel];
    trailingAnchor5 = [titleLabel4 trailingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor5 constant:10.0];
    v58[3] = v30;
    widthAnchor = [v17 widthAnchor];
    titleLabel5 = [(_HKDisplayTypeSectionedHeaderView *)v3 titleLabel];
    widthAnchor2 = [titleLabel5 widthAnchor];
    v34 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v58[4] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];
    [v42 activateConstraints:v35];
  }

  return v3;
}

- (void)setAccessoryButtonAction:(id)action
{
  if (action)
  {
    accessoryButton = self->_accessoryButton;
    actionCopy = action;
    title = [actionCopy title];
    [(UIButton *)accessoryButton setTitle:title forState:0];

    [(UIButton *)self->_accessoryButton addAction:actionCopy forControlEvents:64];
    titleWithTopMargin = [(_HKDisplayTypeSectionedHeaderView *)self titleWithTopMargin];
    [titleWithTopMargin setActive:0];

    titleWithNoTopMargin = [(_HKDisplayTypeSectionedHeaderView *)self titleWithNoTopMargin];
    [titleWithNoTopMargin setActive:1];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _HKDisplayTypeSectionedHeaderWithButtonView;
  [(_HKDisplayTypeSectionedHeaderView *)&v4 prepareForReuse];
  titleLabel = [(UIButton *)self->_accessoryButton titleLabel];
  [titleLabel setText:&stru_1F42FFBE0];

  [(_HKDisplayTypeSectionedHeaderWithButtonView *)self setHidden:0];
}

- (void)_updatePreferredTitleFont
{
  v5.receiver = self;
  v5.super_class = _HKDisplayTypeSectionedHeaderWithButtonView;
  [(_HKDisplayTypeSectionedHeaderView *)&v5 _updatePreferredTitleFont];
  hk_chartOverlaySectionHeaderAccessoryButtonFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionHeaderAccessoryButtonFont];
  titleLabel = [(UIButton *)self->_accessoryButton titleLabel];
  [titleLabel setFont:hk_chartOverlaySectionHeaderAccessoryButtonFont];
}

@end