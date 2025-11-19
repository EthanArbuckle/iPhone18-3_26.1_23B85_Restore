@interface WFCommunicationMethod
- (BOOL)isEqual:(id)a3;
- (WFCommunicationMethod)initWithBundleIdentifier:(id)a3 type:(id)a4;
- (WFCommunicationMethod)initWithCoder:(id)a3;
- (WFCommunicationMethod)initWithSerializedRepresentation:(id)a3;
- (id)serializedRepresentation;
- (int64_t)callCapability;
- (int64_t)preferredCallProvider;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFCommunicationMethod

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFCommunicationMethod *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(WFCommunicationMethod *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];
}

- (WFCommunicationMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v7 = [(WFCommunicationMethod *)self initWithBundleIdentifier:v6 type:v5];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 != self)
  {
    v8 = [(WFCommunicationMethod *)v6 bundleIdentifier];
    v9 = [(WFCommunicationMethod *)self bundleIdentifier];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      LOBYTE(v13) = 0;
      v14 = v11;
      v15 = v10;
      if (!v10 || !v11)
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v13 = [v10 isEqual:v11];

      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v16 = [(WFCommunicationMethod *)v7 type];
    v17 = [(WFCommunicationMethod *)self type];
    v15 = v16;
    v18 = v17;
    v14 = v18;
    if (v15 == v18)
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      LOBYTE(v13) = 0;
      if (v15 && v18)
      {
        LOBYTE(v13) = [v15 isEqual:v18];
      }
    }

    goto LABEL_20;
  }

  LOBYTE(v13) = 1;
LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(WFCommunicationMethod *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(WFCommunicationMethod *)self type];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (int64_t)callCapability
{
  v3 = [(WFCommunicationMethod *)self type];
  v4 = [v3 isEqualToString:@"AudioCall"];

  if (v4)
  {
    return 1;
  }

  v6 = [(WFCommunicationMethod *)self type];
  v7 = [v6 isEqualToString:@"VideoCall"];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)preferredCallProvider
{
  v3 = [(WFCommunicationMethod *)self bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D7A278]];

  if (v4)
  {
    return 1;
  }

  v6 = [(WFCommunicationMethod *)self bundleIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x277D7A248]];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)serializedRepresentation
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFCommunicationMethodType";
  v3 = [(WFCommunicationMethod *)self type];
  v7[1] = @"WFCommunicationMethodBundleIdentifier";
  v8[0] = v3;
  v4 = [(WFCommunicationMethod *)self bundleIdentifier];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (WFCommunicationMethod)initWithBundleIdentifier:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFCommunicationMethod;
  v8 = [(WFCommunicationMethod *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [v7 copy];
    type = v8->_type;
    v8->_type = v11;

    v13 = v8;
  }

  return v8;
}

- (WFCommunicationMethod)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass(v4, v5);

  v7 = [v6 objectForKeyedSubscript:@"WFCommunicationMethodType"];
  v8 = objc_opt_class();
  v9 = WFEnforceClass(v7, v8);

  v10 = [v6 objectForKeyedSubscript:@"WFCommunicationMethodBundleIdentifier"];
  v11 = objc_opt_class();
  v12 = WFEnforceClass(v10, v11);

  v13 = [(WFCommunicationMethod *)self initWithBundleIdentifier:v12 type:v9];
  return v13;
}

@end