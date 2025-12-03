@interface IDSRegistrationPhoneNumberReceivedSMSMetric
- (IDSRegistrationPhoneNumberReceivedSMSMetric)initWithGuid:(id)guid smsRoundTripDuration:(id)duration;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationPhoneNumberReceivedSMSMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationPhoneNumberReceivedSMSMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  smsRoundTripDuration = [(IDSRegistrationPhoneNumberReceivedSMSMetric *)self smsRoundTripDuration];
  if (smsRoundTripDuration)
  {
    CFDictionarySetValue(v3, @"smsRoundTripDuration", smsRoundTripDuration);
  }

  return v3;
}

- (IDSRegistrationPhoneNumberReceivedSMSMetric)initWithGuid:(id)guid smsRoundTripDuration:(id)duration
{
  guidCopy = guid;
  durationCopy = duration;
  v12.receiver = self;
  v12.super_class = IDSRegistrationPhoneNumberReceivedSMSMetric;
  v9 = [(IDSRegistrationPhoneNumberReceivedSMSMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_guid, guid);
    objc_storeStrong(&v10->_smsRoundTripDuration, duration);
  }

  return v10;
}

@end