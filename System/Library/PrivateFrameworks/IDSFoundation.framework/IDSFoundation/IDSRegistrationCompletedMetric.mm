@interface IDSRegistrationCompletedMetric
- (IDSRegistrationCompletedMetric)initWithRegistrationType:(int)type serviceIdentifier:(id)identifier wasSuccessful:(BOOL)successful registrationError:(int64_t)error;
- (NSCopying)awdRepresentation;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationCompletedMetric

- (IDSRegistrationCompletedMetric)initWithRegistrationType:(int)type serviceIdentifier:(id)identifier wasSuccessful:(BOOL)successful registrationError:(int64_t)error
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = IDSRegistrationCompletedMetric;
  v11 = [(IDSRegistrationCompletedMetric *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_registrationType = type;
    v13 = [identifierCopy copy];
    serviceIdentifier = v12->_serviceIdentifier;
    v12->_serviceIdentifier = v13;

    v12->_wasSuccessful = successful;
    v12->_registrationError = error;
  }

  return v12;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[IDSRegistrationCompletedMetric registrationType](self, "registrationType")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"ErrorDomain", v4);
  }

  serviceIdentifier = [(IDSRegistrationCompletedMetric *)self serviceIdentifier];
  if (serviceIdentifier)
  {
    CFDictionarySetValue(v3, @"ServiceIdentifier", serviceIdentifier);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationCompletedMetric wasSuccessful](self, "wasSuccessful")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"WasSuccessful", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationCompletedMetric registrationError](self, "registrationError")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"IDSRegistrationError", v7);
  }

  return v3;
}

- (NSCopying)awdRepresentation
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [v3 setRegistrationType:{-[IDSRegistrationCompletedMetric registrationType](self, "registrationType")}];
  serviceIdentifier = [(IDSRegistrationCompletedMetric *)self serviceIdentifier];
  [v3 setServiceIdentifier:serviceIdentifier];

  [v3 setWasSuccessful:{-[IDSRegistrationCompletedMetric wasSuccessful](self, "wasSuccessful")}];
  [v3 setRegistrationError:{-[IDSRegistrationCompletedMetric registrationError](self, "registrationError")}];

  return v3;
}

@end