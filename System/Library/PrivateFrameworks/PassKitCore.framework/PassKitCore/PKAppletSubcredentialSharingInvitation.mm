@interface PKAppletSubcredentialSharingInvitation
+ (id)invitationFromShare:(id)share entitlement:(id)entitlement withCredential:(id)credential pass:(id)pass;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInvitation:(id)invitation;
- (BOOL)isSameInvitationAsInvitation:(id)invitation;
- (BOOL)isThirdPartyCrossPlatformInvitation;
- (NSString)manufacturerIdentifier;
- (PKAppletSubcredentialSharingInvitation)initWithCoder:(id)coder;
- (PKAppletSubcredentialSharingInvitation)initWithCrossPlatformInvitation:(id)invitation;
- (PKAppletSubcredentialSharingInvitation)initWithIdentifier:(id)identifier sharingSessionIdentifier:(id)sessionIdentifier originatorIDSHandle:(id)handle invitationData:(id)data;
- (PKAppletSubcredentialSharingInvitation)initWithPartnerIdentifier:(id)identifier brandIdentifier:(id)brandIdentifier pairedReaderIdentifier:(id)readerIdentifier recipientName:(id)name entitlement:(unint64_t)entitlement supportedRadioTechnologies:(unint64_t)technologies;
- (id)addCarKeyPassConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)description;
- (id)invitationRequestRepresentation;
- (id)sharingConfigurationRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppletSubcredentialSharingInvitation

- (PKAppletSubcredentialSharingInvitation)initWithPartnerIdentifier:(id)identifier brandIdentifier:(id)brandIdentifier pairedReaderIdentifier:(id)readerIdentifier recipientName:(id)name entitlement:(unint64_t)entitlement supportedRadioTechnologies:(unint64_t)technologies
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  brandIdentifierCopy = brandIdentifier;
  readerIdentifierCopy = readerIdentifier;
  nameCopy = name;
  v18 = nameCopy;
  if (identifierCopy && readerIdentifierCopy && nameCopy)
  {
    v27.receiver = self;
    v27.super_class = PKAppletSubcredentialSharingInvitation;
    v19 = [(PKAppletSubcredentialSharingInvitation *)&v27 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_partnerIdentifier, identifier);
      objc_storeStrong(&v20->_brandIdentifier, brandIdentifier);
      objc_storeStrong(&v20->_pairedReaderIdentifier, readerIdentifier);
      objc_storeStrong(&v20->_recipientName, name);
      v20->_entitlement = entitlement;
      v20->_supportedRadioTechnologies = technologies;
      v20->_type = 0;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v22 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412290;
      v29 = v23;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Invalid parameters in %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PKAppletSubcredentialSharingInvitation)initWithIdentifier:(id)identifier sharingSessionIdentifier:(id)sessionIdentifier originatorIDSHandle:(id)handle invitationData:(id)data
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  handleCopy = handle;
  dataCopy = data;
  if (!identifierCopy)
  {
    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(&v16->super.super, OS_LOG_TYPE_DEFAULT))
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138412290;
      v42 = v35;
      v36 = "Invalid parameters in %@ - bad identifier";
      p_super = &v16->super.super;
      goto LABEL_25;
    }

