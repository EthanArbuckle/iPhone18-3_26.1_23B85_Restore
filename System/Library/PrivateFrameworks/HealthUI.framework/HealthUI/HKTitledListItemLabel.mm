@interface HKTitledListItemLabel
+ (id)createBubbleViewTitledListItem:(id)item titleAccessibilityIdentifier:(id)identifier listBody:(id)body bodyAccessibilityIdentifier:(id)accessibilityIdentifier itemNumber:(int)number;
+ (id)createTitledListItem:(id)item titleAccessibilityIdentifier:(id)identifier listBody:(id)body bodyAccessibilityIdentifier:(id)accessibilityIdentifier itemNumber:(int)number;
- (HKTitledListItemLabel)initWithView:(id)view size:(CGSize)size title:(id)title body:(id)body;
- (double)_bodyLabelToBottom;
- (double)_listItemLabelToBody;
- (id)viewForFirstBaselineLayout;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateCurrentUserInterfaceStyleIfNeeded;
- (void)layoutSubviews;
@end

@implementation HKTitledListItemLabel

- (HKTitledListItemLabel)initWithView:(id)view size:(CGSize)size title:(id)title body:(id)body
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  titleCopy = title;
  bodyCopy = body;
  v20.receiver = self;
  v20.super_class = HKTitledListItemLabel;
  v14 = [(HKTitledListItemLabel *)&v20 init];
  if (v14)
  {
    height = [[HKListItemLabel alloc] initWithView:viewCopy size:titleCopy text:width, height];
    listItemLabel = v14->_listItemLabel;
    v14->_listItemLabel = height;

    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v14->_bodyLabel;
    v14->_bodyLabel = v17;

    [(UILabel *)v14->_bodyLabel setText:bodyCopy];
    [(HKTitledListItemLabel *)v14 _setUpUI];
    [(HKTitledListItemLabel *)v14 _setUpConstraints];
  }

  return v14;
}

- (id)viewForFirstBaselineLayout
{
  listItemLabel = [(HKTitledListItemLabel *)self listItemLabel];
  textLabel = [listItemLabel textLabel];

  return textLabel;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKTitledListItemLabel;
  [(HKTitledListItemLabel *)&v3 layoutSubviews];
  [(HKTitledListItemLabel *)self _updateCurrentUserInterfaceStyleIfNeeded];
}

