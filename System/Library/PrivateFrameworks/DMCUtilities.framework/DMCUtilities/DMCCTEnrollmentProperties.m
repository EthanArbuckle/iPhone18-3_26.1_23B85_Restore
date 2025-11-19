@interface DMCCTEnrollmentProperties
- (DMCCTEnrollmentProperties)init;
@end

@implementation DMCCTEnrollmentProperties

- (DMCCTEnrollmentProperties)init
{
  v7.receiver = self;
  v7.super_class = DMCCTEnrollmentProperties;
  v2 = [(DMCCTEnrollmentProperties *)&v7 init];
  v3 = v2;
  if (v2)
  {
    imei = v2->_imei;
    v2->_imei = 0;

    meid = v3->_meid;
    v3->_meid = 0;
  }

  return v3;
}

@end