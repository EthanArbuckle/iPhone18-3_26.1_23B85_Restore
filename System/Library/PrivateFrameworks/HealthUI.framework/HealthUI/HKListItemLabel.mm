@interface HKListItemLabel
+ (id)createListItem:(id)a3 itemNumber:(int)a4;
- (CGSize)itemViewSize;
- (HKListItemLabel)initWithView:(id)a3 size:(CGSize)a4 text:(id)a5;
- (double)_textLabelLastBaselineToBottom;
- (double)_topToTextLabelFirstBaseline;
- (id)_textLabelBoldFont;
- (id)_textLabelFont;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateItemViewTextAlignmentConstraint;
- (void)_updateTextLabelFont;
- (void)setBoldText:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKListItemLabel

- (HKListItemLabel)initWithView:(id)a3 size:(CGSize)a4 text:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKListItemLabel;
  v12 = [(HKListItemLabel *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemView, a3);
    v13->_itemViewSize.width = width;
    v13->_itemViewSize.height = height;
    objc_storeStrong(&v13->_text, a5);
    [(HKListItemLabel *)v13 _setUpUI];
    [(HKListItemLabel *)v13 _setUpConstraints];
  }

  return v13;
}

- (void)setBoldText:(BOOL)a3
{
  self->_boldText = a3;
  [(HKListItemLabel *)self _updateTextLabelFont];

  [(HKListItemLabel *)self _updateItemViewTextAlignmentConstraint];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = HKListItemLabel;
  [(HKListItemLabel *)&v9 traitCollectionDidChange:a3];
  v4 = [(HKListItemLabel *)self textLabel];
  v5 = [v4 font];
  v6 = [(HKListItemLabel *)self traitCollection];
  v7 = [v5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

  v8 = [(HKListItemLabel *)self textLabel];
  [v8 setFont:v7];

  [(HKListItemLabel *)self _updateItemViewTextAlignmentConstraint];
}

+ (id)createListItem:(id)a3 itemNumber:(int)a4
{
  v5 = a3;
  v6 = [objc_opt_class() createButtonBackgroundView];
  v7 = [HKListItemLabel alloc];
  v8 = [objc_opt_class() createNumberedViewWithInteger:a4];
  [objc_opt_class() listItemSize];
  v9 = [(HKListItemLabel *)v7 initWithView:v8 size:v5 text:?];

  [(HKListItemLabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKListItemLabel *)v9 setCenterItemViewToFirstLine:1];
  [(HKListItemLabel *)v9 setBoldText:1];
  [v6 addSubview:v9];
  [(UIView *)v9 hk_alignHorizontalConstraintsWithView:v6 insets:0.0, 12.0, 0.0, 20.0];
  [(UIView *)v9 hk_alignVerticalConstraintsWithView:v6 insets:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];

  return v6;
}

- (void)_setUpUI
{
  v3 = [(HKListItemLabel *)self itemView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(HKListItemLabel *)self itemView];
  [(HKListItemLabel *)self addSubview:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKListItemLabel *)self setTextLabel:v5];

  v6 = [(HKListItemLabel *)self text];
  v7 = [(HKListItemLabel *)self textLabel];
  [v7 setText:v6];

  v8 = [(HKListItemLabel *)self textLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HKListItemLabel *)self textLabel];
  [v9 setNumberOfLines:0];

  [(HKListItemLabel *)self _updateTextLabelFont];
  v10 = [(HKListItemLabel *)self textLabel];
  [(HKListItemLabel *)self addSubview:v10];
}

