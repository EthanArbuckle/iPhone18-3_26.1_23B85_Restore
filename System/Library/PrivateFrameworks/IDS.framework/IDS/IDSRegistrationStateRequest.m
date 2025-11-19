@interface IDSRegistrationStateRequest
- (IDSRegistrationStateRequest)initWithCoder:(id)a3;
- (IDSRegistrationStateRequest)initWithServicesToFetch:(id)a3;
@end

@implementation IDSRegistrationStateRequest

- (IDSRegistrationStateRequest)initWithServicesToFetch:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSRegistrationStateRequest;
  v6 = [(IDSRegistrationStateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_servicesToFetch, a3);
  }

  return v7;
}

- (IDSRegistrationStateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"services"];

  v6 = [(IDSRegistrationStateRequest *)self initWithServicesToFetch:v5];
  return v6;
}

@end