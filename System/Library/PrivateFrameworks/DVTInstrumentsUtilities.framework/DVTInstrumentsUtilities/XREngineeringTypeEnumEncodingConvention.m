@interface XREngineeringTypeEnumEncodingConvention
- (XREngineeringTypeEnumEncodingConvention)init;
@end

@implementation XREngineeringTypeEnumEncodingConvention

- (XREngineeringTypeEnumEncodingConvention)init
{
  v6.receiver = self;
  v6.super_class = XREngineeringTypeEnumEncodingConvention;
  v2 = [(XREngineeringTypeEncodingConvention *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cases = v2->_cases;
    v2->_cases = v3;
  }

  return v2;
}

@end