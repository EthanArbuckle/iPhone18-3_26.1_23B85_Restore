@interface ICDateFilterTypeSelection
+ (NSDateFormatter)shortDateFormatter;
+ (id)keyPathsForValuesAffectingIsEmpty;
+ (id)relativeRangeStringComponentsForSelectionType:(unint64_t)type number:(id)number;
+ (id)relativeRangeSummaryForSelectionType:(unint64_t)type amount:(unint64_t)amount;
+ (id)relativeRangeSummaryForSelectionType:(unint64_t)type number:(id)number;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDateFilterSelection:(id)selection;
- (BOOL)isValid;
- (ICDateFilterTypeSelection)initWithSelectionType:(unint64_t)type;
- (NSDate)primaryDate;
- (NSDate)secondaryDate;
- (NSDictionary)relativeRangeTimeIntervalOptions;
- (NSNumber)relativeRangeAmount;
- (NSString)primaryDateSummary;
- (NSString)relativeRangeAmountAndTimeInterval;
- (NSString)relativeRangeLabel;
- (NSString)secondaryDateSummary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)rawFilterValue;
- (id)relativeRangeTimeIntervalString;
- (unint64_t)hash;
- (unint64_t)relativeRangeSelectionType;
- (void)setPrimaryDate:(id)date;
- (void)setRelativeRangeTimeInterval:(double)interval;
- (void)setSecondaryDate:(id)date;
- (void)setSelectionType:(unint64_t)type;
- (void)setSpecificDateRangeFrom:(id)from to:(id)to;
- (void)updateDatesForCurrentSelectionType;
@end

@implementation ICDateFilterTypeSelection

+ (id)relativeRangeSummaryForSelectionType:(unint64_t)type amount:(unint64_t)amount
{
  if (type > 2)
  {
    switch(type)
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
    switch(type)
    {
      case 0uLL:
        amount = __ICLocalizedFrameworkString_impl(@"Unknown", @"Unknown", 0, 1);
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
  amount = [v6 localizedStringWithFormat:v8, amount];

LABEL_15:

  return amount;
}

+ (id)relativeRangeSummaryForSelectionType:(unint64_t)type number:(id)number
{
  longValue = [number longValue];
  if (type > 2)
  {
    switch(type)
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
    switch(type)
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
  v4 = [v7 localizedStringWithFormat:v9, longValue];

LABEL_15:

  return v4;
}

+ (id)relativeRangeStringComponentsForSelectionType:(unint64_t)type number:(id)number
{
  numberCopy = number;
  v6 = [ICDateFilterTypeSelection relativeRangeSummaryForSelectionType:type number:numberCopy];
  v7 = MEMORY[0x277CCACA8];
  unsignedIntegerValue = [numberCopy unsignedIntegerValue];

  v9 = [v7 localizedStringWithFormat:@"%lu", unsignedIntegerValue];
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

- (ICDateFilterTypeSelection)initWithSelectionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ICDateFilterTypeSelection;
  result = [(ICDateFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_selectionType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ICDateFilterTypeSelection allocWithZone:](ICDateFilterTypeSelection initWithSelectionType:"initWithSelectionType:", [(ICDateFilterTypeSelection *)self selectionType]];
  primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
  [(ICDateFilterTypeSelection *)v5 setPrimaryDate:primaryDate];

  secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
  [(ICDateFilterTypeSelection *)v5 setSecondaryDate:secondaryDate];

  [(ICDateFilterTypeSelection *)v5 setRelativeRangeSelectionType:[(ICDateFilterTypeSelection *)self relativeRangeSelectionType]];
  relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v9 = [relativeRangeAmount copyWithZone:zone];
  [(ICDateFilterTypeSelection *)v5 setRelativeRangeAmount:v9];

  return v5;
}

- (NSDate)primaryDate
{
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 0;
  if (selectionType <= 0xA && ((1 << selectionType) & 0x740) != 0)
  {
    v4 = self->_primaryDate;
  }

  return v4;
}

- (void)setPrimaryDate:(id)date
{
  objc_storeStrong(&self->_primaryDate, date);

  [(ICDateFilterTypeSelection *)self updateDatesForCurrentSelectionType];
}

- (void)setRelativeRangeTimeInterval:(double)interval
{
  [(ICDateFilterTypeSelection *)self setSelectionType:7];
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * interval, 2) <= 0x444444444444444uLL)
  {
    v5 = (interval / 60.0);
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
    0x16D = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 / 0x16D];
    [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:0x16D];

    if (v10 > 0x16C)
    {
      return;
    }

    selfCopy6 = self;
    v13 = 5;
LABEL_28:

    [(ICDateFilterTypeSelection *)selfCopy6 setSelectionType:v13];
    return;
  }

  if (v9)
  {
    [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:4];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v14];

    if (v9 == 3)
    {
      selfCopy6 = self;
      v13 = 4;
    }

    else
    {
      if (v9 != 1)
      {
        return;
      }

      selfCopy6 = self;
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

    selfCopy6 = self;
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
      selfCopy6 = self;
      v13 = 1;
    }

    else
    {
      if (v7 != 1)
      {
        return;
      }

      selfCopy6 = self;
      v13 = 0;
    }

    goto LABEL_28;
  }

  [(ICDateFilterTypeSelection *)self setRelativeRangeSelectionType:1];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [(ICDateFilterTypeSelection *)self setRelativeRangeAmount:v17];
}

