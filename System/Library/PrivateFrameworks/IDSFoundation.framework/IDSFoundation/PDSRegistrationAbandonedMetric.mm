@interface PDSRegistrationAbandonedMetric
- (NSDictionary)dictionaryRepresentation;
- (PDSRegistrationAbandonedMetric)initWithFailureReason:(id)reason registrationReason:(id)registrationReason heartbeatDate:(id)date;
@end

@implementation PDSRegistrationAbandonedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  failureReason = [(PDSRegistrationAbandonedMetric *)self failureReason];
  if (failureReason)
  {
    CFDictionarySetValue(v3, @"failiureReason", failureReason);
  }

  registrationReason = [(PDSRegistrationAbandonedMetric *)self registrationReason];
  if (registrationReason)
  {
    CFDictionarySetValue(v3, @"registrationReason", registrationReason);
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  heartbeatDate = [(PDSRegistrationAbandonedMetric *)self heartbeatDate];
  v8 = [v6 stringFromDate:heartbeatDate];

  if (v8)
  {
    CFDictionarySetValue(v3, @"plannedHeartbeatDate", v8);
  }

  return v3;
}

- (PDSRegistrationAbandonedMetric)initWithFailureReason:(id)reason registrationReason:(id)registrationReason heartbeatDate:(id)date
{
  reasonCopy = reason;
  registrationReasonCopy = registrationReason;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = PDSRegistrationAbandonedMetric;
  v12 = [(PDSRegistrationAbandonedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_failureReason, reason);
    objc_storeStrong(&v13->_registrationReason, registrationReason);
    objc_storeStrong(&v13->_heartbeatDate, date);
  }

  return v13;
}

@end