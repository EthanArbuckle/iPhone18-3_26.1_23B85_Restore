@interface PDSRegistrationAbandonedMetric
- (NSDictionary)dictionaryRepresentation;
- (PDSRegistrationAbandonedMetric)initWithFailureReason:(id)a3 registrationReason:(id)a4 heartbeatDate:(id)a5;
@end

@implementation PDSRegistrationAbandonedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PDSRegistrationAbandonedMetric *)self failureReason];
  if (v4)
  {
    CFDictionarySetValue(v3, @"failiureReason", v4);
  }

  v5 = [(PDSRegistrationAbandonedMetric *)self registrationReason];
  if (v5)
  {
    CFDictionarySetValue(v3, @"registrationReason", v5);
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  v7 = [(PDSRegistrationAbandonedMetric *)self heartbeatDate];
  v8 = [v6 stringFromDate:v7];

  if (v8)
  {
    CFDictionarySetValue(v3, @"plannedHeartbeatDate", v8);
  }

  return v3;
}

- (PDSRegistrationAbandonedMetric)initWithFailureReason:(id)a3 registrationReason:(id)a4 heartbeatDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PDSRegistrationAbandonedMetric;
  v12 = [(PDSRegistrationAbandonedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_failureReason, a3);
    objc_storeStrong(&v13->_registrationReason, a4);
    objc_storeStrong(&v13->_heartbeatDate, a5);
  }

  return v13;
}

@end