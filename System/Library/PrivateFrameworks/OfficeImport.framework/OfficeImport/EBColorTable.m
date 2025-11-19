@interface EBColorTable
+ (void)readWithState:(id)a3;
@end

@implementation EBColorTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  XlColorTable::XlColorTable(&v4);
  XlColorTable::init(&v4);
}

@end