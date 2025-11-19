@interface ICDateFilterTypeSelection
+ (NSDateFormatter)shortDateFormatter;
+ (id)keyPathsForValuesAffectingIsEmpty;
+ (id)relativeRangeStringComponentsForSelectionType:(unint64_t)a3 number:(id)a4;
+ (id)relativeRangeSummaryForSelectionType:(unint64_t)a3 amount:(unint64_t)a4;
+ (id)relativeRangeSummaryForSelectionType:(unint64_t)a3 number:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDateFilterSelection:(id)a3;
- (BOOL)isValid;
- (ICDateFilterTypeSelection)initWithSelectionType:(unint64_t)a3;
- (NSDate)primaryDate;
- (NSDate)secondaryDate;
- (NSDictionary)relativeRangeTimeIntervalOptions;
- (NSNumber)relativeRangeAmount;
- (NSString)primaryDateSummary;
- (NSString)relativeRangeAmountAndTimeInterval;
- (NSString)relativeRangeLabel;
- (NSString)secondaryDateSummary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)rawFilterValue;
- (id)relativeRangeTimeIntervalString;
- (unint64_t)hash;
- (unint64_t)relativeRangeSelectionType;
- (void)setPrimaryDate:(id)a3;
- (void)setRelativeRangeTimeInterval:(double)a3;
- (void)setSecondaryDate:(id)a3;
- (void)setSelectionType:(unint64_t)a3;
- (void)setSpecificDateRangeFrom:(id)a3 to:(id)a4;
- (void)updateDatesForCurrentSelectionType;
@end

@implementation ICDateFilterTypeSelection

+ (id)relativeRangeSummaryForSelectionType:(unint64_t)a3 amount:(unint64_t)a4
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v6 = MEMORY[0x277CCACA8];
        v7 = @"In the Past %lu Weeks";
        break;
      case 4uLL:
        v6 = MEMORY[0x277CCACA8];
        v7 = @"In the Past %lu Months";
        break;
      case 5uLL:
        v6 = MEMORY[0x277CCACA8];
        v7 = @"In the Past %lu Years";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v4 = __ICLocalizedFrameworkString_impl(@"Unknown", @"Unknown", 0, 1);
        goto LABEL_15;
      case 1uLL:
        v6 = MEMORY[0x277CCACA8];
        v7 = @"In the Past %lu Hours";
        break;
      case 2uLL:
        v6 = MEMORY[0x277CCACA8];
        v7 = @"In the Past %lu Days";
        break;
      default:
        goto LABEL_15;
    }
  }

  v8 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
  v4 = [v6 localizedStringWithFormat:v8, a4];

LABEL_15:

  return v4;
}

+ (id)relativeRangeSummaryForSelectionType:(unint64_t)a3 number:(id)a4
{
  v6 = [a4 longValue];
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v7 = MEMORY[0x277CCACA8];
        v8 = @"In the Past %lu Weeks";
        break;
      case 4uLL:
        v7 = MEMORY[0x277CCACA8];
        v8 = @"In the Past %lu Months";
        break;
      case 5uLL:
        v7 = MEMORY[0x277CCACA8];
        v8 = @"In the Past %lu Years";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v4 = __ICLocalizedFrameworkString_impl(@"Unknown", @"Unknown", 0, 1);
        goto LABEL_15;
      case 1uLL:
        v7 = MEMORY[0x277CCACA8];
        v8 = @"In the Past %lu Hours";
        break;
      case 2uLL:
        v7 = MEMORY[0x277CCACA8];
        v8 = @"In the Past %lu Days";
        break;
      default:
        goto LABEL_15;
    }
  }

  v9 = __ICLocalizedFrameworkString_impl(v8, v8, 0, 1);
  v4 = [v7 localizedStringWithFormat:v9, v6];

LABEL_15:

  return v4;
}

+ (id)relativeRangeStringComponentsForSelectionType:(unint64_t)a3 number:(id)a4
{
  v5 = a4;
  v6 = [ICDateFilterTypeSelection relativeRangeSummaryForSelectionType:a3 number:v5];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 unsignedIntegerValue];

  v9 = [v7 localizedStringWithFormat:@"%lu", v8];
  v10 = [v6 componentsSeparatedByString:v9];

  return v10;
}

