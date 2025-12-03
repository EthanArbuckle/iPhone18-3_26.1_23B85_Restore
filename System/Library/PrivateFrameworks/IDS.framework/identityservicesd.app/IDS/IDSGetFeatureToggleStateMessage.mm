@interface IDSGetFeatureToggleStateMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSGetFeatureToggleStateMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IDSGetFeatureToggleStateMessage;
  v4 = [(IDSGetFeatureToggleStateMessage *)&v7 copyWithZone:zone];
  featureID = [(IDSGetFeatureToggleStateMessage *)self featureID];
  [v4 setFeatureID:featureID];

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
  messageBody = [(IDSGetFeatureToggleStateMessage *)&v7 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  featureID = [(IDSGetFeatureToggleStateMessage *)self featureID];
  if (featureID)
  {
    CFDictionarySetValue(Mutable, @"user-flag", featureID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C0D0();
  }

  return Mutable;
}

@end