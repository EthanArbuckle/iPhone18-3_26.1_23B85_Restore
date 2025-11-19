@interface EXUnsupportedSheet
+ (id)edSheetWithState:(id)a3;
@end

@implementation EXUnsupportedSheet

+ (id)edSheetWithState:(id)a3
{
  v3 = a3;
  v4 = [EDUnsupportedSheet alloc];
  v5 = [v3 workbook];
  v6 = [(EDSheet *)v4 initWithWorkbook:v5];

  return v6;
}

@end