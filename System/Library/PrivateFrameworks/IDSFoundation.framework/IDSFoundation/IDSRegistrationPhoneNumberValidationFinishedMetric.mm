@interface IDSRegistrationPhoneNumberValidationFinishedMetric
- (IDSRegistrationPhoneNumberValidationFinishedMetric)initWithGuid:(id)a3 registrationError:(unsigned int)a4 validationDuration:(id)a5 numberOfSMSSent:(id)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationPhoneNumberValidationFinishedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationPhoneNumberValidationFinishedMetric registrationError](self, "registrationError")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"registrationError", v5);
  }

  v6 = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)self validationDuration];
  if (v6)
  {
    CFDictionarySetValue(v3, @"validationDuration", v6);
  }

  v7 = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)self numberOfSMSSent];
  if (v7)
  {
    CFDictionarySetValue(v3, @"numberOfSMSSent", v7);
  }

  return v3;
}

- (IDSRegistrationPhoneNumberValidationFinishedMetric)initWithGuid:(id)a3 registrationError:(unsigned int)a4 validationDuration:(id)a5 numberOfSMSSent:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IDSRegistrationPhoneNumberValidationFinishedMetric;
  v14 = [(IDSRegistrationPhoneNumberValidationFinishedMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guid, a3);
    v15->_registrationError = a4;
    objc_storeStrong(&v15->_validationDuration, a5);
    objc_storeStrong(&v15->_numberOfSMSSent, a6);
  }

  return v15;
}

@end