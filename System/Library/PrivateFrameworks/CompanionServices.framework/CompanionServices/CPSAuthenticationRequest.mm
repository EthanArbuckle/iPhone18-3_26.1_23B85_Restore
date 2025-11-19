@interface CPSAuthenticationRequest
- (CPSAuthenticationRequest)init;
- (CPSAuthenticationRequest)initWithCoder:(id)a3;
@end

@implementation CPSAuthenticationRequest

- (CPSAuthenticationRequest)init
{
  v7.receiver = self;
  v7.super_class = CPSAuthenticationRequest;
  v2 = [(CPSAuthenticationRequest *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (CPSAuthenticationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPSAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;
  }

  return v5;
}

@end