+ (NSDateFormatter)shortDateFormatter
{
  if (shortDateFormatter_shortDateFormatterOnceToken != -1)
  {
    +[ICDateFilterTypeSelection shortDateFormatter];
  }

  v3 = shortDateFormatter_shortDateFormatter;

  return v3;
}

uint64_t __47__ICDateFilterTypeSelection_shortDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = shortDateFormatter_shortDateFormatter;
  shortDateFormatter_shortDateFormatter = v0;

  [shortDateFormatter_shortDateFormatter setDateStyle:1];
  v2 = shortDateFormatter_shortDateFormatter;

  return [v2 setTimeStyle:0];
}

- (ICDateFilterTypeSelection)initWithSelectionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICDateFilterTypeSelection;
  result = [(ICDateFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_selectionType = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ICDateFilterTypeSelection allocWithZone:](ICDateFilterTypeSelection initWithSelectionType:"initWithSelectionType:", [(ICDateFilterTypeSelection *)self selectionType]];
  v6 = [(ICDateFilterTypeSelection *)self primaryDate];
  [(ICDateFilterTypeSelection *)v5 setPrimaryDate:v6];

  v7 = [(ICDateFilterTypeSelection *)self secondaryDate];
  [(ICDateFilterTypeSelection *)v5 setSecondaryDate:v7];

  [(ICDateFilterTypeSelection *)v5 setRelativeRangeSelectionType:[(ICDateFilterTypeSelection *)self relativeRangeSelectionType]];
  v8 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v9 = [v8 copyWithZone:a3];
  [(ICDateFilterTypeSelection *)v5 setRelativeRangeAmount:v9];

  return v5;
}

- (NSDate)primaryDate
{
  v3 = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 0;
  if (v3 <= 0xA && ((1 << v3) & 0x740) != 0)
  {
    v4 = self->_primaryDate;
  }

  return v4;
}

- (void)setPrimaryDate:(id)a3
{
  objc_storeStrong(&self->_primaryDate, a3);

  [(ICDateFilterTypeSelection *)self updateDatesForCurrentSelectionType];
}

- (void)setRelativeRangeTimeInterval:(double)a3
{
  [(ICDateFilterTypeSelection *)self setSelectionType:7];
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * a3, 2) <= 0x444444444444444uLL)
  {
    v5 = (a3 / 60.0);
  }

  else
  {
    v5 = 0;
  }

  if (v5 % 0x3C)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 / 0x3C;
  }

  if (v6 == 24 * ((v6 * 0xAAAAAAAAAAAAAABuLL) >> 64))
  {
    v7 = (v6 * 0xAAAAAAAAAAAAAABuLL) >> 64;
  }

  else
  {
    v7 = 0;
  }

  if (v7 % 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 / 7;
  }

  if (v7 == 30 * (v7 / 0x1E))
  {
    v9 = v7 / 0x1E;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 - 365;
  if (v7 >= 0x16D && !(v7 % 0x16D))
  {
    [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:5];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 / 0x16D];
    [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v11];

    if (v10 > 0x16C)
    {
      return;
    }

    v12 = self;
    v13 = 5;
LABEL_28:

    [(ICDateFilterTypeSelection *)v12 setSelectionType:v13];
    return;
  }

  if (v9)
  {
    [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:4];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v14];

    if (v9 == 3)
    {
      v12 = self;
      v13 = 4;
    }

    else
    {
      if (v9 != 1)
      {
        return;
      }

      v12 = self;
      v13 = 3;
    }

    goto LABEL_28;
  }

  if (v8)
  {
    [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:3];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v15];

    if (v8 != 1)
    {
      return;
    }

    v12 = self;
    v13 = 2;
    goto LABEL_28;
  }

  if (v7)
  {
    [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:2];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v16];

    if (v7 == 2)
    {
      v12 = self;
      v13 = 1;
    }

    else
    {
      if (v7 != 1)
      {
        return;
      }

      v12 = self;
      v13 = 0;
    }

    goto LABEL_28;
  }

  [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:1];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v17];
}

