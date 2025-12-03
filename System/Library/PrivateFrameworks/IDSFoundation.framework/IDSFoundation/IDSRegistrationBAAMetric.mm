@interface IDSRegistrationBAAMetric
- (IDSRegistrationBAAMetric)initWithSuccess:(BOOL)success error:(id)error deviceID:(id)d;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSRegistrationBAAMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationBAAMetric success](self, "success")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"Success", v4);
  }

  error = [(IDSRegistrationBAAMetric *)self error];

  if (error)
  {
    error2 = [(IDSRegistrationBAAMetric *)self error];
    domain = [error2 domain];

    if (domain)
    {
      CFDictionarySetValue(v3, @"ErrorDomain", domain);
    }

    v8 = MEMORY[0x1E696AD98];
    error3 = [(IDSRegistrationBAAMetric *)self error];
    v10 = [v8 numberWithInteger:{objc_msgSend(error3, "code")}];

    if (v10)
    {
      CFDictionarySetValue(v3, @"ErrorCode", v10);
    }
  }

  deviceID = [(IDSRegistrationBAAMetric *)self deviceID];
  if (deviceID)
  {
    CFDictionarySetValue(v3, @"DeviceID", deviceID);
  }

  return v3;
}

- (IDSRegistrationBAAMetric)initWithSuccess:(BOOL)success error:(id)error deviceID:(id)d
{
  errorCopy = error;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = IDSRegistrationBAAMetric;
  v11 = [(IDSRegistrationBAAMetric *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = success;
    objc_storeStrong(&v11->_error, error);
    objc_storeStrong(&v12->_deviceID, d);
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(IDSRegistrationBAAMetric *)self name];
  if ([(IDSRegistrationBAAMetric *)self success])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  error = [(IDSRegistrationBAAMetric *)self error];
  deviceID = [(IDSRegistrationBAAMetric *)self deviceID];
  v8 = [v3 stringWithFormat:@"%@: <success: %@, error: %@, deviceID: %@>", name, v5, error, deviceID];

  return v8;
}

@end