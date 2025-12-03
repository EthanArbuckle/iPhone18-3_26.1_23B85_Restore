@interface HKOAuth2Credential
+ (id)scopeStringFromScopes:(id)scopes;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCredential:(id)credential epsilonExpiration:(double)expiration;
- (BOOL)isExpired;
- (HKOAuth2Credential)init;
- (HKOAuth2Credential)initWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopeString:(id)scopeString;
- (HKOAuth2Credential)initWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes;
- (HKOAuth2Credential)initWithCoder:(id)coder;
- (NSString)scopeString;
- (id)description;
- (unint64_t)hash;
- (void)_commonInitWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes;
- (void)encodeWithCoder:(id)coder;
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

- (HKOAuth2Credential)initWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopeString:(id)scopeString
{
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  expirationCopy = expiration;
  stringCopy = string;
  if (scopeString)
  {
    scopeString = [HKOAuth2ScopeSet scopesFromScopeString:scopeString];
  }

  v16 = [(HKOAuth2Credential *)self initWithAccessToken:tokenCopy refreshToken:refreshTokenCopy expiration:expirationCopy requestedScopeString:stringCopy scopes:scopeString];

  return v16;
}

- (HKOAuth2Credential)initWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes
{
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  expirationCopy = expiration;
  stringCopy = string;
  scopesCopy = scopes;
  v20.receiver = self;
  v20.super_class = HKOAuth2Credential;
  v17 = [(HKOAuth2Credential *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(HKOAuth2Credential *)v17 _commonInitWithAccessToken:tokenCopy refreshToken:refreshTokenCopy expiration:expirationCopy requestedScopeString:stringCopy scopes:scopesCopy];
  }

  return v18;
}

- (void)_commonInitWithAccessToken:(id)token refreshToken:(id)refreshToken expiration:(id)expiration requestedScopeString:(id)string scopes:(id)scopes
{
  scopesCopy = scopes;
  stringCopy = string;
  expirationCopy = expiration;
  refreshTokenCopy = refreshToken;
  v16 = [token copy];
  accessToken = self->_accessToken;
  self->_accessToken = v16;

  v18 = [refreshTokenCopy copy];
  refreshToken = self->_refreshToken;
  self->_refreshToken = v18;

  v20 = [expirationCopy copy];
  expiration = self->_expiration;
  self->_expiration = v20;

  v22 = [stringCopy copy];
  requestedScopeString = self->_requestedScopeString;
  self->_requestedScopeString = v22;

  v24 = [scopesCopy copy];
  scopes = self->_scopes;
  self->_scopes = v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(HKOAuth2Credential *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(HKOAuth2Credential *)self isEqualToCredential:equalCopy epsilonExpiration:0.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToCredential:(id)credential epsilonExpiration:(double)expiration
{
  credentialCopy = credential;
  expiration = [(HKOAuth2Credential *)self expiration];
  expiration2 = [credentialCopy expiration];
  [expiration timeIntervalSinceDate:expiration2];
  v10 = v9;

  accessToken = self->_accessToken;
  accessToken = [credentialCopy accessToken];
  if (accessToken != accessToken)
  {
    accessToken2 = [credentialCopy accessToken];
    if (!accessToken2)
    {
      v22 = 0;
      goto LABEL_38;
    }

    expiration2 = accessToken2;
    v14 = self->_accessToken;
    accessToken3 = [credentialCopy accessToken];
    if (![(NSString *)v14 isEqualToString:accessToken3])
    {
      v22 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v43 = accessToken3;
  }

  refreshToken = self->_refreshToken;
  refreshToken = [credentialCopy refreshToken];
  if (refreshToken != refreshToken)
  {
    refreshToken2 = [credentialCopy refreshToken];
    if (!refreshToken2)
    {
      v22 = 0;
      goto LABEL_29;
    }

    v19 = refreshToken2;
    v20 = self->_refreshToken;
    refreshToken3 = [credentialCopy refreshToken];
    if (![(NSString *)v20 isEqualToString:refreshToken3])
    {

      v22 = 0;
      goto LABEL_36;
    }

    v41 = refreshToken3;
    v42 = v19;
  }

  v23 = fabs(v10);
  requestedScopeString = self->_requestedScopeString;
  requestedScopeString = [credentialCopy requestedScopeString];
  if (requestedScopeString == requestedScopeString)
  {
    if (v23 <= expiration)
    {
      goto LABEL_22;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_33;
  }

  requestedScopeString2 = [credentialCopy requestedScopeString];
  if (!requestedScopeString2)
  {
    goto LABEL_18;
  }

  v40 = requestedScopeString2;
  v27 = self->_requestedScopeString;
  requestedScopeString3 = [credentialCopy requestedScopeString];
  v29 = v27;
  v30 = requestedScopeString3;
  if (![(NSString *)v29 isEqualToString:requestedScopeString3])
  {

    v22 = 0;
    goto LABEL_27;
  }

  if (v23 > expiration)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v39 = v30;
LABEL_22:
  scopes = self->_scopes;
  scopes = [credentialCopy scopes];
  if (scopes == scopes)
  {

    v22 = 1;
    v30 = v39;
    if (requestedScopeString == requestedScopeString)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v38 = scopes;
  scopes2 = [credentialCopy scopes];
  v30 = v39;
  if (!scopes2)
  {

    v22 = 0;
    if (requestedScopeString == requestedScopeString)
    {
LABEL_33:

      if (refreshToken != refreshToken)
      {
      }

      goto LABEL_35;
    }

LABEL_32:

    goto LABEL_33;
  }

  v34 = self->_scopes;
  v37 = scopes2;
  scopes3 = [credentialCopy scopes];
  v22 = [(NSSet *)v34 isEqual:scopes3];

  if (requestedScopeString != requestedScopeString)
  {
  }

LABEL_27:
  if (refreshToken != refreshToken)
  {

LABEL_29:
    accessToken3 = v43;

    if (accessToken == accessToken)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:

LABEL_36:
  accessToken3 = v43;
  if (accessToken != accessToken)
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

- (void)encodeWithCoder:(id)coder
{
  accessToken = self->_accessToken;
  coderCopy = coder;
  [coderCopy encodeObject:accessToken forKey:@"accessToken"];
  [coderCopy encodeObject:self->_refreshToken forKey:@"refreshToken"];
  [coderCopy encodeObject:self->_expiration forKey:@"expiration"];
  [coderCopy encodeObject:self->_scopes forKey:@"scopes"];
  [coderCopy encodeObject:self->_requestedScopeString forKey:@"requestedScopeString"];
}

- (HKOAuth2Credential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshToken"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"scopes"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedScopeString"];
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
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isExpired
{
  accessToken = [(HKOAuth2Credential *)self accessToken];
  if (accessToken)
  {
  }

  else
  {
    refreshToken = [(HKOAuth2Credential *)self refreshToken];

    if (refreshToken)
    {
      return 1;
    }
  }

  expiration = [(HKOAuth2Credential *)self expiration];

  if (!expiration)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  expiration2 = [(HKOAuth2Credential *)self expiration];
  v7 = [expiration2 hk_isBeforeDate:v5];

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

+ (id)scopeStringFromScopes:(id)scopes
{
  allObjects = [scopes allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_10];

  v5 = [v4 componentsJoinedByString:@" "];

  return v5;
}

@end