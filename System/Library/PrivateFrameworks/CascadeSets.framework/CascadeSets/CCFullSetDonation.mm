@interface CCFullSetDonation
- (int64_t)errorCode;
@end

@implementation CCFullSetDonation

- (int64_t)errorCode
{
  v3.receiver = self;
  v3.super_class = CCFullSetDonation;
  return [(CCSetDonation *)&v3 errorCode];
}

@end