- (void)setSpecificDateRangeFrom:(id)a3 to:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  [v17 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 == 0.0)
  {
    v10 = self;
    v11 = 9;
LABEL_3:
    [(ICDateFilterTypeSelection *)v10 setSelectionType:v11];
    v12 = self;
    v13 = v6;
LABEL_6:
    [(ICDateFilterTypeSelection *)v12 setPrimaryDate:v13];
    goto LABEL_7;
  }

  v14 = [MEMORY[0x277CBEAA8] distantFuture];
  [v6 timeIntervalSinceDate:v14];
  v16 = v15;

  if (v16 == 0.0)
  {
    [(ICDateFilterTypeSelection *)self setSelectionType:10];
    v12 = self;
    v13 = v17;
    goto LABEL_6;
  }

  if ([v17 ic_isSameDayAsDate:v6])
  {
    v10 = self;
    v11 = 8;
    goto LABEL_3;
  }

  [(ICDateFilterTypeSelection *)self setSelectionType:6];
  [(ICDateFilterTypeSelection *)self setPrimaryDate:v17];
  [(ICDateFilterTypeSelection *)self setSecondaryDate:v6];
LABEL_7:
}

- (NSDate)secondaryDate
{
  [(ICDateFilterTypeSelection *)self selectionType];
  secondaryDate = self->_secondaryDate;

  return secondaryDate;
}

- (void)setSecondaryDate:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_secondaryDate, a3);
  if ([(ICDateFilterTypeSelection *)self selectionType]== 6)
  {
    v5 = [(ICDateFilterTypeSelection *)self primaryDate];
    v6 = [v7 ic_isEarlierThanDate:v5];

    if (v6)
    {
      [(ICDateFilterTypeSelection *)self setPrimaryDate:v7];
    }
  }
}

- (void)setSelectionType:(unint64_t)a3
{
  self->_selectionType = a3;
  if (a3 < 6)
  {
    [(ICDateFilterTypeSelection *)self setPrimaryDate:0];
LABEL_4:
    [(ICDateFilterTypeSelection *)self setSecondaryDate:0];
    goto LABEL_5;
  }

  if (a3 - 9 < 2)
  {
    goto LABEL_4;
  }

  if (a3 == 7 && ![(ICDateFilterTypeSelection *)self relativeRangeSelectionType])
  {
    self->_relativeRangeSelectionType = 1;
  }

LABEL_5:

  [(ICDateFilterTypeSelection *)self updateDatesForCurrentSelectionType];
}

- (NSNumber)relativeRangeAmount
{
  v3 = [(ICDateFilterTypeSelection *)self selectionType];
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v6 = &unk_282747B80;
        break;
      case 5:
        v6 = &unk_282747B98;
        break;
      case 7:
        v6 = self->_relativeRangeAmount;
        break;
      default:
        v6 = 0;
        break;
    }
  }

  else
  {
    v4 = &unk_282747B50;
    v5 = &unk_282747B68;
    if (v3 != 3)
    {
      v5 = 0;
    }

    if (v3 != 2)
    {
      v4 = v5;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = &unk_282747B38;
    }
  }

  return v6;
}

- (unint64_t)relativeRangeSelectionType
{
  if ([(ICDateFilterTypeSelection *)self selectionType]== 7)
  {
    return self->_relativeRangeSelectionType;
  }

  else
  {
    return 0;
  }
}

- (NSString)primaryDateSummary
{
  v3 = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 0;
  if (v3 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 != 6)
      {
        v11 = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
        v12 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
        v4 = +[ICDateFilterTypeSelection relativeRangeSummaryForSelectionType:amount:](ICDateFilterTypeSelection, "relativeRangeSummaryForSelectionType:amount:", v11, [v12 intValue]);

        goto LABEL_22;
      }

      v7 = [objc_opt_class() shortDateFormatter];
      v13 = [(ICDateFilterTypeSelection *)self primaryDate];
      v4 = [v7 stringFromDate:v13];
    }

    else
    {
      switch(v3)
      {
        case 8:
          v17 = [objc_opt_class() shortDateFormatter];
          v18 = [(ICDateFilterTypeSelection *)self primaryDate];
          v7 = [v17 stringFromDate:v18];

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v9 = MEMORY[0x277CCACA8];
          if (isKindOfClass)
          {
            v10 = @"Created on %@";
          }

          else
          {
            v10 = @"Edited on %@";
          }

          break;
        case 9:
          v14 = [objc_opt_class() shortDateFormatter];
          v15 = [(ICDateFilterTypeSelection *)self primaryDate];
          v7 = [v14 stringFromDate:v15];

          objc_opt_class();
          v16 = objc_opt_isKindOfClass();
          v9 = MEMORY[0x277CCACA8];
          if (v16)
          {
            v10 = @"Created before %@";
          }

          else
          {
            v10 = @"Edited before %@";
          }

          break;
        case 10:
          v5 = [objc_opt_class() shortDateFormatter];
          v6 = [(ICDateFilterTypeSelection *)self primaryDate];
          v7 = [v5 stringFromDate:v6];

          objc_opt_class();
          v8 = objc_opt_isKindOfClass();
          v9 = MEMORY[0x277CCACA8];
          if (v8)
          {
            v10 = @"Created after %@";
          }

          else
          {
            v10 = @"Edited after %@";
          }

          break;
        default:
          goto LABEL_22;
      }

      v20 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);
      v4 = [v9 localizedStringWithFormat:v20, v7];
    }
  }

  else if (v3 < 6)
  {
    v4 = ICLocalizedStringFromICDateFilterSelectionType([(ICDateFilterTypeSelection *)self selectionType]);
  }

