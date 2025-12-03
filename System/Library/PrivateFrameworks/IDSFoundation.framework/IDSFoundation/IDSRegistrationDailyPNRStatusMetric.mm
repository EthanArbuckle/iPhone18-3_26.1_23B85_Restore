@interface IDSRegistrationDailyPNRStatusMetric
- (IDSRegistrationDailyPNRStatusMetric)initWithPNRCurrentlyRegistered:(BOOL)registered pnrRegisteredToday:(BOOL)today pnrMechanism:(id)mechanism errorCode:(id)code hasMultipleSIMs:(BOOL)ms;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationDailyPNRStatusMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_pnrCurrentlyRegistered];
  if (v4)
  {
    CFDictionarySetValue(v3, @"pnr_registered", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_pnrRegisteredToday];
  if (v5)
  {
    CFDictionarySetValue(v3, @"pnr_activation_reregistration", v5);
  }

  pnrMechanism = self->_pnrMechanism;
  if (pnrMechanism)
  {
    CFDictionarySetValue(v3, @"transport", pnrMechanism);
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    CFDictionarySetValue(v3, @"error_codes", errorCode);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasMultipleSIMs];
  if (v8)
  {
    CFDictionarySetValue(v3, @"has_multiple_sims", v8);
  }

  return v3;
}

- (IDSRegistrationDailyPNRStatusMetric)initWithPNRCurrentlyRegistered:(BOOL)registered pnrRegisteredToday:(BOOL)today pnrMechanism:(id)mechanism errorCode:(id)code hasMultipleSIMs:(BOOL)ms
{
  mechanismCopy = mechanism;
  codeCopy = code;
  v18.receiver = self;
  v18.super_class = IDSRegistrationDailyPNRStatusMetric;
  v15 = [(IDSRegistrationDailyPNRStatusMetric *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_pnrCurrentlyRegistered = registered;
    v15->_pnrRegisteredToday = today;
    objc_storeStrong(&v15->_pnrMechanism, mechanism);
    objc_storeStrong(&v16->_errorCode, code);
    v16->_hasMultipleSIMs = ms;
  }

  return v16;
}

@end