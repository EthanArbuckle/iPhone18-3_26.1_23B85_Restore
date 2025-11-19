@interface OAVCommon
+ (void)initialize;
@end

@implementation OAVCommon

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[CXNamespace alloc] initWithUri:"urn:schemas-microsoft-com:office:office"];
    v3 = OAVOfficeDrawingNamespace;
    OAVOfficeDrawingNamespace = v2;

    v4 = [[CXNamespace alloc] initWithUri:"urn:schemas-microsoft-com:vml"];
    v5 = OAVOfficeMainNamespace;
    OAVOfficeMainNamespace = v4;

    v6 = [[CXNamespace alloc] initWithUri:"http://macVmlSchemaUri"];
    v7 = OAVMacVmlNamespace;
    OAVMacVmlNamespace = v6;
  }
}

@end