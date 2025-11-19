@interface HKTitledListItemLabel
+ (id)createBubbleViewTitledListItem:(id)a3 titleAccessibilityIdentifier:(id)a4 listBody:(id)a5 bodyAccessibilityIdentifier:(id)a6 itemNumber:(int)a7;
+ (id)createTitledListItem:(id)a3 titleAccessibilityIdentifier:(id)a4 listBody:(id)a5 bodyAccessibilityIdentifier:(id)a6 itemNumber:(int)a7;
- (HKTitledListItemLabel)initWithView:(id)a3 size:(CGSize)a4 title:(id)a5 body:(id)a6;
- (double)_bodyLabelToBottom;
- (double)_listItemLabelToBody;
- (id)viewForFirstBaselineLayout;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateCurrentUserInterfaceStyleIfNeeded;
- (void)layoutSubviews;
@end

@implementation HKTitledListItemLabel

- (HKTitledListItemLabel)initWithView:(id)a3 size:(CGSize)a4 title:(id)a5 body:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HKTitledListItemLabel;
  v14 = [(HKTitledListItemLabel *)&v20 init];
  if (v14)
  {
    v15 = [[HKListItemLabel alloc] initWithView:v11 size:v12 text:width, height];
    listItemLabel = v14->_listItemLabel;
    v14->_listItemLabel = v15;

    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v14->_bodyLabel;
    v14->_bodyLabel = v17;

    [(UILabel *)v14->_bodyLabel setText:v13];
    [(HKTitledListItemLabel *)v14 _setUpUI];
    [(HKTitledListItemLabel *)v14 _setUpConstraints];
  }

  return v14;
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(HKTitledListItemLabel *)self listItemLabel];
  v3 = [v2 textLabel];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKTitledListItemLabel;
  [(HKTitledListItemLabel *)&v3 layoutSubviews];
  [(HKTitledListItemLabel *)self _updateCurrentUserInterfaceStyleIfNeeded];
}

+ (id)createTitledListItem:(id)a3 titleAccessibilityIdentifier:(id)a4 listBody:(id)a5 bodyAccessibilityIdentifier:(id)a6 itemNumber:(int)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [objc_opt_class() createButtonBackgroundView];
  v16 = [HKTitledListItemLabel alloc];
  v17 = [objc_opt_class() createNumberedViewWithInteger:a7];
  [objc_opt_class() listItemSize];
  v18 = [(HKTitledListItemLabel *)v16 initWithView:v17 size:v14 title:v12 body:?];

  v19 = [(HKTitledListItemLabel *)v18 listItemLabel];
  [v19 setAccessibilityIdentifier:v13];

  v20 = [(HKTitledListItemLabel *)v18 bodyLabel];
  [v20 setAccessibilityIdentifier:v11];

  [(HKTitledListItemLabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 addSubview:v18];
  [(UIView *)v18 hk_alignHorizontalConstraintsWithView:v15 insets:0.0, 12.0, 0.0, 20.0];
  [(UIView *)v18 hk_alignVerticalConstraintsWithView:v15 insets:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];

  return v15;
}

+ (id)createBubbleViewTitledListItem:(id)a3 titleAccessibilityIdentifier:(id)a4 listBody:(id)a5 bodyAccessibilityIdentifier:(id)a6 itemNumber:(int)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [objc_opt_class() createButtonBackgroundView];
  v16 = [HKTitledListItemLabel alloc];
  v17 = [objc_opt_class() createNumberedViewWithInteger:a7];
  [objc_opt_class() listItemSize];
  v18 = [(HKTitledListItemLabel *)v16 initWithView:v17 size:v14 title:v12 body:?];

  v19 = [(HKTitledListItemLabel *)v18 listItemLabel];
  [v19 setAccessibilityIdentifier:v13];

  v20 = [(HKTitledListItemLabel *)v18 bodyLabel];
  [v20 setAccessibilityIdentifier:v11];

  [(HKTitledListItemLabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 addSubview:v18];
  [(UIView *)v18 hk_alignHorizontalConstraintsWithView:v15 insets:0.0, 12.0, 0.0, 20.0];
  v21 = *MEMORY[0x1E69DC5C0];
  v22 = *(MEMORY[0x1E69DC5C0] + 8);
  v23 = *(MEMORY[0x1E69DC5C0] + 16);
  v24 = *(MEMORY[0x1E69DC5C0] + 24);
  [(UIView *)v18 hk_alignVerticalConstraintsWithView:v15 insets:*MEMORY[0x1E69DC5C0], v22, v23, v24];
  v25 = [[HKBubbleItemView alloc] initWithBackground:v15 bubbleContent:v18];
  [(HKBubbleItemView *)v25 addSubview:v15];
  [v15 hk_alignHorizontalConstraintsWithView:v25 insets:{v21, v22, v23, v24}];
  [v15 hk_alignVerticalConstraintsWithView:v25 insets:{v21, v22, v23, v24}];

  return v25;
}

