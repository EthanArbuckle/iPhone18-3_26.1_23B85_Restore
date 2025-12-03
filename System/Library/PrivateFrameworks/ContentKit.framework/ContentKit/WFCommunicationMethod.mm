@interface WFCommunicationMethod
- (BOOL)isEqual:(id)equal;
- (WFCommunicationMethod)initWithBundleIdentifier:(id)identifier type:(id)type;
- (WFCommunicationMethod)initWithCoder:(id)coder;
- (WFCommunicationMethod)initWithSerializedRepresentation:(id)representation;
- (id)serializedRepresentation;
- (int64_t)callCapability;
- (int64_t)preferredCallProvider;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFCommunicationMethod

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(WFCommunicationMethod *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  bundleIdentifier = [(WFCommunicationMethod *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (WFCommunicationMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v7 = [(WFCommunicationMethod *)self initWithBundleIdentifier:v6 type:v5];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    bundleIdentifier = [(WFCommunicationMethod *)v6 bundleIdentifier];
    bundleIdentifier2 = [(WFCommunicationMethod *)self bundleIdentifier];
    v10 = bundleIdentifier;
    v11 = bundleIdentifier2;
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

    type = [(WFCommunicationMethod *)v7 type];
    type2 = [(WFCommunicationMethod *)self type];
    v15 = type;
    v18 = type2;
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
  bundleIdentifier = [(WFCommunicationMethod *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  type = [(WFCommunicationMethod *)self type];
  v6 = [type hash];

  return v6 ^ v4;
}

- (int64_t)callCapability
{
  type = [(WFCommunicationMethod *)self type];
  v4 = [type isEqualToString:@"AudioCall"];

  if (v4)
  {
    return 1;
  }

  type2 = [(WFCommunicationMethod *)self type];
  v7 = [type2 isEqualToString:@"VideoCall"];

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
  bundleIdentifier = [(WFCommunicationMethod *)self bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:*MEMORY[0x277D7A278]];

  if (v4)
  {
    return 1;
  }

  bundleIdentifier2 = [(WFCommunicationMethod *)self bundleIdentifier];
  v7 = [bundleIdentifier2 isEqualToString:*MEMORY[0x277D7A248]];

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
  type = [(WFCommunicationMethod *)self type];
  v7[1] = @"WFCommunicationMethodBundleIdentifier";
  v8[0] = type;
  bundleIdentifier = [(WFCommunicationMethod *)self bundleIdentifier];
  v8[1] = bundleIdentifier;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (WFCommunicationMethod)initWithBundleIdentifier:(id)identifier type:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = WFCommunicationMethod;
  v8 = [(WFCommunicationMethod *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [typeCopy copy];
    type = v8->_type;
    v8->_type = v11;

    v13 = v8;
  }

  return v8;
}

- (WFCommunicationMethod)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_opt_class();
  v6 = WFEnforceClass(representationCopy, v5);

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