@interface CPSStoreAuthenticationRequest
- (CPSStoreAuthenticationRequest)initWithCoder:(id)a3;
- (CPSStoreAuthenticationRequest)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CPSStoreAuthenticationRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_authenticationRequest withName:@"authenticationRequest"];
  v5 = [v3 appendObject:self->_account withName:@"account"];
  v6 = [v3 build];

  return v6;
}

- (CPSStoreAuthenticationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CPSStoreAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:getAMSDelegateAuthenticateRequestClass() forKey:@"authenticationRequest"];
    authenticationRequest = v5->_authenticationRequest;
    v5->_authenticationRequest = v6;

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"account"];
    account = v5->_account;
    v5->_account = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSStoreAuthenticationRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_authenticationRequest forKey:{@"authenticationRequest", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_account forKey:@"account"];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v10 = [MEMORY[0x277CF0D20] coderWithMessage:a3];
  v4 = [(CPSAuthenticationRequest *)self identifier];
  [v10 encodeObject:v4 forKey:@"identifier"];

  v5 = [(AMSDelegateAuthenticateRequest *)self->_authenticationRequest challenge];
  [v10 encodeObject:v5 forKey:@"authenticationRequestChallenge"];

  v6 = [(AMSDelegateAuthenticateRequest *)self->_authenticationRequest userAgent];
  [v10 encodeObject:v6 forKey:@"authenticationRequestUserAgent"];

  v7 = [(ACAccount *)self->_account ams_altDSID];
  [v10 encodeObject:v7 forKey:@"accountAltDSID"];

  v8 = [(ACAccount *)self->_account ams_DSID];
  [v10 encodeObject:v8 forKey:@"accountDSID"];

  v9 = [(ACAccount *)self->_account username];
  [v10 encodeObject:v9 forKey:@"accountUsername"];
}

- (CPSStoreAuthenticationRequest)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CPSStoreAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:v4];
    v7 = [v6 decodeStringForKey:@"identifier"];
    [(CPSAuthenticationRequest *)v5 setIdentifier:v7];

    v8 = [v6 decodeStringForKey:@"authenticationRequestChallenge"];
    v9 = [v6 decodeStringForKey:@"authenticationRequestUserAgent"];
    v10 = [objc_alloc(getAMSDelegateAuthenticateRequestClass()) initWithChallenge:v8 userAgent:v9];
    authenticationRequest = v5->_authenticationRequest;
    v5->_authenticationRequest = v10;

    v12 = [v6 decodeStringForKey:@"accountAltDSID"];
    v13 = objc_opt_self();
    v14 = [v6 decodeObjectOfClass:v13 forKey:@"accountDSID"];

    v15 = [v6 decodeStringForKey:@"accountUsername"];
    ACAccountStoreClass = getACAccountStoreClass();
    v17 = getAMSAccountMediaTypeProduction();
    v18 = [ACAccountStoreClass ams_sharedAccountStoreForMediaType:v17];
    v19 = [v18 ams_iTunesAccountWithAltDSID:v12 DSID:v14 username:v15];
    account = v5->_account;
    v5->_account = v19;
  }

  return v5;
}

@end