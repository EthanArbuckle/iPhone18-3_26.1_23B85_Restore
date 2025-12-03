@interface HMDCoreDataTransformerCKDeviceToDeviceShareInvitationToken
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation HMDCoreDataTransformerCKDeviceToDeviceShareInvitationToken

- (id)reverseTransformedValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    v4 = [objc_opt_class() keyedArchiveToken:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [objc_opt_class() shareTokenFromKeyedArchiveData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end