LABEL_22:

  return v4;
}

- (NSString)secondaryDateSummary
{
  v3 = [(ICDateFilterTypeSelection *)self secondaryDate];
  if (v3)
  {
    v4 = [objc_opt_class() shortDateFormatter];
    v5 = [(ICDateFilterTypeSelection *)self secondaryDate];
    v6 = [v4 stringFromDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICDateFilterTypeSelection *)self isEqualToDateFilterSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICDateFilterTypeSelection selectionType](self, "selectionType")}];
  v22 = [v3 hash];
  v4 = [(ICDateFilterTypeSelection *)self primaryDate];
  v5 = [v4 hash];
  LOBYTE(v6) = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x277CBEB68] null];
    v6 = [v7 hash];
  }

  v8 = [(ICDateFilterTypeSelection *)self secondaryDate];
  if (![v8 hash])
  {
    v9 = [MEMORY[0x277CBEB68] null];
    [v9 hash];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICDateFilterTypeSelection relativeRangeSelectionType](self, "relativeRangeSelectionType")}];
  [v10 hash];
  v11 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  if (![v11 hash])
  {
    v19 = [MEMORY[0x277CBEB68] null];
    [v19 hash];
  }

  v20 = ICHashWithHashKeys(v22, v12, v13, v14, v15, v16, v17, v18, v6);

  return v20;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromICDateFilterSelectionType([(ICDateFilterTypeSelection *)self selectionType]);
  v5 = [(ICDateFilterTypeSelection *)self primaryDate];
  v6 = [(ICDateFilterTypeSelection *)self secondaryDate];
  v7 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v8 = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
  if (v8 - 1 > 4)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_278196078[v8 - 1];
  }

  v10 = [v3 stringWithFormat:@"%@\n%@ - %@\n%@ %@", v4, v5, v6, v7, v9];

  return v10;
}

- (NSString)relativeRangeLabel
{
  v3 = [(ICDateFilterTypeSelection *)self relativeDateSummary];
  v4 = [(ICDateFilterTypeSelection *)self relativeRangeAmountString];
  v5 = [v3 componentsSeparatedByString:v4];

  v6 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if ([v6 ic_localeIsArabic])
  {
    [v5 lastObject];
  }

  else
  {
    [v5 firstObject];
  }
  v7 = ;
  v8 = [v7 ic_trimmedString];

  return v8;
}

- (id)relativeRangeTimeIntervalString
{
  v3 = [(ICDateFilterTypeSelection *)self relativeDateSummary];
  v4 = [(ICDateFilterTypeSelection *)self relativeRangeAmountString];
  v5 = [v3 componentsSeparatedByString:v4];

  v6 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if ([v6 ic_localeIsArabic])
  {
    [v5 firstObject];
  }

  else
  {
    [v5 lastObject];
  }
  v7 = ;
  v8 = [v7 ic_trimmedString];

  return v8;
}