+ (id)createTitledListItem:(id)item titleAccessibilityIdentifier:(id)identifier listBody:(id)body bodyAccessibilityIdentifier:(id)accessibilityIdentifier itemNumber:(int)number
{
  accessibilityIdentifierCopy = accessibilityIdentifier;
  bodyCopy = body;
  identifierCopy = identifier;
  itemCopy = item;
  createButtonBackgroundView = [objc_opt_class() createButtonBackgroundView];
  v16 = [HKTitledListItemLabel alloc];
  v17 = [objc_opt_class() createNumberedViewWithInteger:number];
  [objc_opt_class() listItemSize];
  v18 = [(HKTitledListItemLabel *)v16 initWithView:v17 size:itemCopy title:bodyCopy body:?];

  listItemLabel = [(HKTitledListItemLabel *)v18 listItemLabel];
  [listItemLabel setAccessibilityIdentifier:identifierCopy];

  bodyLabel = [(HKTitledListItemLabel *)v18 bodyLabel];
  [bodyLabel setAccessibilityIdentifier:accessibilityIdentifierCopy];

  [(HKTitledListItemLabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [createButtonBackgroundView addSubview:v18];
  [(UIView *)v18 hk_alignHorizontalConstraintsWithView:createButtonBackgroundView insets:0.0, 12.0, 0.0, 20.0];
  [(UIView *)v18 hk_alignVerticalConstraintsWithView:createButtonBackgroundView insets:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];

  return createButtonBackgroundView;
}

+ (id)createBubbleViewTitledListItem:(id)item titleAccessibilityIdentifier:(id)identifier listBody:(id)body bodyAccessibilityIdentifier:(id)accessibilityIdentifier itemNumber:(int)number
{
  accessibilityIdentifierCopy = accessibilityIdentifier;
  bodyCopy = body;
  identifierCopy = identifier;
  itemCopy = item;
  createButtonBackgroundView = [objc_opt_class() createButtonBackgroundView];
  v16 = [HKTitledListItemLabel alloc];
  v17 = [objc_opt_class() createNumberedViewWithInteger:number];
  [objc_opt_class() listItemSize];
  v18 = [(HKTitledListItemLabel *)v16 initWithView:v17 size:itemCopy title:bodyCopy body:?];

  listItemLabel = [(HKTitledListItemLabel *)v18 listItemLabel];
  [listItemLabel setAccessibilityIdentifier:identifierCopy];

  bodyLabel = [(HKTitledListItemLabel *)v18 bodyLabel];
  [bodyLabel setAccessibilityIdentifier:accessibilityIdentifierCopy];

  [(HKTitledListItemLabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [createButtonBackgroundView addSubview:v18];
  [(UIView *)v18 hk_alignHorizontalConstraintsWithView:createButtonBackgroundView insets:0.0, 12.0, 0.0, 20.0];
  v21 = *MEMORY[0x1E69DC5C0];
  v22 = *(MEMORY[0x1E69DC5C0] + 8);
  v23 = *(MEMORY[0x1E69DC5C0] + 16);
  v24 = *(MEMORY[0x1E69DC5C0] + 24);
  [(UIView *)v18 hk_alignVerticalConstraintsWithView:createButtonBackgroundView insets:*MEMORY[0x1E69DC5C0], v22, v23, v24];
  v25 = [[HKBubbleItemView alloc] initWithBackground:createButtonBackgroundView bubbleContent:v18];
  [(HKBubbleItemView *)v25 addSubview:createButtonBackgroundView];
  [createButtonBackgroundView hk_alignHorizontalConstraintsWithView:v25 insets:{v21, v22, v23, v24}];
  [createButtonBackgroundView hk_alignVerticalConstraintsWithView:v25 insets:{v21, v22, v23, v24}];

  return v25;
}

- (void)_setUpUI
{
  listItemLabel = [(HKTitledListItemLabel *)self listItemLabel];
  [listItemLabel setCenterItemViewToFirstLine:1];

  listItemLabel2 = [(HKTitledListItemLabel *)self listItemLabel];
  [listItemLabel2 setBoldText:1];

  listItemLabel3 = [(HKTitledListItemLabel *)self listItemLabel];
  [listItemLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  listItemLabel4 = [(HKTitledListItemLabel *)self listItemLabel];
  [(HKTitledListItemLabel *)self addSubview:listItemLabel4];

  bodyLabel = [(HKTitledListItemLabel *)self bodyLabel];
  [bodyLabel setNumberOfLines:0];

  _bodyLabelFont = [(HKTitledListItemLabel *)self _bodyLabelFont];
  bodyLabel2 = [(HKTitledListItemLabel *)self bodyLabel];
  [bodyLabel2 setFont:_bodyLabelFont];

  bodyLabel3 = [(HKTitledListItemLabel *)self bodyLabel];
  [bodyLabel3 setAdjustsFontForContentSizeCategory:1];

  bodyLabel4 = [(HKTitledListItemLabel *)self bodyLabel];
  [bodyLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel5 = [(HKTitledListItemLabel *)self bodyLabel];
  [(HKTitledListItemLabel *)self addSubview:bodyLabel5];
}

- (void)_setUpConstraints
{
  listItemLabel = [(HKTitledListItemLabel *)self listItemLabel];
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  [listItemLabel hk_alignHorizontalConstraintsWithView:self insets:{*MEMORY[0x1E69DC5C0], v5, v6, v7}];

  listItemLabel2 = [(HKTitledListItemLabel *)self listItemLabel];
  topAnchor = [listItemLabel2 topAnchor];
  topAnchor2 = [(HKTitledListItemLabel *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  bodyLabel = [(HKTitledListItemLabel *)self bodyLabel];
  firstBaselineAnchor = [bodyLabel firstBaselineAnchor];
  listItemLabel3 = [(HKTitledListItemLabel *)self listItemLabel];
  lastBaselineAnchor = [listItemLabel3 lastBaselineAnchor];
  [(HKTitledListItemLabel *)self _listItemLabelToBody];
  v16 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v16 setActive:1];

  bodyLabel2 = [(HKTitledListItemLabel *)self bodyLabel];
  listItemLabel4 = [(HKTitledListItemLabel *)self listItemLabel];
  textLabel = [listItemLabel4 textLabel];
  [bodyLabel2 hk_alignHorizontalConstraintsWithView:textLabel insets:{v4, v5, v6, v7}];

  bottomAnchor = [(HKTitledListItemLabel *)self bottomAnchor];
  bodyLabel3 = [(HKTitledListItemLabel *)self bodyLabel];
  lastBaselineAnchor2 = [bodyLabel3 lastBaselineAnchor];
  [(HKTitledListItemLabel *)self _bodyLabelToBottom];
  v22 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v22 setActive:1];
}

- (void)_updateCurrentUserInterfaceStyleIfNeeded
{
  traitCollection = [(HKTitledListItemLabel *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if ([(HKTitledListItemLabel *)self currentUserInterfaceStyle]!= userInterfaceStyle)
  {
    [(HKTitledListItemLabel *)self setCurrentUserInterfaceStyle:userInterfaceStyle];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    bodyLabel = [(HKTitledListItemLabel *)self bodyLabel];
    [bodyLabel setTextColor:secondaryLabelColor];
  }
}

- (double)_listItemLabelToBody
{
  listItemLabel = [(HKTitledListItemLabel *)self listItemLabel];
  textLabel = [listItemLabel textLabel];
  font = [textLabel font];
  [font _scaledValueForValue:27.0];
  v6 = v5;

  return v6;
}

- (double)_bodyLabelToBottom
{
  _bodyLabelFont = [(HKTitledListItemLabel *)self _bodyLabelFont];
  [_bodyLabelFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

@end