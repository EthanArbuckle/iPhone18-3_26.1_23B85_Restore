@interface HMDRemoteDestinationFormatter
+ (id)defaultFormatter;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (id)stringForObjectValue:(id)value;
@end

@implementation HMDRemoteDestinationFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  if (description)
  {
    v5 = @"String does not appear to be valid remote destination";
    if (!string)
    {
      v5 = @"Invalid parameter 'string'";
    }

    *description = v5;
  }

  return 0;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = v6;
    if (self)
    {
      v8 = +[HMDAccountRegistry sharedRegistry];
      v9 = [v8 deviceForDevice:v7];

      account = [v9 account];
      if ([account isCurrentAccount])
      {
        localHandles = [v9 localHandles];
        if (![localHandles hmf_isEmpty])
        {
          firstObject = [localHandles firstObject];
          destination = [firstObject destination];

          goto LABEL_23;
        }
      }

      destination = [v9 remoteDestinationString];
LABEL_23:

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v7 = v14;

  if (v7)
  {
    device = [v7 device];
LABEL_15:
    primaryHandle = device;
    v17 = [(HMDRemoteDestinationFormatter *)self stringForObjectValue:device];
LABEL_21:
    destination = v17;

    goto LABEL_35;
  }

  v18 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v7 = v19;

  if (v7)
  {
    primaryHandle = [v7 primaryHandle];
    v17 = __destinationForAccountHandle(self, primaryHandle);
    goto LABEL_21;
  }

  v21 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v7 = v22;

  if (v7)
  {
    destination = __destinationForAccountHandle(self, v7);
    goto LABEL_35;
  }

  v23 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v7 = v24;

  if (v7)
  {
    device = [v7 handle];
    goto LABEL_15;
  }

LABEL_34:
  destination = 0;
LABEL_35:

  return destination;
}

@end