@interface DDTimeZoneConversionAction
+ (BOOL)actionAvailableForResult:(__DDResult *)result;
+ (id)timeZoneFromResult:(__DDResult *)result date:(id *)date;
- (DDTimeZoneConversionAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)_titleWithValue;
- (id)localizedName;
@end

@implementation DDTimeZoneConversionAction

+ (id)timeZoneFromResult:(__DDResult *)result date:(id *)date
{
  if (DDResultCopyExtractedDateFromReferenceDate())
  {
    if (date)
    {
      *date = 0;
    }

    v5 = 0;
  }

  else if (DDResultCopyExtractedStartDateEndDate())
  {
    if (date)
    {
      *date = 0;
    }

    v6 = 0;

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)actionAvailableForResult:(__DDResult *)result
{
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v6 = [self timeZoneFromResult:result date:0];
  v7 = v6;
  if (localTimeZone)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [localTimeZone isEqualToTimeZone:v6] ^ 1;
  }

  return v9;
}

- (DDTimeZoneConversionAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v13.receiver = self;
  v13.super_class = DDTimeZoneConversionAction;
  v6 = [(DDConversionAction *)&v13 initWithURL:l result:result context:context];
  if (v6)
  {
    v12 = 0;
    v7 = [DDTimeZoneConversionAction timeZoneFromResult:result date:&v12];
    v8 = v12;
    tz = v6->_tz;
    v6->_tz = v7;

    date = v6->_date;
    v6->_date = v8;
  }

  return v6;
}

- (id)_titleWithValue
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:2];
  [v3 setTimeStyle:1];
  v4 = [v3 stringFromDate:self->_date];

  return v4;
}

- (id)localizedName
{
  if ([(DDAction *)self calloutFlavor])
  {
    _titleWithValue = [(DDTimeZoneConversionAction *)self _titleWithValue];
  }

  else
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    v6 = [localTimeZone localizedName:4 locale:0];

    _titleWithValue = v6;
  }

  return _titleWithValue;
}

@end