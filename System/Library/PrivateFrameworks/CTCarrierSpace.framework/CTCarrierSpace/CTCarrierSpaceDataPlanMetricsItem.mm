@interface CTCarrierSpaceDataPlanMetricsItem
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceDataPlanMetricsItem)init;
- (CTCarrierSpaceDataPlanMetricsItem)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)capacity;
@end

@implementation CTCarrierSpaceDataPlanMetricsItem

- (CTCarrierSpaceDataPlanMetricsItem)init
{
  v6.receiver = self;
  v6.super_class = CTCarrierSpaceDataPlanMetricsItem;
  v2 = [(CTCarrierSpaceDataPlanMetricsItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    capacityBytes = v2->_capacityBytes;
    v2->_capacityBytes = 0;

    v3->_capacityValid = 0;
    v3->_units = 0;
    v3->_capacity = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  capacityBytes = [(CTCarrierSpaceDataPlanMetricsItem *)self capacityBytes];
  [v3 appendFormat:@", capacityBytes=%@", capacityBytes];

  [v3 appendFormat:@", capacityValid=%d", -[CTCarrierSpaceDataPlanMetricsItem capacityValid](self, "capacityValid")];
  [v3 appendFormat:@", capacity=%lu %s", -[CTCarrierSpaceDataPlanMetricsItem capacity](self, "capacity"), CTCarrierSpaceDataUnitsAsString(-[CTCarrierSpaceDataPlanMetricsItem units](self, "units"))];
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
      capacityBytes = [(CTCarrierSpaceDataPlanMetricsItem *)self capacityBytes];
      capacityBytes2 = [(CTCarrierSpaceDataPlanMetricsItem *)equalCopy capacityBytes];
      if (capacityBytes == capacityBytes2)
      {
        v9 = 1;
      }

      else
      {
        capacityBytes3 = [(CTCarrierSpaceDataPlanMetricsItem *)self capacityBytes];
        capacityBytes4 = [(CTCarrierSpaceDataPlanMetricsItem *)equalCopy capacityBytes];
        v9 = [capacityBytes3 isEqualToNumber:capacityBytes4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)capacity
{
  result = self->_capacityBytes;
  if (result)
  {
    return CTCarrierSpaceConvertDataUnits(1, 2, [result unsignedIntegerValue]);
  }

  return result;
}

- (CTCarrierSpaceDataPlanMetricsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTCarrierSpaceDataPlanMetricsItem;
  v5 = [(CTCarrierSpaceDataPlanMetricsItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capacityBytes"];
    capacityBytes = v5->_capacityBytes;
    v5->_capacityBytes = v6;
  }

  return v5;
}

@end