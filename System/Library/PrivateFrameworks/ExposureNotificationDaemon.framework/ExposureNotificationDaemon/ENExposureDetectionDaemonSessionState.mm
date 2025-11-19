@interface ENExposureDetectionDaemonSessionState
- (ENExposureDetectionDaemonSessionState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENExposureDetectionDaemonSessionState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  clientSigningIdentity = self->_clientSigningIdentity;
  v9 = v4;
  if (clientSigningIdentity)
  {
    [v4 encodeObject:clientSigningIdentity forKey:@"client"];
    v4 = v9;
  }

  region = self->_region;
  if (region)
  {
    [v9 encodeObject:region forKey:@"region"];
    v4 = v9;
  }

  infectiousnessForDaysSinceOnsetOfSymptoms = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  if (infectiousnessForDaysSinceOnsetOfSymptoms)
  {
    [v9 encodeObject:infectiousnessForDaysSinceOnsetOfSymptoms forKey:@"infectiousnessMap"];
    v4 = v9;
  }

  infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = self->_infectiousnessForDaysSinceOnsetOfSymptomsChangeDate;
  if (infectiousnessForDaysSinceOnsetOfSymptomsChangeDate)
  {
    [v9 encodeObject:infectiousnessForDaysSinceOnsetOfSymptomsChangeDate forKey:@"infectiousnessMapDate"];
    v4 = v9;
  }
}

- (ENExposureDetectionDaemonSessionState)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ENExposureDetectionDaemonSessionState;
  v5 = [(ENExposureDetectionDaemonSessionState *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    clientSigningIdentity = v5->_clientSigningIdentity;
    v5->_clientSigningIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = objc_opt_class();
    v11 = [v4 decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"infectiousnessMap"];
    infectiousnessForDaysSinceOnsetOfSymptoms = v5->_infectiousnessForDaysSinceOnsetOfSymptoms;
    v5->_infectiousnessForDaysSinceOnsetOfSymptoms = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"infectiousnessMapDate"];
    infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = v5->_infectiousnessForDaysSinceOnsetOfSymptomsChangeDate;
    v5->_infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = v13;

    v15 = v5;
  }

  return v5;
}

@end