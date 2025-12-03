@interface CPSStoreAuthenticationRequest
- (CPSStoreAuthenticationRequest)initWithCoder:(id)coder;
- (CPSStoreAuthenticationRequest)initWithXPCDictionary:(id)dictionary;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation CPSStoreAuthenticationRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_authenticationRequest withName:@"authenticationRequest"];
  v5 = [v3 appendObject:self->_account withName:@"account"];
  build = [v3 build];

  return build;
}

- (CPSStoreAuthenticationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CPSStoreAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:getAMSDelegateAuthenticateRequestClass() forKey:@"authenticationRequest"];
    authenticationRequest = v5->_authenticationRequest;
    v5->_authenticationRequest = v6;

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"account"];
    account = v5->_account;
    v5->_account = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSStoreAuthenticationRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_authenticationRequest forKey:{@"authenticationRequest", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_account forKey:@"account"];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v10 = [MEMORY[0x277CF0D20] coderWithMessage:dictionary];
  identifier = [(CPSAuthenticationRequest *)self identifier];
  [v10 encodeObject:identifier forKey:@"identifier"];

  challenge = [(AMSDelegateAuthenticateRequest *)self->_authenticationRequest challenge];
  [v10 encodeObject:challenge forKey:@"authenticationRequestChallenge"];

  userAgent = [(AMSDelegateAuthenticateRequest *)self->_authenticationRequest userAgent];
  [v10 encodeObject:userAgent forKey:@"authenticationRequestUserAgent"];

  ams_altDSID = [(ACAccount *)self->_account ams_altDSID];
  [v10 encodeObject:ams_altDSID forKey:@"accountAltDSID"];

  ams_DSID = [(ACAccount *)self->_account ams_DSID];
  [v10 encodeObject:ams_DSID forKey:@"accountDSID"];

  username = [(ACAccount *)self->_account username];
  [v10 encodeObject:username forKey:@"accountUsername"];
}

- (CPSStoreAuthenticationRequest)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = CPSStoreAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:dictionaryCopy];
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