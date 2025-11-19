@interface HKFHIRServerAuthenticationInformation
- (BOOL)isEqual:(id)a3;
- (HKFHIRServerAuthenticationInformation)initWithClientID:(id)a3 clientSecret:(id)a4 PKCEAlgorithm:(int64_t)a5;
- (HKFHIRServerAuthenticationInformation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRServerAuthenticationInformation

- (HKFHIRServerAuthenticationInformation)initWithClientID:(id)a3 clientSecret:(id)a4 PKCEAlgorithm:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HKFHIRServerAuthenticationInformation;
  v10 = [(HKFHIRServerAuthenticationInformation *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    clientID = v10->_clientID;
    v10->_clientID = v11;

    v13 = [v9 copy];
    clientSecret = v10->_clientSecret;
    v10->_clientSecret = v13;

    v10->_PKCEAlgorithm = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_22:

      goto LABEL_23;
    }

    clientID = self->_clientID;
    v9 = [(HKFHIRServerAuthenticationInformation *)v7 clientID];
    if (clientID != v9)
    {
      v10 = [(HKFHIRServerAuthenticationInformation *)v7 clientID];
      if (!v10)
      {
        v13 = 0;
        goto LABEL_21;
      }

      v3 = v10;
      v11 = self->_clientID;
      v12 = [(HKFHIRServerAuthenticationInformation *)v7 clientID];
      if (![(NSString *)v11 isEqualToString:v12])
      {
        v13 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v23 = v12;
    }

    clientSecret = self->_clientSecret;
    v15 = [(HKFHIRServerAuthenticationInformation *)v7 clientSecret];
    if (clientSecret != v15)
    {
      v16 = [(HKFHIRServerAuthenticationInformation *)v7 clientSecret];
      if (v16)
      {
        v17 = v16;
        v18 = self->_clientSecret;
        v19 = [(HKFHIRServerAuthenticationInformation *)v7 clientSecret];
        if ([(NSString *)v18 isEqualToString:v19])
        {
          PKCEAlgorithm = self->_PKCEAlgorithm;
          v13 = PKCEAlgorithm == [(HKFHIRServerAuthenticationInformation *)v7 PKCEAlgorithm];

LABEL_15:
          goto LABEL_19;
        }
      }

      v13 = 0;
LABEL_19:
      v12 = v23;
      if (clientID != v9)
      {
        goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }

    v21 = self->_PKCEAlgorithm;
    v13 = v21 == [(HKFHIRServerAuthenticationInformation *)v7 PKCEAlgorithm];
    goto LABEL_15;
  }

  v13 = 1;
LABEL_23:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clientID = self->_clientID;
  clientSecret = self->_clientSecret;
  v8 = HKStringFromBool();
  v9 = v8;
  v10 = self->_PKCEAlgorithm - 1;
  if (v10 > 2)
  {
    v11 = @"none";
  }

  else
  {
    v11 = off_2796DC918[v10];
  }

  v12 = [v3 stringWithFormat:@"<%@ %p, client ID: %@, has client secret: %@, PKCE: %@>", v5, self, clientID, v8, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  clientID = self->_clientID;
  v5 = a3;
  [v5 encodeObject:clientID forKey:@"clientID"];
  [v5 encodeObject:self->_clientSecret forKey:@"clientSecret"];
  [v5 encodeInteger:self->_PKCEAlgorithm forKey:@"PKCEAlgorithm"];
}

- (HKFHIRServerAuthenticationInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientSecret"];
  v7 = [v4 decodeIntegerForKey:@"PKCEAlgorithm"];

  v8 = [(HKFHIRServerAuthenticationInformation *)self initWithClientID:v5 clientSecret:v6 PKCEAlgorithm:v7];
  return v8;
}

@end