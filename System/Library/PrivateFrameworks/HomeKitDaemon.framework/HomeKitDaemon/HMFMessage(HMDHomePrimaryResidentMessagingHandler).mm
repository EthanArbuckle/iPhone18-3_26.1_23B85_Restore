@interface HMFMessage(HMDHomePrimaryResidentMessagingHandler)
- (BOOL)isRequestType;
@end

@implementation HMFMessage(HMDHomePrimaryResidentMessagingHandler)

- (BOOL)isRequestType
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3)
  {
    v4 = [v3 type];

    return v4 == 0;
  }

  else
  {
    v6 = [v1 responseHandler];
    v5 = v6 != 0;
  }

  return v5;
}

@end