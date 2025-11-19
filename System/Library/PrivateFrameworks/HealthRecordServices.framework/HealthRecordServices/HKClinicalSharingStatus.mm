@interface HKClinicalSharingStatus
+ (id)unknownStatus;
+ (int64_t)clinicalSharingFeatureStatusWithAccountState:(int64_t)a3 gatewayFeatureStatus:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (HKClinicalSharingStatus)init;
- (HKClinicalSharingStatus)initWithCoder:(id)a3;
- (HKClinicalSharingStatus)initWithFirstSharedDate:(id)a3 lastSharedDate:(id)a4 featureStatus:(int64_t)a5 userStatus:(int64_t)a6 multiDeviceStatus:(int64_t)a7 primaryDeviceName:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalSharingStatus)initWithFirstSharedDate:(id)a3 lastSharedDate:(id)a4 featureStatus:(int64_t)a5 userStatus:(int64_t)a6 multiDeviceStatus:(int64_t)a7 primaryDeviceName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = HKClinicalSharingStatus;
  v17 = [(HKClinicalSharingStatus *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    firstSharedDate = v17->_firstSharedDate;
    v17->_firstSharedDate = v18;

    v20 = [v15 copy];
    lastSharedDate = v17->_lastSharedDate;
    v17->_lastSharedDate = v20;

    v17->_featureStatus = a5;
    v17->_userStatus = a6;
    v17->_multiDeviceStatus = a7;
    v22 = [v16 copy];
    primaryDeviceName = v17->_primaryDeviceName;
    v17->_primaryDeviceName = v22;
  }

  return v17;
}

+ (id)unknownStatus
{
  v2 = [[a1 alloc] initWithFirstSharedDate:0 lastSharedDate:0 featureStatus:0 userStatus:0 multiDeviceStatus:0 primaryDeviceName:0];

  return v2;
}

+ (int64_t)clinicalSharingFeatureStatusWithAccountState:(int64_t)a3 gatewayFeatureStatus:(int64_t)a4
{
  result = 4;
  if (a3 <= 2)
  {
    if (!a3)
    {
      return 2;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return result;
      }

      return 3;
    }

    goto LABEL_10;
  }

  switch(a3)
  {
    case 3:
      if (a4 >= 5)
      {
        return 5;
      }

      else
      {
        return qword_251A4F398[a4];
      }

    case 6:
LABEL_10:
      if (a4 >= 5)
      {
        return 1;
      }

      else
      {
        return a4;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_32:

      goto LABEL_33;
    }

    firstSharedDate = self->_firstSharedDate;
    v10 = [(HKClinicalSharingStatus *)v8 firstSharedDate];
    if (firstSharedDate != v10)
    {
      v11 = [(HKClinicalSharingStatus *)v8 firstSharedDate];
      if (!v11)
      {
        v13 = 0;
        goto LABEL_31;
      }

      v3 = v11;
      v12 = self->_firstSharedDate;
      v4 = [(HKClinicalSharingStatus *)v8 firstSharedDate];
      if (![(NSDate *)v12 isEqual:v4])
      {
        v13 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v34 = v4;
    }

    lastSharedDate = self->_lastSharedDate;
    v15 = [(HKClinicalSharingStatus *)v8 lastSharedDate];
    if (lastSharedDate != v15)
    {
      v16 = [(HKClinicalSharingStatus *)v8 lastSharedDate];
      if (!v16)
      {
        v13 = 0;
        goto LABEL_29;
      }

      v4 = v16;
      v17 = self->_lastSharedDate;
      v18 = [(HKClinicalSharingStatus *)v8 lastSharedDate];
      v19 = v17;
      v20 = v18;
      if (([(NSDate *)v19 isEqual:v18]& 1) == 0)
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
          v25 = [(HKClinicalSharingStatus *)v8 primaryDeviceName];
          v26 = primaryDeviceName == v25;
          v27 = v25;
          if (v26)
          {

            v13 = 1;
LABEL_27:
            if (lastSharedDate == v15)
            {
LABEL_34:

LABEL_35:
              v4 = v34;
              if (firstSharedDate == v10)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

LABEL_29:
            v4 = v34;

            if (firstSharedDate != v10)
            {
              goto LABEL_30;
            }

LABEL_31:

            goto LABEL_32;
          }

          v28 = [(HKClinicalSharingStatus *)v8 primaryDeviceName];
          if (v28)
          {
            v29 = self->_primaryDeviceName;
            v32 = v28;
            v31 = [(HKClinicalSharingStatus *)v8 primaryDeviceName];
            v13 = [(NSString *)v29 isEqualToString:v31];

            if (lastSharedDate != v15)
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
  v9 = [(NSDate *)self->_firstSharedDate hk_rfc3339String];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"never";
  }

  v12 = [(NSDate *)self->_lastSharedDate hk_rfc3339String];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"never";
  }

  v15 = [v17 stringWithFormat:@"<%@ %p\n\tFeature status: %@\n\tUser status:    %@\n\tDevice status:  %@\n\tPrimary device: %@\n\tFirst Share:    %@\n\tLast Share:     %@>", v4, self, v5, v6, v7, primaryDeviceName, v11, v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  firstSharedDate = self->_firstSharedDate;
  v5 = a3;
  [v5 encodeObject:firstSharedDate forKey:@"firstSharedDate"];
  [v5 encodeObject:self->_lastSharedDate forKey:@"lastSharedDate"];
  [v5 encodeInteger:self->_featureStatus forKey:@"featureStatus"];
  [v5 encodeInteger:self->_userStatus forKey:@"userStatus"];
  [v5 encodeInteger:self->_multiDeviceStatus forKey:@"multiDeviceStatus"];
  [v5 encodeObject:self->_primaryDeviceName forKey:@"primaryDeviceName"];
}

- (HKClinicalSharingStatus)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"featureStatus"] && objc_msgSend(v4, "containsValueForKey:", @"userStatus") && (objc_msgSend(v4, "containsValueForKey:", @"multiDeviceStatus") & 1) != 0)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstSharedDate"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSharedDate"];
    v7 = [v4 decodeIntegerForKey:@"featureStatus"];
    v8 = [v4 decodeIntegerForKey:@"userStatus"];
    v9 = [v4 decodeIntegerForKey:@"multiDeviceStatus"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryDeviceName"];
    self = [(HKClinicalSharingStatus *)self initWithFirstSharedDate:v5 lastSharedDate:v6 featureStatus:v7 userStatus:v8 multiDeviceStatus:v9 primaryDeviceName:v10];

    v11 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  return v11;
}

@end