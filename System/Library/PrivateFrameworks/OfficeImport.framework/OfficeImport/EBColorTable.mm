@interface EBColorTable
+ (void)readWithState:(id)state;
@end

@implementation EBColorTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  XlColorTable::XlColorTable(&v4);
  XlColorTable::init(&v4);
}

@end