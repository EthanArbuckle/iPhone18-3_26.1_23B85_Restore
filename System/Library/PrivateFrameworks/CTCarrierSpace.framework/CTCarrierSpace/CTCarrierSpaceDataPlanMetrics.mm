@interface CTCarrierSpaceDataPlanMetrics
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceDataPlanMetrics)init;
- (CTCarrierSpaceDataPlanMetrics)initWithCoder:(id)coder;
- (CTCarrierSpaceDataPlanMetricsItem)domestic;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  billingCycleEndDate = [(CTCarrierSpaceDataPlanMetrics *)self billingCycleEndDate];
  [v3 appendFormat:@", billingCycleEndDate=%@", billingCycleEndDate];

  [v3 appendFormat:@", regStatus=%s", CTCarrierSpaceRegistrationStatusAsString(-[CTCarrierSpaceDataPlanMetrics regStatus](self, "regStatus"))];
  domesticCapacity = [(CTCarrierSpaceDataPlanMetrics *)self domesticCapacity];
  [v3 appendFormat:@", domesticCapacity=%@", domesticCapacity];

  domestic = [(CTCarrierSpaceDataPlanMetrics *)self domestic];
  [v3 appendFormat:@", domestic=%@", domestic];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      billingCycleEndDate = [(CTCarrierSpaceDataPlanMetrics *)self billingCycleEndDate];
      billingCycleEndDate2 = [(CTCarrierSpaceDataPlanMetrics *)equalCopy billingCycleEndDate];
      if (billingCycleEndDate == billingCycleEndDate2 || (-[CTCarrierSpaceDataPlanMetrics billingCycleEndDate](self, "billingCycleEndDate"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceDataPlanMetrics billingCycleEndDate](equalCopy, "billingCycleEndDate"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToDate:v4]))
      {
        regStatus = [(CTCarrierSpaceDataPlanMetrics *)self regStatus];
        if (regStatus == [(CTCarrierSpaceDataPlanMetrics *)equalCopy regStatus])
        {
          domesticCapacity = [(CTCarrierSpaceDataPlanMetrics *)self domesticCapacity];
          domesticCapacity2 = [(CTCarrierSpaceDataPlanMetrics *)equalCopy domesticCapacity];
          v13 = domesticCapacity2;
          if (domesticCapacity == domesticCapacity2)
          {

            v9 = 1;
          }

          else
          {
            domesticCapacity3 = [(CTCarrierSpaceDataPlanMetrics *)self domesticCapacity];
            domesticCapacity4 = [(CTCarrierSpaceDataPlanMetrics *)equalCopy domesticCapacity];
            v9 = [domesticCapacity3 isEqualToNumber:domesticCapacity4];
          }
        }

        else
        {
          v9 = 0;
        }

        if (billingCycleEndDate == billingCycleEndDate2)
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

- (void)encodeWithCoder:(id)coder
{
  billingCycleEndDate = self->_billingCycleEndDate;
  coderCopy = coder;
  [coderCopy encodeObject:billingCycleEndDate forKey:@"billingCycleEndDate"];
  [coderCopy encodeInteger:self->_regStatus forKey:@"regStatus"];
  [coderCopy encodeObject:self->_domesticCapacity forKey:@"domesticCapacity"];
}

- (CTCarrierSpaceDataPlanMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTCarrierSpaceDataPlanMetrics;
  v5 = [(CTCarrierSpaceDataPlanMetrics *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingCycleEndDate"];
    billingCycleEndDate = v5->_billingCycleEndDate;
    v5->_billingCycleEndDate = v6;

    v5->_regStatus = [coderCopy decodeIntegerForKey:@"regStatus"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domesticCapacity"];
    domesticCapacity = v5->_domesticCapacity;
    v5->_domesticCapacity = v8;
  }

  return v5;
}

@end