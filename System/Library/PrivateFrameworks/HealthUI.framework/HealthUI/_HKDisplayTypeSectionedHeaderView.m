@interface _HKDisplayTypeSectionedHeaderView
- (_HKDisplayTypeSectionedHeaderView)initWithFrame:(CGRect)a3;
- (void)_updatePreferredTitleFont;
- (void)prepareForReuse;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _HKDisplayTypeSectionedHeaderView

- (_HKDisplayTypeSectionedHeaderView)initWithFrame:(CGRect)a3
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = _HKDisplayTypeSectionedHeaderView;
  v3 = [(_HKDisplayTypeSectionedHeaderView *)&v50 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    contentView = v3->_contentView;
    v3->_contentView = v9;

    [(UIView *)v3->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v11;

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v13];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v14];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setClipsToBounds:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(_HKDisplayTypeSectionedHeaderView *)v3 _updatePreferredTitleFont];
    [(_HKDisplayTypeSectionedHeaderView *)v3 addSubview:v3->_contentView];
    v44 = MEMORY[0x1E696ACD8];
    v49 = [(UIView *)v3->_contentView topAnchor];
    v48 = [(_HKDisplayTypeSectionedHeaderView *)v3 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v52[0] = v47;
    v46 = [(UIView *)v3->_contentView leadingAnchor];
    v45 = [(_HKDisplayTypeSectionedHeaderView *)v3 leadingAnchor];
    v43 = [v46 constraintEqualToAnchor:v45];
    v52[1] = v43;
    v15 = [(UIView *)v3->_contentView bottomAnchor];
    v16 = [(_HKDisplayTypeSectionedHeaderView *)v3 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v52[2] = v17;
    v18 = [(UIView *)v3->_contentView trailingAnchor];
    v19 = [(_HKDisplayTypeSectionedHeaderView *)v3 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v52[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v44 activateConstraints:v21];

    [(UIView *)v3->_contentView addSubview:v3->_titleLabel];
    v22 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v23 = [(UIView *)v3->_contentView trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    titleTrailingConstraint = v3->_titleTrailingConstraint;
    v3->_titleTrailingConstraint = v24;

    v26 = [(UILabel *)v3->_titleLabel topAnchor];
    v27 = [(UIView *)v3->_contentView topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    titleWithNoTopMargin = v3->_titleWithNoTopMargin;
    v3->_titleWithNoTopMargin = v28;

    v30 = [(UILabel *)v3->_titleLabel topAnchor];
    v31 = [(UIView *)v3->_contentView topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:16.0];
    titleWithTopMargin = v3->_titleWithTopMargin;
    v3->_titleWithTopMargin = v32;

    [(NSLayoutConstraint *)v3->_titleWithNoTopMargin setActive:1];
    v34 = MEMORY[0x1E696ACD8];
    v35 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v36 = [(UIView *)v3->_contentView leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v51[0] = v37;
    v38 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v39 = [(UIView *)v3->_contentView bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v51[1] = v40;
    v51[2] = v3->_titleTrailingConstraint;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    [v34 activateConstraints:v41];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = _HKDisplayTypeSectionedHeaderView;
  v4 = a3;
  [(_HKDisplayTypeSectionedHeaderView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(_HKDisplayTypeSectionedHeaderView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    [(_HKDisplayTypeSectionedHeaderView *)self _updatePreferredTitleFont];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [v4 length];
    v6 = v5 == 0;
    v7 = v5 != 0;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  [(NSLayoutConstraint *)self->_titleWithNoTopMargin setActive:v6];
  [(NSLayoutConstraint *)self->_titleWithTopMargin setActive:v7];
  [(_HKDisplayTypeSectionedHeaderView *)self setHidden:v6];
  [(UILabel *)self->_titleLabel setText:v8];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _HKDisplayTypeSectionedHeaderView;
  [(_HKDisplayTypeSectionedHeaderView *)&v3 prepareForReuse];
  [(UILabel *)self->_titleLabel setText:&stru_1F42FFBE0];
  [(_HKDisplayTypeSectionedHeaderView *)self setHidden:0];
}

- (void)_updatePreferredTitleFont
{
  v3 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionHeaderFont];
  [(UILabel *)self->_titleLabel setFont:v3];
}

@end