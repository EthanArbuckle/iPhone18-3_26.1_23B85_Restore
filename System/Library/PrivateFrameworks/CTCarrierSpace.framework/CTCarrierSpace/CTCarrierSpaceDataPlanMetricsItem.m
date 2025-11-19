@interface CTCarrierSpaceDataPlanMetricsItem
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceDataPlanMetricsItem)init;
- (CTCarrierSpaceDataPlanMetricsItem)initWithCoder:(id)a3;
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
  v4 = [(CTCarrierSpaceDataPlanMetricsItem *)self capacityBytes];
  [v3 appendFormat:@", capacityBytes=%@", v4];

  [v3 appendFormat:@", capacityValid=%d", -[CTCarrierSpaceDataPlanMetricsItem capacityValid](self, "capacityValid")];
  [v3 appendFormat:@", capacity=%lu %s", -[CTCarrierSpaceDataPlanMetricsItem capacity](self, "capacity"), CTCarrierSpaceDataUnitsAsString(-[CTCarrierSpaceDataPlanMetricsItem units](self, "units"))];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTCarrierSpaceDataPlanMetricsItem *)self capacityBytes];
      v6 = [(CTCarrierSpaceDataPlanMetricsItem *)v4 capacityBytes];
      if (v5 == v6)
      {
        v9 = 1;
      }

      else
      {
        v7 = [(CTCarrierSpaceDataPlanMetricsItem *)self capacityBytes];
        v8 = [(CTCarrierSpaceDataPlanMetricsItem *)v4 capacityBytes];
        v9 = [v7 isEqualToNumber:v8];
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

- (CTCarrierSpaceDataPlanMetricsItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTCarrierSpaceDataPlanMetricsItem;
  v5 = [(CTCarrierSpaceDataPlanMetricsItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capacityBytes"];
    capacityBytes = v5->_capacityBytes;
    v5->_capacityBytes = v6;
  }

  return v5;
}

@end