@interface DAKeyInformation
+ (id)alishaKeyWithPublicKeyIdentifier:(id)a3 alishaKeyInformation:(id)a4;
- (DAKeyInformation)initWithCoder:(id)a3;
- (DAKeyInformation)initWithEndpoint:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAKeyInformation

- (DAKeyInformation)initWithEndpoint:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v20.receiver = self;
    v20.super_class = DAKeyInformation;
    self = [(DAKeyInformation *)&v20 init];
    if (self)
    {
      v5 = [v4 publicKeyIdentifier];
      v6 = kmlUtilHexStringFromData(v5);
      publicKeyIdentifier = self->_publicKeyIdentifier;
      self->_publicKeyIdentifier = v6;

      v8 = [v4 endPointType];
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          self->_keyType = 1;
          v17 = [DAAlishaKeyInformation withEndpoint:v4];
          alishaKeyInformation = self->_alishaKeyInformation;
          self->_alishaKeyInformation = v17;
          goto LABEL_20;
        }

        if (v8 == 2)
        {
          v9 = 2;
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      switch(v8)
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
          v10 = [DAHydraKeyInformation withEndpoint:v4];
          alishaKeyInformation = self->_hydraKeyInformation;
          self->_hydraKeyInformation = v10;
LABEL_20:

          self = self;
          v14 = self;
          goto LABEL_21;
        default:
          goto LABEL_12;
      }

      self->_keyType = v15;
      v16 = [DAHomeKeyInformation withEndpoint:v4];
      alishaKeyInformation = self->_homeKeyInformation;
      self->_homeKeyInformation = v16;
      goto LABEL_20;
    }

LABEL_12:
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 endPointType];
      *buf = 136315650;
      v22 = "[DAKeyInformation initWithEndpoint:]";
      v23 = 1024;
      v24 = 75;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_ERROR, "%s : %i : Invalid EP type %d", buf, 0x18u);
    }
  }

  v14 = 0;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)alishaKeyWithPublicKeyIdentifier:(id)a3 alishaKeyInformation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[1] = 1;
  v7[2] = v5;
  v9 = v5;

  v10 = v7[3];
  v7[3] = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  keyType = self->_keyType;
  v5 = a3;
  [v5 encodeInteger:keyType forKey:@"keyType"];
  [v5 encodeObject:self->_publicKeyIdentifier forKey:@"publicKeyIdentifier"];
  [v5 encodeObject:self->_alishaKeyInformation forKey:@"alishaKeyInformation"];
  [v5 encodeObject:self->_hydraKeyInformation forKey:@"hydraKeyInformation"];
  [v5 encodeObject:self->_homeKeyInformation forKey:@"homeKeyInformation"];
}

- (DAKeyInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAKeyInformation;
  v5 = [(DAKeyInformation *)&v15 init];
  if (v5)
  {
    v5->_keyType = [v4 decodeIntegerForKey:@"keyType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v5->_publicKeyIdentifier;
    v5->_publicKeyIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alishaKeyInformation"];
    alishaKeyInformation = v5->_alishaKeyInformation;
    v5->_alishaKeyInformation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hydraKeyInformation"];
    hydraKeyInformation = v5->_hydraKeyInformation;
    v5->_hydraKeyInformation = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeKeyInformation"];
    homeKeyInformation = v5->_homeKeyInformation;
    v5->_homeKeyInformation = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"    KeyId      : %@\n", self->_publicKeyIdentifier];
  [v3 appendFormat:@"    KeyType    : %d\n", self->_keyType];
  v4 = self->_keyType - 1;
  if (v4 <= 4)
  {
    [v3 appendFormat:@"%@", *(&self->super.isa + qword_248C2A310[v4])];
  }

  return v3;
}

@end