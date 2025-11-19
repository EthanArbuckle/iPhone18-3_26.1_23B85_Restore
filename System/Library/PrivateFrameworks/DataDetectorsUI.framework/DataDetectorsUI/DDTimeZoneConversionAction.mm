@interface DDTimeZoneConversionAction
+ (BOOL)actionAvailableForResult:(__DDResult *)a3;
+ (id)timeZoneFromResult:(__DDResult *)a3 date:(id *)a4;
- (DDTimeZoneConversionAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)_titleWithValue;
- (id)localizedName;
@end

@implementation DDTimeZoneConversionAction

+ (id)timeZoneFromResult:(__DDResult *)a3 date:(id *)a4
{
  if (DDResultCopyExtractedDateFromReferenceDate())
  {
    if (a4)
    {
      *a4 = 0;
    }

    v5 = 0;
  }

  else if (DDResultCopyExtractedStartDateEndDate())
  {
    if (a4)
    {
      *a4 = 0;
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

+ (BOOL)actionAvailableForResult:(__DDResult *)a3
{
  v5 = [MEMORY[0x277CBEBB0] localTimeZone];
  v6 = [a1 timeZoneFromResult:a3 date:0];
  v7 = v6;
  if (v5)
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
    v9 = [v5 isEqualToTimeZone:v6] ^ 1;
  }

  return v9;
}

- (DDTimeZoneConversionAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v13.receiver = self;
  v13.super_class = DDTimeZoneConversionAction;
  v6 = [(DDConversionAction *)&v13 initWithURL:a3 result:a4 context:a5];
  if (v6)
  {
    v12 = 0;
    v7 = [DDTimeZoneConversionAction timeZoneFromResult:a4 date:&v12];
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
    v3 = [(DDTimeZoneConversionAction *)self _titleWithValue];
  }

  else
  {
    v5 = [MEMORY[0x277CBEBB0] localTimeZone];
    v6 = [v5 localizedName:4 locale:0];

    v3 = v6;
  }

  return v3;
}

@end