LABEL_27:
    selfCopy = 0;
    goto LABEL_28;
  }

  v16 = [[PKProtobufAppletSubcredentialSharingInvitation alloc] initWithData:dataCopy];
  if (!v16)
  {
    goto LABEL_27;
  }

  v40.receiver = self;
  v40.super_class = PKAppletSubcredentialSharingInvitation;
  v17 = [(PKAppletSubcredentialSharingInvitation *)&v40 init];
  self = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sharingSessionIdentifier, sessionIdentifier);
    objc_storeStrong(&self->_originatorIDSHandle, handle);
    [(PKProtobufAppletSubcredentialSharingInvitation *)v16 version];
    objc_storeStrong(&self->_identifier, identifier);
    partnerIdentifier = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 partnerIdentifier];
    partnerIdentifier = self->_partnerIdentifier;
    self->_partnerIdentifier = partnerIdentifier;

    brandIdentifier = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 brandIdentifier];
    brandIdentifier = self->_brandIdentifier;
    self->_brandIdentifier = brandIdentifier;

    pairedReaderIdentifier = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 pairedReaderIdentifier];
    pairedReaderIdentifier = self->_pairedReaderIdentifier;
    self->_pairedReaderIdentifier = pairedReaderIdentifier;

    recipientName = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 recipientName];
    recipientName = self->_recipientName;
    self->_recipientName = recipientName;

    if ([(PKProtobufAppletSubcredentialSharingInvitation *)v16 hasSharingSessionIdentifier])
    {
      sharingSessionIdentifier = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 sharingSessionIdentifier];
      if ([sharingSessionIdentifier length] == 16)
      {
        v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(sharingSessionIdentifier, "bytes")}];
        sharingSessionIdentifier = self->_sharingSessionIdentifier;
        self->_sharingSessionIdentifier = v27;
      }

      if (!self->_sharingSessionIdentifier)
      {
        v29 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Received malformed sharing session identifier on invitation!", buf, 2u);
        }
      }
    }

    self->_entitlement = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 entitlement];
    self->_forWatch = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 deviceType]== 1;
    issuer = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 issuer];
    issuer = self->_issuer;
    self->_issuer = issuer;

    deviceModel = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 deviceModel];
    deviceModel = self->_deviceModel;
    self->_deviceModel = deviceModel;

    if ([(PKProtobufAppletSubcredentialSharingInvitation *)v16 supportedRadioTechnologies])
    {
      supportedRadioTechnologies = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 supportedRadioTechnologies];
    }

    else
    {
      supportedRadioTechnologies = 1;
    }

    self->_supportedRadioTechnologies = supportedRadioTechnologies;
    if (self->_partnerIdentifier && self->_pairedReaderIdentifier && self->_issuer && self->_deviceModel)
    {
      self->_type = 0;
      goto LABEL_22;
    }

    v35 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 138412290;
    v42 = v16;
    v36 = "Invalid invitation data to deserialize the invitation from: %@";
    p_super = v35;
LABEL_25:
    _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
LABEL_26:

    goto LABEL_27;
  }

LABEL_22:
  self = self;
  selfCopy = self;
LABEL_28:

  return selfCopy;
}

+ (id)invitationFromShare:(id)share entitlement:(id)entitlement withCredential:(id)credential pass:(id)pass
{
  v42 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  entitlementCopy = entitlement;
  credentialCopy = credential;
  passCopy = pass;
  partnerIdentifier = [credentialCopy partnerIdentifier];
  pairedReaderIdentifier = [credentialCopy pairedReaderIdentifier];
  recipientNickname = [shareCopy recipientNickname];
  v17 = recipientNickname;
  if (!partnerIdentifier)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v41 = shareCopy;
    v34 = "Invalid state of credential (%@) to create invitation from: missing partnerIdentifier";
LABEL_19:
    _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    goto LABEL_20;
  }

  if (!pairedReaderIdentifier)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v41 = shareCopy;
    v34 = "Invalid state of credential (%@) to create invitation from: missing pairedReaderIdentifier";
    goto LABEL_19;
  }

  if (!recipientNickname)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v41 = shareCopy;
    v34 = "Invalid state of shared credential (%@) to create invitation from: missing recipientName";
    goto LABEL_19;
  }

  if (!entitlementCopy)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = shareCopy;
      v34 = "Invalid state of shared credential (%@) to create invitation from: missing entitlement";
      goto LABEL_19;
    }

