@interface _HKDisplayTypeSectionedHeaderWithButtonView
- (_HKDisplayTypeSectionedHeaderWithButtonView)initWithFrame:(CGRect)a3;
- (void)_updatePreferredTitleFont;
- (void)prepareForReuse;
- (void)setAccessoryButtonAction:(id)a3;
@end

@implementation _HKDisplayTypeSectionedHeaderWithButtonView

- (_HKDisplayTypeSectionedHeaderWithButtonView)initWithFrame:(CGRect)a3
{
  v59[4] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _HKDisplayTypeSectionedHeaderWithButtonView;
  v3 = [(_HKDisplayTypeSectionedHeaderView *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v11 = [(UIButton *)v3->_accessoryButton titleLabel];
    [v11 setAdjustsFontForContentSizeCategory:1];

    v12 = v3->_accessoryButton;
    v13 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIButton *)v12 setTitleColor:v13 forState:0];

    [(UIButton *)v3->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v3->_accessoryButton setBackgroundColor:v14];

    [(UIButton *)v3->_accessoryButton setClipsToBounds:0];
    v15 = [(UIButton *)v3->_accessoryButton titleLabel];
    [v15 setLineBreakMode:0];

    v16 = [(UIButton *)v3->_accessoryButton titleLabel];
    [v16 setNumberOfLines:0];

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v3->_accessoryButton];
    v45 = MEMORY[0x1E696ACD8];
    v55 = [(UIButton *)v3->_accessoryButton topAnchor];
    v53 = [v17 topAnchor];
    v51 = [v55 constraintEqualToAnchor:v53];
    v59[0] = v51;
    v49 = [(UIButton *)v3->_accessoryButton bottomAnchor];
    v47 = [v17 bottomAnchor];
    v18 = [v49 constraintEqualToAnchor:v47];
    v59[1] = v18;
    v19 = [(UIButton *)v3->_accessoryButton leadingAnchor];
    v20 = [v17 leadingAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];
    v59[2] = v21;
    v22 = [(UIButton *)v3->_accessoryButton trailingAnchor];
    v23 = [v17 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v59[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v45 activateConstraints:v25];

    [(_HKDisplayTypeSectionedHeaderWithButtonView *)v3 _updatePreferredTitleFont];
    v26 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    [v26 addSubview:v17];

    v27 = [(_HKDisplayTypeSectionedHeaderView *)v3 titleTrailingConstraint];
    [v27 setActive:0];

    v42 = MEMORY[0x1E696ACD8];
    v54 = [v17 topAnchor];
    v56 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    v52 = [v56 topAnchor];
    v50 = [v54 constraintEqualToAnchor:v52];
    v58[0] = v50;
    v46 = [v17 bottomAnchor];
    v48 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    v44 = [v48 bottomAnchor];
    v43 = [v46 constraintEqualToAnchor:v44];
    v58[1] = v43;
    v40 = [v17 trailingAnchor];
    v41 = [(_HKDisplayTypeSectionedHeaderView *)v3 contentView];
    v39 = [v41 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v58[2] = v38;
    v37 = [v17 leadingAnchor];
    v28 = [(_HKDisplayTypeSectionedHeaderView *)v3 titleLabel];
    v29 = [v28 trailingAnchor];
    v30 = [v37 constraintEqualToAnchor:v29 constant:10.0];
    v58[3] = v30;
    v31 = [v17 widthAnchor];
    v32 = [(_HKDisplayTypeSectionedHeaderView *)v3 titleLabel];
    v33 = [v32 widthAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    v58[4] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];
    [v42 activateConstraints:v35];
  }

  return v3;
}

- (void)setAccessoryButtonAction:(id)a3
{
  if (a3)
  {
    accessoryButton = self->_accessoryButton;
    v5 = a3;
    v6 = [v5 title];
    [(UIButton *)accessoryButton setTitle:v6 forState:0];

    [(UIButton *)self->_accessoryButton addAction:v5 forControlEvents:64];
    v7 = [(_HKDisplayTypeSectionedHeaderView *)self titleWithTopMargin];
    [v7 setActive:0];

    v8 = [(_HKDisplayTypeSectionedHeaderView *)self titleWithNoTopMargin];
    [v8 setActive:1];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _HKDisplayTypeSectionedHeaderWithButtonView;
  [(_HKDisplayTypeSectionedHeaderView *)&v4 prepareForReuse];
  v3 = [(UIButton *)self->_accessoryButton titleLabel];
  [v3 setText:&stru_1F42FFBE0];

  [(_HKDisplayTypeSectionedHeaderWithButtonView *)self setHidden:0];
}

- (void)_updatePreferredTitleFont
{
  v5.receiver = self;
  v5.super_class = _HKDisplayTypeSectionedHeaderWithButtonView;
  [(_HKDisplayTypeSectionedHeaderView *)&v5 _updatePreferredTitleFont];
  v3 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionHeaderAccessoryButtonFont];
  v4 = [(UIButton *)self->_accessoryButton titleLabel];
  [v4 setFont:v3];
}

@end