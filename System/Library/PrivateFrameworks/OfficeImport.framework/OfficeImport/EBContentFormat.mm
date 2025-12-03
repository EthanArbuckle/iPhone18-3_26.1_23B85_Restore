@interface EBContentFormat
+ (id)edContentFormatFromXlDXfUserFmt:(XlDXfUserFmt *)fmt edResources:(id)resources;
+ (id)edContentFormatFromXlFormat:(XlFormat *)format edResources:(id)resources;
@end

@implementation EBContentFormat

+ (id)edContentFormatFromXlFormat:(XlFormat *)format edResources:(id)resources
{
  resourcesCopy = resources;
  if (format)
  {
    v6 = [EBString edStringFromXlString:format->var2 edResources:resourcesCopy];
    string = [v6 string];
    if (![string caseInsensitiveCompare:@"General"] && (objc_msgSend(string, "isEqualToString:", @"General") & 1) == 0)
    {
      [v6 setString:@"General"];
    }

    format = [EDContentFormat contentFormatWithFormatString:v6 formatId:format->var3];
  }

  return format;
}

+ (id)edContentFormatFromXlDXfUserFmt:(XlDXfUserFmt *)fmt edResources:(id)resources
{
  resourcesCopy = resources;
  if (fmt)
  {
    v6 = [EBString edStringFromXlString:fmt->var3 edResources:resourcesCopy];
    fmt = [EDContentFormat contentFormatWithFormatString:v6 formatId:fmt->var2];
  }

  return fmt;
}

@end