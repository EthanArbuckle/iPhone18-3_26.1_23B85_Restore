@interface HUStringDisplayFormatter
+ (id)_stringByApplyingHomeKit8DigitFormatToString:(id)string;
+ (id)_stringByApplyingMatter11DigitFormatToString:(id)string;
+ (id)_stringByApplyingMatter21DigitFormatToString:(id)string;
+ (id)stringByApplyingCodeFormatToString:(id)string;
@end

@implementation HUStringDisplayFormatter

+ (id)stringByApplyingCodeFormatToString:(id)string
{
  hf_extractDecimalDigits = [string hf_extractDecimalDigits];
  if ([hf_extractDecimalDigits length] > 8)
  {
    if ([hf_extractDecimalDigits length] > 0xB)
    {
      [HUStringDisplayFormatter _stringByApplyingMatter21DigitFormatToString:hf_extractDecimalDigits];
    }

    else
    {
      [HUStringDisplayFormatter _stringByApplyingMatter11DigitFormatToString:hf_extractDecimalDigits];
    }
    v4 = ;
  }

  else
  {
    v4 = [HUStringDisplayFormatter _stringByApplyingHomeKit8DigitFormatToString:hf_extractDecimalDigits];
  }

  v5 = v4;

  return v5;
}

+ (id)_stringByApplyingHomeKit8DigitFormatToString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] > 4)
  {
    v4 = [stringCopy mutableCopy];
    [v4 insertString:@"-" atIndex:4];
  }

  else
  {
    v4 = stringCopy;
  }

  return v4;
}

+ (id)_stringByApplyingMatter11DigitFormatToString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] > 4)
  {
    v4 = [stringCopy mutableCopy];
    [v4 insertString:@"-" atIndex:4];
    if ([v4 length] >= 9)
    {
      [v4 insertString:@"-" atIndex:8];
    }
  }

  else
  {
    v4 = stringCopy;
  }

  return v4;
}

+ (id)_stringByApplyingMatter21DigitFormatToString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] > 4)
  {
    v4 = [stringCopy mutableCopy];
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
    v4 = stringCopy;
  }

  return v4;
}

@end