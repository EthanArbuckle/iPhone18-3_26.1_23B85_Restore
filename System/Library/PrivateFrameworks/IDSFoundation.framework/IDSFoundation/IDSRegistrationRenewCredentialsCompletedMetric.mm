@interface IDSRegistrationRenewCredentialsCompletedMetric
- (IDSRegistrationRenewCredentialsCompletedMetric)initWithRenewResult:(int64_t)result errorDomain:(id)domain errorCode:(int64_t)code;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationRenewCredentialsCompletedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationRenewCredentialsCompletedMetric renewResult](self, "renewResult")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"renewResult", v4);
  }

  errorDomain = [(IDSRegistrationRenewCredentialsCompletedMetric *)self errorDomain];
  if (errorDomain)
  {
    CFDictionarySetValue(v3, @"errorDomain", errorDomain);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationRenewCredentialsCompletedMetric errorCode](self, "errorCode")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"errorCode", v6);
  }

  return v3;
}

- (IDSRegistrationRenewCredentialsCompletedMetric)initWithRenewResult:(int64_t)result errorDomain:(id)domain errorCode:(int64_t)code
{
  domainCopy = domain;
  v13.receiver = self;
  v13.super_class = IDSRegistrationRenewCredentialsCompletedMetric;
  v10 = [(IDSRegistrationRenewCredentialsCompletedMetric *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_renewResult = result;
    objc_storeStrong(&v10->_errorDomain, domain);
    v11->_errorCode = code;
  }

  return v11;
}

@end