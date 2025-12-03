@interface HKListItemLabel
+ (id)createListItem:(id)item itemNumber:(int)number;
- (CGSize)itemViewSize;
- (HKListItemLabel)initWithView:(id)view size:(CGSize)size text:(id)text;
- (double)_textLabelLastBaselineToBottom;
- (double)_topToTextLabelFirstBaseline;
- (id)_textLabelBoldFont;
- (id)_textLabelFont;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateItemViewTextAlignmentConstraint;
- (void)_updateTextLabelFont;
- (void)setBoldText:(BOOL)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKListItemLabel

- (HKListItemLabel)initWithView:(id)view size:(CGSize)size text:(id)text
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = HKListItemLabel;
  v12 = [(HKListItemLabel *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemView, view);
    v13->_itemViewSize.width = width;
    v13->_itemViewSize.height = height;
    objc_storeStrong(&v13->_text, text);
    [(HKListItemLabel *)v13 _setUpUI];
    [(HKListItemLabel *)v13 _setUpConstraints];
  }

  return v13;
}

- (void)setBoldText:(BOOL)text
{
  self->_boldText = text;
  [(HKListItemLabel *)self _updateTextLabelFont];

  [(HKListItemLabel *)self _updateItemViewTextAlignmentConstraint];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = HKListItemLabel;
  [(HKListItemLabel *)&v9 traitCollectionDidChange:change];
  textLabel = [(HKListItemLabel *)self textLabel];
  font = [textLabel font];
  traitCollection = [(HKListItemLabel *)self traitCollection];
  v7 = [font _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  textLabel2 = [(HKListItemLabel *)self textLabel];
  [textLabel2 setFont:v7];

  [(HKListItemLabel *)self _updateItemViewTextAlignmentConstraint];
}

+ (id)createListItem:(id)item itemNumber:(int)number
{
  itemCopy = item;
  createButtonBackgroundView = [objc_opt_class() createButtonBackgroundView];
  v7 = [HKListItemLabel alloc];
  v8 = [objc_opt_class() createNumberedViewWithInteger:number];
  [objc_opt_class() listItemSize];
  v9 = [(HKListItemLabel *)v7 initWithView:v8 size:itemCopy text:?];

  [(HKListItemLabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKListItemLabel *)v9 setCenterItemViewToFirstLine:1];
  [(HKListItemLabel *)v9 setBoldText:1];
  [createButtonBackgroundView addSubview:v9];
  [(UIView *)v9 hk_alignHorizontalConstraintsWithView:createButtonBackgroundView insets:0.0, 12.0, 0.0, 20.0];
  [(UIView *)v9 hk_alignVerticalConstraintsWithView:createButtonBackgroundView insets:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];

  return createButtonBackgroundView;
}

- (void)_setUpUI
{
  itemView = [(HKListItemLabel *)self itemView];
  [itemView setTranslatesAutoresizingMaskIntoConstraints:0];

  itemView2 = [(HKListItemLabel *)self itemView];
  [(HKListItemLabel *)self addSubview:itemView2];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKListItemLabel *)self setTextLabel:v5];

  text = [(HKListItemLabel *)self text];
  textLabel = [(HKListItemLabel *)self textLabel];
  [textLabel setText:text];

  textLabel2 = [(HKListItemLabel *)self textLabel];
  [textLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabel3 = [(HKListItemLabel *)self textLabel];
  [textLabel3 setNumberOfLines:0];

  [(HKListItemLabel *)self _updateTextLabelFont];
  textLabel4 = [(HKListItemLabel *)self textLabel];
  [(HKListItemLabel *)self addSubview:textLabel4];
}

