@interface _CLKTimeFormatData
+ (id)_timeFormatDataAccessLock;
+ (id)_timeLocale;
+ (id)instanceForCurrentLocale;
+ (void)resetTimeFormatData;
- (_CLKTimeFormatData)init;
@end

@implementation _CLKTimeFormatData

+ (void)resetTimeFormatData
{
  _timeFormatDataAccessLock = [self _timeFormatDataAccessLock];
  [_timeFormatDataAccessLock lock];
  v2 = __currentTimeFormatData;
  __currentTimeFormatData = 0;

  [_timeFormatDataAccessLock unlock];
}

+ (id)instanceForCurrentLocale
{
  _timeFormatDataAccessLock = [self _timeFormatDataAccessLock];
  [_timeFormatDataAccessLock lock];
  v3 = __currentTimeFormatData;
  if (!__currentTimeFormatData)
  {
    v4 = objc_alloc_init(_CLKTimeFormatData);
    v5 = __currentTimeFormatData;
    __currentTimeFormatData = v4;

    v3 = __currentTimeFormatData;
  }

  v6 = v3;
  [_timeFormatDataAccessLock unlock];

  return v6;
}

+ (id)_timeFormatDataAccessLock
{
  if (_timeFormatDataAccessLock_onceToken[0] != -1)
  {
    +[_CLKTimeFormatData _timeFormatDataAccessLock];
  }

  v3 = _timeFormatDataAccessLock_accessLock;

  return v3;
}

+ (id)_timeLocale
{
  v2 = objc_alloc(MEMORY[0x277CBEAF8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v5 = [v2 initWithLocaleIdentifier:localeIdentifier];

  return v5;
}

- (_CLKTimeFormatData)init
{
  v27.receiver = self;
  v27.super_class = _CLKTimeFormatData;
  v2 = [(_CLKTimeFormatData *)&v27 init];
  if (v2)
  {
    _timeLocale = [objc_opt_class() _timeLocale];
    v4 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"HHmm" options:0 locale:_timeLocale];
    formatHourMin = v2->_formatHourMin;
    v2->_formatHourMin = v4;

    v6 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"HHmmssSS" options:0 locale:_timeLocale];
    formatHourMinSecSubsec = v2->_formatHourMinSecSubsec;
    v2->_formatHourMinSecSubsec = v6;

    v8 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"HHmmss" options:0 locale:_timeLocale];
    formatHourMinSec = v2->_formatHourMinSec;
    v2->_formatHourMinSec = v8;

    v10 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"mmssSS" options:0 locale:_timeLocale];
    formatMinSecSubsec = v2->_formatMinSecSubsec;
    v2->_formatMinSecSubsec = v10;

    v12 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"mmss" options:0 locale:_timeLocale];
    formatMinSec = v2->_formatMinSec;
    v2->_formatMinSec = v12;

    v14 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"m" options:0 locale:_timeLocale];
    formatMin = v2->_formatMin;
    v2->_formatMin = v14;

    localeIdentifier = [_timeLocale localeIdentifier];
    v17 = [localeIdentifier hasPrefix:@"ee_"];

    if (v17)
    {
      if ([(NSString *)v2->_formatMinSecSubsec hasPrefix:@"'aɖabaƒoƒo' "])
      {
        v18 = -[NSString substringFromIndex:](v2->_formatMinSecSubsec, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);
        v19 = v2->_formatMinSecSubsec;
        v2->_formatMinSecSubsec = v18;
      }

      if ([(NSString *)v2->_formatMinSec hasPrefix:@"'aɖabaƒoƒo' "])
      {
        v20 = -[NSString substringFromIndex:](v2->_formatMinSec, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);
        v21 = v2->_formatMinSec;
        v2->_formatMinSec = v20;
      }
    }

    v22 = objc_alloc_init(MEMORY[0x277CCABB8]);
    singleWidthNumberFormatter = v2->_singleWidthNumberFormatter;
    v2->_singleWidthNumberFormatter = v22;

    [(NSNumberFormatter *)v2->_singleWidthNumberFormatter setNumberStyle:0];
    [(NSNumberFormatter *)v2->_singleWidthNumberFormatter setPositiveFormat:@"0"];
    v24 = objc_alloc_init(MEMORY[0x277CCABB8]);
    doubleWidthNumberFormatter = v2->_doubleWidthNumberFormatter;
    v2->_doubleWidthNumberFormatter = v24;

    [(NSNumberFormatter *)v2->_doubleWidthNumberFormatter setNumberStyle:0];
    [(NSNumberFormatter *)v2->_doubleWidthNumberFormatter setPositiveFormat:@"00"];
  }

  return v2;
}

@end