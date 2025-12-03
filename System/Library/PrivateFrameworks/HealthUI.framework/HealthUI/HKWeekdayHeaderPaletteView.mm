@interface HKWeekdayHeaderPaletteView
+ (double)preferredHeight;
+ (id)weekdayFont;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HKWeekdayHeaderPaletteView)initWithFrame:(CGRect)frame shouldSupportRTL:(BOOL)l;
- (double)_xOriginForMonthViewWithIndex:(int64_t)index itemWidth:(double)width leftMargin:(double)margin;
- (void)_currentTraitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)_updateFont;
- (void)layoutSubviews;
@end

@implementation HKWeekdayHeaderPaletteView

- (HKWeekdayHeaderPaletteView)initWithFrame:(CGRect)frame shouldSupportRTL:(BOOL)l
{
  lCopy = l;
  v25[1] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = HKWeekdayHeaderPaletteView;
  v5 = [(HKWeekdayHeaderPaletteView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    weekdayLabels = v5->_weekdayLabels;
    v5->_weekdayLabels = v6;

    [(HKWeekdayHeaderPaletteView *)v5 setLayoutMargins:0.0, 5.0, 3.0, 5.0];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v22 = objc_alloc_init(MEMORY[0x1E696AB78]);
    veryShortStandaloneWeekdaySymbols = [v22 veryShortStandaloneWeekdaySymbols];
    firstWeekday = [currentCalendar firstWeekday];
    v23 = currentCalendar;
    hk_weekendDays = [currentCalendar hk_weekendDays];
    v12 = firstWeekday - 1;
    v13 = 7;
    do
    {
      v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v15 = [veryShortStandaloneWeekdaySymbols objectAtIndexedSubscript:v12 % 7];
      [v14 setText:v15];

      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v12 % 7 + 1];
      LOBYTE(v15) = [hk_weekendDays containsObject:v16];

      if (v15)
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] labelColor];
      }
      v17 = ;
      [v14 setTextColor:v17];

      [v14 sizeToFit];
      v18 = v5->_weekdayLabels;
      if (lCopy)
      {
        [(NSMutableArray *)v18 insertObject:v14 atIndex:0];
      }

      else
      {
        [(NSMutableArray *)v18 addObject:v14];
      }

      [(HKWeekdayHeaderPaletteView *)v5 addSubview:v14];

      ++v12;
      --v13;
    }

    while (v13);
    [(HKWeekdayHeaderPaletteView *)v5 _updateFont];
    v25[0] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v20 = [(HKWeekdayHeaderPaletteView *)v5 registerForTraitChanges:v19 withTarget:v5 action:sel__currentTraitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_];
  }

  return v5;
}

- (void)_updateFont
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_weekdayLabels;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        weekdayFont = [objc_opt_class() weekdayFont];
        [v7 setFont:weekdayFont];

        [v7 sizeToFit];
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)layoutSubviews
{
  for (i = 0; i != 7; ++i)
  {
    v4 = [(NSMutableArray *)self->_weekdayLabels objectAtIndexedSubscript:i];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    [(HKWeekdayHeaderPaletteView *)self layoutMargins];
    [(HKWeekdayHeaderPaletteView *)self _xOriginForMonthViewWithIndex:i itemWidth:v6 leftMargin:?];
    v10 = v9;
    [(HKWeekdayHeaderPaletteView *)self layoutMargins];
    v12 = v11;
    [(HKWeekdayHeaderPaletteView *)self bounds];
    v14 = v12 + v13 - v8;
    [(HKWeekdayHeaderPaletteView *)self layoutMargins];
    [v4 setFrame:{v10, v14 - v15, v6, v8}];
  }
}

- (double)_xOriginForMonthViewWithIndex:(int64_t)index itemWidth:(double)width leftMargin:(double)margin
{
  [(HKWeekdayHeaderPaletteView *)self bounds];

  UIRoundToViewScale();
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() preferredHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

+ (id)weekdayFont
{
  v2 = *MEMORY[0x1E69DDC38];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC38]);
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  if (IsLargerThanSizeCategory)
  {
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v2];
    v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];
    [v7 _scaledValueForValue:10.0];
    v9 = v8;
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 _scaledValueForValue:10.0];
    v9 = v10;
  }

  v11 = MEMORY[0x1E69DB878];
  v12 = *MEMORY[0x1E69DB980];

  return [v11 systemFontOfSize:v9 weight:v12];
}

+ (double)preferredHeight
{
  weekdayFont = [objc_opt_class() weekdayFont];
  [weekdayFont _bodyLeading];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRoundToScale();
  v5 = v4;

  return fmax(v5, 17.0);
}

- (void)_currentTraitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  environmentCopy = environment;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  traitCollection = [environmentCopy traitCollection];

  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(HKWeekdayHeaderPaletteView *)self _updateFont];

    [(HKWeekdayHeaderPaletteView *)self setNeedsLayout];
  }
}

@end