- (void)_setUpConstraints
{
  [(HKListItemLabel *)self itemViewSize];
  if (v4 != *MEMORY[0x1E695F060] || v3 != *(MEMORY[0x1E695F060] + 8))
  {
    itemView = [(HKListItemLabel *)self itemView];
    widthAnchor = [itemView widthAnchor];
    [(HKListItemLabel *)self itemViewSize];
    v8 = [widthAnchor constraintEqualToConstant:?];
    [v8 setActive:1];

    itemView2 = [(HKListItemLabel *)self itemView];
    heightAnchor = [itemView2 heightAnchor];
    [(HKListItemLabel *)self itemViewSize];
    v12 = [heightAnchor constraintEqualToConstant:v11];
    [v12 setActive:1];
  }

  itemView3 = [(HKListItemLabel *)self itemView];
  leadingAnchor = [itemView3 leadingAnchor];
  leadingAnchor2 = [(HKListItemLabel *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  textLabel = [(HKListItemLabel *)self textLabel];
  leadingAnchor3 = [textLabel leadingAnchor];
  itemView4 = [(HKListItemLabel *)self itemView];
  trailingAnchor = [itemView4 trailingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
  [v21 setActive:1];

  textLabel2 = [(HKListItemLabel *)self textLabel];
  trailingAnchor2 = [textLabel2 trailingAnchor];
  trailingAnchor3 = [(HKListItemLabel *)self trailingAnchor];
  v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v25 setActive:1];

  [(HKListItemLabel *)self _updateItemViewTextAlignmentConstraint];
  textLabel3 = [(HKListItemLabel *)self textLabel];
  firstBaselineAnchor = [textLabel3 firstBaselineAnchor];
  topAnchor = [(HKListItemLabel *)self topAnchor];
  [(HKListItemLabel *)self _topToTextLabelFirstBaseline];
  v29 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v29 setActive:1];

  bottomAnchor = [(HKListItemLabel *)self bottomAnchor];
  textLabel4 = [(HKListItemLabel *)self textLabel];
  lastBaselineAnchor = [textLabel4 lastBaselineAnchor];
  [(HKListItemLabel *)self _textLabelLastBaselineToBottom];
  v32 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
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
  textLabel = [(HKListItemLabel *)self textLabel];
  [textLabel setFont:v4];
}

- (void)_updateItemViewTextAlignmentConstraint
{
  itemViewTextAlignmentConstraint = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];

  if (itemViewTextAlignmentConstraint)
  {
    itemViewTextAlignmentConstraint2 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
    [(HKListItemLabel *)self removeConstraint:itemViewTextAlignmentConstraint2];

    [(HKListItemLabel *)self setItemViewTextAlignmentConstraint:0];
  }

  centerItemViewToFirstLine = [(HKListItemLabel *)self centerItemViewToFirstLine];
  itemView = [(HKListItemLabel *)self itemView];
  centerYAnchor = [itemView centerYAnchor];
  textLabel = [(HKListItemLabel *)self textLabel];
  itemViewTextAlignmentConstraint3 = textLabel;
  if (centerItemViewToFirstLine)
  {
    topAnchor = [textLabel topAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:topAnchor];
    [(HKListItemLabel *)self setItemViewTextAlignmentConstraint:v11];

    itemView = [(HKListItemLabel *)self textLabel];
    centerYAnchor = [itemView font];
    [centerYAnchor lineHeight];
    v13 = v12 * 0.5;
    itemViewTextAlignmentConstraint3 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
    [itemViewTextAlignmentConstraint3 setConstant:v13];
  }

  else
  {
    centerYAnchor2 = [textLabel centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(HKListItemLabel *)self setItemViewTextAlignmentConstraint:v15];
  }

  itemViewTextAlignmentConstraint4 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
  LODWORD(v17) = 1144750080;
  [itemViewTextAlignmentConstraint4 setPriority:v17];

  itemViewTextAlignmentConstraint5 = [(HKListItemLabel *)self itemViewTextAlignmentConstraint];
  [itemViewTextAlignmentConstraint5 setActive:1];
}

- (id)_textLabelFont
{
  v2 = MEMORY[0x1E69DB878];
  _textLabelFontStyle = [(HKListItemLabel *)self _textLabelFontStyle];
  v4 = [v2 preferredFontForTextStyle:_textLabelFontStyle];

  return v4;
}

- (id)_textLabelBoldFont
{
  v2 = MEMORY[0x1E69DB878];
  _textLabelFontStyle = [(HKListItemLabel *)self _textLabelFontStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_textLabelFontStyle symbolicTraits:2];

  return v4;
}

- (double)_topToTextLabelFirstBaseline
{
  textLabel = [(HKListItemLabel *)self textLabel];
  font = [textLabel font];
  [font _scaledValueForValue:32.0];
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