- (NSString)relativeRangeAmountAndTimeInterval
{
  v3 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v4 = [v3 intValue];

  v5 = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
  if (v4 == 1)
  {
    if (v5 > 2)
    {
      switch(v5)
      {
        case 3:
          v6 = @"WEEK_SUMMARY_SINGLE";
          v7 = @"Week";
          break;
        case 4:
          v6 = @"MONTH_SUMMARY_SINGLE";
          v7 = @"Month";
          break;
        case 5:
          v6 = @"YEAR_SUMMARY_SINGLE";
          v7 = @"Year";
          break;
        default:
          goto LABEL_30;
      }

      goto LABEL_26;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        v6 = @"HOUR_SUMMARY_SINGLE";
        v7 = @"Hour";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_30;
        }

        v6 = @"DAY_SUMMARY_SINGLE";
        v7 = @"Day";
      }

LABEL_26:
      v10 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v6, v7, 0, 1);
      goto LABEL_27;
    }

LABEL_20:
    v10 = __ICLocalizedFrameworkString_impl(@"Unknown", @"Unknown", 0, 1);
LABEL_27:
    v3 = v10;
    goto LABEL_30;
  }

  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v8 = MEMORY[0x277CCACA8];
        v9 = @"%d_WEEKS";
        break;
      case 4:
        v8 = MEMORY[0x277CCACA8];
        v9 = @"%d_MONTHS";
        break;
      case 5:
        v8 = MEMORY[0x277CCACA8];
        v9 = @"%d_YEARS";
        break;
      default:
        goto LABEL_30;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        goto LABEL_20;
      case 1:
        v8 = MEMORY[0x277CCACA8];
        v9 = @"%d_HOURS";
        break;
      case 2:
        v8 = MEMORY[0x277CCACA8];
        v9 = @"%d_DAYS";
        break;
      default:
        goto LABEL_30;
    }
  }

  v11 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);
  v12 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v3 = [v8 localizedStringWithFormat:v11, objc_msgSend(v12, "intValue")];

LABEL_30:

  return v3;
}

- (NSDictionary)relativeRangeTimeIntervalOptions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 1; i != 6; ++i)
  {
    v5 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
    v6 = [ICDateFilterTypeSelection relativeRangeStringComponentsForSelectionType:i number:v5];

    v7 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    if ([v7 ic_localeIsArabic])
    {
      [v6 firstObject];
    }

    else
    {
      [v6 lastObject];
    }
    v8 = ;
    v9 = [v8 ic_trimmedString];

    v10 = [MEMORY[0x277CCABB0] numberWithInt:i];
    [v3 setObject:v9 forKeyedSubscript:v10];
  }

  return v3;
}

- (id)rawFilterValue
{
  v2 = [(ICDateFilterTypeSelection *)self selectionType];

  return NSStringFromICDateFilterSelectionType(v2);
}

- (BOOL)isValid
{
  v3 = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 1;
  if (v3 > 8)
  {
    if ((v3 - 9) < 2)
    {
      v5 = [(ICDateFilterTypeSelection *)self primaryDate];
      v4 = v5 != 0;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        v5 = [(ICDateFilterTypeSelection *)self primaryDate];
        if (v5)
        {
          v7 = [(ICDateFilterTypeSelection *)self secondaryDate];
          if (v7)
          {
            v8 = [(ICDateFilterTypeSelection *)self primaryDate];
            v9 = [(ICDateFilterTypeSelection *)self secondaryDate];
            if (([v8 ic_isEarlierThanDate:v9] & 1) == 0)
            {
              v10 = [(ICDateFilterTypeSelection *)self primaryDate];
              v11 = [(ICDateFilterTypeSelection *)self secondaryDate];
              v4 = [v10 isEqualToDate:v11];
            }
          }

          else
          {
            v4 = 0;
          }

          goto LABEL_19;
        }

        goto LABEL_16;
      case 7:
        v5 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
        if (v5)
        {
          v12 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
          v4 = [v12 integerValue] > 0;

          goto LABEL_19;
        }

        goto LABEL_16;
      case 8:
        v5 = [(ICDateFilterTypeSelection *)self primaryDate];
        if (v5)
        {
          v6 = [(ICDateFilterTypeSelection *)self secondaryDate];
          v4 = v6 != 0;

LABEL_19:
          return v4;
        }

LABEL_16:
        v4 = 0;
        goto LABEL_19;
    }
  }

  return v4;
}