- (void)setSpecificDateRangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [fromCopy timeIntervalSinceDate:distantPast];
  v9 = v8;

  if (v9 == 0.0)
  {
    selfCopy4 = self;
    v11 = 9;
LABEL_3:
    [(ICDateFilterTypeSelection *)selfCopy4 setSelectionType:v11];
    selfCopy3 = self;
    v13 = toCopy;
LABEL_6:
    [(ICDateFilterTypeSelection *)selfCopy3 setPrimaryDate:v13];
    goto LABEL_7;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [toCopy timeIntervalSinceDate:distantFuture];
  v16 = v15;

  if (v16 == 0.0)
  {
    [(ICDateFilterTypeSelection *)self setSelectionType:10];
    selfCopy3 = self;
    v13 = fromCopy;
    goto LABEL_6;
  }

  if ([fromCopy ic_isSameDayAsDate:toCopy])
  {
    selfCopy4 = self;
    v11 = 8;
    goto LABEL_3;
  }

  [(ICDateFilterTypeSelection *)self setSelectionType:6];
  [(ICDateFilterTypeSelection *)self setPrimaryDate:fromCopy];
  [(ICDateFilterTypeSelection *)self setSecondaryDate:toCopy];
LABEL_7:
}

- (NSDate)secondaryDate
{
  [(ICDateFilterTypeSelection *)self selectionType];
  secondaryDate = self->_secondaryDate;

  return secondaryDate;
}

- (void)setSecondaryDate:(id)date
{
  dateCopy = date;
  objc_storeStrong(&self->_secondaryDate, date);
  if ([(ICDateFilterTypeSelection *)self selectionType]== 6)
  {
    primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
    v6 = [dateCopy ic_isEarlierThanDate:primaryDate];

    if (v6)
    {
      [(ICDateFilterTypeSelection *)self setPrimaryDate:dateCopy];
    }
  }
}

- (void)setSelectionType:(unint64_t)type
{
  self->_selectionType = type;
  if (type < 6)
  {
    [(ICDateFilterTypeSelection *)self setPrimaryDate:0];
LABEL_4:
    [(ICDateFilterTypeSelection *)self setSecondaryDate:0];
    goto LABEL_5;
  }

  if (type - 9 < 2)
  {
    goto LABEL_4;
  }

  if (type == 7 && ![(ICDateFilterTypeSelection *)self relativeRangeSelectionType])
  {
    self->_relativeRangeSelectionType = 1;
  }

LABEL_5:

  [(ICDateFilterTypeSelection *)self updateDatesForCurrentSelectionType];
}

