@interface CTCarrierSpaceUsageAccountMetrics
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceUsageAccountMetrics)init;
- (CTCarrierSpaceUsageAccountMetrics)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  networkUsageLabel = [(CTCarrierSpaceUsageAccountMetrics *)self networkUsageLabel];
  [v3 appendFormat:@", networkUsageLabel=%@", networkUsageLabel];

  [v3 appendFormat:@", deviceType=%s", CTCarrierSpaceDeviceTypeAsString(-[CTCarrierSpaceUsageAccountMetrics deviceType](self, "deviceType"))];
  [v3 appendFormat:@", localDevice=%d", -[CTCarrierSpaceUsageAccountMetrics localDevice](self, "localDevice")];
  subscriptionStatus = [(CTCarrierSpaceUsageAccountMetrics *)self subscriptionStatus];
  [v3 appendFormat:@", subscriptionStatus=%@", subscriptionStatus];

  planType = [(CTCarrierSpaceUsageAccountMetrics *)self planType];
  [v3 appendFormat:@", planType=%@", planType];

  billingCycleEndDate = [(CTCarrierSpaceUsageAccountMetrics *)self billingCycleEndDate];
  [v3 appendFormat:@", billingCycleEndDate=%@", billingCycleEndDate];

  applicablePlans = [(CTCarrierSpaceUsageAccountMetrics *)self applicablePlans];
  [v3 appendFormat:@", applicablePlans=%@", applicablePlans];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      networkUsageLabel = [(CTCarrierSpaceUsageAccountMetrics *)self networkUsageLabel];
      networkUsageLabel2 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy networkUsageLabel];
      if (networkUsageLabel != networkUsageLabel2)
      {
        networkUsageLabel3 = [(CTCarrierSpaceUsageAccountMetrics *)self networkUsageLabel];
        networkUsageLabel4 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy networkUsageLabel];
        if (![networkUsageLabel3 isEqualToString:networkUsageLabel4])
        {
          v10 = 0;
          goto LABEL_32;
        }
      }

      deviceType = [(CTCarrierSpaceUsageAccountMetrics *)self deviceType];
      if (deviceType != [(CTCarrierSpaceUsageAccountMetrics *)equalCopy deviceType]|| (v12 = [(CTCarrierSpaceUsageAccountMetrics *)self localDevice], v12 != [(CTCarrierSpaceUsageAccountMetrics *)equalCopy localDevice]))
      {
        v10 = 0;
        goto LABEL_31;
      }

      subscriptionStatus = [(CTCarrierSpaceUsageAccountMetrics *)self subscriptionStatus];
      subscriptionStatus2 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy subscriptionStatus];
      v43 = subscriptionStatus;
      if (subscriptionStatus != subscriptionStatus2)
      {
        subscriptionStatus3 = [(CTCarrierSpaceUsageAccountMetrics *)self subscriptionStatus];
        subscriptionStatus4 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy subscriptionStatus];
        if (![subscriptionStatus3 isEqualToString:subscriptionStatus4])
        {
          v10 = 0;
          goto LABEL_29;
        }

        v39 = subscriptionStatus3;
      }

      planType = [(CTCarrierSpaceUsageAccountMetrics *)self planType];
      planType2 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy planType];
      v40 = planType;
      v41 = subscriptionStatus4;
      v17 = planType == planType2;
      v18 = planType2;
      if (!v17)
      {
        planType3 = [(CTCarrierSpaceUsageAccountMetrics *)self planType];
        planType4 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy planType];
        v36 = planType3;
        if (![planType3 isEqualToString:planType4])
        {
          v10 = 0;
          v20 = v40;
LABEL_27:

LABEL_28:
          subscriptionStatus3 = v39;
          subscriptionStatus4 = v41;
          if (v43 == subscriptionStatus2)
          {
LABEL_30:

LABEL_31:
            if (networkUsageLabel == networkUsageLabel2)
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

      billingCycleEndDate = [(CTCarrierSpaceUsageAccountMetrics *)self billingCycleEndDate];
      billingCycleEndDate2 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy billingCycleEndDate];
      v37 = billingCycleEndDate;
      v38 = v18;
      v17 = billingCycleEndDate == billingCycleEndDate2;
      v23 = billingCycleEndDate2;
      if (v17 || (-[CTCarrierSpaceUsageAccountMetrics billingCycleEndDate](self, "billingCycleEndDate"), v24 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceUsageAccountMetrics billingCycleEndDate](equalCopy, "billingCycleEndDate"), v33 = objc_claimAutoreleasedReturnValue(), v34 = v24, [v24 isEqualToDate:?]))
      {
        applicablePlans = [(CTCarrierSpaceUsageAccountMetrics *)self applicablePlans];
        applicablePlans2 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy applicablePlans];
        v28 = applicablePlans2;
        if (applicablePlans == applicablePlans2)
        {

          v10 = 1;
        }

        else
        {
          [(CTCarrierSpaceUsageAccountMetrics *)self applicablePlans];
          v29 = v32 = v23;
          applicablePlans3 = [(CTCarrierSpaceUsageAccountMetrics *)equalCopy applicablePlans];
          v10 = [v29 isEqual:applicablePlans3];

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

- (void)encodeWithCoder:(id)coder
{
  networkUsageLabel = self->_networkUsageLabel;
  coderCopy = coder;
  [coderCopy encodeObject:networkUsageLabel forKey:@"networkUsageLabel"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeBool:self->_localDevice forKey:@"localDevice"];
  [coderCopy encodeObject:self->_subscriptionStatus forKey:@"subscriptionStatus"];
  [coderCopy encodeObject:self->_planType forKey:@"planType"];
  [coderCopy encodeObject:self->_billingCycleEndDate forKey:@"billingCycleEndDate"];
  [coderCopy encodeObject:self->_applicablePlans forKey:@"applicablePlans"];
}

- (CTCarrierSpaceUsageAccountMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CTCarrierSpaceUsageAccountMetrics;
  v5 = [(CTCarrierSpaceUsageAccountMetrics *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkUsageLabel"];
    networkUsageLabel = v5->_networkUsageLabel;
    v5->_networkUsageLabel = v6;

    v5->_deviceType = [coderCopy decodeIntegerForKey:@"deviceType"];
    v5->_localDevice = [coderCopy decodeBoolForKey:@"localDevice"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionStatus"];
    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planType"];
    planType = v5->_planType;
    v5->_planType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingCycleEndDate"];
    billingCycleEndDate = v5->_billingCycleEndDate;
    v5->_billingCycleEndDate = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"applicablePlans"];
    applicablePlans = v5->_applicablePlans;
    v5->_applicablePlans = v17;
  }

  return v5;
}

@end