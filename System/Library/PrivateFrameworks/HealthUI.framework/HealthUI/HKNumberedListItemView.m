@interface HKNumberedListItemView
+ (CGSize)listItemSize;
+ (id)createNumberedViewWithInteger:(unint64_t)a3;
- (HKNumberedListItemView)initWithInteger:(unint64_t)a3;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation HKNumberedListItemView

- (HKNumberedListItemView)initWithInteger:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = HKNumberedListItemView;
  v4 = [(HKNumberedListItemView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_number = a3;
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
  v4 = [(HKNumberedListItemView *)self layer];
  [v4 setCornerRadius:v3];

  v5 = [(HKNumberedListItemView *)self layer];
  [v5 setMasksToBounds:1];
}

- (void)setTintColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKNumberedListItemView;
  v4 = a3;
  [(HKNumberedListItemView *)&v8 setTintColor:v4];
  v5 = v4;
  v6 = [v5 CGColor];

  v7 = [(HKNumberedListItemView *)self layer];
  [v7 setBackgroundColor:v6];
}

- (void)_setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKNumberedListItemView *)self setNumberLabel:v3];

  v12 = HKNumberFormatterFromTemplate(0);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKNumberedListItemView number](self, "number")}];
  v5 = [v12 stringFromNumber:v4];
  v6 = [(HKNumberedListItemView *)self numberLabel];
  [v6 setText:v5];

  v7 = [objc_opt_class() numberFont];
  v8 = [(HKNumberedListItemView *)self numberLabel];
  [v8 setFont:v7];

  v9 = [(HKNumberedListItemView *)self numberLabel];
  [v9 setAdjustsFontForContentSizeCategory:1];

  v10 = [(HKNumberedListItemView *)self numberLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HKNumberedListItemView *)self numberLabel];
  [(HKNumberedListItemView *)self addSubview:v11];
}

- (void)_setUpConstraints
{
  v3 = [(HKNumberedListItemView *)self numberLabel];
  [v3 hk_alignCenterConstraintsWithView:self];
}

+ (id)createNumberedViewWithInteger:(unint64_t)a3
{
  v3 = [[HKNumberedListItemView alloc] initWithInteger:a3];
  v4 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [(HKNumberedListItemView *)v3 setTintColor:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(HKNumberedListItemView *)v3 numberLabel];
  [v6 setTextColor:v5];

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