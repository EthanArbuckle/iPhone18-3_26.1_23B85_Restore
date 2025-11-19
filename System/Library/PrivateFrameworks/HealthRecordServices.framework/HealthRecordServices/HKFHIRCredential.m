@interface HKFHIRCredential
+ (id)nilCredential;
- (BOOL)isEqualToCredential:(id)a3 epsilonExpiration:(double)a4;
- (HKFHIRCredential)initWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopes:(id)a7;
- (HKFHIRCredential)initWithAccessToken:(id)a3 refreshToken:(id)a4 patientID:(id)a5 expiration:(id)a6 requestedScopeString:(id)a7 scopeString:(id)a8;
- (HKFHIRCredential)initWithAccessToken:(id)a3 refreshToken:(id)a4 patientID:(id)a5 expiration:(id)a6 requestedScopeString:(id)a7 scopes:(id)a8;
- (HKFHIRCredential)initWithCoder:(id)a3;
- (id)asRefreshResultWithError:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRCredential

- (HKFHIRCredential)initWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopes:(id)a7
{
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE660];
  v10 = NSStringFromSelector(a2);
  [v8 raise:v9 format:{@"The -%@ method is not available on %@", v10, objc_opt_class()}];

  return 0;
}

- (HKFHIRCredential)initWithAccessToken:(id)a3 refreshToken:(id)a4 patientID:(id)a5 expiration:(id)a6 requestedScopeString:(id)a7 scopeString:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  if (!v17)
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

  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = [HKOAuth2ScopeSet scopesFromScopeString:v21];
LABEL_6:
  v23 = [(HKFHIRCredential *)self initWithAccessToken:v15 refreshToken:v16 patientID:v17 expiration:v18 requestedScopeString:v19 scopes:v22];

  return v23;
}

- (HKFHIRCredential)initWithAccessToken:(id)a3 refreshToken:(id)a4 patientID:(id)a5 expiration:(id)a6 requestedScopeString:(id)a7 scopes:(id)a8
{
  v14 = a5;
  v19.receiver = self;
  v19.super_class = HKFHIRCredential;
  v15 = [(HKOAuth2Credential *)&v19 initWithAccessToken:a3 refreshToken:a4 expiration:a6 requestedScopeString:a7 scopes:a8];
  if (v15)
  {
    v16 = [v14 copy];
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

- (id)asRefreshResultWithError:(id)a3
{
  v4 = a3;
  v5 = [[HKFHIRCredentialRefreshResult alloc] initWithCredential:self authResponse:0 endStates:0 error:v4];

  return v5;
}

- (BOOL)isEqualToCredential:(id)a3 epsilonExpiration:(double)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HKFHIRCredential;
  if ([(HKOAuth2Credential *)&v14 isEqualToCredential:v6 epsilonExpiration:a4])
  {
    patientID = self->_patientID;
    v8 = [v6 patientID];
    if (patientID == v8)
    {
      v12 = 1;
    }

    else
    {
      v9 = [v6 patientID];
      if (v9)
      {
        v10 = self->_patientID;
        v11 = [v6 patientID];
        v12 = [(NSString *)v10 isEqualToString:v11];
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

- (void)encodeWithCoder:(id)a3
{
  patientID = self->_patientID;
  v5 = a3;
  [v5 encodeObject:patientID forKey:@"patientID"];
  v6.receiver = self;
  v6.super_class = HKFHIRCredential;
  [(HKOAuth2Credential *)&v6 encodeWithCoder:v5];
}

- (HKFHIRCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patientID"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HKFHIRCredential;
    v6 = [(HKOAuth2Credential *)&v11 initWithCoder:v4];

    if (v6)
    {
      v7 = [v5 copy];
      patientID = v6->_patientID;
      v6->_patientID = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];

    v9 = 0;
  }

  return v9;
}

- (void)initWithAccessToken:(uint64_t)a1 refreshToken:(uint64_t)a2 patientID:expiration:requestedScopeString:scopeString:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRCredential.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"patientID"}];
}

@end