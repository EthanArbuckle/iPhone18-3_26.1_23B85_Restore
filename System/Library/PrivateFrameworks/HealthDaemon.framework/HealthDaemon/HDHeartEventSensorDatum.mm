@interface HDHeartEventSensorDatum
- (HDHeartEventSensorDatum)initWithCoder:(id)coder;
- (HDHeartEventSensorDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval heartRateThreshold:(id)threshold associatedSampleUUIDs:(id)ds resumeContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDHeartEventSensorDatum

- (HDHeartEventSensorDatum)initWithIdentifier:(id)identifier dateInterval:(id)interval heartRateThreshold:(id)threshold associatedSampleUUIDs:(id)ds resumeContext:(id)context
{
  thresholdCopy = threshold;
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = HDHeartEventSensorDatum;
  v15 = [(HDDataCollectorSensorDatum *)&v18 initWithIdentifier:identifier dateInterval:interval resumeContext:context];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_heartRateThreshold, threshold);
    objc_storeStrong(&v16->_associatedSampleUUIDs, ds);
  }

  return v16;
}

- (HDHeartEventSensorDatum)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HDHeartEventSensorDatum;
  v5 = [(HDDataCollectorSensorDatum *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_HeartRateThresholdKey"];
    heartRateThreshold = v5->_heartRateThreshold;
    v5->_heartRateThreshold = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_AssociatedSampleUUIDsKey"];
    associatedSampleUUIDs = v5->_associatedSampleUUIDs;
    v5->_associatedSampleUUIDs = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDHeartEventSensorDatum;
  coderCopy = coder;
  [(HDDataCollectorSensorDatum *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_heartRateThreshold forKey:{@"_HeartRateThresholdKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_associatedSampleUUIDs forKey:@"_AssociatedSampleUUIDsKey"];
}

@end