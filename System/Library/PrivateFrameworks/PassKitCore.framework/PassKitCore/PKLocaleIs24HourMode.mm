@interface PKLocaleIs24HourMode
@end

@implementation PKLocaleIs24HourMode

const __CFString *__PKLocaleIs24HourMode_block_invoke_2(uint64_t a1)
{
  if (PKLocaleIs24HourMode_todayFormatter)
  {
    v2 = [*(a1 + 32) isEqual:CFDateFormatterGetLocale(PKLocaleIs24HourMode_todayFormatter)];
    v3 = PKLocaleIs24HourMode_todayFormatter;
    if (v2)
    {
      goto LABEL_6;
    }

    if (PKLocaleIs24HourMode_todayFormatter)
    {
      CFRelease(PKLocaleIs24HourMode_todayFormatter);
    }
  }

  v3 = CFDateFormatterCreate(0, *(a1 + 32), kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  PKLocaleIs24HourMode_todayFormatter = v3;
LABEL_6:
  result = CFDateFormatterGetFormat(v3);
  if (result)
  {
    v5 = result;
    result = CFStringFind(result, @"H", 0).location;
    if (result == -1)
    {
      result = CFStringFind(v5, @"k", 0).location;
      v6 = result != -1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  return result;
}

@end