- (void)_setUpUI
{
  v3 = [(HKTitledListItemLabel *)self listItemLabel];
  [v3 setCenterItemViewToFirstLine:1];

  v4 = [(HKTitledListItemLabel *)self listItemLabel];
  [v4 setBoldText:1];

  v5 = [(HKTitledListItemLabel *)self listItemLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HKTitledListItemLabel *)self listItemLabel];
  [(HKTitledListItemLabel *)self addSubview:v6];

  v7 = [(HKTitledListItemLabel *)self bodyLabel];
  [v7 setNumberOfLines:0];

  v8 = [(HKTitledListItemLabel *)self _bodyLabelFont];
  v9 = [(HKTitledListItemLabel *)self bodyLabel];
  [v9 setFont:v8];

  v10 = [(HKTitledListItemLabel *)self bodyLabel];
  [v10 setAdjustsFontForContentSizeCategory:1];

  v11 = [(HKTitledListItemLabel *)self bodyLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HKTitledListItemLabel *)self bodyLabel];
  [(HKTitledListItemLabel *)self addSubview:v12];
}

- (void)_setUpConstraints
{
  v3 = [(HKTitledListItemLabel *)self listItemLabel];
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  [v3 hk_alignHorizontalConstraintsWithView:self insets:{*MEMORY[0x1E69DC5C0], v5, v6, v7}];

  v8 = [(HKTitledListItemLabel *)self listItemLabel];
  v9 = [v8 topAnchor];
  v10 = [(HKTitledListItemLabel *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(HKTitledListItemLabel *)self bodyLabel];
  v13 = [v12 firstBaselineAnchor];
  v14 = [(HKTitledListItemLabel *)self listItemLabel];
  v15 = [v14 lastBaselineAnchor];
  [(HKTitledListItemLabel *)self _listItemLabelToBody];
  v16 = [v13 constraintEqualToAnchor:v15 constant:?];
  [v16 setActive:1];

  v17 = [(HKTitledListItemLabel *)self bodyLabel];
  v18 = [(HKTitledListItemLabel *)self listItemLabel];
  v19 = [v18 textLabel];
  [v17 hk_alignHorizontalConstraintsWithView:v19 insets:{v4, v5, v6, v7}];

  v23 = [(HKTitledListItemLabel *)self bottomAnchor];
  v20 = [(HKTitledListItemLabel *)self bodyLabel];
  v21 = [v20 lastBaselineAnchor];
  [(HKTitledListItemLabel *)self _bodyLabelToBottom];
  v22 = [v23 constraintEqualToAnchor:v21 constant:?];
  [v22 setActive:1];
}

- (void)_updateCurrentUserInterfaceStyleIfNeeded
{
  v3 = [(HKTitledListItemLabel *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if ([(HKTitledListItemLabel *)self currentUserInterfaceStyle]!= v4)
  {
    [(HKTitledListItemLabel *)self setCurrentUserInterfaceStyle:v4];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v5 = [(HKTitledListItemLabel *)self bodyLabel];
    [v5 setTextColor:v6];
  }
}

- (double)_listItemLabelToBody
{
  v2 = [(HKTitledListItemLabel *)self listItemLabel];
  v3 = [v2 textLabel];
  v4 = [v3 font];
  [v4 _scaledValueForValue:27.0];
  v6 = v5;

  return v6;
}

- (double)_bodyLabelToBottom
{
  v2 = [(HKTitledListItemLabel *)self _bodyLabelFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

@end