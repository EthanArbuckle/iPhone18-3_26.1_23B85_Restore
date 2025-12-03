@interface PKIdentityProofingConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfig:(id)config;
- (PKIdentityProofingConfiguration)init;
- (PKIdentityProofingConfiguration)initWithCIDVUIProofingConfiguration:(id)configuration;
- (PKIdentityProofingConfiguration)initWithCoder:(id)coder;
- (PKIdentityProofingConfiguration)initWithDictionary:(id)dictionary;
- (PKIdentityProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target credentialIdentifier:(id)identifier status:(int64_t)status productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 learnMoreURL:(id)self1;
- (PKIdentityProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target credentialIdentifier:(id)identifier status:(int64_t)status productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 learnMoreURL:(id)self1 proofingErrorMessage:(id)self2;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityProofingConfiguration

- (PKIdentityProofingConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PKIdentityProofingConfiguration;
  return [(PKIdentityProofingConfiguration *)&v3 init];
}

- (PKIdentityProofingConfiguration)initWithCIDVUIProofingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [PKIdentityProofingDisplayMessage alloc];
  proofingErrorMessage = [configurationCopy proofingErrorMessage];
  v21 = [(PKIdentityProofingDisplayMessage *)v4 initWithCIDVUIProofingDisplayMessage:proofingErrorMessage];

  state = [configurationCopy state];
  country = [configurationCopy country];
  target = [configurationCopy target];
  credentialIdentifier = [configurationCopy credentialIdentifier];
  status = [configurationCopy status];
  if (status > 0xC)
  {
    v10 = 4;
  }

  else
  {
    v10 = qword_1ADB99748[status];
  }

  if (target == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (target == 2);
  }

  productIdentifier = [configurationCopy productIdentifier];
  accountKeyIdentifier = [configurationCopy accountKeyIdentifier];
  idType = [configurationCopy idType];
  if (idType)
  {
    v15 = 2 * (idType == 1);
  }

  else
  {
    v15 = 1;
  }

  extendedReviewURL = [configurationCopy extendedReviewURL];
  v17 = [(PKIdentityProofingConfiguration *)self initWithState:state country:country target:v11 credentialIdentifier:credentialIdentifier status:v10 productIdentifier:productIdentifier accountKeyIdentifier:accountKeyIdentifier idType:v15 learnMoreURL:extendedReviewURL proofingErrorMessage:v21];

  return v17;
}

- (PKIdentityProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target credentialIdentifier:(id)identifier status:(int64_t)status productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 learnMoreURL:(id)self1
{
  stateCopy = state;
  countryCopy = country;
  identifierCopy = identifier;
  productIdentifierCopy = productIdentifier;
  keyIdentifierCopy = keyIdentifier;
  lCopy = l;
  v19 = [(PKIdentityProofingConfiguration *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_state, state);
    objc_storeStrong(&v20->_country, country);
    v20->_target = target;
    objc_storeStrong(&v20->_credentialIdentifier, identifier);
    v20->_status = status;
    objc_storeStrong(&v20->_productIdentifier, productIdentifier);
    objc_storeStrong(&v20->_accountKeyIdentifier, keyIdentifier);
    v20->_idType = type;
    objc_storeStrong(&v20->_learnMoreURL, l);
  }

  return v20;
}

- (PKIdentityProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target credentialIdentifier:(id)identifier status:(int64_t)status productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 learnMoreURL:(id)self1 proofingErrorMessage:(id)self2
{
  stateCopy = state;
  countryCopy = country;
  identifierCopy = identifier;
  productIdentifierCopy = productIdentifier;
  keyIdentifierCopy = keyIdentifier;
  lCopy = l;
  messageCopy = message;
  v19 = [(PKIdentityProofingConfiguration *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_state, state);
    objc_storeStrong(&v20->_country, country);
    v20->_target = target;
    objc_storeStrong(&v20->_credentialIdentifier, identifier);
    v20->_status = status;
    objc_storeStrong(&v20->_productIdentifier, productIdentifier);
    objc_storeStrong(&v20->_accountKeyIdentifier, keyIdentifier);
    v20->_idType = type;
    objc_storeStrong(&v20->_learnMoreURL, l);
    objc_storeStrong(&v20->_proofingErrorMessage, message);
  }

  return v20;
}

- (PKIdentityProofingConfiguration)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v20 = [dictionaryCopy PKStringForKey:@"state"];
    v5 = [dictionaryCopy PKStringForKey:@"country"];
    v6 = [dictionaryCopy PKStringForKey:@"target"];
    v19 = PKIdentityProofingConfigurationTargetDeviceTypeFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"credentialIdentifier"];
    v8 = [dictionaryCopy PKStringForKey:@"status"];
    v9 = PKIdentityProofingStatusFromString(v8);

    v10 = [dictionaryCopy PKStringForKey:@"productIdentifier"];
    v11 = [dictionaryCopy PKStringForKey:@"accountKeyIdentifier"];
    v12 = [dictionaryCopy PKStringForKey:@"idType"];
    v13 = PKSecureElementIdentityPassTypeFromString(v12);

    v14 = [dictionaryCopy PKURLForKey:@"learnMoreURL"];
    v15 = [dictionaryCopy PKDictionaryForKey:@"proofingErrorMessage"];

    if (v15)
    {
      v16 = [[PKIdentityProofingDisplayMessage alloc] initWithDictionary:v15];
    }

    else
    {
      v16 = 0;
    }

    self = [(PKIdentityProofingConfiguration *)self initWithState:v20 country:v5 target:v19 credentialIdentifier:v7 status:v9 productIdentifier:v10 accountKeyIdentifier:v11 idType:v13 learnMoreURL:v14 proofingErrorMessage:v16];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [PKIdentityProofingConfiguration allocWithZone:?];
  v16 = [(NSString *)self->_state copyWithZone:zone];
  v5 = [(NSString *)self->_country copyWithZone:zone];
  target = self->_target;
  v7 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  status = self->_status;
  v9 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  v10 = [(NSString *)self->_accountKeyIdentifier copyWithZone:zone];
  idType = self->_idType;
  v12 = [(NSURL *)self->_learnMoreURL copyWithZone:zone];
  v13 = [(PKIdentityProofingDisplayMessage *)self->_proofingErrorMessage copyWithZone:zone];
  v14 = [(PKIdentityProofingConfiguration *)v17 initWithState:v16 country:v5 target:target credentialIdentifier:v7 status:status productIdentifier:v9 accountKeyIdentifier:v10 idType:idType learnMoreURL:v12 proofingErrorMessage:v13];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeObject:state forKey:@"state"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
  target = self->_target;
  v6 = @"phone";
  if (target != 1)
  {
    v6 = 0;
  }

  if (target == 2)
  {
    v7 = @"watch";
  }

  else
  {
    v7 = v6;
  }

  [coderCopy encodeObject:v7 forKey:@"target"];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  v8 = PKIdentityProofingStatusToString(self->_status);
  [coderCopy encodeObject:v8 forKey:@"status"];

  [coderCopy encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
  [coderCopy encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
  v9 = PKSecureElementIdentityPassTypeToString(self->_idType);
  [coderCopy encodeObject:v9 forKey:@"idType"];

  [coderCopy encodeObject:self->_learnMoreURL forKey:@"learnMoreURL"];
  [coderCopy encodeObject:self->_proofingErrorMessage forKey:@"proofingErrorMessage"];
}

- (PKIdentityProofingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = PKIdentityProofingConfiguration;
  v5 = [(PKIdentityProofingConfiguration *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v5->_country;
    v5->_country = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    v5->_target = PKIdentityProofingConfigurationTargetDeviceTypeFromString(v10);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKIdentityProofingStatusFromString(v13);

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idType"];
    v5->_idType = PKSecureElementIdentityPassTypeFromString(v18);

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learnMoreURL"];
    learnMoreURL = v5->_learnMoreURL;
    v5->_learnMoreURL = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proofingErrorMessage"];
    proofingErrorMessage = v5->_proofingErrorMessage;
    v5->_proofingErrorMessage = v21;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  _mutableDictionaryRepresentation = [(PKIdentityProofingConfiguration *)self _mutableDictionaryRepresentation];
  v3 = [_mutableDictionaryRepresentation copy];

  return v3;
}

- (id)_mutableDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_state forKeyedSubscript:@"state"];
  [v3 setObject:self->_country forKeyedSubscript:@"country"];
  target = self->_target;
  v5 = @"phone";
  if (target != 1)
  {
    v5 = 0;
  }

  if (target == 2)
  {
    v6 = @"watch";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKeyedSubscript:@"target"];
  [v3 setObject:self->_credentialIdentifier forKeyedSubscript:@"credentialIdentifier"];
  v7 = PKIdentityProofingStatusToString(self->_status);
  [v3 setObject:v7 forKeyedSubscript:@"status"];

  [v3 setObject:self->_productIdentifier forKeyedSubscript:@"productIdentifier"];
  [v3 setObject:self->_accountKeyIdentifier forKeyedSubscript:@"accountKeyIdentifier"];
  v8 = PKSecureElementIdentityPassTypeToString(self->_idType);
  [v3 setObject:v8 forKeyedSubscript:@"idType"];

  absoluteString = [(NSURL *)self->_learnMoreURL absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"learnMoreURL"];

  dictionaryRepresentation = [(PKIdentityProofingDisplayMessage *)self->_proofingErrorMessage dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"proofingErrorMessage"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityProofingConfiguration *)self isEqualToConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = configCopy[1];
  v6 = self->_state;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v11 = configCopy[2];
  v6 = self->_country;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

    goto LABEL_16;
  }

  if (!v6 || !v12)
  {
LABEL_14:

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v13 = [(NSString *)v6 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (self->_status != configCopy[5])
  {
    goto LABEL_20;
  }

  proofingErrorMessage = self->_proofingErrorMessage;
  v15 = configCopy[10];
  if (proofingErrorMessage && v15)
  {
    v16 = [(PKIdentityProofingDisplayMessage *)proofingErrorMessage isEqual:?];
  }

  else
  {
    v16 = proofingErrorMessage == v15;
  }

LABEL_21:

  return v16;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [array safelyAddObject:v4];

  [array safelyAddObject:self->_state];
  [array safelyAddObject:self->_country];
  [array safelyAddObject:self->_proofingErrorMessage];
  v5 = PKCombinedHash(17, array);

  return v5;
}

@end