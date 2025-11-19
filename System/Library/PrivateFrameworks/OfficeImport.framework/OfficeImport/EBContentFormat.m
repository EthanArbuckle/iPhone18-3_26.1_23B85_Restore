@interface EBContentFormat
+ (id)edContentFormatFromXlDXfUserFmt:(XlDXfUserFmt *)a3 edResources:(id)a4;
+ (id)edContentFormatFromXlFormat:(XlFormat *)a3 edResources:(id)a4;
@end

@implementation EBContentFormat

+ (id)edContentFormatFromXlFormat:(XlFormat *)a3 edResources:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [EBString edStringFromXlString:a3->var2 edResources:v5];
    v7 = [v6 string];
    if (![v7 caseInsensitiveCompare:@"General"] && (objc_msgSend(v7, "isEqualToString:", @"General") & 1) == 0)
    {
      [v6 setString:@"General"];
    }

    a3 = [EDContentFormat contentFormatWithFormatString:v6 formatId:a3->var3];
  }

  return a3;
}

+ (id)edContentFormatFromXlDXfUserFmt:(XlDXfUserFmt *)a3 edResources:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [EBString edStringFromXlString:a3->var3 edResources:v5];
    a3 = [EDContentFormat contentFormatWithFormatString:v6 formatId:a3->var2];
  }

  return a3;
}

@end