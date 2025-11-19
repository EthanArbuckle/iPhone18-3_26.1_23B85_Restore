@interface XREngineeringTypeBitpackedEncodingConvention
- (XREngineeringTypeBitpackedEncodingConvention)init;
@end

@implementation XREngineeringTypeBitpackedEncodingConvention

- (XREngineeringTypeBitpackedEncodingConvention)init
{
  v6.receiver = self;
  v6.super_class = XREngineeringTypeBitpackedEncodingConvention;
  v2 = [(XREngineeringTypeEncodingConvention *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entries = v2->_entries;
    v2->_entries = v3;
  }

  return v2;
}

@end