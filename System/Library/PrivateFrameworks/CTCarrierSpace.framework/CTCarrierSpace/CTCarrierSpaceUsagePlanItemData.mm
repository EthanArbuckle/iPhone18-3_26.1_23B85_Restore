@interface CTCarrierSpaceUsagePlanItemData
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceUsagePlanItemData)init;
- (CTCarrierSpaceUsagePlanItemData)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpaceUsagePlanItemData

- (CTCarrierSpaceUsagePlanItemData)init
{
  v10.receiver = self;
  v10.super_class = CTCarrierSpaceUsagePlanItemData;
  v2 = [(CTCarrierSpaceUsagePlanItemData *)&v10 init];
  v3 = v2;
  if (v2)
  {
    capacity = v2->_capacity;
    v2->_units = 0;
    v2->_capacity = 0;

    maxDataBeforeThrottling = v3->_maxDataBeforeThrottling;
    v3->_maxDataBeforeThrottling = 0;

    thisDeviceDataUsed = v3->_thisDeviceDataUsed;
    v3->_thisDeviceDataUsed = 0;

    sharedDataUsed = v3->_sharedDataUsed;
    v3->_sharedDataUsed = 0;

    sharedPlanIdentifier = v3->_sharedPlanIdentifier;
    v3->_sharedPlanIdentifier = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", units=%s", CTCarrierSpaceDataUnitsAsString(-[CTCarrierSpaceUsagePlanItemData units](self, "units"))];
  capacity = [(CTCarrierSpaceUsagePlanItemData *)self capacity];
  [v3 appendFormat:@", capacity=%@", capacity];

  maxDataBeforeThrottling = [(CTCarrierSpaceUsagePlanItemData *)self maxDataBeforeThrottling];
  [v3 appendFormat:@", maxDataBeforeThrottling=%@", maxDataBeforeThrottling];

  thisDeviceDataUsed = [(CTCarrierSpaceUsagePlanItemData *)self thisDeviceDataUsed];
  [v3 appendFormat:@", used=%@", thisDeviceDataUsed];

  sharedDataUsed = [(CTCarrierSpaceUsagePlanItemData *)self sharedDataUsed];
  [v3 appendFormat:@", sharedDataUsed=%@", sharedDataUsed];

  sharedPlanIdentifier = [(CTCarrierSpaceUsagePlanItemData *)self sharedPlanIdentifier];
  [v3 appendFormat:@", sharedPlanIdentifier=%@", sharedPlanIdentifier];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      units = [(CTCarrierSpaceUsagePlanItemData *)self units];
      if (units == [(CTCarrierSpaceUsagePlanItemData *)equalCopy units])
      {
        capacity = [(CTCarrierSpaceUsagePlanItemData *)self capacity];
        capacity2 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy capacity];
        if (capacity != capacity2)
        {
          capacity3 = [(CTCarrierSpaceUsagePlanItemData *)self capacity];
          capacity4 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy capacity];
          v43 = capacity3;
          if (![capacity3 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_30;
          }
        }

        maxDataBeforeThrottling = [(CTCarrierSpaceUsagePlanItemData *)self maxDataBeforeThrottling];
        maxDataBeforeThrottling2 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy maxDataBeforeThrottling];
        if (maxDataBeforeThrottling != maxDataBeforeThrottling2)
        {
          maxDataBeforeThrottling3 = [(CTCarrierSpaceUsagePlanItemData *)self maxDataBeforeThrottling];
          maxDataBeforeThrottling4 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy maxDataBeforeThrottling];
          if (![maxDataBeforeThrottling3 isEqualToString:maxDataBeforeThrottling4])
          {
            v11 = 0;
LABEL_28:

LABEL_29:
            if (capacity == capacity2)
            {
LABEL_31:

              goto LABEL_32;
            }

LABEL_30:

            goto LABEL_31;
          }
        }

        thisDeviceDataUsed = [(CTCarrierSpaceUsagePlanItemData *)self thisDeviceDataUsed];
        thisDeviceDataUsed2 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy thisDeviceDataUsed];
        v41 = thisDeviceDataUsed;
        v16 = thisDeviceDataUsed == thisDeviceDataUsed2;
        v17 = thisDeviceDataUsed2;
        if (!v16)
        {
          thisDeviceDataUsed3 = [(CTCarrierSpaceUsagePlanItemData *)self thisDeviceDataUsed];
          thisDeviceDataUsed4 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy thisDeviceDataUsed];
          v37 = thisDeviceDataUsed3;
          if (![thisDeviceDataUsed3 isEqualToString:?])
          {
            v11 = 0;
            v19 = v41;
LABEL_26:

LABEL_27:
            if (maxDataBeforeThrottling == maxDataBeforeThrottling2)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        sharedDataUsed = [(CTCarrierSpaceUsagePlanItemData *)self sharedDataUsed];
        sharedDataUsed2 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy sharedDataUsed];
        v39 = v17;
        v40 = maxDataBeforeThrottling4;
        if (sharedDataUsed == sharedDataUsed2)
        {
          v35 = maxDataBeforeThrottling3;
        }

        else
        {
          v21 = maxDataBeforeThrottling3;
          sharedDataUsed3 = [(CTCarrierSpaceUsagePlanItemData *)self sharedDataUsed];
          sharedDataUsed4 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy sharedDataUsed];
          v34 = sharedDataUsed3;
          if (![sharedDataUsed3 isEqualToString:?])
          {
            v11 = 0;
            v30 = sharedDataUsed2;
            maxDataBeforeThrottling3 = v21;
            maxDataBeforeThrottling4 = v40;
            goto LABEL_24;
          }

          v35 = v21;
        }

        sharedPlanIdentifier = [(CTCarrierSpaceUsagePlanItemData *)self sharedPlanIdentifier];
        sharedPlanIdentifier2 = [(CTCarrierSpaceUsagePlanItemData *)equalCopy sharedPlanIdentifier];
        v25 = sharedPlanIdentifier2;
        if (sharedPlanIdentifier == sharedPlanIdentifier2)
        {

          v11 = 1;
        }

        else
        {
          sharedPlanIdentifier3 = [(CTCarrierSpaceUsagePlanItemData *)self sharedPlanIdentifier];
          [(CTCarrierSpaceUsagePlanItemData *)equalCopy sharedPlanIdentifier];
          v32 = maxDataBeforeThrottling2;
          v27 = maxDataBeforeThrottling;
          v29 = v28 = sharedDataUsed;
          v11 = [sharedPlanIdentifier3 isEqualToString:v29];

          sharedDataUsed = v28;
          maxDataBeforeThrottling = v27;
          maxDataBeforeThrottling2 = v32;
        }

        v30 = sharedDataUsed2;
        maxDataBeforeThrottling3 = v35;
        maxDataBeforeThrottling4 = v40;
        if (sharedDataUsed == sharedDataUsed2)
        {
LABEL_25:

          v19 = v41;
          v17 = v39;
          if (v41 == v39)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  units = self->_units;
  coderCopy = coder;
  [coderCopy encodeInteger:units forKey:@"units"];
  [coderCopy encodeObject:self->_capacity forKey:@"capacity"];
  [coderCopy encodeObject:self->_maxDataBeforeThrottling forKey:@"maxDataBeforeThrottling"];
  [coderCopy encodeObject:self->_thisDeviceDataUsed forKey:@"thisDeviceDataUsed"];
  [coderCopy encodeObject:self->_sharedDataUsed forKey:@"sharedDataUsed"];
  [coderCopy encodeObject:self->_sharedPlanIdentifier forKey:@"sharedPlanIdentifier"];
}

- (CTCarrierSpaceUsagePlanItemData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTCarrierSpaceUsagePlanItemData;
  v5 = [(CTCarrierSpaceUsagePlanItemData *)&v17 init];
  if (v5)
  {
    v5->_units = [coderCopy decodeIntegerForKey:@"units"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxDataBeforeThrottling"];
    maxDataBeforeThrottling = v5->_maxDataBeforeThrottling;
    v5->_maxDataBeforeThrottling = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thisDeviceDataUsed"];
    thisDeviceDataUsed = v5->_thisDeviceDataUsed;
    v5->_thisDeviceDataUsed = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedDataUsed"];
    sharedDataUsed = v5->_sharedDataUsed;
    v5->_sharedDataUsed = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedPlanIdentifier"];
    sharedPlanIdentifier = v5->_sharedPlanIdentifier;
    v5->_sharedPlanIdentifier = v14;
  }

  return v5;
}

@end