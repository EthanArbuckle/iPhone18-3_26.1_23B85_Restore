@interface HKClinicalSharingStatus
+ (id)unknownStatus;
+ (int64_t)clinicalSharingFeatureStatusWithAccountState:(int64_t)state gatewayFeatureStatus:(int64_t)status;
- (BOOL)isEqual:(id)equal;
- (HKClinicalSharingStatus)init;
- (HKClinicalSharingStatus)initWithCoder:(id)coder;
- (HKClinicalSharingStatus)initWithFirstSharedDate:(id)date lastSharedDate:(id)sharedDate featureStatus:(int64_t)status userStatus:(int64_t)userStatus multiDeviceStatus:(int64_t)deviceStatus primaryDeviceName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalSharingStatus

- (HKClinicalSharingStatus)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalSharingStatus)initWithFirstSharedDate:(id)date lastSharedDate:(id)sharedDate featureStatus:(int64_t)status userStatus:(int64_t)userStatus multiDeviceStatus:(int64_t)deviceStatus primaryDeviceName:(id)name
{
  dateCopy = date;
  sharedDateCopy = sharedDate;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = HKClinicalSharingStatus;
  v17 = [(HKClinicalSharingStatus *)&v25 init];
  if (v17)
  {
    v18 = [dateCopy copy];
    firstSharedDate = v17->_firstSharedDate;
    v17->_firstSharedDate = v18;

    v20 = [sharedDateCopy copy];
    lastSharedDate = v17->_lastSharedDate;
    v17->_lastSharedDate = v20;

    v17->_featureStatus = status;
    v17->_userStatus = userStatus;
    v17->_multiDeviceStatus = deviceStatus;
    v22 = [nameCopy copy];
    primaryDeviceName = v17->_primaryDeviceName;
    v17->_primaryDeviceName = v22;
  }

  return v17;
}

+ (id)unknownStatus
{
  v2 = [[self alloc] initWithFirstSharedDate:0 lastSharedDate:0 featureStatus:0 userStatus:0 multiDeviceStatus:0 primaryDeviceName:0];

  return v2;
}