- (BOOL)isEmpty
{
  v3 = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 0;
  if (v3 > 8)
  {
    if ((v3 - 9) >= 2)
    {
      return v4;
    }

    v7 = [(ICDateFilterTypeSelection *)self primaryDate];
LABEL_10:
    v5 = v7;
    v4 = v7 == 0;
LABEL_11:

    return v4;
  }

  switch(v3)
  {
    case 6:
      goto LABEL_5;
    case 7:
      v7 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
      goto LABEL_10;
    case 8:
LABEL_5:
      v5 = [(ICDateFilterTypeSelection *)self primaryDate];
      if (v5)
      {
        v6 = [(ICDateFilterTypeSelection *)self secondaryDate];
        v4 = v6 == 0;
      }

      else
      {
        v4 = 1;
      }

      goto LABEL_11;
  }

  return v4;
}

+ (id)keyPathsForValuesAffectingIsEmpty
{
  v2 = MEMORY[0x277CBEB98];
  v3 = NSStringFromSelector(sel_selectionType);
  v4 = NSStringFromSelector(sel_primaryDate);
  v5 = NSStringFromSelector(sel_secondaryDate);
  v6 = NSStringFromSelector(sel_relativeRangeAmount);
  v7 = [v2 setWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

- (BOOL)isEqualToDateFilterSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICDateFilterTypeSelection *)self selectionType];
  if (v5 == [v4 selectionType])
  {
    v6 = [(ICDateFilterTypeSelection *)self primaryDate];
    v7 = [v4 primaryDate];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;
    if (v10 | v12)
    {
      v13 = v12;
      if (v10)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_40;
      }

      v15 = [v10 isEqual:v12];

      if (!v15)
      {
        v22 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    v10 = [(ICDateFilterTypeSelection *)self secondaryDate];
    v13 = [v4 secondaryDate];
    if (v8 == v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    v17 = v16;
    if (v8 == v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    if (!(v17 | v19))
    {
      goto LABEL_29;
    }

    v20 = v19;
    if (v17)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v23 = [v17 isEqual:v19];

    if (v23)
    {
LABEL_29:
      v24 = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
      if (v24 == [v4 relativeRangeSelectionType])
      {
        v17 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
        v20 = [v4 relativeRangeAmount];
        if (v8 == v17)
        {
          v25 = 0;
        }

        else
        {
          v25 = v17;
        }

        v26 = v25;
        if (v8 == v20)
        {
          v27 = 0;
        }

        else
        {
          v27 = v20;
        }

        v28 = v27;
        v29 = v28;
        if (v26 | v28)
        {
          v22 = 0;
          if (v26 && v28)
          {
            v22 = [v26 isEqual:v28];
          }
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_44;
      }
    }

LABEL_40:
    v22 = 0;
LABEL_45:

    goto LABEL_46;
  }

  v22 = 0;
LABEL_47:

  return v22;
}

- (void)updateDatesForCurrentSelectionType
{
  v3 = [(ICDateFilterTypeSelection *)self selectionType];
  if (v3 > 8)
  {
    if (v3 == 9)
    {
      v15 = [(ICDateFilterTypeSelection *)self primaryDate];
      v7 = [(NSDate *)v15 ic_startOfDay];
    }

    else
    {
      if (v3 != 10)
      {
        return;
      }

      v15 = [(ICDateFilterTypeSelection *)self primaryDate];
      v7 = [(NSDate *)v15 ic_endOfDay];
    }

    v8 = 24;
    goto LABEL_13;
  }

  if (v3 != 6)
  {
    if (v3 != 8)
    {
      return;
    }

    v4 = [(ICDateFilterTypeSelection *)self primaryDate];
    v5 = [v4 ic_startOfDay];
    primaryDate = self->_primaryDate;
    self->_primaryDate = v5;

    v15 = [(ICDateFilterTypeSelection *)self primaryDate];
    v7 = [(NSDate *)v15 ic_endOfDay];
    v8 = 32;
LABEL_13:
    v14 = *(&self->super.super.isa + v8);
    *(&self->super.super.isa + v8) = v7;

    secondaryDate = v15;
    goto LABEL_14;
  }

  v9 = [(ICDateFilterTypeSelection *)self primaryDate];
  v10 = [(ICDateFilterTypeSelection *)self secondaryDate];
  v11 = [v9 ic_isLaterThanDate:v10];

  if (!v11)
  {
    return;
  }

  v12 = [(ICDateFilterTypeSelection *)self primaryDate];
  secondaryDate = self->_secondaryDate;
  self->_secondaryDate = v12;
LABEL_14:
}

@end