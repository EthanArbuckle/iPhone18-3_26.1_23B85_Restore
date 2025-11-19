@interface IDSRegistrationRenewCredentialsCompletedMetric
- (IDSRegistrationRenewCredentialsCompletedMetric)initWithRenewResult:(int64_t)a3 errorDomain:(id)a4 errorCode:(int64_t)a5;
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

  v5 = [(IDSRegistrationRenewCredentialsCompletedMetric *)self errorDomain];
  if (v5)
  {
    CFDictionarySetValue(v3, @"errorDomain", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationRenewCredentialsCompletedMetric errorCode](self, "errorCode")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"errorCode", v6);
  }

  return v3;
}

- (IDSRegistrationRenewCredentialsCompletedMetric)initWithRenewResult:(int64_t)a3 errorDomain:(id)a4 errorCode:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = IDSRegistrationRenewCredentialsCompletedMetric;
  v10 = [(IDSRegistrationRenewCredentialsCompletedMetric *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_renewResult = a3;
    objc_storeStrong(&v10->_errorDomain, a4);
    v11->_errorCode = a5;
  }

  return v11;
}

@end