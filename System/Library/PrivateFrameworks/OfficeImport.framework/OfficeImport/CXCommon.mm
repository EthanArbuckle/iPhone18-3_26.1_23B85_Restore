@interface CXCommon
+ (void)initialize;
@end

@implementation CXCommon

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(CXUnqualifiedNamespace);
    v3 = CXNoNamespace;
    CXNoNamespace = v2;

    pDefaultExternalEntityLoader = xmlGetExternalEntityLoader();
  }
}

@end