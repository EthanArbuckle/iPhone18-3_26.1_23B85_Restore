@interface _HKDisplayTypeSectionedHeaderView
- (_HKDisplayTypeSectionedHeaderView)initWithFrame:(CGRect)frame;
- (void)_updatePreferredTitleFont;
- (void)prepareForReuse;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _HKDisplayTypeSectionedHeaderView

- (_HKDisplayTypeSectionedHeaderView)initWithFrame:(CGRect)frame
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = _HKDisplayTypeSectionedHeaderView;
  v3 = [(_HKDisplayTypeSectionedHeaderView *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:clearColor];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setClipsToBounds:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(_HKDisplayTypeSectionedHeaderView *)v3 _updatePreferredTitleFont];
    [(_HKDisplayTypeSectionedHeaderView *)v3 addSubview:v3->_contentView];
    v44 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v3->_contentView topAnchor];
    topAnchor2 = [(_HKDisplayTypeSectionedHeaderView *)v3 topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[0] = v47;
    leadingAnchor = [(UIView *)v3->_contentView leadingAnchor];
    leadingAnchor2 = [(_HKDisplayTypeSectionedHeaderView *)v3 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[1] = v43;
    bottomAnchor = [(UIView *)v3->_contentView bottomAnchor];
    bottomAnchor2 = [(_HKDisplayTypeSectionedHeaderView *)v3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[2] = v17;
    trailingAnchor = [(UIView *)v3->_contentView trailingAnchor];
    trailingAnchor2 = [(_HKDisplayTypeSectionedHeaderView *)v3 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v44 activateConstraints:v21];

    [(UIView *)v3->_contentView addSubview:v3->_titleLabel];
    trailingAnchor3 = [(UILabel *)v3->_titleLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)v3->_contentView trailingAnchor];
    v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    titleTrailingConstraint = v3->_titleTrailingConstraint;
    v3->_titleTrailingConstraint = v24;

    topAnchor3 = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor4 = [(UIView *)v3->_contentView topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    titleWithNoTopMargin = v3->_titleWithNoTopMargin;
    v3->_titleWithNoTopMargin = v28;

    topAnchor5 = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor6 = [(UIView *)v3->_contentView topAnchor];
    v32 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:16.0];
    titleWithTopMargin = v3->_titleWithTopMargin;
    v3->_titleWithTopMargin = v32;

    [(NSLayoutConstraint *)v3->_titleWithNoTopMargin setActive:1];
    v34 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v3->_contentView leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v51[0] = v37;
    bottomAnchor3 = [(UILabel *)v3->_titleLabel bottomAnchor];
    bottomAnchor4 = [(UIView *)v3->_contentView bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v51[1] = v40;
    v51[2] = v3->_titleTrailingConstraint;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    [v34 activateConstraints:v41];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = _HKDisplayTypeSectionedHeaderView;
  changeCopy = change;
  [(_HKDisplayTypeSectionedHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(_HKDisplayTypeSectionedHeaderView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(_HKDisplayTypeSectionedHeaderView *)self _updatePreferredTitleFont];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v8 = titleCopy;
  if (titleCopy)
  {
    v5 = [titleCopy length];
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
  hk_chartOverlaySectionHeaderFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionHeaderFont];
  [(UILabel *)self->_titleLabel setFont:hk_chartOverlaySectionHeaderFont];
}

@end