@interface CIDVUIProofingConfiguration
- (CIDVUIProofingConfiguration)initWithCoder:(id)coder;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3 isPairedWatchUnsupported:(BOOL)self4;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3 isPairedWatchUnsupported:(BOOL)self4 proofingErrorMessage:(id)self5;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3 isPairedWatchUnsupported:(BOOL)self4 proofingErrorMessage:(id)self5 piiTokenIdentifier:(id)self6;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 supplementalProvisioningData:(id)self1;
- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier learnMoreURL:(id)self0 extendedReviewURL:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CIDVUIProofingConfiguration

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier
{
  v19.receiver = self;
  v19.super_class = CIDVUIProofingConfiguration;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v17 = [(CIDVUIProofingConfiguration *)&v19 init];
  [(CIDVUIProofingConfiguration *)v17 setState:stateCopy, v19.receiver, v19.super_class];

  [(CIDVUIProofingConfiguration *)v17 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v17 setTarget:target];
  [(CIDVUIProofingConfiguration *)v17 setStatus:status];
  [(CIDVUIProofingConfiguration *)v17 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v17 setProductIdentifier:productIdentifierCopy];
  return v17;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier
{
  v22.receiver = self;
  v22.super_class = CIDVUIProofingConfiguration;
  keyIdentifierCopy = keyIdentifier;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v20 = [(CIDVUIProofingConfiguration *)&v22 init];
  [(CIDVUIProofingConfiguration *)v20 setState:stateCopy, v22.receiver, v22.super_class];

  [(CIDVUIProofingConfiguration *)v20 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v20 setTarget:target];
  [(CIDVUIProofingConfiguration *)v20 setStatus:status];
  [(CIDVUIProofingConfiguration *)v20 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v20 setProductIdentifier:productIdentifierCopy];
  [(CIDVUIProofingConfiguration *)v20 setAccountKeyIdentifier:keyIdentifierCopy];

  [(CIDVUIProofingConfiguration *)v20 setIdType:0];
  return v20;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier learnMoreURL:(id)self0 extendedReviewURL:(id)self1
{
  v26.receiver = self;
  v26.super_class = CIDVUIProofingConfiguration;
  rLCopy = rL;
  lCopy = l;
  keyIdentifierCopy = keyIdentifier;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v23 = [(CIDVUIProofingConfiguration *)&v26 init];
  [(CIDVUIProofingConfiguration *)v23 setState:stateCopy];

  [(CIDVUIProofingConfiguration *)v23 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v23 setTarget:target];
  [(CIDVUIProofingConfiguration *)v23 setStatus:status];
  [(CIDVUIProofingConfiguration *)v23 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v23 setProductIdentifier:productIdentifierCopy];
  [(CIDVUIProofingConfiguration *)v23 setAccountKeyIdentifier:keyIdentifierCopy];

  [(CIDVUIProofingConfiguration *)v23 setLearnMoreURL:lCopy];
  [(CIDVUIProofingConfiguration *)v23 setExtendedReviewURL:rLCopy];

  return v23;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0
{
  v23.receiver = self;
  v23.super_class = CIDVUIProofingConfiguration;
  keyIdentifierCopy = keyIdentifier;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v21 = [(CIDVUIProofingConfiguration *)&v23 init];
  [(CIDVUIProofingConfiguration *)v21 setState:stateCopy, v23.receiver, v23.super_class];

  [(CIDVUIProofingConfiguration *)v21 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v21 setTarget:target];
  [(CIDVUIProofingConfiguration *)v21 setStatus:status];
  [(CIDVUIProofingConfiguration *)v21 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v21 setProductIdentifier:productIdentifierCopy];
  [(CIDVUIProofingConfiguration *)v21 setAccountKeyIdentifier:keyIdentifierCopy];

  [(CIDVUIProofingConfiguration *)v21 setIdType:type];
  return v21;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 supplementalProvisioningData:(id)self1
{
  v25.receiver = self;
  v25.super_class = CIDVUIProofingConfiguration;
  dataCopy = data;
  keyIdentifierCopy = keyIdentifier;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v23 = [(CIDVUIProofingConfiguration *)&v25 init];
  [(CIDVUIProofingConfiguration *)v23 setState:stateCopy];

  [(CIDVUIProofingConfiguration *)v23 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v23 setTarget:target];
  [(CIDVUIProofingConfiguration *)v23 setStatus:status];
  [(CIDVUIProofingConfiguration *)v23 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v23 setProductIdentifier:productIdentifierCopy];
  [(CIDVUIProofingConfiguration *)v23 setAccountKeyIdentifier:keyIdentifierCopy];

  [(CIDVUIProofingConfiguration *)v23 setIdType:type];
  [(CIDVUIProofingConfiguration *)v23 setSupplementalProvisioningData:dataCopy];

  return v23;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3
{
  v29.receiver = self;
  v29.super_class = CIDVUIProofingConfiguration;
  dataCopy = data;
  rLCopy = rL;
  lCopy = l;
  keyIdentifierCopy = keyIdentifier;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v25 = [(CIDVUIProofingConfiguration *)&v29 init];
  [(CIDVUIProofingConfiguration *)v25 setState:stateCopy];

  [(CIDVUIProofingConfiguration *)v25 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v25 setTarget:target];
  [(CIDVUIProofingConfiguration *)v25 setStatus:status];
  [(CIDVUIProofingConfiguration *)v25 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v25 setProductIdentifier:productIdentifierCopy];
  [(CIDVUIProofingConfiguration *)v25 setAccountKeyIdentifier:keyIdentifierCopy];

  [(CIDVUIProofingConfiguration *)v25 setIdType:type];
  [(CIDVUIProofingConfiguration *)v25 setExtendedReviewURL:lCopy];

  [(CIDVUIProofingConfiguration *)v25 setLearnMoreURL:rLCopy];
  [(CIDVUIProofingConfiguration *)v25 setSupplementalProvisioningData:dataCopy];

  return v25;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3 isPairedWatchUnsupported:(BOOL)self4
{
  v30.receiver = self;
  v30.super_class = CIDVUIProofingConfiguration;
  dataCopy = data;
  rLCopy = rL;
  lCopy = l;
  keyIdentifierCopy = keyIdentifier;
  productIdentifierCopy = productIdentifier;
  identifierCopy = identifier;
  countryCopy = country;
  stateCopy = state;
  v26 = [(CIDVUIProofingConfiguration *)&v30 init];
  [(CIDVUIProofingConfiguration *)v26 setState:stateCopy];

  [(CIDVUIProofingConfiguration *)v26 setCountry:countryCopy];
  [(CIDVUIProofingConfiguration *)v26 setTarget:target];
  [(CIDVUIProofingConfiguration *)v26 setStatus:status];
  [(CIDVUIProofingConfiguration *)v26 setCredentialIdentifier:identifierCopy];

  [(CIDVUIProofingConfiguration *)v26 setProductIdentifier:productIdentifierCopy];
  [(CIDVUIProofingConfiguration *)v26 setAccountKeyIdentifier:keyIdentifierCopy];

  [(CIDVUIProofingConfiguration *)v26 setIdType:type];
  [(CIDVUIProofingConfiguration *)v26 setExtendedReviewURL:lCopy];

  [(CIDVUIProofingConfiguration *)v26 setLearnMoreURL:rLCopy];
  [(CIDVUIProofingConfiguration *)v26 setSupplementalProvisioningData:dataCopy];

  [(CIDVUIProofingConfiguration *)v26 setIsPairedWatchUnsupported:unsupported];
  return v26;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3 isPairedWatchUnsupported:(BOOL)self4 proofingErrorMessage:(id)self5
{
  stateCopy = state;
  countryCopy = country;
  identifierCopy = identifier;
  productIdentifierCopy = productIdentifier;
  keyIdentifierCopy = keyIdentifier;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  messageCopy = message;
  v48.receiver = self;
  v48.super_class = CIDVUIProofingConfiguration;
  v27 = [(CIDVUIProofingConfiguration *)&v48 init];
  if (v27)
  {
    v28 = [stateCopy copy];
    state = v27->_state;
    v27->_state = v28;

    v30 = [countryCopy copy];
    country = v27->_country;
    v27->_country = v30;

    v27->_target = target;
    v27->_status = status;
    v32 = [identifierCopy copy];
    credentialIdentifier = v27->_credentialIdentifier;
    v27->_credentialIdentifier = v32;

    v34 = [productIdentifierCopy copy];
    productIdentifier = v27->_productIdentifier;
    v27->_productIdentifier = v34;

    v36 = [keyIdentifierCopy copy];
    accountKeyIdentifier = v27->_accountKeyIdentifier;
    v27->_accountKeyIdentifier = v36;

    v27->_idType = type;
    v38 = [lCopy copy];
    extendedReviewURL = v27->_extendedReviewURL;
    v27->_extendedReviewURL = v38;

    v40 = [rLCopy copy];
    learnMoreURL = v27->_learnMoreURL;
    v27->_learnMoreURL = v40;

    v42 = [dataCopy copy];
    supplementalProvisioningData = v27->_supplementalProvisioningData;
    v27->_supplementalProvisioningData = v42;

    v27->_isPairedWatchUnsupported = unsupported;
    objc_storeStrong(&v27->_proofingErrorMessage, message);
  }

  return v27;
}

- (CIDVUIProofingConfiguration)initWithState:(id)state country:(id)country target:(int64_t)target status:(int64_t)status credentialIdentifier:(id)identifier productIdentifier:(id)productIdentifier accountKeyIdentifier:(id)keyIdentifier idType:(int64_t)self0 extendedReviewURL:(id)self1 learnMoreURL:(id)self2 supplementalProvisioningData:(id)self3 isPairedWatchUnsupported:(BOOL)self4 proofingErrorMessage:(id)self5 piiTokenIdentifier:(id)self6
{
  stateCopy = state;
  countryCopy = country;
  identifierCopy = identifier;
  productIdentifierCopy = productIdentifier;
  keyIdentifierCopy = keyIdentifier;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  messageCopy = message;
  tokenIdentifierCopy = tokenIdentifier;
  v50.receiver = self;
  v50.super_class = CIDVUIProofingConfiguration;
  v27 = [(CIDVUIProofingConfiguration *)&v50 init];
  if (v27)
  {
    v28 = [stateCopy copy];
    state = v27->_state;
    v27->_state = v28;

    v30 = [countryCopy copy];
    country = v27->_country;
    v27->_country = v30;

    v27->_target = target;
    v27->_status = status;
    v32 = [identifierCopy copy];
    credentialIdentifier = v27->_credentialIdentifier;
    v27->_credentialIdentifier = v32;

    v34 = [productIdentifierCopy copy];
    productIdentifier = v27->_productIdentifier;
    v27->_productIdentifier = v34;

    v36 = [keyIdentifierCopy copy];
    accountKeyIdentifier = v27->_accountKeyIdentifier;
    v27->_accountKeyIdentifier = v36;

    v27->_idType = type;
    v38 = [lCopy copy];
    extendedReviewURL = v27->_extendedReviewURL;
    v27->_extendedReviewURL = v38;

    v40 = [rLCopy copy];
    learnMoreURL = v27->_learnMoreURL;
    v27->_learnMoreURL = v40;

    v42 = [dataCopy copy];
    supplementalProvisioningData = v27->_supplementalProvisioningData;
    v27->_supplementalProvisioningData = v42;

    v27->_isPairedWatchUnsupported = unsupported;
    objc_storeStrong(&v27->_proofingErrorMessage, message);
    objc_storeStrong(&v27->_piiTokenIdentifier, tokenIdentifier);
  }

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  state = [(CIDVUIProofingConfiguration *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  country = [(CIDVUIProofingConfiguration *)self country];
  [coderCopy encodeObject:country forKey:@"country"];

  [coderCopy encodeInteger:-[CIDVUIProofingConfiguration target](self forKey:{"target"), @"target"}];
  [coderCopy encodeInteger:-[CIDVUIProofingConfiguration status](self forKey:{"status"), @"status"}];
  credentialIdentifier = [(CIDVUIProofingConfiguration *)self credentialIdentifier];
  [coderCopy encodeObject:credentialIdentifier forKey:@"credentialIdentifier"];

  productIdentifier = [(CIDVUIProofingConfiguration *)self productIdentifier];
  [coderCopy encodeObject:productIdentifier forKey:@"productIdentifier"];

  accountKeyIdentifier = [(CIDVUIProofingConfiguration *)self accountKeyIdentifier];
  [coderCopy encodeObject:accountKeyIdentifier forKey:@"accountKeyIdentifier"];

  [coderCopy encodeInteger:-[CIDVUIProofingConfiguration idType](self forKey:{"idType"), @"idType"}];
  learnMoreURL = [(CIDVUIProofingConfiguration *)self learnMoreURL];
  [coderCopy encodeObject:learnMoreURL forKey:@"learnMoreURL"];

  extendedReviewURL = [(CIDVUIProofingConfiguration *)self extendedReviewURL];
  [coderCopy encodeObject:extendedReviewURL forKey:@"extendedReviewURL"];

  supplementalProvisioningData = [(CIDVUIProofingConfiguration *)self supplementalProvisioningData];
  [coderCopy encodeObject:supplementalProvisioningData forKey:@"supplementalProvisioningData"];

  [coderCopy encodeBool:-[CIDVUIProofingConfiguration isPairedWatchUnsupported](self forKey:{"isPairedWatchUnsupported"), @"isPairedWatchUnsupported"}];
  proofingErrorMessage = [(CIDVUIProofingConfiguration *)self proofingErrorMessage];
  [coderCopy encodeObject:proofingErrorMessage forKey:@"proofingErrorMessage"];

  piiTokenIdentifier = [(CIDVUIProofingConfiguration *)self piiTokenIdentifier];
  [coderCopy encodeObject:piiTokenIdentifier forKey:@"piiTokenIdentifier"];
}

- (CIDVUIProofingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  state = self->_state;
  self->_state = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
  country = self->_country;
  self->_country = v7;

  self->_target = [coderCopy decodeIntegerForKey:@"target"];
  self->_status = [coderCopy decodeIntegerForKey:@"status"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
  credentialIdentifier = self->_credentialIdentifier;
  self->_credentialIdentifier = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
  accountKeyIdentifier = self->_accountKeyIdentifier;
  self->_accountKeyIdentifier = v13;

  self->_idType = [coderCopy decodeIntegerForKey:@"idType"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learnMoreURL"];
  learnMoreURL = self->_learnMoreURL;
  self->_learnMoreURL = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendedReviewURL"];
  extendedReviewURL = self->_extendedReviewURL;
  self->_extendedReviewURL = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementalProvisioningData"];
  supplementalProvisioningData = self->_supplementalProvisioningData;
  self->_supplementalProvisioningData = v19;

  self->_isPairedWatchUnsupported = [coderCopy decodeBoolForKey:@"isPairedWatchUnsupported"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proofingErrorMessage"];
  proofingErrorMessage = self->_proofingErrorMessage;
  self->_proofingErrorMessage = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"piiTokenIdentifier"];

  piiTokenIdentifier = self->_piiTokenIdentifier;
  self->_piiTokenIdentifier = v23;

  return self;
}

@end