- (NSNumber)relativeRangeAmount
{
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  if (selectionType > 3)
  {
    switch(selectionType)
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
    if (selectionType != 3)
    {
      v5 = 0;
    }

    if (selectionType != 2)
    {
      v4 = v5;
    }

    if (selectionType)
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
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 0;
  if (selectionType > 5)
  {
    if (selectionType <= 7)
    {
      if (selectionType != 6)
      {
        relativeRangeSelectionType = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
        relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
        v4 = +[ICDateFilterTypeSelection relativeRangeSummaryForSelectionType:amount:](ICDateFilterTypeSelection, "relativeRangeSummaryForSelectionType:amount:", relativeRangeSelectionType, [relativeRangeAmount intValue]);

        goto LABEL_22;
      }

      shortDateFormatter = [objc_opt_class() shortDateFormatter];
      primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
      v4 = [shortDateFormatter stringFromDate:primaryDate];
    }

    else
    {
      switch(selectionType)
      {
        case 8:
          shortDateFormatter2 = [objc_opt_class() shortDateFormatter];
          primaryDate2 = [(ICDateFilterTypeSelection *)self primaryDate];
          shortDateFormatter = [shortDateFormatter2 stringFromDate:primaryDate2];

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
          shortDateFormatter3 = [objc_opt_class() shortDateFormatter];
          primaryDate3 = [(ICDateFilterTypeSelection *)self primaryDate];
          shortDateFormatter = [shortDateFormatter3 stringFromDate:primaryDate3];

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
          shortDateFormatter4 = [objc_opt_class() shortDateFormatter];
          primaryDate4 = [(ICDateFilterTypeSelection *)self primaryDate];
          shortDateFormatter = [shortDateFormatter4 stringFromDate:primaryDate4];

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
      v4 = [v9 localizedStringWithFormat:v20, shortDateFormatter];
    }
  }

  else if (selectionType < 6)
  {
    v4 = ICLocalizedStringFromICDateFilterSelectionType([(ICDateFilterTypeSelection *)self selectionType]);
  }

LABEL_22:

  return v4;
}

- (NSString)secondaryDateSummary
{
  secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
  if (secondaryDate)
  {
    shortDateFormatter = [objc_opt_class() shortDateFormatter];
    secondaryDate2 = [(ICDateFilterTypeSelection *)self secondaryDate];
    v6 = [shortDateFormatter stringFromDate:secondaryDate2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICDateFilterTypeSelection *)self isEqualToDateFilterSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICDateFilterTypeSelection selectionType](self, "selectionType")}];
  v22 = [v3 hash];
  primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
  v5 = [primaryDate hash];
  LOBYTE(v6) = v5;
  if (!v5)
  {
    null = [MEMORY[0x277CBEB68] null];
    v6 = [null hash];
  }

  secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
  if (![secondaryDate hash])
  {
    null2 = [MEMORY[0x277CBEB68] null];
    [null2 hash];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICDateFilterTypeSelection relativeRangeSelectionType](self, "relativeRangeSelectionType")}];
  [v10 hash];
  relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  if (![relativeRangeAmount hash])
  {
    null3 = [MEMORY[0x277CBEB68] null];
    [null3 hash];
  }

  v20 = ICHashWithHashKeys(v22, v12, v13, v14, v15, v16, v17, v18, v6);

  return v20;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromICDateFilterSelectionType([(ICDateFilterTypeSelection *)self selectionType]);
  primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
  secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
  relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  relativeRangeSelectionType = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
  if (relativeRangeSelectionType - 1 > 4)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_278196078[relativeRangeSelectionType - 1];
  }

  v10 = [v3 stringWithFormat:@"%@\n%@ - %@\n%@ %@", v4, primaryDate, secondaryDate, relativeRangeAmount, v9];

  return v10;
}

- (NSString)relativeRangeLabel
{
  relativeDateSummary = [(ICDateFilterTypeSelection *)self relativeDateSummary];
  relativeRangeAmountString = [(ICDateFilterTypeSelection *)self relativeRangeAmountString];
  v5 = [relativeDateSummary componentsSeparatedByString:relativeRangeAmountString];

  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if ([autoupdatingCurrentLocale ic_localeIsArabic])
  {
    [v5 lastObject];
  }

  else
  {
    [v5 firstObject];
  }
  v7 = ;
  ic_trimmedString = [v7 ic_trimmedString];

  return ic_trimmedString;
}