+ (int64_t)clinicalSharingFeatureStatusWithAccountState:(int64_t)state gatewayFeatureStatus:(int64_t)status
{
  result = 4;
  if (state <= 2)
  {
    if (!state)
    {
      return 2;
    }

    if (state != 1)
    {
      if (state != 2)
      {
        return result;
      }

      return 3;
    }

    goto LABEL_10;
  }

  switch(state)
  {
    case 3:
      if (status >= 5)
      {
        return 5;
      }

      else
      {
        return qword_251A4F398[status];
      }

    case 6:
LABEL_10:
      if (status >= 5)
      {
        return 1;
      }

      else
      {
        return status;
      }

    case 4:
      return 3;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_firstSharedDate hash];
  v4 = [(NSDate *)self->_lastSharedDate hash]^ v3;
  primaryDeviceName = self->_primaryDeviceName;
  v6 = v4 ^ self->_featureStatus ^ self->_userStatus ^ self->_multiDeviceStatus;
  return v6 ^ [(NSString *)primaryDeviceName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_32:

      goto LABEL_33;
    }

    firstSharedDate = self->_firstSharedDate;
    firstSharedDate = [(HKClinicalSharingStatus *)v8 firstSharedDate];
    if (firstSharedDate != firstSharedDate)
    {
      firstSharedDate2 = [(HKClinicalSharingStatus *)v8 firstSharedDate];
      if (!firstSharedDate2)
      {
        v13 = 0;
        goto LABEL_31;
      }

      v3 = firstSharedDate2;
      v12 = self->_firstSharedDate;
      firstSharedDate3 = [(HKClinicalSharingStatus *)v8 firstSharedDate];
      if (![(NSDate *)v12 isEqual:firstSharedDate3])
      {
        v13 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v34 = firstSharedDate3;
    }

    lastSharedDate = self->_lastSharedDate;
    lastSharedDate = [(HKClinicalSharingStatus *)v8 lastSharedDate];
    if (lastSharedDate != lastSharedDate)
    {
      lastSharedDate2 = [(HKClinicalSharingStatus *)v8 lastSharedDate];
      if (!lastSharedDate2)
      {
        v13 = 0;
        goto LABEL_29;
      }

      firstSharedDate3 = lastSharedDate2;
      v17 = self->_lastSharedDate;
      lastSharedDate3 = [(HKClinicalSharingStatus *)v8 lastSharedDate];
      v19 = v17;
      v20 = lastSharedDate3;
      if (([(NSDate *)v19 isEqual:lastSharedDate3]& 1) == 0)
      {

        v13 = 0;
        goto LABEL_35;
      }

      v33 = v20;
    }

    featureStatus = self->_featureStatus;
    if (featureStatus == [(HKClinicalSharingStatus *)v8 featureStatus])
    {
      userStatus = self->_userStatus;
      if (userStatus == [(HKClinicalSharingStatus *)v8 userStatus])
      {
        multiDeviceStatus = self->_multiDeviceStatus;
        if (multiDeviceStatus == [(HKClinicalSharingStatus *)v8 multiDeviceStatus])
        {
          primaryDeviceName = self->_primaryDeviceName;
          primaryDeviceName = [(HKClinicalSharingStatus *)v8 primaryDeviceName];
          v26 = primaryDeviceName == primaryDeviceName;
          v27 = primaryDeviceName;
          if (v26)
          {

            v13 = 1;
LABEL_27:
            if (lastSharedDate == lastSharedDate)
            {
LABEL_34:

LABEL_35:
              firstSharedDate3 = v34;
              if (firstSharedDate == firstSharedDate)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

LABEL_29:
            firstSharedDate3 = v34;

            if (firstSharedDate != firstSharedDate)
            {
              goto LABEL_30;
            }

LABEL_31:

            goto LABEL_32;
          }

          primaryDeviceName2 = [(HKClinicalSharingStatus *)v8 primaryDeviceName];
          if (primaryDeviceName2)
          {
            v29 = self->_primaryDeviceName;
            v32 = primaryDeviceName2;
            primaryDeviceName3 = [(HKClinicalSharingStatus *)v8 primaryDeviceName];
            v13 = [(NSString *)v29 isEqualToString:primaryDeviceName3];

            if (lastSharedDate != lastSharedDate)
            {
            }

            goto LABEL_34;
          }
        }
      }
    }

    v13 = 0;
    goto LABEL_27;
  }

  v13 = 1;
LABEL_33:

  return v13;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = HKClinicalSharingFeatureStatusToString(self->_featureStatus);
  v6 = HKClinicalSharingUserStatusToString(self->_userStatus);
  v7 = HKClinicalSharingMultiDeviceStatusToString(self->_multiDeviceStatus);
  primaryDeviceName = self->_primaryDeviceName;
  hk_rfc3339String = [(NSDate *)self->_firstSharedDate hk_rfc3339String];
  v10 = hk_rfc3339String;
  if (hk_rfc3339String)
  {
    v11 = hk_rfc3339String;
  }

  else
  {
    v11 = @"never";
  }

  hk_rfc3339String2 = [(NSDate *)self->_lastSharedDate hk_rfc3339String];
  v13 = hk_rfc3339String2;
  if (hk_rfc3339String2)
  {
    v14 = hk_rfc3339String2;
  }

  else
  {
    v14 = @"never";
  }

  v15 = [v17 stringWithFormat:@"<%@ %p\n\tFeature status: %@\n\tUser status:    %@\n\tDevice status:  %@\n\tPrimary device: %@\n\tFirst Share:    %@\n\tLast Share:     %@>", v4, self, v5, v6, v7, primaryDeviceName, v11, v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  firstSharedDate = self->_firstSharedDate;
  coderCopy = coder;
  [coderCopy encodeObject:firstSharedDate forKey:@"firstSharedDate"];
  [coderCopy encodeObject:self->_lastSharedDate forKey:@"lastSharedDate"];
  [coderCopy encodeInteger:self->_featureStatus forKey:@"featureStatus"];
  [coderCopy encodeInteger:self->_userStatus forKey:@"userStatus"];
  [coderCopy encodeInteger:self->_multiDeviceStatus forKey:@"multiDeviceStatus"];
  [coderCopy encodeObject:self->_primaryDeviceName forKey:@"primaryDeviceName"];
}

- (HKClinicalSharingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"featureStatus"] && objc_msgSend(coderCopy, "containsValueForKey:", @"userStatus") && (objc_msgSend(coderCopy, "containsValueForKey:", @"multiDeviceStatus") & 1) != 0)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstSharedDate"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSharedDate"];
    v7 = [coderCopy decodeIntegerForKey:@"featureStatus"];
    v8 = [coderCopy decodeIntegerForKey:@"userStatus"];
    v9 = [coderCopy decodeIntegerForKey:@"multiDeviceStatus"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryDeviceName"];
    self = [(HKClinicalSharingStatus *)self initWithFirstSharedDate:v5 lastSharedDate:v6 featureStatus:v7 userStatus:v8 multiDeviceStatus:v9 primaryDeviceName:v10];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end