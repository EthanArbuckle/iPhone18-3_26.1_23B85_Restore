@interface DTNanoTimestampFormatter
+ (id)stringForNanoseconds:(unint64_t)nanoseconds;
- (id)stringForObjectValue:(id)value;
@end

@implementation DTNanoTimestampFormatter

+ (id)stringForNanoseconds:(unint64_t)nanoseconds
{
  v9 = *MEMORY[0x277D85DE8];
  if (nanoseconds == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"--:--.--";
  }

  else
  {
    if (nanoseconds < 0x34630B8A000)
    {
      snprintf(__str, 0xEuLL, "%02llu:%02llu.%03llu.%03llu");
    }

    else
    {
      snprintf(__str, 0x40uLL, "%llu:%02llu:%02llu.%03llu.%03llu");
    }

    v3 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v4, __str, 4, v5);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_unsignedLongLongValue(valueCopy, v5, v6, v7, v8);

    v13 = objc_msgSend_stringForNanoseconds_(DTNanoTimestampFormatter, v10, v9, v11, v12);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DTNanoTimestampFormatter;
    v13 = [(DTNanoTimestampFormatter *)&v15 stringForObjectValue:valueCopy];
  }

  return v13;
}

@end