- (id)relativeRangeTimeIntervalString
{
  relativeDateSummary = [(ICDateFilterTypeSelection *)self relativeDateSummary];
  relativeRangeAmountString = [(ICDateFilterTypeSelection *)self relativeRangeAmountString];
  v5 = [relativeDateSummary componentsSeparatedByString:relativeRangeAmountString];

  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  if ([autoupdatingCurrentLocale ic_localeIsArabic])
  {
    [v5 firstObject];
  }

  else
  {
    [v5 lastObject];
  }
  v7 = ;
  ic_trimmedString = [v7 ic_trimmedString];

  return ic_trimmedString;
}

- (NSString)relativeRangeAmountAndTimeInterval
{
  relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  intValue = [relativeRangeAmount intValue];

  relativeRangeSelectionType = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
  if (intValue == 1)
  {
    if (relativeRangeSelectionType > 2)
    {
      switch(relativeRangeSelectionType)
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

    if (relativeRangeSelectionType)
    {
      if (relativeRangeSelectionType == 1)
      {
        v6 = @"HOUR_SUMMARY_SINGLE";
        v7 = @"Hour";
      }

      else
      {
        if (relativeRangeSelectionType != 2)
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
    relativeRangeAmount = v10;
    goto LABEL_30;
  }

  if (relativeRangeSelectionType > 2)
  {
    switch(relativeRangeSelectionType)
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
    switch(relativeRangeSelectionType)
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
  relativeRangeAmount2 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  relativeRangeAmount = [v8 localizedStringWithFormat:v11, objc_msgSend(relativeRangeAmount2, "intValue")];

LABEL_30:

  return relativeRangeAmount;
}

- (NSDictionary)relativeRangeTimeIntervalOptions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 1; i != 6; ++i)
  {
    relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
    v6 = [ICDateFilterTypeSelection relativeRangeStringComponentsForSelectionType:i number:relativeRangeAmount];

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    if ([autoupdatingCurrentLocale ic_localeIsArabic])
    {
      [v6 firstObject];
    }

    else
    {
      [v6 lastObject];
    }
    v8 = ;
    ic_trimmedString = [v8 ic_trimmedString];

    v10 = [MEMORY[0x277CCABB0] numberWithInt:i];
    [v3 setObject:ic_trimmedString forKeyedSubscript:v10];
  }

  return v3;
}

- (id)rawFilterValue
{
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];

  return NSStringFromICDateFilterSelectionType(selectionType);
}

- (BOOL)isValid
{
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 1;
  if (selectionType > 8)
  {
    if ((selectionType - 9) < 2)
    {
      primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
      v4 = primaryDate != 0;
      goto LABEL_19;
    }
  }

  else
  {
    switch(selectionType)
    {
      case 6:
        primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
        if (primaryDate)
        {
          secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
          if (secondaryDate)
          {
            primaryDate2 = [(ICDateFilterTypeSelection *)self primaryDate];
            secondaryDate2 = [(ICDateFilterTypeSelection *)self secondaryDate];
            if (([primaryDate2 ic_isEarlierThanDate:secondaryDate2] & 1) == 0)
            {
              primaryDate3 = [(ICDateFilterTypeSelection *)self primaryDate];
              secondaryDate3 = [(ICDateFilterTypeSelection *)self secondaryDate];
              v4 = [primaryDate3 isEqualToDate:secondaryDate3];
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
        primaryDate = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
        if (primaryDate)
        {
          relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
          v4 = [relativeRangeAmount integerValue] > 0;

          goto LABEL_19;
        }

        goto LABEL_16;
      case 8:
        primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
        if (primaryDate)
        {
          secondaryDate4 = [(ICDateFilterTypeSelection *)self secondaryDate];
          v4 = secondaryDate4 != 0;

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
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  v4 = 0;
  if (selectionType > 8)
  {
    if ((selectionType - 9) >= 2)
    {
      return v4;
    }

    primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
LABEL_10:
    primaryDate2 = primaryDate;
    v4 = primaryDate == 0;
LABEL_11:

    return v4;
  }

  switch(selectionType)
  {
    case 6:
      goto LABEL_5;
    case 7:
      primaryDate = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
      goto LABEL_10;
    case 8:
LABEL_5:
      primaryDate2 = [(ICDateFilterTypeSelection *)self primaryDate];
      if (primaryDate2)
      {
        secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
        v4 = secondaryDate == 0;
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

- (BOOL)isEqualToDateFilterSelection:(id)selection
{
  selectionCopy = selection;
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  if (selectionType == [selectionCopy selectionType])
  {
    primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
    primaryDate2 = [selectionCopy primaryDate];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == primaryDate)
    {
      v9 = 0;
    }

    else
    {
      v9 = primaryDate;
    }

    secondaryDate = v9;
    if (v8 == primaryDate2)
    {
      v11 = 0;
    }

    else
    {
      v11 = primaryDate2;
    }

    v12 = v11;
    if (secondaryDate | v12)
    {
      secondaryDate2 = v12;
      if (secondaryDate)
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

      v15 = [secondaryDate isEqual:v12];

      if (!v15)
      {
        v22 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
    secondaryDate2 = [selectionCopy secondaryDate];
    if (v8 == secondaryDate)
    {
      v16 = 0;
    }

    else
    {
      v16 = secondaryDate;
    }

    relativeRangeAmount = v16;
    if (v8 == secondaryDate2)
    {
      v18 = 0;
    }

    else
    {
      v18 = secondaryDate2;
    }

    v19 = v18;
    if (!(relativeRangeAmount | v19))
    {
      goto LABEL_29;
    }

    relativeRangeAmount2 = v19;
    if (relativeRangeAmount)
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

    v23 = [relativeRangeAmount isEqual:v19];

    if (v23)
    {
LABEL_29:
      relativeRangeSelectionType = [(ICDateFilterTypeSelection *)self relativeRangeSelectionType];
      if (relativeRangeSelectionType == [selectionCopy relativeRangeSelectionType])
      {
        relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
        relativeRangeAmount2 = [selectionCopy relativeRangeAmount];
        if (v8 == relativeRangeAmount)
        {
          v25 = 0;
        }

        else
        {
          v25 = relativeRangeAmount;
        }

        v26 = v25;
        if (v8 == relativeRangeAmount2)
        {
          v27 = 0;
        }

        else
        {
          v27 = relativeRangeAmount2;
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
  selectionType = [(ICDateFilterTypeSelection *)self selectionType];
  if (selectionType > 8)
  {
    if (selectionType == 9)
    {
      primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
      ic_startOfDay = [(NSDate *)primaryDate ic_startOfDay];
    }

    else
    {
      if (selectionType != 10)
      {
        return;
      }

      primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
      ic_startOfDay = [(NSDate *)primaryDate ic_endOfDay];
    }

    v8 = 24;
    goto LABEL_13;
  }

  if (selectionType != 6)
  {
    if (selectionType != 8)
    {
      return;
    }

    primaryDate2 = [(ICDateFilterTypeSelection *)self primaryDate];
    ic_startOfDay2 = [primaryDate2 ic_startOfDay];
    primaryDate = self->_primaryDate;
    self->_primaryDate = ic_startOfDay2;

    primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
    ic_startOfDay = [(NSDate *)primaryDate ic_endOfDay];
    v8 = 32;
LABEL_13:
    v14 = *(&self->super.super.isa + v8);
    *(&self->super.super.isa + v8) = ic_startOfDay;

    secondaryDate = primaryDate;
    goto LABEL_14;
  }

  primaryDate3 = [(ICDateFilterTypeSelection *)self primaryDate];
  secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
  v11 = [primaryDate3 ic_isLaterThanDate:secondaryDate];

  if (!v11)
  {
    return;
  }

  primaryDate4 = [(ICDateFilterTypeSelection *)self primaryDate];
  secondaryDate = self->_secondaryDate;
  self->_secondaryDate = primaryDate4;
LABEL_14:
}

@end