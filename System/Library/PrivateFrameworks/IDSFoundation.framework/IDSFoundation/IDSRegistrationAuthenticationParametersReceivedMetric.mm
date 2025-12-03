@interface IDSRegistrationAuthenticationParametersReceivedMetric
- (IDSRegistrationAuthenticationParametersReceivedMetric)initWithErrorCode:(int64_t)code timeIntervalSinceAuthenticationParameterRequest:(double)request;
- (NSCopying)awdRepresentation;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationAuthenticationParametersReceivedMetric

- (IDSRegistrationAuthenticationParametersReceivedMetric)initWithErrorCode:(int64_t)code timeIntervalSinceAuthenticationParameterRequest:(double)request
{
  v7.receiver = self;
  v7.super_class = IDSRegistrationAuthenticationParametersReceivedMetric;
  result = [(IDSRegistrationAuthenticationParametersReceivedMetric *)&v7 init];
  if (result)
  {
    result->_errorCode = code;
    result->_timeIntervalSinceAuthenticationParameterRequest = request;
  }

  return result;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSRegistrationAuthenticationParametersReceivedMetric errorCode](self, "errorCode")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"ErrorCode", v4);
  }

  v5 = MEMORY[0x1E696AD98];
  [(IDSRegistrationAuthenticationParametersReceivedMetric *)self timeIntervalSinceAuthenticationParameterRequest];
  v6 = [v5 numberWithDouble:?];
  if (v6)
  {
    CFDictionarySetValue(v3, @"TimeIntervalSinceRequest", v6);
  }

  return v3;
}

- (NSCopying)awdRepresentation
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [v3 setError:{-[IDSRegistrationAuthenticationParametersReceivedMetric errorCode](self, "errorCode")}];
  [(IDSRegistrationAuthenticationParametersReceivedMetric *)self timeIntervalSinceAuthenticationParameterRequest];
  [v3 setTimeIntervalSinceRequest:(v4 * 1000.0)];

  return v3;
}

@end