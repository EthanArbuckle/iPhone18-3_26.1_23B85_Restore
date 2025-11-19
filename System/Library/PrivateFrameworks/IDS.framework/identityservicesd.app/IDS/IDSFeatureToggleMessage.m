@interface IDSFeatureToggleMessage
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSFeatureToggleMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = IDSFeatureToggleMessage;
  v4 = [(IDSFeatureToggleMessage *)&v7 copyWithZone:a3];
  v5 = [(IDSFeatureToggleMessage *)self featureID];
  [v4 setFeatureID:v5];

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
  v3 = [(IDSFeatureToggleMessage *)&v9 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSFeatureToggleMessage *)self featureID];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"user-flag", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C0D0();
  }

  v6 = [(IDSFeatureToggleMessage *)self state];
  if (v6 == 1)
  {
    v7 = @"enabled";
  }

  else
  {
    if (v6 != 2)
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