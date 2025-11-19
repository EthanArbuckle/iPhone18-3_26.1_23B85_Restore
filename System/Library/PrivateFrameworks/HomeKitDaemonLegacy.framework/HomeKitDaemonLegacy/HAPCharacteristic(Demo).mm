@interface HAPCharacteristic(Demo)
- (void)responseDelay;
@end

@implementation HAPCharacteristic(Demo)

- (void)responseDelay
{
  v1 = objc_getAssociatedObject(a1, "responseDelay");
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

  return v2;
}

@end