LABEL_20:

    v21 = 0;
    goto LABEL_21;
  }

  v18 = [self alloc];
  brandIdentifier = [credentialCopy brandIdentifier];
  v39 = entitlementCopy;
  value = [entitlementCopy value];
  v21 = [v18 initWithPartnerIdentifier:partnerIdentifier brandIdentifier:brandIdentifier pairedReaderIdentifier:pairedReaderIdentifier recipientName:v17 entitlement:objc_msgSend(value supportedRadioTechnologies:{"unsignedIntegerValue"), objc_msgSend(credentialCopy, "supportedRadioTechnologies")}];

  uuidIdentifier = [shareCopy uuidIdentifier];
  [v21 setSharingSessionIdentifier:uuidIdentifier];

  organizationName = [passCopy organizationName];
  localizedDescription = [passCopy localizedDescription];
  v25 = localizedDescription;
  if (localizedDescription)
  {
    v26 = [localizedDescription length];
    v27 = [organizationName length];
    v28 = organizationName;
    if (v26 > v27 + 1)
    {
      v29 = v27;
      v37 = v27 + 1;
      v38 = v28;
      if ([v25 hasPrefix:?])
      {
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v31 = [whitespaceCharacterSet characterIsMember:{objc_msgSend(v25, "characterAtIndex:", v29)}];

        if (v31)
        {
          v32 = [v25 substringFromIndex:v37];

          v25 = v32;
        }
      }

      organizationName = v38;
    }
  }

  organizationName2 = [passCopy organizationName];
  [v21 setIssuer:organizationName2];

  [v21 setDeviceModel:v25];
  v21[13] = 0;

  entitlementCopy = v39;
LABEL_21:

  return v21;
}

- (PKAppletSubcredentialSharingInvitation)initWithCrossPlatformInvitation:(id)invitation
{
  invitationCopy = invitation;
  v24.receiver = self;
  v24.super_class = PKAppletSubcredentialSharingInvitation;
  v6 = [(PKAppletSubcredentialSharingInvitation *)&v24 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    shareIdentifier = [invitationCopy shareIdentifier];
    identifier = v7->_identifier;
    v7->_identifier = shareIdentifier;

    vehicleModel = [invitationCopy vehicleModel];
    deviceModel = v7->_deviceModel;
    v7->_deviceModel = vehicleModel;

    vehicleIssuer = [invitationCopy vehicleIssuer];
    issuer = v7->_issuer;
    v7->_issuer = vehicleIssuer;

    v7->_supportedRadioTechnologies = [invitationCopy radioTechnology];
    readerIdentifier = [invitationCopy readerIdentifier];
    pairedReaderIdentifier = v7->_pairedReaderIdentifier;
    v7->_pairedReaderIdentifier = readerIdentifier;

    brandIdentifier = [invitationCopy brandIdentifier];
    brandIdentifier = v7->_brandIdentifier;
    v7->_brandIdentifier = brandIdentifier;

    partnerIdentifier = [invitationCopy partnerIdentifier];
    partnerIdentifier = v7->_partnerIdentifier;
    v7->_partnerIdentifier = partnerIdentifier;

    shareSessionIdentifier = [invitationCopy shareSessionIdentifier];
    if (shareSessionIdentifier)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:shareSessionIdentifier];
      sharingSessionIdentifier = v7->_sharingSessionIdentifier;
      v7->_sharingSessionIdentifier = v21;
    }

    objc_storeStrong(&v7->_originalInvitationMessage, invitation);
  }

  return v7;
}

- (BOOL)isThirdPartyCrossPlatformInvitation
{
  if (self->_type != 1)
  {
    return 0;
  }

  proprietaryData = [(PKSharingCarKeyInvitation *)self->_originalInvitationMessage proprietaryData];
  v3 = proprietaryData == 0;

  return v3;
}

- (id)dataRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKProtobufAppletSubcredentialSharingInvitation);
  [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setVersion:0];
  if (self->_identifier)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setIdentifier:?];
  }

  if (self->_partnerIdentifier)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setPartnerIdentifier:?];
  }

  if (self->_brandIdentifier)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setBrandIdentifier:?];
  }

  if (self->_pairedReaderIdentifier)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setPairedReaderIdentifier:?];
  }

  if (self->_recipientName)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setRecipientName:?];
  }

  [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setEntitlement:LODWORD(self->_entitlement)];
  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  if (sharingSessionIdentifier)
  {
    v8[0] = 0;
    v8[1] = 0;
    [(NSUUID *)sharingSessionIdentifier getUUIDBytes:v8];
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setSharingSessionIdentifier:v5];
  }

  [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setDeviceType:self->_forWatch];
  if (self->_deviceModel)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setDeviceModel:?];
  }

  if (self->_issuer)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setIssuer:?];
  }

  if (self->_supportedRadioTechnologies)
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)v3 setSupportedRadioTechnologies:?];
  }

  data = [(PKProtobufAppletSubcredentialSharingInvitation *)v3 data];

  return data;
}

