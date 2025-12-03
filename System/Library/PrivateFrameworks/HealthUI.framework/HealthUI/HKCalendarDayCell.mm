@interface HKCalendarDayCell
+ (void)clearImageCache;
- (CGSize)_roundedRectSizeForDayNumberString:(id)string;
- (CGSize)circleSize;
- (HKCalendarDayCell)init;
- (HKCalendarDayCell)initWithDateCache:(id)cache;
- (double)_roundedRectCornerRadius;
- (id)_integerNumberFormatter;
- (id)_reusedImageForDateIndex:(int64_t)index color:(id)color;
- (id)debugDescription;
- (void)layoutOnce;
- (void)setSelected:(BOOL)selected;
- (void)updateDateTextForDayNumber:(int64_t)number textColor:(id)color;
- (void)updateWithDate:(id)date dayOfMonth:(int64_t)month;
@end

@implementation HKCalendarDayCell

- (HKCalendarDayCell)initWithDateCache:(id)cache
{
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = HKCalendarDayCell;
  v6 = [(HKCalendarDayCell *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateCache, cache);
    layer = [MEMORY[0x1E6979398] layer];
    circle = v7->_circle;
    v7->_circle = layer;

    [(CALayer *)v7->_circle setHidden:1];
    [(HKCalendarDayCell *)v7 addSublayer:v7->_circle];
    layer2 = [MEMORY[0x1E6979398] layer];
    dayLabel = v7->_dayLabel;
    v7->_dayLabel = layer2;

    [(HKCalendarDayCell *)v7 addSublayer:v7->_dayLabel];
  }

  return v7;
}

- (HKCalendarDayCell)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (void)clearImageCache
{
  v2 = _BoldImageCache();
  [v2 removeAllObjects];

  v3 = _NormalImageCache();
  [v3 removeAllObjects];
}

- (id)_integerNumberFormatter
{
  v2 = _integerNumberFormatter___integerNumberFormatter;
  if (!_integerNumberFormatter___integerNumberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = _integerNumberFormatter___integerNumberFormatter;
    _integerNumberFormatter___integerNumberFormatter = v3;

    [_integerNumberFormatter___integerNumberFormatter setRoundingMode:2];
    [_integerNumberFormatter___integerNumberFormatter setMaximumFractionDigits:0];
    v2 = _integerNumberFormatter___integerNumberFormatter;
  }

  return v2;
}

- (id)_reusedImageForDateIndex:(int64_t)index color:(id)color
{
  v36[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if ([(HKCalendarDayCell *)self isSelected])
  {
    _BoldImageCache();
  }

  else
  {
    _NormalImageCache();
  }
  v7 = ;
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v9 = [colorCopy resolvedColorWithTraitCollection:currentTraitCollection];

  v10 = +[_HKCalendarDayCellIconConfiguration configurationWithDateIndex:color:style:](_HKCalendarDayCellIconConfiguration, "configurationWithDateIndex:color:style:", index, v9, [currentTraitCollection userInterfaceStyle]);
  v11 = [v7 objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    _integerNumberFormatter = [(HKCalendarDayCell *)self _integerNumberFormatter];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v32 = [_integerNumberFormatter stringFromNumber:v15];

    if ([(HKCalendarDayCell *)self isSelected])
    {
      [(HKCalendarDayCell *)self boldFont];
    }

    else
    {
      [(HKCalendarDayCell *)self font];
    }
    v31 = ;
    [(HKCalendarDayCell *)self dayDiameter];
    v17 = v16;
    [(HKCalendarDayCell *)self dayDiameter];
    v19 = v18;
    v20 = objc_alloc(MEMORY[0x1E696AAB0]);
    v35 = *MEMORY[0x1E69DB648];
    v21 = v35;
    v36[0] = v31;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v23 = [v20 initWithString:v32 attributes:v22];

    [(HKCalendarDayCell *)self dayDiameter];
    [v23 boundingRectWithSize:0 options:0 context:?];
    v38.width = v17;
    v38.height = v19;
    UIGraphicsBeginImageContextWithOptions(v38, 0, 0.0);
    [(HKCalendarDayCell *)self dayDiameter];
    UIRoundToViewScale();
    v25 = v24;
    [(HKCalendarDayCell *)self dayDiameter];
    UIRoundToViewScale();
    v27 = v26;
    v28 = *MEMORY[0x1E69DB650];
    v33[0] = v21;
    v33[1] = v28;
    v34[0] = v31;
    v34[1] = v9;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v32 drawAtPoint:v29 withAttributes:{v25, v27}];

    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [v7 setObject:v13 forKey:v10];
  }

  return v13;
}