- (void)_setUpConstraints
{
  [(HKListItemLabel *)self itemViewSize];
  if (v4 != *MEMORY[0x1E695F060] || v3 != *(MEMORY[0x1E695F060] + 8))
  {
    v6 = [(HKListItemLabel *)self itemView];
    v7 = [v6 widthAnchor];
    [(HKListItemLabel *)self itemViewSize];
    v8 = [v7 constraintEqualToConstant:?];
    [v8 setActive:1];

    v9 = [(HKListItemLabel *)self itemView];
    v10 = [v9 heightAnchor];
    [(HKListItemLabel *)self itemViewSize];
    v12 = [v10 constraintEqualToConstant:v11];
    [v12 setActive:1];
  }

  v13 = [(HKListItemLabel *)self itemView];
  v14 = [v13 leadingAnchor];
  v15 = [(HKListItemLabel *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(HKListItemLabel *)self textLabel];
  v18 = [v17 leadingAnchor];
  v19 = [(HKListItemLabel *)self itemView];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 constant:12.0];
  [v21 setActive:1];

  v22 = [(HKListItemLabel *)self textLabel];
  v23 = [v22 trailingAnchor];
  v24 = [(HKListItemLabel *)self trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  [(HKListItemLabel *)self _updateItemViewTextAlignmentConstraint];
  v26 = [(HKListItemLabel *)self textLabel];
  v27 = [v26 firstBaselineAnchor];
  v28 = [(HKListItemLabel *)self topAnchor];
  [(HKListItemLabel *)self _topToTextLabelFirstBaseline];
  v29 = [v27 constraintEqualToAnchor:v28 constant:?];
  [v29 setActive:1];

  v33 = [(HKListItemLabel *)self bottomAnchor];
  v30 = [(HKListItemLabel *)self textLabel];
  v31 = [v30 lastBaselineAnchor];
  [(HKListItemLabel *)self _textLabelLastBaselineToBottom];
  v32 = [v33 constraintEqualToAnchor:v31 constant:?];
  [v32 setActive:1];
}

- (void)_updateTextLabelFont
{
  if ([(HKListItemLabel *)self boldText])
  {
    [(HKListItemLabel *)self _textLabelBoldFont];
  }

  else
  {
    [(HKListItemLabel *)self _textLabelFont];
  }
  v4 = ;
  v3 = [(HKListItemLabel *)self textLabel];
  [v3 setFont:v4];
}

- (void)_updateItemViewTextAlignmentConstraint
{
  v3 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];

  if (v3)
  {
    v4 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
    [(HKListItemLabel *)self removeConstraint:v4];

    [(HKListItemLabel *)self setItemViewTextAlignmentConstraint:0];
  }

  v5 = [(HKListItemLabel *)self centerItemViewToFirstLine];
  v6 = [(HKListItemLabel *)self itemView];
  v7 = [v6 centerYAnchor];
  v8 = [(HKListItemLabel *)self textLabel];
  v9 = v8;
  if (v5)
  {
    v10 = [v8 topAnchor];
    v11 = [v7 constraintEqualToAnchor:v10];
    [(HKListItemLabel *)self setItemViewTextAlignmentConstraint:v11];

    v6 = [(HKListItemLabel *)self textLabel];
    v7 = [v6 font];
    [v7 lineHeight];
    v13 = v12 * 0.5;
    v9 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
    [v9 setConstant:v13];
  }

  else
  {
    v14 = [v8 centerYAnchor];
    v15 = [v7 constraintEqualToAnchor:v14];
    [(HKListItemLabel *)self setItemViewTextAlignmentConstraint:v15];
  }

  v16 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
  LODWORD(v17) = 1144750080;
  [v16 setPriority:v17];

  v18 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
  [v18 setActive:1];
}

- (id)_textLabelFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [(HKListItemLabel *)self _textLabelFontStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (id)_textLabelBoldFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [(HKListItemLabel *)self _textLabelFontStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (double)_topToTextLabelFirstBaseline
{
  v2 = [(HKListItemLabel *)self textLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:32.0];
  v5 = v4;

  return v5;
}

- (double)_textLabelLastBaselineToBottom
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (CGSize)itemViewSize
{
  width = self->_itemViewSize.width;
  height = self->_itemViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end