- (id)sharingConfigurationRepresentation
{
  if (self->_forWatch)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = objc_alloc(MEMORY[0x1E699A130]);
  entitlement = self->_entitlement;
  recipientName = self->_recipientName;
  dataRepresentation = [(PKAppletSubcredentialSharingInvitation *)self dataRepresentation];
  v8 = [v4 initWithProfile:entitlement displayName:recipientName metaData:dataRepresentation targetDeviceType:v3];

  return v8;
}

- (id)invitationRequestRepresentation
{
  if (self->_originatorIDSHandle)
  {
    if (self->_sharingSessionIdentifier)
    {
      v2 = [objc_alloc(MEMORY[0x1E699A118]) initWithSharingSessionIdentifier:self->_sharingSessionIdentifier ownerIdsIdentifier:self->_originatorIDSHandle];
      goto LABEL_10;
    }

    v3 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Missing session handle while creating invitation request";
      v5 = &v7;
      goto LABEL_8;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v4 = "Missing originator IDS handle while creating invitation request";
      v5 = &v8;
LABEL_8:
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  v2 = 0;
LABEL_10:

  return v2;
}

- (BOOL)isSameInvitationAsInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = invitationCopy;
  identifier = self->_identifier;
  if (identifier)
  {
    identifier = [invitationCopy identifier];
    LOBYTE(v8) = [(NSString *)identifier isEqualToString:identifier];
  }

  else
  {
    pairedReaderIdentifier = self->_pairedReaderIdentifier;
    if (pairedReaderIdentifier && ([invitationCopy pairedReaderIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqualToString:](pairedReaderIdentifier, "isEqualToString:", v10), v10, !v11))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      sharingSessionIdentifier = self->_sharingSessionIdentifier;
      if (!sharingSessionIdentifier || ([v5 sharingSessionIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v8 = -[NSUUID isEqual:](sharingSessionIdentifier, "isEqual:", v13), v13, v8))
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  return v8;
}

- (id)addCarKeyPassConfiguration
{
  v3 = objc_alloc_init(PKAddCarKeyPassConfiguration);
  [(PKAddCarKeyPassConfiguration *)v3 setSupportedRadioTechnologies:self->_supportedRadioTechnologies];
  v4 = self->_brandIdentifier;
  manufacturerIdentifier = [(PKAppletSubcredentialSharingInvitation *)self manufacturerIdentifier];
  v6 = manufacturerIdentifier;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = manufacturerIdentifier;
  }

  [(PKAddSecureElementPassConfiguration *)v3 setIssuerIdentifier:v7];
  [(PKAddCarKeyPassConfiguration *)v3 setManufacturerIdentifier:v6];
  [(PKAddCarKeyPassConfiguration *)v3 setPairedReaderIdentifier:self->_pairedReaderIdentifier];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAppletSubcredentialSharingInvitation *)self isEqualToInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToInvitation:(id)invitation
{
  invitationCopy = invitation;
  identifier = [(PKAppletSubcredentialSharingInvitation *)self identifier];
  identifier2 = [invitationCopy identifier];

  if (identifier && identifier2)
  {
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = identifier == identifier2;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(PKAppletSubcredentialSharingInvitation *)self identifier];
  v3 = [identifier hash];

  return v3 + 527;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  identifier = [(PKAppletSubcredentialSharingInvitation *)self identifier];
  [v6 appendFormat:@"identifier: '%@'; ", identifier];

  [v6 appendFormat:@"partner ID: '%@'; ", self->_partnerIdentifier];
  [v6 appendFormat:@"brand ID: '%@'; ", self->_brandIdentifier];
  [v6 appendFormat:@"reader ID: '%@'; ", self->_pairedReaderIdentifier];
  [v6 appendFormat:@"session ID: '%@'; ", self->_sharingSessionIdentifier];
  [v6 appendFormat:@"recipientName: '%@'; ", self->_recipientName];
  [v6 appendFormat:@"issuer: '%@'; ", self->_issuer];
  [v6 appendFormat:@"model: '%@'; ", self->_deviceModel];
  [v6 appendFormat:@"managementEnabled: '%lu'; ", self->_supportedRadioTechnologies];
  [v6 appendFormat:@"type: '%lu'; ", self->_type];
  [v6 appendFormat:@"originalInvitationMessage: '%@'; ", self->_originalInvitationMessage];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [coderCopy encodeObject:self->_brandIdentifier forKey:@"brandIdentifier"];
  [coderCopy encodeObject:self->_pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  [coderCopy encodeObject:self->_recipientName forKey:@"recipientName"];
  [coderCopy encodeObject:self->_sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  [coderCopy encodeInteger:self->_entitlement forKey:@"entitlement"];
  [coderCopy encodeInteger:self->_forWatch forKey:@"forWatch"];
  [coderCopy encodeObject:self->_issuer forKey:@"issuer"];
  [coderCopy encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [coderCopy encodeObject:self->_originatorIDSHandle forKey:@"originatorIDSHandle"];
  [coderCopy encodeInteger:self->_supportedRadioTechnologies forKey:@"supportedRadioTechnologies"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_originalInvitationMessage forKey:@"invitationMessageIdentifier"];
  [coderCopy encodeObject:self->_activationCode forKey:@"activationCode"];
}

- (PKAppletSubcredentialSharingInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppletSubcredentialSharingInvitation *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brandIdentifier"];
    brandIdentifier = v5->_brandIdentifier;
    v5->_brandIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedReaderIdentifier"];
    pairedReaderIdentifier = v5->_pairedReaderIdentifier;
    v5->_pairedReaderIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientName"];
    recipientName = v5->_recipientName;
    v5->_recipientName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v16;

    v5->_entitlement = [coderCopy decodeIntegerForKey:@"entitlement"];
    v5->_forWatch = [coderCopy decodeIntegerForKey:@"forWatch"] != 0;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuer"];
    issuer = v5->_issuer;
    v5->_issuer = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorIDSHandle"];
    originatorIDSHandle = v5->_originatorIDSHandle;
    v5->_originatorIDSHandle = v22;

    v5->_supportedRadioTechnologies = [coderCopy decodeIntegerForKey:@"supportedRadioTechnologies"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationMessageIdentifier"];
    originalInvitationMessage = v5->_originalInvitationMessage;
    v5->_originalInvitationMessage = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activationCode"];
    activationCode = v5->_activationCode;
    v5->_activationCode = v26;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIdentifier:self->_identifier];
  [v4 setPartnerIdentifier:self->_partnerIdentifier];
  [v4 setBrandIdentifier:self->_brandIdentifier];
  [v4 setPairedReaderIdentifier:self->_pairedReaderIdentifier];
  [v4 setRecipientName:self->_recipientName];
  [v4 setSharingSessionIdentifier:self->_sharingSessionIdentifier];
  [v4 setEntitlement:self->_entitlement];
  [v4 setIssuer:self->_issuer];
  [v4 setDeviceModel:self->_deviceModel];
  [v4 setForWatch:self->_forWatch];
  [v4 setOriginatorIDSHandle:self->_originatorIDSHandle];
  [v4 setSupportedRadioTechnologies:self->_supportedRadioTechnologies];
  v4[13] = self->_type;
  [v4 setOriginalInvitationMessage:self->_originalInvitationMessage];
  return v4;
}

- (NSString)manufacturerIdentifier
{
  v2 = [(NSString *)self->_partnerIdentifier componentsSeparatedByString:@"."];
  if ([v2 count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:1];
  }

  return v3;
}

@end