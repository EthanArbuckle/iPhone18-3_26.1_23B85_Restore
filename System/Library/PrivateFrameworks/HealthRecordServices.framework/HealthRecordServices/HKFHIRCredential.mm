@interface HKFHIRCredential
+ (id)nilCredential;
- (BOOL)isEqualToCredential:(id)credential epsilonExpiration:(double)expiration;
- (HKFHIRCredential)initWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes;
- (HKFHIRCredential)initWithAccessToken:(id)token refreshToken:(id)refreshToken patientID:(id)d expiration:(id)expiration requestedScopeString:(id)string scopeString:(id)scopeString;
- (HKFHIRCredential)initWithAccessToken:(id)token refreshToken:(id)refreshToken patientID:(id)d expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes;
- (HKFHIRCredential)initWithCoder:(id)coder;
- (id)asRefreshResultWithError:(id)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRCredential

- (HKFHIRCredential)initWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes
{
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE660];
  v10 = NSStringFromSelector(a2);
  [v8 raise:v9 format:{@"The -%@ method is not available on %@", v10, objc_opt_class()}];

  return 0;
}

- (HKFHIRCredential)initWithAccessToken:(id)token refreshToken:(id)refreshToken patientID:(id)d expiration:(id)expiration requestedScopeString:(id)string scopeString:(id)scopeString
{
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  dCopy = d;
  expirationCopy = expiration;
  stringCopy = string;
  scopeStringCopy = scopeString;
  v21 = scopeStringCopy;
  if (!dCopy)
  {
    [HKFHIRCredential initWithAccessToken:a2 refreshToken:self patientID:? expiration:? requestedScopeString:? scopeString:?];
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  if (!scopeStringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = [HKOAuth2ScopeSet scopesFromScopeString:v21];
LABEL_6:
  v23 = [(HKFHIRCredential *)self initWithAccessToken:tokenCopy refreshToken:refreshTokenCopy patientID:dCopy expiration:expirationCopy requestedScopeString:stringCopy scopes:v22];

  return v23;
}

- (HKFHIRCredential)initWithAccessToken:(id)token refreshToken:(id)refreshToken patientID:(id)d expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = HKFHIRCredential;
  v15 = [(HKOAuth2Credential *)&v19 initWithAccessToken:token refreshToken:refreshToken expiration:expiration requestedScopeString:string scopes:scopes];
  if (v15)
  {
    v16 = [dCopy copy];
    patientID = v15->_patientID;
    v15->_patientID = v16;
  }

  return v15;
}

+ (id)nilCredential
{
  v2 = [[HKFHIRCredential alloc] initWithAccessToken:0 refreshToken:0 patientID:&stru_2863E37A8 expiration:0 requestedScopeString:&stru_2863E37A8 scopes:0];

  return v2;
}

- (id)asRefreshResultWithError:(id)error
{
  errorCopy = error;
  v5 = [[HKFHIRCredentialRefreshResult alloc] initWithCredential:self authResponse:0 endStates:0 error:errorCopy];

  return v5;
}

- (BOOL)isEqualToCredential:(id)credential epsilonExpiration:(double)expiration
{
  credentialCopy = credential;
  v14.receiver = self;
  v14.super_class = HKFHIRCredential;
  if ([(HKOAuth2Credential *)&v14 isEqualToCredential:credentialCopy epsilonExpiration:expiration])
  {
    patientID = self->_patientID;
    patientID = [credentialCopy patientID];
    if (patientID == patientID)
    {
      v12 = 1;
    }

    else
    {
      patientID2 = [credentialCopy patientID];
      if (patientID2)
      {
        v10 = self->_patientID;
        patientID3 = [credentialCopy patientID];
        v12 = [(NSString *)v10 isEqualToString:patientID3];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HKFHIRCredential;
  v3 = [(HKOAuth2Credential *)&v5 hash];
  return [(NSString *)self->_patientID hash]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  patientID = self->_patientID;
  coderCopy = coder;
  [coderCopy encodeObject:patientID forKey:@"patientID"];
  v6.receiver = self;
  v6.super_class = HKFHIRCredential;
  [(HKOAuth2Credential *)&v6 encodeWithCoder:coderCopy];
}

- (HKFHIRCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patientID"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HKFHIRCredential;
    v6 = [(HKOAuth2Credential *)&v11 initWithCoder:coderCopy];

    if (v6)
    {
      v7 = [v5 copy];
      patientID = v6->_patientID;
      v6->_patientID = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithAccessToken:(uint64_t)a1 refreshToken:(uint64_t)a2 patientID:expiration:requestedScopeString:scopeString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRCredential.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"patientID"}];
}

@end