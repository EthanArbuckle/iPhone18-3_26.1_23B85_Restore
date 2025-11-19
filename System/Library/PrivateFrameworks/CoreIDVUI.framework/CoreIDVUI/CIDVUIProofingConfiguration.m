@interface CIDVUIProofingConfiguration
- (CIDVUIProofingConfiguration)initWithCoder:(id)a3;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13 isPairedWatchUnsupported:(BOOL)a14;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13 isPairedWatchUnsupported:(BOOL)a14 proofingErrorMessage:(id)a15;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13 isPairedWatchUnsupported:(BOOL)a14 proofingErrorMessage:(id)a15 piiTokenIdentifier:(id)a16;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 supplementalProvisioningData:(id)a11;
- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 learnMoreURL:(id)a10 extendedReviewURL:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CIDVUIProofingConfiguration

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8
{
  v19.receiver = self;
  v19.super_class = CIDVUIProofingConfiguration;
  v13 = a8;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [(CIDVUIProofingConfiguration *)&v19 init];
  [(CIDVUIProofingConfiguration *)v17 setState:v16, v19.receiver, v19.super_class];

  [(CIDVUIProofingConfiguration *)v17 setCountry:v15];
  [(CIDVUIProofingConfiguration *)v17 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v17 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v17 setCredentialIdentifier:v14];

  [(CIDVUIProofingConfiguration *)v17 setProductIdentifier:v13];
  return v17;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9
{
  v22.receiver = self;
  v22.super_class = CIDVUIProofingConfiguration;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a4;
  v19 = a3;
  v20 = [(CIDVUIProofingConfiguration *)&v22 init];
  [(CIDVUIProofingConfiguration *)v20 setState:v19, v22.receiver, v22.super_class];

  [(CIDVUIProofingConfiguration *)v20 setCountry:v18];
  [(CIDVUIProofingConfiguration *)v20 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v20 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v20 setCredentialIdentifier:v17];

  [(CIDVUIProofingConfiguration *)v20 setProductIdentifier:v16];
  [(CIDVUIProofingConfiguration *)v20 setAccountKeyIdentifier:v15];

  [(CIDVUIProofingConfiguration *)v20 setIdType:0];
  return v20;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 learnMoreURL:(id)a10 extendedReviewURL:(id)a11
{
  v26.receiver = self;
  v26.super_class = CIDVUIProofingConfiguration;
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a4;
  v22 = a3;
  v23 = [(CIDVUIProofingConfiguration *)&v26 init];
  [(CIDVUIProofingConfiguration *)v23 setState:v22];

  [(CIDVUIProofingConfiguration *)v23 setCountry:v21];
  [(CIDVUIProofingConfiguration *)v23 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v23 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v23 setCredentialIdentifier:v20];

  [(CIDVUIProofingConfiguration *)v23 setProductIdentifier:v19];
  [(CIDVUIProofingConfiguration *)v23 setAccountKeyIdentifier:v18];

  [(CIDVUIProofingConfiguration *)v23 setLearnMoreURL:v17];
  [(CIDVUIProofingConfiguration *)v23 setExtendedReviewURL:v16];

  return v23;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10
{
  v23.receiver = self;
  v23.super_class = CIDVUIProofingConfiguration;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a4;
  v20 = a3;
  v21 = [(CIDVUIProofingConfiguration *)&v23 init];
  [(CIDVUIProofingConfiguration *)v21 setState:v20, v23.receiver, v23.super_class];

  [(CIDVUIProofingConfiguration *)v21 setCountry:v19];
  [(CIDVUIProofingConfiguration *)v21 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v21 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v21 setCredentialIdentifier:v18];

  [(CIDVUIProofingConfiguration *)v21 setProductIdentifier:v17];
  [(CIDVUIProofingConfiguration *)v21 setAccountKeyIdentifier:v16];

  [(CIDVUIProofingConfiguration *)v21 setIdType:a10];
  return v21;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 supplementalProvisioningData:(id)a11
{
  v25.receiver = self;
  v25.super_class = CIDVUIProofingConfiguration;
  v17 = a11;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a4;
  v22 = a3;
  v23 = [(CIDVUIProofingConfiguration *)&v25 init];
  [(CIDVUIProofingConfiguration *)v23 setState:v22];

  [(CIDVUIProofingConfiguration *)v23 setCountry:v21];
  [(CIDVUIProofingConfiguration *)v23 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v23 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v23 setCredentialIdentifier:v20];

  [(CIDVUIProofingConfiguration *)v23 setProductIdentifier:v19];
  [(CIDVUIProofingConfiguration *)v23 setAccountKeyIdentifier:v18];

  [(CIDVUIProofingConfiguration *)v23 setIdType:a10];
  [(CIDVUIProofingConfiguration *)v23 setSupplementalProvisioningData:v17];

  return v23;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13
{
  v29.receiver = self;
  v29.super_class = CIDVUIProofingConfiguration;
  v17 = a13;
  v18 = a12;
  v19 = a11;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a4;
  v24 = a3;
  v25 = [(CIDVUIProofingConfiguration *)&v29 init];
  [(CIDVUIProofingConfiguration *)v25 setState:v24];

  [(CIDVUIProofingConfiguration *)v25 setCountry:v23];
  [(CIDVUIProofingConfiguration *)v25 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v25 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v25 setCredentialIdentifier:v22];

  [(CIDVUIProofingConfiguration *)v25 setProductIdentifier:v21];
  [(CIDVUIProofingConfiguration *)v25 setAccountKeyIdentifier:v20];

  [(CIDVUIProofingConfiguration *)v25 setIdType:a10];
  [(CIDVUIProofingConfiguration *)v25 setExtendedReviewURL:v19];

  [(CIDVUIProofingConfiguration *)v25 setLearnMoreURL:v18];
  [(CIDVUIProofingConfiguration *)v25 setSupplementalProvisioningData:v17];

  return v25;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13 isPairedWatchUnsupported:(BOOL)a14
{
  v30.receiver = self;
  v30.super_class = CIDVUIProofingConfiguration;
  v18 = a13;
  v19 = a12;
  v20 = a11;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a4;
  v25 = a3;
  v26 = [(CIDVUIProofingConfiguration *)&v30 init];
  [(CIDVUIProofingConfiguration *)v26 setState:v25];

  [(CIDVUIProofingConfiguration *)v26 setCountry:v24];
  [(CIDVUIProofingConfiguration *)v26 setTarget:a5];
  [(CIDVUIProofingConfiguration *)v26 setStatus:a6];
  [(CIDVUIProofingConfiguration *)v26 setCredentialIdentifier:v23];

  [(CIDVUIProofingConfiguration *)v26 setProductIdentifier:v22];
  [(CIDVUIProofingConfiguration *)v26 setAccountKeyIdentifier:v21];

  [(CIDVUIProofingConfiguration *)v26 setIdType:a10];
  [(CIDVUIProofingConfiguration *)v26 setExtendedReviewURL:v20];

  [(CIDVUIProofingConfiguration *)v26 setLearnMoreURL:v19];
  [(CIDVUIProofingConfiguration *)v26 setSupplementalProvisioningData:v18];

  [(CIDVUIProofingConfiguration *)v26 setIsPairedWatchUnsupported:a14];
  return v26;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13 isPairedWatchUnsupported:(BOOL)a14 proofingErrorMessage:(id)a15
{
  v19 = a3;
  v47 = a4;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a15;
  v48.receiver = self;
  v48.super_class = CIDVUIProofingConfiguration;
  v27 = [(CIDVUIProofingConfiguration *)&v48 init];
  if (v27)
  {
    v28 = [v19 copy];
    state = v27->_state;
    v27->_state = v28;

    v30 = [v47 copy];
    country = v27->_country;
    v27->_country = v30;

    v27->_target = a5;
    v27->_status = a6;
    v32 = [v20 copy];
    credentialIdentifier = v27->_credentialIdentifier;
    v27->_credentialIdentifier = v32;

    v34 = [v21 copy];
    productIdentifier = v27->_productIdentifier;
    v27->_productIdentifier = v34;

    v36 = [v22 copy];
    accountKeyIdentifier = v27->_accountKeyIdentifier;
    v27->_accountKeyIdentifier = v36;

    v27->_idType = a10;
    v38 = [v23 copy];
    extendedReviewURL = v27->_extendedReviewURL;
    v27->_extendedReviewURL = v38;

    v40 = [v24 copy];
    learnMoreURL = v27->_learnMoreURL;
    v27->_learnMoreURL = v40;

    v42 = [v25 copy];
    supplementalProvisioningData = v27->_supplementalProvisioningData;
    v27->_supplementalProvisioningData = v42;

    v27->_isPairedWatchUnsupported = a14;
    objc_storeStrong(&v27->_proofingErrorMessage, a15);
  }

  return v27;
}

- (CIDVUIProofingConfiguration)initWithState:(id)a3 country:(id)a4 target:(int64_t)a5 status:(int64_t)a6 credentialIdentifier:(id)a7 productIdentifier:(id)a8 accountKeyIdentifier:(id)a9 idType:(int64_t)a10 extendedReviewURL:(id)a11 learnMoreURL:(id)a12 supplementalProvisioningData:(id)a13 isPairedWatchUnsupported:(BOOL)a14 proofingErrorMessage:(id)a15 piiTokenIdentifier:(id)a16
{
  v49 = a3;
  v48 = a4;
  v47 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a15;
  v26 = a16;
  v50.receiver = self;
  v50.super_class = CIDVUIProofingConfiguration;
  v27 = [(CIDVUIProofingConfiguration *)&v50 init];
  if (v27)
  {
    v28 = [v49 copy];
    state = v27->_state;
    v27->_state = v28;

    v30 = [v48 copy];
    country = v27->_country;
    v27->_country = v30;

    v27->_target = a5;
    v27->_status = a6;
    v32 = [v47 copy];
    credentialIdentifier = v27->_credentialIdentifier;
    v27->_credentialIdentifier = v32;

    v34 = [v20 copy];
    productIdentifier = v27->_productIdentifier;
    v27->_productIdentifier = v34;

    v36 = [v21 copy];
    accountKeyIdentifier = v27->_accountKeyIdentifier;
    v27->_accountKeyIdentifier = v36;

    v27->_idType = a10;
    v38 = [v22 copy];
    extendedReviewURL = v27->_extendedReviewURL;
    v27->_extendedReviewURL = v38;

    v40 = [v23 copy];
    learnMoreURL = v27->_learnMoreURL;
    v27->_learnMoreURL = v40;

    v42 = [v24 copy];
    supplementalProvisioningData = v27->_supplementalProvisioningData;
    v27->_supplementalProvisioningData = v42;

    v27->_isPairedWatchUnsupported = a14;
    objc_storeStrong(&v27->_proofingErrorMessage, a15);
    objc_storeStrong(&v27->_piiTokenIdentifier, a16);
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIProofingConfiguration *)self state];
  [v4 encodeObject:v5 forKey:@"state"];

  v6 = [(CIDVUIProofingConfiguration *)self country];
  [v4 encodeObject:v6 forKey:@"country"];

  [v4 encodeInteger:-[CIDVUIProofingConfiguration target](self forKey:{"target"), @"target"}];
  [v4 encodeInteger:-[CIDVUIProofingConfiguration status](self forKey:{"status"), @"status"}];
  v7 = [(CIDVUIProofingConfiguration *)self credentialIdentifier];
  [v4 encodeObject:v7 forKey:@"credentialIdentifier"];

  v8 = [(CIDVUIProofingConfiguration *)self productIdentifier];
  [v4 encodeObject:v8 forKey:@"productIdentifier"];

  v9 = [(CIDVUIProofingConfiguration *)self accountKeyIdentifier];
  [v4 encodeObject:v9 forKey:@"accountKeyIdentifier"];

  [v4 encodeInteger:-[CIDVUIProofingConfiguration idType](self forKey:{"idType"), @"idType"}];
  v10 = [(CIDVUIProofingConfiguration *)self learnMoreURL];
  [v4 encodeObject:v10 forKey:@"learnMoreURL"];

  v11 = [(CIDVUIProofingConfiguration *)self extendedReviewURL];
  [v4 encodeObject:v11 forKey:@"extendedReviewURL"];

  v12 = [(CIDVUIProofingConfiguration *)self supplementalProvisioningData];
  [v4 encodeObject:v12 forKey:@"supplementalProvisioningData"];

  [v4 encodeBool:-[CIDVUIProofingConfiguration isPairedWatchUnsupported](self forKey:{"isPairedWatchUnsupported"), @"isPairedWatchUnsupported"}];
  v13 = [(CIDVUIProofingConfiguration *)self proofingErrorMessage];
  [v4 encodeObject:v13 forKey:@"proofingErrorMessage"];

  v14 = [(CIDVUIProofingConfiguration *)self piiTokenIdentifier];
  [v4 encodeObject:v14 forKey:@"piiTokenIdentifier"];
}

- (CIDVUIProofingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  state = self->_state;
  self->_state = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
  country = self->_country;
  self->_country = v7;

  self->_target = [v4 decodeIntegerForKey:@"target"];
  self->_status = [v4 decodeIntegerForKey:@"status"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
  credentialIdentifier = self->_credentialIdentifier;
  self->_credentialIdentifier = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyIdentifier"];
  accountKeyIdentifier = self->_accountKeyIdentifier;
  self->_accountKeyIdentifier = v13;

  self->_idType = [v4 decodeIntegerForKey:@"idType"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learnMoreURL"];
  learnMoreURL = self->_learnMoreURL;
  self->_learnMoreURL = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extendedReviewURL"];
  extendedReviewURL = self->_extendedReviewURL;
  self->_extendedReviewURL = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalProvisioningData"];
  supplementalProvisioningData = self->_supplementalProvisioningData;
  self->_supplementalProvisioningData = v19;

  self->_isPairedWatchUnsupported = [v4 decodeBoolForKey:@"isPairedWatchUnsupported"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proofingErrorMessage"];
  proofingErrorMessage = self->_proofingErrorMessage;
  self->_proofingErrorMessage = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"piiTokenIdentifier"];

  piiTokenIdentifier = self->_piiTokenIdentifier;
  self->_piiTokenIdentifier = v23;

  return self;
}

@end