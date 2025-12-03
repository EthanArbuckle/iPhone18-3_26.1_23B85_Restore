@interface IDSRegistrationPhoneNumberValidationFinishedMetric
- (IDSRegistrationPhoneNumberValidationFinishedMetric)initWithGuid:(id)guid registrationError:(unsigned int)error validationDuration:(id)duration numberOfSMSSent:(id)sent;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationPhoneNumberValidationFinishedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationPhoneNumberValidationFinishedMetric registrationError](self, "registrationError")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"registrationError", v5);
  }

  validationDuration = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)self validationDuration];
  if (validationDuration)
  {
    CFDictionarySetValue(v3, @"validationDuration", validationDuration);
  }

  numberOfSMSSent = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)self numberOfSMSSent];
  if (numberOfSMSSent)
  {
    CFDictionarySetValue(v3, @"numberOfSMSSent", numberOfSMSSent);
  }

  return v3;
}

- (IDSRegistrationPhoneNumberValidationFinishedMetric)initWithGuid:(id)guid registrationError:(unsigned int)error validationDuration:(id)duration numberOfSMSSent:(id)sent
{
  guidCopy = guid;
  durationCopy = duration;
  sentCopy = sent;
  v17.receiver = self;
  v17.super_class = IDSRegistrationPhoneNumberValidationFinishedMetric;
  v14 = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guid, guid);
    v15->_registrationError = error;
    objc_storeStrong(&v15->_validationDuration, duration);
    objc_storeStrong(&v15->_numberOfSMSSent, sent);
  }

  return v15;
}

@end