- (void)updateWithDate:(id)date dayOfMonth:(int64_t)month
{
  dateCopy = date;
  [(HKCalendarDayCell *)self setHidden:0];
  date = self->_date;
  self->_date = dateCopy;
  v8 = dateCopy;

  self->_dayOfMonth = month;
  LOBYTE(month) = [(HKDateCache *)self->_dateCache isDateInToday:v8];

  self->_representsToday = month;
}

- (void)updateDateTextForDayNumber:(int64_t)number textColor:(id)color
{
  v7 = [(HKCalendarDayCell *)self _reusedImageForDateIndex:number color:color];
  dayLabel = self->_dayLabel;
  v6 = v7;
  -[CALayer setContents:](dayLabel, "setContents:", [v7 CGImage]);
}

- (void)layoutOnce
{
  [(HKCalendarDayCell *)self dayDiameter];
  v4 = v3;
  v5 = v3 + -1.0;
  [(HKCalendarDayCell *)self dayDiameter];
  UIRoundToViewScale();
  v7 = v6;
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC70]);
  circle = self->_circle;
  if (IsLargerThanSizeCategory)
  {
    [(HKCalendarDayCell *)self _roundedRectCornerRadius];
  }

  else
  {
    v10 = v5 * 0.5;
  }

  [(CALayer *)circle setCornerRadius:v10];
  [(CALayer *)self->_circle setFrame:0.0, 0.0, v4 + -1.0, v4 + -1.0];
  [(CALayer *)self->_circle setPosition:v7, v7];
  dayLabel = self->_dayLabel;

  [(CALayer *)dayLabel setFrame:0.0, 0.0, v4, v4];
}

- (double)_roundedRectCornerRadius
{
  [(HKCalendarDayCell *)self dayDiameter];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRoundToScale();
  v4 = v3;

  return v4;
}

- (CGSize)circleSize
{
  if (HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC70]))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKCalendarDayCell dayOfMonth](self, "dayOfMonth")}];
    stringValue = [v3 stringValue];
    [(HKCalendarDayCell *)self _roundedRectSizeForDayNumberString:stringValue];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    [(HKCalendarDayCell *)self dayDiameter];
    v12 = v11 + -1.0;
    [(HKCalendarDayCell *)self dayDiameter];
    v10 = v13 + -1.0;
    v9 = v12;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_roundedRectSizeForDayNumberString:(id)string
{
  v17[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  [(HKCalendarDayCell *)self dayDiameter];
  v6 = v5 + -1.0;
  [(HKCalendarDayCell *)self dayDiameter];
  v8 = v7;
  v16 = *MEMORY[0x1E69DB648];
  boldFont = [(HKCalendarDayCell *)self boldFont];
  v17[0] = boldFont;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [stringCopy sizeWithAttributes:v10];
  v12 = v11;

  v13 = v12 + 4.0;
  if (v6 >= v13)
  {
    v14 = v6;
  }

  else
  {
    v14 = v13;
  }

  v15 = v8 + -1.0;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    circle = [(HKCalendarDayCell *)self circle];
    [circle setHidden:!selectedCopy];

    if (selectedCopy)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [(HKCalendarDayCell *)self textColor];
    }
    v7 = ;
    [(HKCalendarDayCell *)self updateDateTextForDayNumber:[(HKCalendarDayCell *)self dayOfMonth] textColor:v7];
  }
}

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = HKCalendarDayCell;
  v3 = [(HKCalendarDayCell *)&v8 debugDescription];
  v4 = MEMORY[0x1E696AB78];
  date = [(HKCalendarDayCell *)self date];
  v6 = [v4 localizedStringFromDate:date dateStyle:2 timeStyle:0];

  [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
  [v3 appendFormat:@"date: %@; > ", v6];

  return v3;
}

@end