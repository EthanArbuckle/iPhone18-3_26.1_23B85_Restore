@interface DAKeyInformation
+ (id)alishaKeyWithPublicKeyIdentifier:(id)identifier alishaKeyInformation:(id)information;
- (DAKeyInformation)initWithCoder:(id)coder;
- (DAKeyInformation)initWithEndpoint:(id)endpoint;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAKeyInformation

- (DAKeyInformation)initWithEndpoint:(id)endpoint
{
  v27 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  if (endpointCopy)
  {
    v20.receiver = self;
    v20.super_class = DAKeyInformation;
    self = [(DAKeyInformation *)&v20 init];
    if (self)
    {
      publicKeyIdentifier = [endpointCopy publicKeyIdentifier];
      v6 = kmlUtilHexStringFromData(publicKeyIdentifier);
      publicKeyIdentifier = self->_publicKeyIdentifier;
      self->_publicKeyIdentifier = v6;

      endPointType = [endpointCopy endPointType];
      if (endPointType <= 2)
      {
        if (endPointType == 1)
        {
          self->_keyType = 1;
          v17 = [DAAlishaKeyInformation withEndpoint:endpointCopy];
          alishaKeyInformation = self->_alishaKeyInformation;
          self->_alishaKeyInformation = v17;
          goto LABEL_20;
        }

        if (endPointType == 2)
        {
          v9 = 2;
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      switch(endPointType)
      {
        case 3:
          v15 = 3;
          break;
        case 4:
          v15 = 5;
          break;
        case 5:
          v9 = 4;
LABEL_11:
          self->_keyType = v9;
          v10 = [DAHydraKeyInformation withEndpoint:endpointCopy];
          alishaKeyInformation = self->_hydraKeyInformation;
          self->_hydraKeyInformation = v10;
LABEL_20:

          self = self;
          selfCopy = self;
          goto LABEL_21;
        default:
          goto LABEL_12;
      }

      self->_keyType = v15;
      v16 = [DAHomeKeyInformation withEndpoint:endpointCopy];
      alishaKeyInformation = self->_homeKeyInformation;
      self->_homeKeyInformation = v16;
      goto LABEL_20;
    }

LABEL_12:
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      endPointType2 = [endpointCopy endPointType];
      *buf = 136315650;
      v22 = "[DAKeyInformation initWithEndpoint:]";
      v23 = 1024;
      v24 = 75;
      v25 = 1024;
      v26 = endPointType2;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_ERROR, "%s : %i : Invalid EP type %d", buf, 0x18u);
    }
  }

  selfCopy = 0;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)alishaKeyWithPublicKeyIdentifier:(id)identifier alishaKeyInformation:(id)information
{
  identifierCopy = identifier;
  informationCopy = information;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[1] = 1;
  v7[2] = identifierCopy;
  v9 = identifierCopy;

  v10 = v7[3];
  v7[3] = informationCopy;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  keyType = self->_keyType;
  coderCopy = coder;
  [coderCopy encodeInteger:keyType forKey:@"keyType"];
  [coderCopy encodeObject:self->_publicKeyIdentifier forKey:@"publicKeyIdentifier"];
  [coderCopy encodeObject:self->_alishaKeyInformation forKey:@"alishaKeyInformation"];
  [coderCopy encodeObject:self->_hydraKeyInformation forKey:@"hydraKeyInformation"];
  [coderCopy encodeObject:self->_homeKeyInformation forKey:@"homeKeyInformation"];
}

- (DAKeyInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DAKeyInformation;
  v5 = [(DAKeyInformation *)&v15 init];
  if (v5)
  {
    v5->_keyType = [coderCopy decodeIntegerForKey:@"keyType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alishaKeyInformation"];
    alishaKeyInformation = v5->_alishaKeyInformation;
    v5->_alishaKeyInformation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hydraKeyInformation"];
    hydraKeyInformation = v5->_hydraKeyInformation;
    v5->_hydraKeyInformation = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeKeyInformation"];
    homeKeyInformation = v5->_homeKeyInformation;
    v5->_homeKeyInformation = v12;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"    KeyId      : %@\n", self->_publicKeyIdentifier];
  [string appendFormat:@"    KeyType    : %d\n", self->_keyType];
  v4 = self->_keyType - 1;
  if (v4 <= 4)
  {
    [string appendFormat:@"%@", *(&self->super.isa + qword_248C2A310[v4])];
  }

  return string;
}

@end