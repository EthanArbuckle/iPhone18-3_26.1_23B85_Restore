@interface IPNumberFormat
+ (id)availableFormats;
+ (id)currentFormat;
+ (void)setFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (IPNumberFormat)initWithDecimalSeparator:(id)separator groupingSeparator:(id)groupingSeparator;
- (IPNumberFormat)initWithLocale:(id)locale;
- (unint64_t)hash;
@end

@implementation IPNumberFormat

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  decimalSeparator = [(IPNumberFormat *)self decimalSeparator];
  decimalSeparator2 = [equalCopy decimalSeparator];
  if ([decimalSeparator isEqualToString:decimalSeparator2])
  {
    groupingSeparator = [(IPNumberFormat *)self groupingSeparator];
    groupingSeparator2 = [equalCopy groupingSeparator];
    v9 = [groupingSeparator isEqualToString:groupingSeparator2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  formattedNumber = [(IPNumberFormat *)self formattedNumber];
  v3 = [formattedNumber hash];

  return v3;
}

- (IPNumberFormat)initWithDecimalSeparator:(id)separator groupingSeparator:(id)groupingSeparator
{
  separatorCopy = separator;
  groupingSeparatorCopy = groupingSeparator;
  v16.receiver = self;
  v16.super_class = IPNumberFormat;
  v9 = [(IPNumberFormat *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decimalSeparator, separator);
    objc_storeStrong(&v10->_groupingSeparator, groupingSeparator);
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
    [v11 setLocale:preferredLocale];

    [v11 setDecimalSeparator:separatorCopy];
    [v11 setGroupingSeparator:groupingSeparatorCopy];
    [v11 setNumberStyle:1];
    v13 = [v11 stringFromNumber:&unk_2841A26B0];
    formattedNumber = v10->_formattedNumber;
    v10->_formattedNumber = v13;
  }

  return v10;
}

- (IPNumberFormat)initWithLocale:(id)locale
{
  localeCopy = locale;
  decimalSeparator = [localeCopy decimalSeparator];
  groupingSeparator = [localeCopy groupingSeparator];

  v7 = [(IPNumberFormat *)self initWithDecimalSeparator:decimalSeparator groupingSeparator:groupingSeparator];
  return v7;
}

+ (id)availableFormats
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v3 = [IPNumberFormat alloc];
  v4 = +[IPFormat localeFromDeviceLocale];
  v5 = [(IPNumberFormat *)v3 initWithLocale:v4];
  [orderedSet addObject:v5];

  v6 = [IPNumberFormat alloc];
  v7 = +[IPFormat localeFromDeviceLanguage];
  v8 = [(IPNumberFormat *)v6 initWithLocale:v7];
  [orderedSet addObject:v8];

  v9 = [[IPNumberFormat alloc] initWithDecimalSeparator:@"." groupingSeparator:@", "];
  [orderedSet addObject:v9];

  v10 = [[IPNumberFormat alloc] initWithDecimalSeparator:@" groupingSeparator:", @"."];
  [orderedSet addObject:v10];

  v11 = [[IPNumberFormat alloc] initWithDecimalSeparator:@"." groupingSeparator:@" "];
  [orderedSet addObject:v11];

  v12 = [[IPNumberFormat alloc] initWithDecimalSeparator:@" groupingSeparator:", @" "];
  [orderedSet addObject:v12];

  array = [orderedSet array];

  return array;
}

+ (id)currentFormat
{
  v2 = [IPNumberFormat alloc];
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  v4 = [(IPNumberFormat *)v2 initWithLocale:preferredLocale];

  return v4;
}

+ (void)setFormat:(id)format
{
  v19[4] = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v4 = [IPNumberFormat alloc];
  v5 = +[IPFormat localeFromDeviceLocale];
  v6 = [(IPNumberFormat *)v4 initWithLocale:v5];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([formatCopy isEqual:v6])
  {
    [standardUserDefaults removeObjectForKey:@"AppleICUNumberSymbols" inDomain:*MEMORY[0x277CCA208]];
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 0];
    v18[0] = v17;
    decimalSeparator = [formatCopy decimalSeparator];
    v19[0] = decimalSeparator;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
    v18[1] = v8;
    groupingSeparator = [formatCopy groupingSeparator];
    v19[1] = groupingSeparator;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10];
    v18[2] = v10;
    decimalSeparator2 = [formatCopy decimalSeparator];
    v19[2] = decimalSeparator2;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 17];
    v18[3] = v12;
    groupingSeparator2 = [formatCopy groupingSeparator];
    v19[3] = groupingSeparator2;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    [standardUserDefaults setObject:v14 forKey:@"AppleICUNumberSymbols" inDomain:*MEMORY[0x277CCA208]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end