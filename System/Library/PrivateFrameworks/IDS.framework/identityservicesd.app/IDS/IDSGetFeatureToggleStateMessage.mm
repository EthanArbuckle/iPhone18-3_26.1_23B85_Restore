@interface IDSGetFeatureToggleStateMessage
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSGetFeatureToggleStateMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = IDSGetFeatureToggleStateMessage;
  v4 = [(IDSGetFeatureToggleStateMessage *)&v7 copyWithZone:a3];
  v5 = [(IDSGetFeatureToggleStateMessage *)self featureID];
  [v4 setFeatureID:v5];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"user-flag"];

  return v2;
}

- (id)messageBody
{
  v7.receiver = self;
  v7.super_class = IDSGetFeatureToggleStateMessage;
  v3 = [(IDSGetFeatureToggleStateMessage *)&v7 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGetFeatureToggleStateMessage *)self featureID];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"user-flag", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C0D0();
  }

  return Mutable;
}

@end