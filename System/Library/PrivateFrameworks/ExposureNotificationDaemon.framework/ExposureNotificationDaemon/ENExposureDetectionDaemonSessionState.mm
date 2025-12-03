@interface ENExposureDetectionDaemonSessionState
- (ENExposureDetectionDaemonSessionState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENExposureDetectionDaemonSessionState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientSigningIdentity = self->_clientSigningIdentity;
  v9 = coderCopy;
  if (clientSigningIdentity)
  {
    [coderCopy encodeObject:clientSigningIdentity forKey:@"client"];
    coderCopy = v9;
  }

  region = self->_region;
  if (region)
  {
    [v9 encodeObject:region forKey:@"region"];
    coderCopy = v9;
  }

  infectiousnessForDaysSinceOnsetOfSymptoms = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  if (infectiousnessForDaysSinceOnsetOfSymptoms)
  {
    [v9 encodeObject:infectiousnessForDaysSinceOnsetOfSymptoms forKey:@"infectiousnessMap"];
    coderCopy = v9;
  }

  infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = self->_infectiousnessForDaysSinceOnsetOfSymptomsChangeDate;
  if (infectiousnessForDaysSinceOnsetOfSymptomsChangeDate)
  {
    [v9 encodeObject:infectiousnessForDaysSinceOnsetOfSymptomsChangeDate forKey:@"infectiousnessMapDate"];
    coderCopy = v9;
  }
}

- (ENExposureDetectionDaemonSessionState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ENExposureDetectionDaemonSessionState;
  v5 = [(ENExposureDetectionDaemonSessionState *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client"];
    clientSigningIdentity = v5->_clientSigningIdentity;
    v5->_clientSigningIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v8;

    v10 = objc_opt_class();
    v11 = [coderCopy decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"infectiousnessMap"];
    infectiousnessForDaysSinceOnsetOfSymptoms = v5->_infectiousnessForDaysSinceOnsetOfSymptoms;
    v5->_infectiousnessForDaysSinceOnsetOfSymptoms = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"infectiousnessMapDate"];
    infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = v5->_infectiousnessForDaysSinceOnsetOfSymptomsChangeDate;
    v5->_infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = v13;

    v15 = v5;
  }

  return v5;
}

@end