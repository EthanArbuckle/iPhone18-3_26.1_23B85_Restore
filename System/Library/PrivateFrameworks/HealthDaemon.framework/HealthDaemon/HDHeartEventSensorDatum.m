@interface HDHeartEventSensorDatum
- (HDHeartEventSensorDatum)initWithCoder:(id)a3;
- (HDHeartEventSensorDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 heartRateThreshold:(id)a5 associatedSampleUUIDs:(id)a6 resumeContext:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDHeartEventSensorDatum

- (HDHeartEventSensorDatum)initWithIdentifier:(id)a3 dateInterval:(id)a4 heartRateThreshold:(id)a5 associatedSampleUUIDs:(id)a6 resumeContext:(id)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HDHeartEventSensorDatum;
  v15 = [(HDDataCollectorSensorDatum *)&v18 initWithIdentifier:a3 dateInterval:a4 resumeContext:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_heartRateThreshold, a5);
    objc_storeStrong(&v16->_associatedSampleUUIDs, a6);
  }

  return v16;
}

- (HDHeartEventSensorDatum)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDHeartEventSensorDatum;
  v5 = [(HDDataCollectorSensorDatum *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_HeartRateThresholdKey"];
    heartRateThreshold = v5->_heartRateThreshold;
    v5->_heartRateThreshold = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_AssociatedSampleUUIDsKey"];
    associatedSampleUUIDs = v5->_associatedSampleUUIDs;
    v5->_associatedSampleUUIDs = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDHeartEventSensorDatum;
  v4 = a3;
  [(HDDataCollectorSensorDatum *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_heartRateThreshold forKey:{@"_HeartRateThresholdKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_associatedSampleUUIDs forKey:@"_AssociatedSampleUUIDsKey"];
}

@end