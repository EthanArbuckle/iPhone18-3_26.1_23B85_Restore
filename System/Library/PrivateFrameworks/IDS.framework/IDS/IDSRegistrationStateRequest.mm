@interface IDSRegistrationStateRequest
- (IDSRegistrationStateRequest)initWithCoder:(id)coder;
- (IDSRegistrationStateRequest)initWithServicesToFetch:(id)fetch;
@end

@implementation IDSRegistrationStateRequest

- (IDSRegistrationStateRequest)initWithServicesToFetch:(id)fetch
{
  fetchCopy = fetch;
  v9.receiver = self;
  v9.super_class = IDSRegistrationStateRequest;
  v6 = [(IDSRegistrationStateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_servicesToFetch, fetch);
  }

  return v7;
}

- (IDSRegistrationStateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"services"];

  v6 = [(IDSRegistrationStateRequest *)self initWithServicesToFetch:v5];
  return v6;
}

@end