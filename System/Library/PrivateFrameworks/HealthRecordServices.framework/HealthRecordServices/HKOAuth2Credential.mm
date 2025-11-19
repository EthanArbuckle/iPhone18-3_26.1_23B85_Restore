@interface HKOAuth2Credential
+ (id)scopeStringFromScopes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCredential:(id)a3 epsilonExpiration:(double)a4;
- (BOOL)isExpired;
- (HKOAuth2Credential)init;
- (HKOAuth2Credential)initWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopeString:(id)a7;
- (HKOAuth2Credential)initWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopes:(id)a7;
- (HKOAuth2Credential)initWithCoder:(id)a3;
- (NSString)scopeString;
- (id)description;
- (unint64_t)hash;
- (void)_commonInitWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopes:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKOAuth2Credential

- (HKOAuth2Credential)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOAuth2Credential)initWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopeString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a7)
  {
    a7 = [HKOAuth2ScopeSet scopesFromScopeString:a7];
  }

  v16 = [(HKOAuth2Credential *)self initWithAccessToken:v12 refreshToken:v13 expiration:v14 requestedScopeString:v15 scopes:a7];

  return v16;
}

- (HKOAuth2Credential)initWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopes:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HKOAuth2Credential;
  v17 = [(HKOAuth2Credential *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(HKOAuth2Credential *)v17 _commonInitWithAccessToken:v12 refreshToken:v13 expiration:v14 requestedScopeString:v15 scopes:v16];
  }

  return v18;
}

- (void)_commonInitWithAccessToken:(id)a3 refreshToken:(id)a4 expiration:(id)a5 requestedScopeString:(id)a6 scopes:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 copy];
  accessToken = self->_accessToken;
  self->_accessToken = v16;

  v18 = [v15 copy];
  refreshToken = self->_refreshToken;
  self->_refreshToken = v18;

  v20 = [v14 copy];
  expiration = self->_expiration;
  self->_expiration = v20;

  v22 = [v13 copy];
  requestedScopeString = self->_requestedScopeString;
  self->_requestedScopeString = v22;

  v24 = [v12 copy];
  scopes = self->_scopes;
  self->_scopes = v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(HKOAuth2Credential *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(HKOAuth2Credential *)self isEqualToCredential:v4 epsilonExpiration:0.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToCredential:(id)a3 epsilonExpiration:(double)a4
{
  v6 = a3;
  v7 = [(HKOAuth2Credential *)self expiration];
  v8 = [v6 expiration];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  accessToken = self->_accessToken;
  v12 = [v6 accessToken];
  if (accessToken != v12)
  {
    v13 = [v6 accessToken];
    if (!v13)
    {
      v22 = 0;
      goto LABEL_38;
    }

    v8 = v13;
    v14 = self->_accessToken;
    v15 = [v6 accessToken];
    if (![(NSString *)v14 isEqualToString:v15])
    {
      v22 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v43 = v15;
  }

  refreshToken = self->_refreshToken;
  v17 = [v6 refreshToken];
  if (refreshToken != v17)
  {
    v18 = [v6 refreshToken];
    if (!v18)
    {
      v22 = 0;
      goto LABEL_29;
    }

    v19 = v18;
    v20 = self->_refreshToken;
    v21 = [v6 refreshToken];
    if (![(NSString *)v20 isEqualToString:v21])
    {

      v22 = 0;
      goto LABEL_36;
    }

    v41 = v21;
    v42 = v19;
  }

  v23 = fabs(v10);
  requestedScopeString = self->_requestedScopeString;
  v25 = [v6 requestedScopeString];
  if (requestedScopeString == v25)
  {
    if (v23 <= a4)
    {
      goto LABEL_22;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_33;
  }

  v26 = [v6 requestedScopeString];
  if (!v26)
  {
    goto LABEL_18;
  }

  v40 = v26;
  v27 = self->_requestedScopeString;
  v28 = [v6 requestedScopeString];
  v29 = v27;
  v30 = v28;
  if (![(NSString *)v29 isEqualToString:v28])
  {

    v22 = 0;
    goto LABEL_27;
  }

  if (v23 > a4)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v39 = v30;
LABEL_22:
  scopes = self->_scopes;
  v32 = [v6 scopes];
  if (scopes == v32)
  {

    v22 = 1;
    v30 = v39;
    if (requestedScopeString == v25)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v38 = v32;
  v33 = [v6 scopes];
  v30 = v39;
  if (!v33)
  {

    v22 = 0;
    if (requestedScopeString == v25)
    {
LABEL_33:

      if (refreshToken != v17)
      {
      }

      goto LABEL_35;
    }

LABEL_32:

    goto LABEL_33;
  }

  v34 = self->_scopes;
  v37 = v33;
  v36 = [v6 scopes];
  v22 = [(NSSet *)v34 isEqual:v36];

  if (requestedScopeString != v25)
  {
  }

LABEL_27:
  if (refreshToken != v17)
  {

LABEL_29:
    v15 = v43;

    if (accessToken == v12)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:

LABEL_36:
  v15 = v43;
  if (accessToken != v12)
  {
    goto LABEL_37;
  }

LABEL_38:

  return v22;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accessToken hash];
  v4 = [(NSString *)self->_refreshToken hash]^ v3;
  v5 = [(NSString *)self->_requestedScopeString hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_expiration hash];
  return v6 ^ [(NSSet *)self->_scopes hash];
}

- (void)encodeWithCoder:(id)a3
{
  accessToken = self->_accessToken;
  v5 = a3;
  [v5 encodeObject:accessToken forKey:@"accessToken"];
  [v5 encodeObject:self->_refreshToken forKey:@"refreshToken"];
  [v5 encodeObject:self->_expiration forKey:@"expiration"];
  [v5 encodeObject:self->_scopes forKey:@"scopes"];
  [v5 encodeObject:self->_requestedScopeString forKey:@"requestedScopeString"];
}

- (HKOAuth2Credential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refreshToken"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"scopes"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedScopeString"];
  if (v12)
  {
    v17.receiver = self;
    v17.super_class = HKOAuth2Credential;
    v13 = [(HKOAuth2Credential *)&v17 init];
    v14 = v13;
    if (v13)
    {
      [(HKOAuth2Credential *)v13 _commonInitWithAccessToken:v5 refreshToken:v6 expiration:v7 requestedScopeString:v12 scopes:v11];
    }

    self = v14;
    v15 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v15 = 0;
  }

  return v15;
}

- (BOOL)isExpired
{
  v3 = [(HKOAuth2Credential *)self accessToken];
  if (v3)
  {
  }

  else
  {
    v9 = [(HKOAuth2Credential *)self refreshToken];

    if (v9)
    {
      return 1;
    }
  }

  v4 = [(HKOAuth2Credential *)self expiration];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v6 = [(HKOAuth2Credential *)self expiration];
  v7 = [v6 hk_isBeforeDate:v5];

  return v7;
}

- (NSString)scopeString
{
  if (self->_scopes)
  {
    v3 = [objc_opt_class() scopeStringFromScopes:self->_scopes];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accessToken = self->_accessToken;
  v7 = HKStringFromBool();
  refreshToken = self->_refreshToken;
  v9 = HKStringFromBool();
  v10 = [v3 stringWithFormat:@"<%@ %p has access token: %@, has refresh token: %@, expiration: %@, scopes: %lu>", v5, self, v7, v9, self->_expiration, -[NSSet count](self->_scopes, "count")];;

  return v10;
}

+ (id)scopeStringFromScopes:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_10];

  v5 = [v4 componentsJoinedByString:@" "];

  return v5;
}

@end