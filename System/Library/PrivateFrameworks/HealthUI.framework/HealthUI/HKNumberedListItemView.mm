@interface HKNumberedListItemView
+ (CGSize)listItemSize;
+ (id)createNumberedViewWithInteger:(unint64_t)integer;
- (HKNumberedListItemView)initWithInteger:(unint64_t)integer;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation HKNumberedListItemView

- (HKNumberedListItemView)initWithInteger:(unint64_t)integer
{
  v7.receiver = self;
  v7.super_class = HKNumberedListItemView;
  v4 = [(HKNumberedListItemView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_number = integer;
    [(HKNumberedListItemView *)v4 _setUpUI];
    [(HKNumberedListItemView *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HKNumberedListItemView;
  [(HKNumberedListItemView *)&v6 layoutSubviews];
  [(HKNumberedListItemView *)self frame];
  v3 = CGRectGetWidth(v7) * 0.5;
  layer = [(HKNumberedListItemView *)self layer];
  [layer setCornerRadius:v3];

  layer2 = [(HKNumberedListItemView *)self layer];
  [layer2 setMasksToBounds:1];
}

- (void)setTintColor:(id)color
{
  v8.receiver = self;
  v8.super_class = HKNumberedListItemView;
  colorCopy = color;
  [(HKNumberedListItemView *)&v8 setTintColor:colorCopy];
  v5 = colorCopy;
  cGColor = [v5 CGColor];

  layer = [(HKNumberedListItemView *)self layer];
  [layer setBackgroundColor:cGColor];
}

- (void)_setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKNumberedListItemView *)self setNumberLabel:v3];

  v12 = HKNumberFormatterFromTemplate(0);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKNumberedListItemView number](self, "number")}];
  v5 = [v12 stringFromNumber:v4];
  numberLabel = [(HKNumberedListItemView *)self numberLabel];
  [numberLabel setText:v5];

  numberFont = [objc_opt_class() numberFont];
  numberLabel2 = [(HKNumberedListItemView *)self numberLabel];
  [numberLabel2 setFont:numberFont];

  numberLabel3 = [(HKNumberedListItemView *)self numberLabel];
  [numberLabel3 setAdjustsFontForContentSizeCategory:1];

  numberLabel4 = [(HKNumberedListItemView *)self numberLabel];
  [numberLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  numberLabel5 = [(HKNumberedListItemView *)self numberLabel];
  [(HKNumberedListItemView *)self addSubview:numberLabel5];
}

- (void)_setUpConstraints
{
  numberLabel = [(HKNumberedListItemView *)self numberLabel];
  [numberLabel hk_alignCenterConstraintsWithView:self];
}

+ (id)createNumberedViewWithInteger:(unint64_t)integer
{
  v3 = [[HKNumberedListItemView alloc] initWithInteger:integer];
  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [(HKNumberedListItemView *)v3 setTintColor:hk_appKeyColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  numberLabel = [(HKNumberedListItemView *)v3 numberLabel];
  [numberLabel setTextColor:whiteColor];

  [(HKNumberedListItemView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

+ (CGSize)listItemSize
{
  v2 = +[HKNumberedListItemView numberFont];
  [v2 _scaledValueForValue:28.0];
  v4 = v3;

  v5 = v4;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

@end