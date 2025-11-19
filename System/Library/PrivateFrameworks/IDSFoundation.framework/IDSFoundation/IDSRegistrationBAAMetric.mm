@interface IDSRegistrationBAAMetric
- (IDSRegistrationBAAMetric)initWithSuccess:(BOOL)a3 error:(id)a4 deviceID:(id)a5;
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

  v5 = [(IDSRegistrationBAAMetric *)self error];

  if (v5)
  {
    v6 = [(IDSRegistrationBAAMetric *)self error];
    v7 = [v6 domain];

    if (v7)
    {
      CFDictionarySetValue(v3, @"ErrorDomain", v7);
    }

    v8 = MEMORY[0x1E696AD98];
    v9 = [(IDSRegistrationBAAMetric *)self error];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "code")}];

    if (v10)
    {
      CFDictionarySetValue(v3, @"ErrorCode", v10);
    }
  }

  v11 = [(IDSRegistrationBAAMetric *)self deviceID];
  if (v11)
  {
    CFDictionarySetValue(v3, @"DeviceID", v11);
  }

  return v3;
}

- (IDSRegistrationBAAMetric)initWithSuccess:(BOOL)a3 error:(id)a4 deviceID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSRegistrationBAAMetric;
  v11 = [(IDSRegistrationBAAMetric *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = a3;
    objc_storeStrong(&v11->_error, a4);
    objc_storeStrong(&v12->_deviceID, a5);
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSRegistrationBAAMetric *)self name];
  if ([(IDSRegistrationBAAMetric *)self success])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(IDSRegistrationBAAMetric *)self error];
  v7 = [(IDSRegistrationBAAMetric *)self deviceID];
  v8 = [v3 stringWithFormat:@"%@: <success: %@, error: %@, deviceID: %@>", v4, v5, v6, v7];

  return v8;
}

@end