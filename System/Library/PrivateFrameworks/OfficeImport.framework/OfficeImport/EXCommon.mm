@interface EXCommon
+ (void)initialize;
@end

@implementation EXCommon

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[CXNamespace alloc] initWithUri:"urn:schemas-microsoft-com:office:excel"];
    v3 = EXVmlNamespace;
    EXVmlNamespace = v2;

    v4 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/excel/2006/main"];
    v5 = EXMainNamespace;
    EXMainNamespace = v4;

    v6 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/spreadsheetml/2009/9/main"];
    v7 = EXXL2010Namespace;
    EXXL2010Namespace = v6;
  }
}

@end