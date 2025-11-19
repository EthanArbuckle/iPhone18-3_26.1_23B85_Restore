@interface CTCarrierSpaceUsageAccountMetrics
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceUsageAccountMetrics)init;
- (CTCarrierSpaceUsageAccountMetrics)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpaceUsageAccountMetrics

- (CTCarrierSpaceUsageAccountMetrics)init
{
  v10.receiver = self;
  v10.super_class = CTCarrierSpaceUsageAccountMetrics;
  v2 = [(CTCarrierSpaceUsageAccountMetrics *)&v10 init];
  v3 = v2;
  if (v2)
  {
    networkUsageLabel = v2->_networkUsageLabel;
    v2->_networkUsageLabel = 0;

    subscriptionStatus = v3->_subscriptionStatus;
    v3->_deviceType = 0;
    v3->_subscriptionStatus = 0;
    v3->_localDevice = 0;

    planType = v3->_planType;
    v3->_planType = 0;

    billingCycleEndDate = v3->_billingCycleEndDate;
    v3->_billingCycleEndDate = 0;

    applicablePlans = v3->_applicablePlans;
    v3->_applicablePlans = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCarrierSpaceUsageAccountMetrics *)self networkUsageLabel];
  [v3 appendFormat:@", networkUsageLabel=%@", v4];

  [v3 appendFormat:@", deviceType=%s", CTCarrierSpaceDeviceTypeAsString(-[CTCarrierSpaceUsageAccountMetrics deviceType](self, "deviceType"))];
  [v3 appendFormat:@", localDevice=%d", -[CTCarrierSpaceUsageAccountMetrics localDevice](self, "localDevice")];
  v5 = [(CTCarrierSpaceUsageAccountMetrics *)self subscriptionStatus];
  [v3 appendFormat:@", subscriptionStatus=%@", v5];

  v6 = [(CTCarrierSpaceUsageAccountMetrics *)self planType];
  [v3 appendFormat:@", planType=%@", v6];

  v7 = [(CTCarrierSpaceUsageAccountMetrics *)self billingCycleEndDate];
  [v3 appendFormat:@", billingCycleEndDate=%@", v7];

  v8 = [(CTCarrierSpaceUsageAccountMetrics *)self applicablePlans];
  [v3 appendFormat:@", applicablePlans=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CTCarrierSpaceUsageAccountMetrics *)self networkUsageLabel];
      v9 = [(CTCarrierSpaceUsageAccountMetrics *)v7 networkUsageLabel];
      if (v8 != v9)
      {
        v3 = [(CTCarrierSpaceUsageAccountMetrics *)self networkUsageLabel];
        v4 = [(CTCarrierSpaceUsageAccountMetrics *)v7 networkUsageLabel];
        if (![v3 isEqualToString:v4])
        {
          v10 = 0;
          goto LABEL_32;
        }
      }

      v11 = [(CTCarrierSpaceUsageAccountMetrics *)self deviceType];
      if (v11 != [(CTCarrierSpaceUsageAccountMetrics *)v7 deviceType]|| (v12 = [(CTCarrierSpaceUsageAccountMetrics *)self localDevice], v12 != [(CTCarrierSpaceUsageAccountMetrics *)v7 localDevice]))
      {
        v10 = 0;
        goto LABEL_31;
      }

      v13 = [(CTCarrierSpaceUsageAccountMetrics *)self subscriptionStatus];
      v42 = [(CTCarrierSpaceUsageAccountMetrics *)v7 subscriptionStatus];
      v43 = v13;
      if (v13 != v42)
      {
        v14 = [(CTCarrierSpaceUsageAccountMetrics *)self subscriptionStatus];
        v5 = [(CTCarrierSpaceUsageAccountMetrics *)v7 subscriptionStatus];
        if (![v14 isEqualToString:v5])
        {
          v10 = 0;
          goto LABEL_29;
        }

        v39 = v14;
      }

      v15 = [(CTCarrierSpaceUsageAccountMetrics *)self planType];
      v16 = [(CTCarrierSpaceUsageAccountMetrics *)v7 planType];
      v40 = v15;
      v41 = v5;
      v17 = v15 == v16;
      v18 = v16;
      if (!v17)
      {
        v19 = [(CTCarrierSpaceUsageAccountMetrics *)self planType];
        v35 = [(CTCarrierSpaceUsageAccountMetrics *)v7 planType];
        v36 = v19;
        if (![v19 isEqualToString:v35])
        {
          v10 = 0;
          v20 = v40;
LABEL_27:

LABEL_28:
          v14 = v39;
          v5 = v41;
          if (v43 == v42)
          {
LABEL_30:

LABEL_31:
            if (v8 == v9)
            {
LABEL_33:

              goto LABEL_34;
            }

LABEL_32:

            goto LABEL_33;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v21 = [(CTCarrierSpaceUsageAccountMetrics *)self billingCycleEndDate];
      v22 = [(CTCarrierSpaceUsageAccountMetrics *)v7 billingCycleEndDate];
      v37 = v21;
      v38 = v18;
      v17 = v21 == v22;
      v23 = v22;
      if (v17 || (-[CTCarrierSpaceUsageAccountMetrics billingCycleEndDate](self, "billingCycleEndDate"), v24 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceUsageAccountMetrics billingCycleEndDate](v7, "billingCycleEndDate"), v33 = objc_claimAutoreleasedReturnValue(), v34 = v24, [v24 isEqualToDate:?]))
      {
        v26 = [(CTCarrierSpaceUsageAccountMetrics *)self applicablePlans];
        v27 = [(CTCarrierSpaceUsageAccountMetrics *)v7 applicablePlans];
        v28 = v27;
        if (v26 == v27)
        {

          v10 = 1;
        }

        else
        {
          [(CTCarrierSpaceUsageAccountMetrics *)self applicablePlans];
          v29 = v32 = v23;
          v30 = [(CTCarrierSpaceUsageAccountMetrics *)v7 applicablePlans];
          v10 = [v29 isEqual:v30];

          v23 = v32;
        }

        v25 = v37;
        if (v37 == v23)
        {
LABEL_26:

          v20 = v40;
          v18 = v38;
          if (v40 == v38)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v10 = 0;
        v25 = v37;
      }

      goto LABEL_26;
    }

    v10 = 0;
  }

LABEL_34:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  networkUsageLabel = self->_networkUsageLabel;
  v5 = a3;
  [v5 encodeObject:networkUsageLabel forKey:@"networkUsageLabel"];
  [v5 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [v5 encodeBool:self->_localDevice forKey:@"localDevice"];
  [v5 encodeObject:self->_subscriptionStatus forKey:@"subscriptionStatus"];
  [v5 encodeObject:self->_planType forKey:@"planType"];
  [v5 encodeObject:self->_billingCycleEndDate forKey:@"billingCycleEndDate"];
  [v5 encodeObject:self->_applicablePlans forKey:@"applicablePlans"];
}

- (CTCarrierSpaceUsageAccountMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CTCarrierSpaceUsageAccountMetrics;
  v5 = [(CTCarrierSpaceUsageAccountMetrics *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkUsageLabel"];
    networkUsageLabel = v5->_networkUsageLabel;
    v5->_networkUsageLabel = v6;

    v5->_deviceType = [v4 decodeIntegerForKey:@"deviceType"];
    v5->_localDevice = [v4 decodeBoolForKey:@"localDevice"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionStatus"];
    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planType"];
    planType = v5->_planType;
    v5->_planType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingCycleEndDate"];
    billingCycleEndDate = v5->_billingCycleEndDate;
    v5->_billingCycleEndDate = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"applicablePlans"];
    applicablePlans = v5->_applicablePlans;
    v5->_applicablePlans = v17;
  }

  return v5;
}

@end