@interface CMLNetworkManager
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNetworkManager:(id)manager;
- (CMLNetworkManager)initWithCoder:(id)coder;
- (CMLNetworkManager)initWithType:(int64_t)type endpoint:(id)endpoint issuer:(id)issuer bearerToken:(id)token featureId:(id)id privacyProxyFailOpen:(BOOL)open;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLNetworkManager

- (CMLNetworkManager)initWithType:(int64_t)type endpoint:(id)endpoint issuer:(id)issuer bearerToken:(id)token featureId:(id)id privacyProxyFailOpen:(BOOL)open
{
  endpointCopy = endpoint;
  issuerCopy = issuer;
  tokenCopy = token;
  idCopy = id;
  v29.receiver = self;
  v29.super_class = CMLNetworkManager;
  v18 = [(CMLNetworkManager *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v20 = [endpointCopy copy];
    endpoint = v19->_endpoint;
    v19->_endpoint = v20;

    v22 = [issuerCopy copy];
    issuer = v19->_issuer;
    v19->_issuer = v22;

    v24 = [tokenCopy copy];
    authenticationToken = v19->_authenticationToken;
    v19->_authenticationToken = v24;

    v26 = [idCopy copy];
    featureId = v19->_featureId;
    v19->_featureId = v26;

    v19->_privacyProxyFailOpen = open;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLNetworkManager *)self isEqualToNetworkManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToNetworkManager:(id)manager
{
  managerCopy = manager;
  endpoint = [(CMLNetworkManager *)self endpoint];
  endpoint2 = [managerCopy endpoint];
  if (endpoint == endpoint2)
  {
    v10 = 0;
  }

  else
  {
    endpoint3 = [(CMLNetworkManager *)self endpoint];
    endpoint4 = [managerCopy endpoint];
    v9 = [endpoint3 isEqual:endpoint4];

    v10 = v9 ^ 1;
  }

  issuer = [(CMLNetworkManager *)self issuer];
  issuer2 = [managerCopy issuer];
  if (issuer == issuer2)
  {
    v16 = 0;
  }

  else
  {
    issuer3 = [(CMLNetworkManager *)self issuer];
    issuer4 = [managerCopy issuer];
    v15 = [issuer3 isEqual:issuer4];

    v16 = v15 ^ 1;
  }

  authenticationToken = [(CMLNetworkManager *)self authenticationToken];
  authenticationToken2 = [managerCopy authenticationToken];
  if (authenticationToken == authenticationToken2)
  {
    v22 = 0;
  }

  else
  {
    authenticationToken3 = [(CMLNetworkManager *)self authenticationToken];
    authenticationToken4 = [managerCopy authenticationToken];
    v21 = [authenticationToken3 isEqual:authenticationToken4];

    v22 = v21 ^ 1;
  }

  featureId = [(CMLNetworkManager *)self featureId];
  featureId2 = [managerCopy featureId];
  if (featureId == featureId2)
  {
    v27 = 1;
  }

  else
  {
    featureId3 = [(CMLNetworkManager *)self featureId];
    featureId4 = [managerCopy featureId];
    v27 = [featureId3 isEqual:featureId4];
  }

  privacyProxyFailOpen = [(CMLNetworkManager *)self privacyProxyFailOpen];
  privacyProxyFailOpen2 = [managerCopy privacyProxyFailOpen];
  type = [(CMLNetworkManager *)self type];
  if ((type != [managerCopy type]) | (v10 | v16 | v22) & 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v27 & (privacyProxyFailOpen ^ privacyProxyFailOpen2 ^ 1);
  }

  return v31;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLNetworkManager type](self, "type")}];
  v4 = [v3 hash];
  endpoint = [(CMLNetworkManager *)self endpoint];
  v6 = [endpoint hash];
  issuer = [(CMLNetworkManager *)self issuer];
  v8 = v6 ^ [issuer hash];
  authenticationToken = [(CMLNetworkManager *)self authenticationToken];
  v10 = v8 ^ [authenticationToken hash];
  featureId = [(CMLNetworkManager *)self featureId];
  v12 = v10 ^ [featureId hash];
  v13 = v12 ^ [(CMLNetworkManager *)self privacyProxyFailOpen];

  return v13 ^ v4;
}

- (CMLNetworkManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuer"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureId"];
  v10 = [coderCopy decodeBoolForKey:@"privacyProxyFailOpen"];

  v11 = [(CMLNetworkManager *)self initWithType:v5 endpoint:v6 issuer:v7 bearerToken:v8 featureId:v9 privacyProxyFailOpen:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CMLNetworkManager type](self forKey:{"type"), @"type"}];
  endpoint = [(CMLNetworkManager *)self endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];

  issuer = [(CMLNetworkManager *)self issuer];
  [coderCopy encodeObject:issuer forKey:@"issuer"];

  authenticationToken = [(CMLNetworkManager *)self authenticationToken];
  [coderCopy encodeObject:authenticationToken forKey:@"authenticationToken"];

  featureId = [(CMLNetworkManager *)self featureId];
  [coderCopy encodeObject:featureId forKey:@"featureId"];

  [coderCopy encodeBool:-[CMLNetworkManager privacyProxyFailOpen](self forKey:{"privacyProxyFailOpen"), @"privacyProxyFailOpen"}];
}

@end