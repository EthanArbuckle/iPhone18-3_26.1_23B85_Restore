@interface IDSFeatureToggleMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSFeatureToggleMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IDSFeatureToggleMessage;
  v4 = [(IDSFeatureToggleMessage *)&v7 copyWithZone:zone];
  featureID = [(IDSFeatureToggleMessage *)self featureID];
  [v4 setFeatureID:featureID];

  [v4 setState:{-[IDSFeatureToggleMessage state](self, "state")}];
  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"user-flag"];
  [v2 addObject:@"user-flag-status"];

  return v2;
}

- (id)messageBody
{
  v9.receiver = self;
  v9.super_class = IDSFeatureToggleMessage;
  messageBody = [(IDSFeatureToggleMessage *)&v9 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  featureID = [(IDSFeatureToggleMessage *)self featureID];
  if (featureID)
  {
    CFDictionarySetValue(Mutable, @"user-flag", featureID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C0D0();
  }

  state = [(IDSFeatureToggleMessage *)self state];
  if (state == 1)
  {
    v7 = @"enabled";
  }

  else
  {
    if (state != 2)
    {
      goto LABEL_12;
    }

    v7 = @"disabled";
  }

  CFDictionarySetValue(Mutable, @"user-flag-status", v7);
LABEL_12:

  return Mutable;
}

@end