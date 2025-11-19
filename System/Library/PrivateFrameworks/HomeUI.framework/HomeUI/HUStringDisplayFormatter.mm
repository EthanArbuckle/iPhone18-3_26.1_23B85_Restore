@interface HUStringDisplayFormatter
+ (id)_stringByApplyingHomeKit8DigitFormatToString:(id)a3;
+ (id)_stringByApplyingMatter11DigitFormatToString:(id)a3;
+ (id)_stringByApplyingMatter21DigitFormatToString:(id)a3;
+ (id)stringByApplyingCodeFormatToString:(id)a3;
@end

@implementation HUStringDisplayFormatter

+ (id)stringByApplyingCodeFormatToString:(id)a3
{
  v3 = [a3 hf_extractDecimalDigits];
  if ([v3 length] > 8)
  {
    if ([v3 length] > 0xB)
    {
      [HUStringDisplayFormatter _stringByApplyingMatter21DigitFormatToString:v3];
    }

    else
    {
      [HUStringDisplayFormatter _stringByApplyingMatter11DigitFormatToString:v3];
    }
    v4 = ;
  }

  else
  {
    v4 = [HUStringDisplayFormatter _stringByApplyingHomeKit8DigitFormatToString:v3];
  }

  v5 = v4;

  return v5;
}

+ (id)_stringByApplyingHomeKit8DigitFormatToString:(id)a3
{
  v3 = a3;
  if ([v3 length] > 4)
  {
    v4 = [v3 mutableCopy];
    [v4 insertString:@"-" atIndex:4];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)_stringByApplyingMatter11DigitFormatToString:(id)a3
{
  v3 = a3;
  if ([v3 length] > 4)
  {
    v4 = [v3 mutableCopy];
    [v4 insertString:@"-" atIndex:4];
    if ([v4 length] >= 9)
    {
      [v4 insertString:@"-" atIndex:8];
    }
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)_stringByApplyingMatter21DigitFormatToString:(id)a3
{
  v3 = a3;
  if ([v3 length] > 4)
  {
    v4 = [v3 mutableCopy];
    [v4 insertString:@"-" atIndex:4];
    if ([v4 length] >= 9)
    {
      [v4 insertString:@"-" atIndex:8];
    }

    if ([v4 length] >= 0xE)
    {
      [v4 insertString:@" " atIndex:13];
    }

    if ([v4 length] >= 0x13)
    {
      [v4 insertString:@"-" atIndex:18];
    }

    if ([v4 length] >= 0x17)
    {
      [v4 insertString:@"-" atIndex:22];
    }

    if ([v4 length] >= 0x1A)
    {
      [v4 insertString:@"-" atIndex:25];
    }
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end