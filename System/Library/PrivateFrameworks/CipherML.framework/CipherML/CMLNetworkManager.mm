@interface CMLNetworkManager
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNetworkManager:(id)a3;
- (CMLNetworkManager)initWithCoder:(id)a3;
- (CMLNetworkManager)initWithType:(int64_t)a3 endpoint:(id)a4 issuer:(id)a5 bearerToken:(id)a6 featureId:(id)a7 privacyProxyFailOpen:(BOOL)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMLNetworkManager

- (CMLNetworkManager)initWithType:(int64_t)a3 endpoint:(id)a4 issuer:(id)a5 bearerToken:(id)a6 featureId:(id)a7 privacyProxyFailOpen:(BOOL)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = CMLNetworkManager;
  v18 = [(CMLNetworkManager *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a3;
    v20 = [v14 copy];
    endpoint = v19->_endpoint;
    v19->_endpoint = v20;

    v22 = [v15 copy];
    issuer = v19->_issuer;
    v19->_issuer = v22;

    v24 = [v16 copy];
    authenticationToken = v19->_authenticationToken;
    v19->_authenticationToken = v24;

    v26 = [v17 copy];
    featureId = v19->_featureId;
    v19->_featureId = v26;

    v19->_privacyProxyFailOpen = a8;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLNetworkManager *)self isEqualToNetworkManager:v5];
  }

  return v6;
}

- (BOOL)isEqualToNetworkManager:(id)a3
{
  v4 = a3;
  v5 = [(CMLNetworkManager *)self endpoint];
  v6 = [v4 endpoint];
  if (v5 == v6)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(CMLNetworkManager *)self endpoint];
    v8 = [v4 endpoint];
    v9 = [v7 isEqual:v8];

    v10 = v9 ^ 1;
  }

  v11 = [(CMLNetworkManager *)self issuer];
  v12 = [v4 issuer];
  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    v13 = [(CMLNetworkManager *)self issuer];
    v14 = [v4 issuer];
    v15 = [v13 isEqual:v14];

    v16 = v15 ^ 1;
  }

  v17 = [(CMLNetworkManager *)self authenticationToken];
  v18 = [v4 authenticationToken];
  if (v17 == v18)
  {
    v22 = 0;
  }

  else
  {
    v19 = [(CMLNetworkManager *)self authenticationToken];
    v20 = [v4 authenticationToken];
    v21 = [v19 isEqual:v20];

    v22 = v21 ^ 1;
  }

  v23 = [(CMLNetworkManager *)self featureId];
  v24 = [v4 featureId];
  if (v23 == v24)
  {
    v27 = 1;
  }

  else
  {
    v25 = [(CMLNetworkManager *)self featureId];
    v26 = [v4 featureId];
    v27 = [v25 isEqual:v26];
  }

  v28 = [(CMLNetworkManager *)self privacyProxyFailOpen];
  v29 = [v4 privacyProxyFailOpen];
  v30 = [(CMLNetworkManager *)self type];
  if ((v30 != [v4 type]) | (v10 | v16 | v22) & 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v27 & (v28 ^ v29 ^ 1);
  }

  return v31;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLNetworkManager type](self, "type")}];
  v4 = [v3 hash];
  v5 = [(CMLNetworkManager *)self endpoint];
  v6 = [v5 hash];
  v7 = [(CMLNetworkManager *)self issuer];
  v8 = v6 ^ [v7 hash];
  v9 = [(CMLNetworkManager *)self authenticationToken];
  v10 = v8 ^ [v9 hash];
  v11 = [(CMLNetworkManager *)self featureId];
  v12 = v10 ^ [v11 hash];
  v13 = v12 ^ [(CMLNetworkManager *)self privacyProxyFailOpen];

  return v13 ^ v4;
}

- (CMLNetworkManager)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuer"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureId"];
  v10 = [v4 decodeBoolForKey:@"privacyProxyFailOpen"];

  v11 = [(CMLNetworkManager *)self initWithType:v5 endpoint:v6 issuer:v7 bearerToken:v8 featureId:v9 privacyProxyFailOpen:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[CMLNetworkManager type](self forKey:{"type"), @"type"}];
  v4 = [(CMLNetworkManager *)self endpoint];
  [v8 encodeObject:v4 forKey:@"endpoint"];

  v5 = [(CMLNetworkManager *)self issuer];
  [v8 encodeObject:v5 forKey:@"issuer"];

  v6 = [(CMLNetworkManager *)self authenticationToken];
  [v8 encodeObject:v6 forKey:@"authenticationToken"];

  v7 = [(CMLNetworkManager *)self featureId];
  [v8 encodeObject:v7 forKey:@"featureId"];

  [v8 encodeBool:-[CMLNetworkManager privacyProxyFailOpen](self forKey:{"privacyProxyFailOpen"), @"privacyProxyFailOpen"}];
}

@end