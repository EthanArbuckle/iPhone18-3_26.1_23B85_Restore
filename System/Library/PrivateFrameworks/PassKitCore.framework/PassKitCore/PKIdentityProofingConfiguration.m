@interface PKIdentityProofingConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfig:(id)a3;
- (PKIdentityProofingConfiguration)init;
- (PKIdentityProofingConfiguration)initWithCIDVUIProofingConfiguration:(id)a3;
- (PKIdentityProofingConfiguration)initWithCoder:(id)a3;
- (PKIdentityProofingConfiguration)initWithDictionary:(id)a3;
- (PKIdentityProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 credentialIdentifier:(id)a6 status:(int64_t)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 learnMoreURL:(id)a11;
- (PKIdentityProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 credentialIdentifier:(id)a6 status:(int64_t)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 learnMoreURL:(id)a11 proofingErrorMessage:(id)a12;
- (id)_mutableDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIdentityProofingConfiguration

- (PKIdentityProofingConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PKIdentityProofingConfiguration;
  return [(PKIdentityProofingConfiguration *)&v3 init];
}

- (PKIdentityProofingConfiguration)initWithCIDVUIProofingConfiguration:(id)a3
{
  v3 = a3;
  v4 = [PKIdentityProofingDisplayMessage alloc];
  v5 = [v3 proofingErrorMessage];
  v21 = [(PKIdentityProofingDisplayMessage *)v4 initWithCIDVUIProofingDisplayMessage:v5];

  v19 = [v3 state];
  v6 = [v3 country];
  v7 = [v3 target];
  v8 = [v3 credentialIdentifier];
  v9 = [v3 status];
  if (v9 > 0xC)
  {
    v10 = 4;
  }

  else
  {
    v10 = qword_1ADB99748[v9];
  }

  if (v7 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v7 == 2);
  }

  v12 = [v3 productIdentifier];
  v13 = [v3 accountKeyIdentifier];
  v14 = [v3 idType];
  if (v14)
  {
    v15 = 2 * (v14 == 1);
  }

  else
  {
    v15 = 1;
  }

  v16 = [v3 extendedReviewURL];
  v17 = [(PKIdentityProofingConfiguration *)self initWithState:v19 country:v6 target:v11 credentialIdentifier:v8 status:v10 productIdentifier:v12 accountKeyIdentifier:v13 idType:v15 learnMoreURL:v16 proofingErrorMessage:v21];

  return v17;
}

- (PKIdentityProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 credentialIdentifier:(id)a6 status:(int64_t)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 learnMoreURL:(id)a11
{
  v16 = a3;
  v26 = a4;
  v25 = a6;
  v24 = a8;
  v17 = a9;
  v18 = a11;
  v19 = [(PKIdentityProofingConfiguration *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_state, a3);
    objc_storeStrong(&v20->_country, a4);
    v20->_target = a5;
    objc_storeStrong(&v20->_credentialIdentifier, a6);
    v20->_status = a7;
    objc_storeStrong(&v20->_productIdentifier, a8);
    objc_storeStrong(&v20->_accountKeyIdentifier, a9);
    v20->_idType = a10;
    objc_storeStrong(&v20->_learnMoreURL, a11);
  }

  return v20;
}

- (PKIdentityProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 credentialIdentifier:(id)a6 status:(int64_t)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 learnMoreURL:(id)a11 proofingErrorMessage:(id)a12
{
  v17 = a3;
  v28 = a4;
  v27 = a6;
  v26 = a8;
  v25 = a9;
  v24 = a11;
  v18 = a12;
  v19 = [(PKIdentityProofingConfiguration *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_state, a3);
    objc_storeStrong(&v20->_country, a4);
    v20->_target = a5;
    objc_storeStrong(&v20->_credentialIdentifier, a6);
    v20->_status = a7;
    objc_storeStrong(&v20->_productIdentifier, a8);
    objc_storeStrong(&v20->_accountKeyIdentifier, a9);
    v20->_idType = a10;
    objc_storeStrong(&v20->_learnMoreURL, a11);
    objc_storeStrong(&v20->_proofingErrorMessage, a12);
  }

  return v20;
}

- (PKIdentityProofingConfiguration)initWithDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v20 = [v4 PKStringForKey:@"state"];
    v5 = [v4 PKStringForKey:@"country"];
    v6 = [v4 PKStringForKey:@"target"];
    v19 = PKIdentityProofingConfigurationTargetDeviceTypeFromString(v6);

    v7 = [v4 PKStringForKey:@"credentialIdentifier"];
    v8 = [v4 PKStringForKey:@"status"];
    v9 = PKIdentityProofingStatusFromString(v8);

    v10 = [v4 PKStringForKey:@"productIdentifier"];
    v11 = [v4 PKStringForKey:@"accountKeyIdentifier"];
    v12 = [v4 PKStringForKey:@"idType"];
    v13 = PKSecureElementIdentityPassTypeFromString(v12);

    v14 = [v4 PKURLForKey:@"learnMoreURL"];
    v15 = [v4 PKDictionaryForKey:@"proofingErrorMessage"];

    if (v15)
    {
      v16 = [[PKIdentityProofingDisplayMessage alloc] initWithDictionary:v15];
    }

    else
    {
      v16 = 0;
    }

    self = [(PKIdentityProofingConfiguration *)self initWithState:v20 country:v5 target:v19 credentialIdentifier:v7 status:v9 productIdentifier:v10 accountKeyIdentifier:v11 idType:v13 learnMoreURL:v14 proofingErrorMessage:v16];

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [PKIdentityProofingConfiguration allocWithZone:?];
  v16 = [(NSString *)self->_state copyWithZone:a3];
  v5 = [(NSString *)self->_country copyWithZone:a3];
  target = self->_target;
  v7 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  status = self->_status;
  v9 = [(NSString *)self->_productIdentifier copyWithZone:a3];
  v10 = [(NSString *)self->_accountKeyIdentifier copyWithZone:a3];
  idType = self->_idType;
  v12 = [(NSURL *)self->_learnMoreURL copyWithZone:a3];
  v13 = [(PKIdentityProofingDisplayMessage *)self->_proofingErrorMessage copyWithZone:a3];
  v14 = [(PKIdentityProofingConfiguration *)v17 initWithState:v16 country:v5 target:target credentialIdentifier:v7 status:status productIdentifier:v9 accountKeyIdentifier:v10 idType:idType learnMoreURL:v12 proofingErrorMessage:v13];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v10 = a3;
  [v10 encodeObject:state forKey:@"state"];
  [v10 encodeObject:self->_country forKey:@"country"];
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

  [v10 encodeObject:v7 forKey:@"target"];
  [v10 encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  v8 = PKIdentityProofingStatusToString(self->_status);
  [v10 encodeObject:v8 forKey:@"status"];

  [v10 encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
  [v10 encodeObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
  v9 = PKSecureElementIdentityPassTypeToString(self->_idType);
  [v10 encodeObject:v9 forKey:@"idType"];

  [v10 encodeObject:self->_learnMoreURL forKey:@"learnMoreURL"];
  [v10 encodeObject:self->_proofingErrorMessage forKey:@"proofingErrorMessage"];
}

- (PKIdentityProofingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKIdentityProofingConfiguration;
  v5 = [(PKIdentityProofingConfiguration *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v5->_country;
    v5->_country = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    v5->_target = PKIdentityProofingConfigurationTargetDeviceTypeFromString(v10);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKIdentityProofingStatusFromString(v13);

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
    accountKeyIdentifier = v5->_accountKeyIdentifier;
    v5->_accountKeyIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idType"];
    v5->_idType = PKSecureElementIdentityPassTypeFromString(v18);

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learnMoreURL"];
    learnMoreURL = v5->_learnMoreURL;
    v5->_learnMoreURL = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proofingErrorMessage"];
    proofingErrorMessage = v5->_proofingErrorMessage;
    v5->_proofingErrorMessage = v21;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = [(PKIdentityProofingConfiguration *)self _mutableDictionaryRepresentation];
  v3 = [v2 copy];

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

  v9 = [(NSURL *)self->_learnMoreURL absoluteString];
  [v3 setObject:v9 forKeyedSubscript:@"learnMoreURL"];

  v10 = [(PKIdentityProofingDisplayMessage *)self->_proofingErrorMessage dictionaryRepresentation];
  [v3 setObject:v10 forKeyedSubscript:@"proofingErrorMessage"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityProofingConfiguration *)self isEqualToConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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

  v11 = v4[2];
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
  if (self->_status != v4[5])
  {
    goto LABEL_20;
  }

  proofingErrorMessage = self->_proofingErrorMessage;
  v15 = v4[10];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_state];
  [v3 safelyAddObject:self->_country];
  [v3 safelyAddObject:self->_proofingErrorMessage];
  v5 = PKCombinedHash(17, v3);

  return v5;
}

@end