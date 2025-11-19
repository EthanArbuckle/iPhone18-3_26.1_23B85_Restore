@interface PKPushProvisioningTarget
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProvisioningTarget:(id)a3;
- (PKPushProvisioningTarget)initWithAppleIdentifier:(id)a3 appleIdentifierType:(int64_t)a4 provisioningCredentialIdentifier:(id)a5 cardConfigurationIdentifier:(id)a6 sharingInstanceIdentifier:(id)a7 nonce:(id)a8 accountHash:(id)a9 templateIdentifier:(id)a10 relyingPartyIdentifier:(id)a11 requiresSimultaneousRequestRouting:(BOOL)a12 targetDevice:(unint64_t)a13 issuingCountryCode:(id)a14 documentType:(int64_t)a15 environmentIdentifier:(id)a16;
- (PKPushProvisioningTarget)initWithCoder:(id)a3;
- (PKPushProvisioningTarget)initWithProvisioningDict:(id)a3;
- (id)_jsonRepresentationWithSanitization:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPushProvisioningTarget

- (PKPushProvisioningTarget)initWithAppleIdentifier:(id)a3 appleIdentifierType:(int64_t)a4 provisioningCredentialIdentifier:(id)a5 cardConfigurationIdentifier:(id)a6 sharingInstanceIdentifier:(id)a7 nonce:(id)a8 accountHash:(id)a9 templateIdentifier:(id)a10 relyingPartyIdentifier:(id)a11 requiresSimultaneousRequestRouting:(BOOL)a12 targetDevice:(unint64_t)a13 issuingCountryCode:(id)a14 documentType:(int64_t)a15 environmentIdentifier:(id)a16
{
  v39 = a3;
  v31 = a5;
  v38 = a5;
  v37 = a6;
  v32 = a7;
  v36 = a7;
  v35 = a8;
  v34 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a14;
  v24 = a16;
  v40.receiver = self;
  v40.super_class = PKPushProvisioningTarget;
  v25 = [(PKPushProvisioningTarget *)&v40 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_appleIdentifier, a3);
    v26->_appleIdentifierType = a4;
    objc_storeStrong(&v26->_provisioningCredentialIdentifier, v31);
    objc_storeStrong(&v26->_cardConfigurationIdentifier, a6);
    objc_storeStrong(&v26->_sharingInstanceIdentifier, v32);
    v27 = objc_alloc_init(MEMORY[0x1E695DF00]);
    creationDate = v26->_creationDate;
    v26->_creationDate = v27;

    objc_storeStrong(&v26->_nonce, a8);
    objc_storeStrong(&v26->_accountHash, a9);
    objc_storeStrong(&v26->_templateIdentifier, a10);
    objc_storeStrong(&v26->_relyingPartyIdentifier, a11);
    v26->_requiresSimultaneousRequestRouting = a12;
    v26->_targetDevice = a13;
    objc_storeStrong(&v26->_environmentIdentifier, a16);
    objc_storeStrong(&v26->_issuingCountryCode, a14);
    v26->_documentType = a15;
  }

  return v26;
}

- (PKPushProvisioningTarget)initWithProvisioningDict:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v18.receiver = self;
    v18.super_class = PKPushProvisioningTarget;
    v6 = [(PKPushProvisioningTarget *)&v18 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_additionalProvisioningDictionary, a3);
      v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
      creationDate = v7->_creationDate;
      v7->_creationDate = v8;

      v10 = [v5 PKStringForKey:@"accountHash"];
      accountHash = v7->_accountHash;
      v7->_accountHash = v10;

      v12 = [v5 PKStringForKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = v7->_relyingPartyIdentifier;
      v7->_relyingPartyIdentifier = v12;

      v7->_requiresSimultaneousRequestRouting = [v5 PKBoolForKey:@"requiresUnifiedAccessCapableDevice"];
      v14 = [v5 PKStringForKey:@"provisioningCredentialIdentifier"];
      provisioningCredentialIdentifier = v7->_provisioningCredentialIdentifier;
      v7->_provisioningCredentialIdentifier = v14;
    }

    self = v7;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPushProvisioningTarget *)self isEqualToProvisioningTarget:v5];
  }

  return v6;
}

