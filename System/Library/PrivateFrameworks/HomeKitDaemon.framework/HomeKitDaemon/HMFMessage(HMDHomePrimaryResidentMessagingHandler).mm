@interface HMFMessage(HMDHomePrimaryResidentMessagingHandler)
- (BOOL)isRequestType;
@end

@implementation HMFMessage(HMDHomePrimaryResidentMessagingHandler)

- (BOOL)isRequestType
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = selfCopy;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3)
  {
    type = [v3 type];

    return type == 0;
  }

  else
  {
    responseHandler = [selfCopy responseHandler];
    v5 = responseHandler != 0;
  }

  return v5;
}

@end