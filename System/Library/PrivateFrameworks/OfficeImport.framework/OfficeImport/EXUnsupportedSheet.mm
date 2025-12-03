@interface EXUnsupportedSheet
+ (id)edSheetWithState:(id)state;
@end

@implementation EXUnsupportedSheet

+ (id)edSheetWithState:(id)state
{
  stateCopy = state;
  v4 = [EDUnsupportedSheet alloc];
  workbook = [stateCopy workbook];
  v6 = [(EDSheet *)v4 initWithWorkbook:workbook];

  return v6;
}

@end