- (BOOL)isEqualToProvisioningTarget:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_55;
  }

  v6 = *(v4 + 4);
  v7 = self->_appleIdentifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_54;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_55;
    }
  }

  v11 = *(v5 + 5);
  v7 = self->_provisioningCredentialIdentifier;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_54;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_55;
    }
  }

  v14 = *(v5 + 6);
  v7 = self->_cardConfigurationIdentifier;
  v15 = v14;
  v9 = v15;
  if (v7 == v15)
  {
  }

  else
  {
    if (!v7 || !v15)
    {
      goto LABEL_54;
    }

    v16 = [(NSString *)v7 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_55;
    }
  }

  v17 = *(v5 + 7);
  v7 = self->_sharingInstanceIdentifier;
  v18 = v17;
  v9 = v18;
  if (v7 == v18)
  {
  }

  else
  {
    if (!v7 || !v18)
    {
      goto LABEL_54;
    }

    v19 = [(NSString *)v7 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_55;
    }
  }

  creationDate = self->_creationDate;
  v21 = *(v5 + 8);
  if (creationDate && v21)
  {
    if (([(NSDate *)creationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (creationDate != v21)
  {
    goto LABEL_55;
  }

  nonce = self->_nonce;
  v23 = *(v5 + 15);
  if (nonce && v23)
  {
    if (([(NSString *)nonce isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (nonce != v23)
  {
    goto LABEL_55;
  }

  if (self->_appleIdentifierType != *(v5 + 3))
  {
    goto LABEL_55;
  }

  v24 = *(v5 + 9);
  v7 = self->_accountHash;
  v25 = v24;
  v9 = v25;
  if (v7 == v25)
  {
  }

  else
  {
    if (!v7 || !v25)
    {
      goto LABEL_54;
    }

    v26 = [(NSString *)v7 isEqualToString:v25];

    if (!v26)
    {
      goto LABEL_55;
    }
  }

  v27 = *(v5 + 10);
  v7 = self->_templateIdentifier;
  v28 = v27;
  v9 = v28;
  if (v7 == v28)
  {
  }

  else
  {
    if (!v7 || !v28)
    {
      goto LABEL_54;
    }

    v29 = [(NSString *)v7 isEqualToString:v28];

    if (!v29)
    {
      goto LABEL_55;
    }
  }

  v30 = *(v5 + 13);
  v7 = self->_relyingPartyIdentifier;
  v31 = v30;
  v9 = v31;
  if (v7 == v31)
  {

    goto LABEL_58;
  }

  if (!v7 || !v31)
  {
LABEL_54:

    goto LABEL_55;
  }

  v32 = [(NSString *)v7 isEqualToString:v31];

  if (!v32)
  {
    goto LABEL_55;
  }

LABEL_58:
  if (self->_requiresSimultaneousRequestRouting != v5[16] || self->_targetDevice != *(v5 + 16))
  {
    goto LABEL_55;
  }

  environmentIdentifier = self->_environmentIdentifier;
  v36 = *(v5 + 17);
  if (environmentIdentifier && v36)
  {
    if (([(NSString *)environmentIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (environmentIdentifier != v36)
  {
    goto LABEL_55;
  }

  additionalProvisioningDictionary = self->_additionalProvisioningDictionary;
  v38 = *(v5 + 1);
  if (additionalProvisioningDictionary && v38)
  {
    if (([(NSDictionary *)additionalProvisioningDictionary isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (additionalProvisioningDictionary != v38)
  {
    goto LABEL_55;
  }

  verificationCode = self->_verificationCode;
  v40 = *(v5 + 14);
  if (verificationCode && v40)
  {
    if (([(NSString *)verificationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (verificationCode != v40)
  {
    goto LABEL_55;
  }

  secondarySource = self->_secondarySource;
  v42 = *(v5 + 18);
  if (!secondarySource || !v42)
  {
    if (secondarySource == v42)
    {
      goto LABEL_80;
    }

LABEL_55:
    v33 = 0;
    goto LABEL_56;
  }

  if (([(NSString *)secondarySource isEqual:?]& 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_80:
  if (self->_documentType != *(v5 + 12))
  {
    goto LABEL_55;
  }

  issuingCountryCode = self->_issuingCountryCode;
  v44 = *(v5 + 11);
  if (issuingCountryCode && v44)
  {
    v33 = [(NSString *)issuingCountryCode isEqual:?];
  }

  else
  {
    v33 = issuingCountryCode == v44;
  }

LABEL_56:

  return v33;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_appleIdentifier];
  [v3 safelyAddObject:self->_provisioningCredentialIdentifier];
  [v3 safelyAddObject:self->_cardConfigurationIdentifier];
  [v3 safelyAddObject:self->_sharingInstanceIdentifier];
  [v3 safelyAddObject:self->_creationDate];
  [v3 safelyAddObject:self->_nonce];
  [v3 safelyAddObject:self->_accountHash];
  [v3 safelyAddObject:self->_templateIdentifier];
  [v3 safelyAddObject:self->_relyingPartyIdentifier];
  [v3 safelyAddObject:self->_environmentIdentifier];
  [v3 safelyAddObject:self->_additionalProvisioningDictionary];
  [v3 safelyAddObject:self->_verificationCode];
  [v3 safelyAddObject:self->_secondarySource];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_requiresSimultaneousRequestRouting - v4 + 32 * v4;
  v6 = self->_targetDevice - v5 + 32 * v5;
  v7 = self->_appleIdentifierType - v6 + 32 * v6;

  return v7;
}

- (PKPushProvisioningTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PKPushProvisioningTarget;
  v5 = [(PKPushProvisioningTarget *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    appleIdentifier = v5->_appleIdentifier;
    v5->_appleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifier"];
    provisioningCredentialIdentifier = v5->_provisioningCredentialIdentifier;
    v5->_provisioningCredentialIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardConfigurationIdentifier"];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v16;

    v5->_appleIdentifierType = [v4 decodeIntegerForKey:@"identifierType"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountHash"];
    accountHash = v5->_accountHash;
    v5->_accountHash = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templateIdentifier"];
    templateIdentifier = v5->_templateIdentifier;
    v5->_templateIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
    relyingPartyIdentifier = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v22;

    v5->_requiresSimultaneousRequestRouting = [v4 decodeBoolForKey:@"requiresSimultaneousRequestRouting"];
    v5->_targetDevice = [v4 decodeIntegerForKey:@"targetDevice"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environmentIdentifier"];
    environmentIdentifier = v5->_environmentIdentifier;
    v5->_environmentIdentifier = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"additionalProvisioningDictionary"];
    additionalProvisioningDictionary = v5->_additionalProvisioningDictionary;
    v5->_additionalProvisioningDictionary = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verificationCode"];
    verificationCode = v5->_verificationCode;
    v5->_verificationCode = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondarySource"];
    secondarySource = v5->_secondarySource;
    v5->_secondarySource = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuingCountryCode"];
    issuingCountryCode = v5->_issuingCountryCode;
    v5->_issuingCountryCode = v36;

    v5->_documentType = [v4 decodeIntegerForKey:@"documentType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appleIdentifier = self->_appleIdentifier;
  v5 = a3;
  [v5 encodeObject:appleIdentifier forKey:@"identifier"];
  [v5 encodeObject:self->_provisioningCredentialIdentifier forKey:@"provisioningCredentialIdentifier"];
  [v5 encodeObject:self->_cardConfigurationIdentifier forKey:@"cardConfigurationIdentifier"];
  [v5 encodeObject:self->_sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_nonce forKey:@"nonce"];
  [v5 encodeInteger:self->_appleIdentifierType forKey:@"identifierType"];
  [v5 encodeObject:self->_accountHash forKey:@"accountHash"];
  [v5 encodeObject:self->_templateIdentifier forKey:@"templateIdentifier"];
  [v5 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeBool:self->_requiresSimultaneousRequestRouting forKey:@"requiresSimultaneousRequestRouting"];
  [v5 encodeInteger:self->_targetDevice forKey:@"targetDevice"];
  [v5 encodeObject:self->_environmentIdentifier forKey:@"environmentIdentifier"];
  [v5 encodeObject:self->_additionalProvisioningDictionary forKey:@"additionalProvisioningDictionary"];
  [v5 encodeObject:self->_verificationCode forKey:@"verificationCode"];
  [v5 encodeObject:self->_secondarySource forKey:@"secondarySource"];
  [v5 encodeObject:self->_issuingCountryCode forKey:@"issuingCountryCode"];
  [v5 encodeInteger:self->_documentType forKey:@"documentType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appleIdentifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_provisioningCredentialIdentifier copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_cardConfigurationIdentifier copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSDate *)self->_creationDate copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSString *)self->_nonce copyWithZone:a3];
  v17 = *(v5 + 120);
  *(v5 + 120) = v16;

  *(v5 + 24) = self->_appleIdentifierType;
  v18 = [(NSString *)self->_accountHash copyWithZone:a3];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  v20 = [(NSString *)self->_templateIdentifier copyWithZone:a3];
  v21 = *(v5 + 80);
  *(v5 + 80) = v20;

  v22 = [(NSString *)self->_relyingPartyIdentifier copyWithZone:a3];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  *(v5 + 16) = self->_requiresSimultaneousRequestRouting;
  *(v5 + 128) = self->_targetDevice;
  v24 = [(NSString *)self->_environmentIdentifier copy];
  v25 = *(v5 + 136);
  *(v5 + 136) = v24;

  v26 = [(NSDictionary *)self->_additionalProvisioningDictionary copy];
  v27 = *(v5 + 8);
  *(v5 + 8) = v26;

  v28 = [(NSString *)self->_verificationCode copy];
  v29 = *(v5 + 112);
  *(v5 + 112) = v28;

  v30 = [(NSString *)self->_secondarySource copy];
  v31 = *(v5 + 144);
  *(v5 + 144) = v30;

  v32 = [(NSString *)self->_issuingCountryCode copy];
  v33 = *(v5 + 88);
  *(v5 + 88) = v32;

  *(v5 + 96) = self->_documentType;
  return v5;
}

- (id)_jsonRepresentationWithSanitization:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:self->_appleIdentifier forKeyedSubscript:@"identifier"];
  appleIdentifierType = self->_appleIdentifierType;
  if (appleIdentifierType > 3)
  {
    v7 = @"signInWithApple";
  }

  else
  {
    v7 = off_1E79E06A8[appleIdentifierType];
  }

  [v5 setObject:v7 forKeyedSubscript:@"identifierType"];
  [v5 setObject:self->_cardConfigurationIdentifier forKeyedSubscript:@"cardConfigurationIdentifier"];
  v8 = PKW3CDateStringFromDate(self->_creationDate);
  [v5 setObject:v8 forKeyedSubscript:@"creationDate"];

  [v5 setObject:self->_nonce forKeyedSubscript:@"nonce"];
  if (a3)
  {
    sharingInstanceIdentifier = @"<redacted>";
    [v5 setObject:@"<redacted>" forKeyedSubscript:@"provisioningCredentialIdentifier"];
  }

  else
  {
    [v5 setObject:self->_provisioningCredentialIdentifier forKeyedSubscript:@"provisioningCredentialIdentifier"];
    sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  }

  [v5 setObject:sharingInstanceIdentifier forKeyedSubscript:@"sharingInstanceIdentifier"];
  [v5 setObject:self->_accountHash forKeyedSubscript:@"accountHash"];
  [v5 setObject:self->_templateIdentifier forKeyedSubscript:@"templateIdentifier"];
  [v5 setObject:self->_relyingPartyIdentifier forKeyedSubscript:@"relyingPartyIdentifier"];
  [v5 setObject:self->_environmentIdentifier forKeyedSubscript:@"environmentIdentifier"];
  [v5 setObject:self->_issuingCountryCode forKeyedSubscript:@"issuingCountryCode"];
  v10 = self->_documentType - 1;
  if (v10 > 2)
  {
    v11 = @"mDL";
  }

  else
  {
    v11 = off_1E79E06C8[v10];
  }

  [v5 setObject:v11 forKeyedSubscript:@"documentType"];
  if (self->_additionalProvisioningDictionary)
  {
    [v5 addEntriesFromDictionary:?];
  }

  v12 = [v5 copy];

  return v12;
}

@end