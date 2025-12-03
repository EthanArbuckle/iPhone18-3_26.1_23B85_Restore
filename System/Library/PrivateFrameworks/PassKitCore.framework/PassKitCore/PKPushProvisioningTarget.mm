@interface PKPushProvisioningTarget
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProvisioningTarget:(id)target;
- (PKPushProvisioningTarget)initWithAppleIdentifier:(id)identifier appleIdentifierType:(int64_t)type provisioningCredentialIdentifier:(id)credentialIdentifier cardConfigurationIdentifier:(id)configurationIdentifier sharingInstanceIdentifier:(id)instanceIdentifier nonce:(id)nonce accountHash:(id)hash templateIdentifier:(id)self0 relyingPartyIdentifier:(id)self1 requiresSimultaneousRequestRouting:(BOOL)self2 targetDevice:(unint64_t)self3 issuingCountryCode:(id)self4 documentType:(int64_t)self5 environmentIdentifier:(id)self6;
- (PKPushProvisioningTarget)initWithCoder:(id)coder;
- (PKPushProvisioningTarget)initWithProvisioningDict:(id)dict;
- (id)_jsonRepresentationWithSanitization:(BOOL)sanitization;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPushProvisioningTarget

- (PKPushProvisioningTarget)initWithAppleIdentifier:(id)identifier appleIdentifierType:(int64_t)type provisioningCredentialIdentifier:(id)credentialIdentifier cardConfigurationIdentifier:(id)configurationIdentifier sharingInstanceIdentifier:(id)instanceIdentifier nonce:(id)nonce accountHash:(id)hash templateIdentifier:(id)self0 relyingPartyIdentifier:(id)self1 requiresSimultaneousRequestRouting:(BOOL)self2 targetDevice:(unint64_t)self3 issuingCountryCode:(id)self4 documentType:(int64_t)self5 environmentIdentifier:(id)self6
{
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  credentialIdentifierCopy2 = credentialIdentifier;
  configurationIdentifierCopy = configurationIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  instanceIdentifierCopy2 = instanceIdentifier;
  nonceCopy = nonce;
  hashCopy = hash;
  templateIdentifierCopy = templateIdentifier;
  partyIdentifierCopy = partyIdentifier;
  codeCopy = code;
  environmentIdentifierCopy = environmentIdentifier;
  v40.receiver = self;
  v40.super_class = PKPushProvisioningTarget;
  v25 = [(PKPushProvisioningTarget *)&v40 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_appleIdentifier, identifier);
    v26->_appleIdentifierType = type;
    objc_storeStrong(&v26->_provisioningCredentialIdentifier, credentialIdentifierCopy);
    objc_storeStrong(&v26->_cardConfigurationIdentifier, configurationIdentifier);
    objc_storeStrong(&v26->_sharingInstanceIdentifier, instanceIdentifierCopy);
    v27 = objc_alloc_init(MEMORY[0x1E695DF00]);
    creationDate = v26->_creationDate;
    v26->_creationDate = v27;

    objc_storeStrong(&v26->_nonce, nonce);
    objc_storeStrong(&v26->_accountHash, hash);
    objc_storeStrong(&v26->_templateIdentifier, templateIdentifier);
    objc_storeStrong(&v26->_relyingPartyIdentifier, partyIdentifier);
    v26->_requiresSimultaneousRequestRouting = routing;
    v26->_targetDevice = device;
    objc_storeStrong(&v26->_environmentIdentifier, environmentIdentifier);
    objc_storeStrong(&v26->_issuingCountryCode, code);
    v26->_documentType = documentType;
  }

  return v26;
}

- (PKPushProvisioningTarget)initWithProvisioningDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v18.receiver = self;
    v18.super_class = PKPushProvisioningTarget;
    v6 = [(PKPushProvisioningTarget *)&v18 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_additionalProvisioningDictionary, dict);
      v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
      creationDate = v7->_creationDate;
      v7->_creationDate = v8;

      v10 = [dictCopy PKStringForKey:@"accountHash"];
      accountHash = v7->_accountHash;
      v7->_accountHash = v10;

      v12 = [dictCopy PKStringForKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = v7->_relyingPartyIdentifier;
      v7->_relyingPartyIdentifier = v12;

      v7->_requiresSimultaneousRequestRouting = [dictCopy PKBoolForKey:@"requiresUnifiedAccessCapableDevice"];
      v14 = [dictCopy PKStringForKey:@"provisioningCredentialIdentifier"];
      provisioningCredentialIdentifier = v7->_provisioningCredentialIdentifier;
      v7->_provisioningCredentialIdentifier = v14;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPushProvisioningTarget *)self isEqualToProvisioningTarget:v5];
  }

  return v6;
}

