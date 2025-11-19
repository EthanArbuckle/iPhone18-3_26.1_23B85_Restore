@interface CTCarrierSpaceDataPlanMetrics
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceDataPlanMetrics)init;
- (CTCarrierSpaceDataPlanMetrics)initWithCoder:(id)a3;
- (CTCarrierSpaceDataPlanMetricsItem)domestic;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpaceDataPlanMetrics

- (CTCarrierSpaceDataPlanMetrics)init
{
  v8.receiver = self;
  v8.super_class = CTCarrierSpaceDataPlanMetrics;
  v2 = [(CTCarrierSpaceDataPlanMetrics *)&v8 init];
  v3 = v2;
  if (v2)
  {
    billingCycleEndDate = v2->_billingCycleEndDate;
    v2->_billingCycleEndDate = 0;

    domestic = v3->_domestic;
    v3->_domestic = 0;

    domesticCapacity = v3->_domesticCapacity;
    v3->_regStatus = 0;
    v3->_domesticCapacity = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCarrierSpaceDataPlanMetrics *)self billingCycleEndDate];
  [v3 appendFormat:@", billingCycleEndDate=%@", v4];

  [v3 appendFormat:@", regStatus=%s", CTCarrierSpaceRegistrationStatusAsString(-[CTCarrierSpaceDataPlanMetrics regStatus](self, "regStatus"))];
  v5 = [(CTCarrierSpaceDataPlanMetrics *)self domesticCapacity];
  [v3 appendFormat:@", domesticCapacity=%@", v5];

  v6 = [(CTCarrierSpaceDataPlanMetrics *)self domestic];
  [v3 appendFormat:@", domestic=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTCarrierSpaceDataPlanMetrics *)self billingCycleEndDate];
      v8 = [(CTCarrierSpaceDataPlanMetrics *)v6 billingCycleEndDate];
      if (v7 == v8 || (-[CTCarrierSpaceDataPlanMetrics billingCycleEndDate](self, "billingCycleEndDate"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceDataPlanMetrics billingCycleEndDate](v6, "billingCycleEndDate"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToDate:v4]))
      {
        v10 = [(CTCarrierSpaceDataPlanMetrics *)self regStatus];
        if (v10 == [(CTCarrierSpaceDataPlanMetrics *)v6 regStatus])
        {
          v11 = [(CTCarrierSpaceDataPlanMetrics *)self domesticCapacity];
          v12 = [(CTCarrierSpaceDataPlanMetrics *)v6 domesticCapacity];
          v13 = v12;
          if (v11 == v12)
          {

            v9 = 1;
          }

          else
          {
            v14 = [(CTCarrierSpaceDataPlanMetrics *)self domesticCapacity];
            v15 = [(CTCarrierSpaceDataPlanMetrics *)v6 domesticCapacity];
            v9 = [v14 isEqualToNumber:v15];
          }
        }

        else
        {
          v9 = 0;
        }

        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_15:
      goto LABEL_16;
    }

    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (CTCarrierSpaceDataPlanMetricsItem)domestic
{
  if (self->_regStatus == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_alloc_init(CTCarrierSpaceDataPlanMetricsItem);
    [(CTCarrierSpaceDataPlanMetricsItem *)v2 setCapacityBytes:self->_domesticCapacity];
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  billingCycleEndDate = self->_billingCycleEndDate;
  v5 = a3;
  [v5 encodeObject:billingCycleEndDate forKey:@"billingCycleEndDate"];
  [v5 encodeInteger:self->_regStatus forKey:@"regStatus"];
  [v5 encodeObject:self->_domesticCapacity forKey:@"domesticCapacity"];
}

- (CTCarrierSpaceDataPlanMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTCarrierSpaceDataPlanMetrics;
  v5 = [(CTCarrierSpaceDataPlanMetrics *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingCycleEndDate"];
    billingCycleEndDate = v5->_billingCycleEndDate;
    v5->_billingCycleEndDate = v6;

    v5->_regStatus = [v4 decodeIntegerForKey:@"regStatus"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domesticCapacity"];
    domesticCapacity = v5->_domesticCapacity;
    v5->_domesticCapacity = v8;
  }

  return v5;
}

@end