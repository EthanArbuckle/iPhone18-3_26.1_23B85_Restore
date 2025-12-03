@interface HKFHIRServerAuthenticationInformation
- (BOOL)isEqual:(id)equal;
- (HKFHIRServerAuthenticationInformation)initWithClientID:(id)d clientSecret:(id)secret PKCEAlgorithm:(int64_t)algorithm;
- (HKFHIRServerAuthenticationInformation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRServerAuthenticationInformation

- (HKFHIRServerAuthenticationInformation)initWithClientID:(id)d clientSecret:(id)secret PKCEAlgorithm:(int64_t)algorithm
{
  dCopy = d;
  secretCopy = secret;
  v16.receiver = self;
  v16.super_class = HKFHIRServerAuthenticationInformation;
  v10 = [(HKFHIRServerAuthenticationInformation *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    clientID = v10->_clientID;
    v10->_clientID = v11;

    v13 = [secretCopy copy];
    clientSecret = v10->_clientSecret;
    v10->_clientSecret = v13;

    v10->_PKCEAlgorithm = algorithm;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_22:

      goto LABEL_23;
    }

    clientID = self->_clientID;
    clientID = [(HKFHIRServerAuthenticationInformation *)v7 clientID];
    if (clientID != clientID)
    {
      clientID2 = [(HKFHIRServerAuthenticationInformation *)v7 clientID];
      if (!clientID2)
      {
        v13 = 0;
        goto LABEL_21;
      }

      v3 = clientID2;
      v11 = self->_clientID;
      clientID3 = [(HKFHIRServerAuthenticationInformation *)v7 clientID];
      if (![(NSString *)v11 isEqualToString:clientID3])
      {
        v13 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v23 = clientID3;
    }

    clientSecret = self->_clientSecret;
    clientSecret = [(HKFHIRServerAuthenticationInformation *)v7 clientSecret];
    if (clientSecret != clientSecret)
    {
      clientSecret2 = [(HKFHIRServerAuthenticationInformation *)v7 clientSecret];
      if (clientSecret2)
      {
        v17 = clientSecret2;
        v18 = self->_clientSecret;
        clientSecret3 = [(HKFHIRServerAuthenticationInformation *)v7 clientSecret];
        if ([(NSString *)v18 isEqualToString:clientSecret3])
        {
          PKCEAlgorithm = self->_PKCEAlgorithm;
          v13 = PKCEAlgorithm == [(HKFHIRServerAuthenticationInformation *)v7 PKCEAlgorithm];

LABEL_15:
          goto LABEL_19;
        }
      }

      v13 = 0;
LABEL_19:
      clientID3 = v23;
      if (clientID != clientID)
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

- (void)encodeWithCoder:(id)coder
{
  clientID = self->_clientID;
  coderCopy = coder;
  [coderCopy encodeObject:clientID forKey:@"clientID"];
  [coderCopy encodeObject:self->_clientSecret forKey:@"clientSecret"];
  [coderCopy encodeInteger:self->_PKCEAlgorithm forKey:@"PKCEAlgorithm"];
}

- (HKFHIRServerAuthenticationInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientSecret"];
  v7 = [coderCopy decodeIntegerForKey:@"PKCEAlgorithm"];

  v8 = [(HKFHIRServerAuthenticationInformation *)self initWithClientID:v5 clientSecret:v6 PKCEAlgorithm:v7];
  return v8;
}

@end