- (BOOL)isEqualToProvisioningTarget:(id)target
{
  targetCopy = target;
  v5 = targetCopy;
  if (!targetCopy)
  {
    goto LABEL_55;
  }

  v6 = *(targetCopy + 4);
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

- (PKPushProvisioningTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = PKPushProvisioningTarget;
  v5 = [(PKPushProvisioningTarget *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    appleIdentifier = v5->_appleIdentifier;
    v5->_appleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifier"];
    provisioningCredentialIdentifier = v5->_provisioningCredentialIdentifier;
    v5->_provisioningCredentialIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardConfigurationIdentifier"];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v16;

    v5->_appleIdentifierType = [coderCopy decodeIntegerForKey:@"identifierType"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountHash"];
    accountHash = v5->_accountHash;
    v5->_accountHash = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateIdentifier"];
    templateIdentifier = v5->_templateIdentifier;
    v5->_templateIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
    relyingPartyIdentifier = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v22;

    v5->_requiresSimultaneousRequestRouting = [coderCopy decodeBoolForKey:@"requiresSimultaneousRequestRouting"];
    v5->_targetDevice = [coderCopy decodeIntegerForKey:@"targetDevice"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environmentIdentifier"];
    environmentIdentifier = v5->_environmentIdentifier;
    v5->_environmentIdentifier = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"additionalProvisioningDictionary"];
    additionalProvisioningDictionary = v5->_additionalProvisioningDictionary;
    v5->_additionalProvisioningDictionary = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verificationCode"];
    verificationCode = v5->_verificationCode;
    v5->_verificationCode = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondarySource"];
    secondarySource = v5->_secondarySource;
    v5->_secondarySource = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuingCountryCode"];
    issuingCountryCode = v5->_issuingCountryCode;
    v5->_issuingCountryCode = v36;

    v5->_documentType = [coderCopy decodeIntegerForKey:@"documentType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appleIdentifier = self->_appleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appleIdentifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_provisioningCredentialIdentifier forKey:@"provisioningCredentialIdentifier"];
  [coderCopy encodeObject:self->_cardConfigurationIdentifier forKey:@"cardConfigurationIdentifier"];
  [coderCopy encodeObject:self->_sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeInteger:self->_appleIdentifierType forKey:@"identifierType"];
  [coderCopy encodeObject:self->_accountHash forKey:@"accountHash"];
  [coderCopy encodeObject:self->_templateIdentifier forKey:@"templateIdentifier"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeBool:self->_requiresSimultaneousRequestRouting forKey:@"requiresSimultaneousRequestRouting"];
  [coderCopy encodeInteger:self->_targetDevice forKey:@"targetDevice"];
  [coderCopy encodeObject:self->_environmentIdentifier forKey:@"environmentIdentifier"];
  [coderCopy encodeObject:self->_additionalProvisioningDictionary forKey:@"additionalProvisioningDictionary"];
  [coderCopy encodeObject:self->_verificationCode forKey:@"verificationCode"];
  [coderCopy encodeObject:self->_secondarySource forKey:@"secondarySource"];
  [coderCopy encodeObject:self->_issuingCountryCode forKey:@"issuingCountryCode"];
  [coderCopy encodeInteger:self->_documentType forKey:@"documentType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appleIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_provisioningCredentialIdentifier copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_cardConfigurationIdentifier copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSDate *)self->_creationDate copyWithZone:zone];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSString *)self->_nonce copyWithZone:zone];
  v17 = *(v5 + 120);
  *(v5 + 120) = v16;

  *(v5 + 24) = self->_appleIdentifierType;
  v18 = [(NSString *)self->_accountHash copyWithZone:zone];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  v20 = [(NSString *)self->_templateIdentifier copyWithZone:zone];
  v21 = *(v5 + 80);
  *(v5 + 80) = v20;

  v22 = [(NSString *)self->_relyingPartyIdentifier copyWithZone:zone];
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

- (id)_jsonRepresentationWithSanitization:(BOOL)sanitization
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
  if (sanitization)
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