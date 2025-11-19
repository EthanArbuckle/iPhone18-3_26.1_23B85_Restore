@interface IPNumberFormat
+ (id)availableFormats;
+ (id)currentFormat;
+ (void)setFormat:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IPNumberFormat)initWithDecimalSeparator:(id)a3 groupingSeparator:(id)a4;
- (IPNumberFormat)initWithLocale:(id)a3;
- (unint64_t)hash;
@end

@implementation IPNumberFormat

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(IPNumberFormat *)self decimalSeparator];
  v6 = [v4 decimalSeparator];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(IPNumberFormat *)self groupingSeparator];
    v8 = [v4 groupingSeparator];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(IPNumberFormat *)self formattedNumber];
  v3 = [v2 hash];

  return v3;
}

- (IPNumberFormat)initWithDecimalSeparator:(id)a3 groupingSeparator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = IPNumberFormat;
  v9 = [(IPNumberFormat *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decimalSeparator, a3);
    objc_storeStrong(&v10->_groupingSeparator, a4);
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = [MEMORY[0x277CBEAF8] preferredLocale];
    [v11 setLocale:v12];

    [v11 setDecimalSeparator:v7];
    [v11 setGroupingSeparator:v8];
    [v11 setNumberStyle:1];
    v13 = [v11 stringFromNumber:&unk_2841A26B0];
    formattedNumber = v10->_formattedNumber;
    v10->_formattedNumber = v13;
  }

  return v10;
}

- (IPNumberFormat)initWithLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 decimalSeparator];
  v6 = [v4 groupingSeparator];

  v7 = [(IPNumberFormat *)self initWithDecimalSeparator:v5 groupingSeparator:v6];
  return v7;
}

+ (id)availableFormats
{
  v2 = [MEMORY[0x277CBEB40] orderedSet];
  v3 = [IPNumberFormat alloc];
  v4 = +[IPFormat localeFromDeviceLocale];
  v5 = [(IPNumberFormat *)v3 initWithLocale:v4];
  [v2 addObject:v5];

  v6 = [IPNumberFormat alloc];
  v7 = +[IPFormat localeFromDeviceLanguage];
  v8 = [(IPNumberFormat *)v6 initWithLocale:v7];
  [v2 addObject:v8];

  v9 = [[IPNumberFormat alloc] initWithDecimalSeparator:@"." groupingSeparator:@", "];
  [v2 addObject:v9];

  v10 = [[IPNumberFormat alloc] initWithDecimalSeparator:@" groupingSeparator:", @"."];
  [v2 addObject:v10];

  v11 = [[IPNumberFormat alloc] initWithDecimalSeparator:@"." groupingSeparator:@" "];
  [v2 addObject:v11];

  v12 = [[IPNumberFormat alloc] initWithDecimalSeparator:@" groupingSeparator:", @" "];
  [v2 addObject:v12];

  v13 = [v2 array];

  return v13;
}

+ (id)currentFormat
{
  v2 = [IPNumberFormat alloc];
  v3 = [MEMORY[0x277CBEAF8] preferredLocale];
  v4 = [(IPNumberFormat *)v2 initWithLocale:v3];

  return v4;
}

+ (void)setFormat:(id)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [IPNumberFormat alloc];
  v5 = +[IPFormat localeFromDeviceLocale];
  v6 = [(IPNumberFormat *)v4 initWithLocale:v5];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v3 isEqual:v6])
  {
    [v7 removeObjectForKey:@"AppleICUNumberSymbols" inDomain:*MEMORY[0x277CCA208]];
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 0];
    v18[0] = v17;
    v16 = [v3 decimalSeparator];
    v19[0] = v16;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
    v18[1] = v8;
    v9 = [v3 groupingSeparator];
    v19[1] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 10];
    v18[2] = v10;
    v11 = [v3 decimalSeparator];
    v19[2] = v11;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 17];
    v18[3] = v12;
    v13 = [v3 groupingSeparator];
    v19[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    [v7 setObject:v14 forKey:@"AppleICUNumberSymbols" inDomain:*MEMORY[0x277CCA208]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end