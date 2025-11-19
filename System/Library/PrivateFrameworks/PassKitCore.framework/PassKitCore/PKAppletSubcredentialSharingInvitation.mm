@interface PKAppletSubcredentialSharingInvitation
+ (id)invitationFromShare:(id)a3 entitlement:(id)a4 withCredential:(id)a5 pass:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInvitation:(id)a3;
- (BOOL)isSameInvitationAsInvitation:(id)a3;
- (BOOL)isThirdPartyCrossPlatformInvitation;
- (NSString)manufacturerIdentifier;
- (PKAppletSubcredentialSharingInvitation)initWithCoder:(id)a3;
- (PKAppletSubcredentialSharingInvitation)initWithCrossPlatformInvitation:(id)a3;
- (PKAppletSubcredentialSharingInvitation)initWithIdentifier:(id)a3 sharingSessionIdentifier:(id)a4 originatorIDSHandle:(id)a5 invitationData:(id)a6;
- (PKAppletSubcredentialSharingInvitation)initWithPartnerIdentifier:(id)a3 brandIdentifier:(id)a4 pairedReaderIdentifier:(id)a5 recipientName:(id)a6 entitlement:(unint64_t)a7 supportedRadioTechnologies:(unint64_t)a8;
- (id)addCarKeyPassConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)description;
- (id)invitationRequestRepresentation;
- (id)sharingConfigurationRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppletSubcredentialSharingInvitation

- (PKAppletSubcredentialSharingInvitation)initWithPartnerIdentifier:(id)a3 brandIdentifier:(id)a4 pairedReaderIdentifier:(id)a5 recipientName:(id)a6 entitlement:(unint64_t)a7 supportedRadioTechnologies:(unint64_t)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v17;
  if (v14 && v16 && v17)
  {
    v27.receiver = self;
    v27.super_class = PKAppletSubcredentialSharingInvitation;
    v19 = [(PKAppletSubcredentialSharingInvitation *)&v27 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_partnerIdentifier, a3);
      objc_storeStrong(&v20->_brandIdentifier, a4);
      objc_storeStrong(&v20->_pairedReaderIdentifier, a5);
      objc_storeStrong(&v20->_recipientName, a6);
      v20->_entitlement = a7;
      v20->_supportedRadioTechnologies = a8;
      v20->_type = 0;
    }

    self = v20;
    v21 = self;
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

    v21 = 0;
  }

  return v21;
}

- (PKAppletSubcredentialSharingInvitation)initWithIdentifier:(id)a3 sharingSessionIdentifier:(id)a4 originatorIDSHandle:(id)a5 invitationData:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
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
    v38 = 0;
    goto LABEL_28;
  }

  v16 = [[PKProtobufAppletSubcredentialSharingInvitation alloc] initWithData:v15];
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
    objc_storeStrong(&v17->_sharingSessionIdentifier, a4);
    objc_storeStrong(&self->_originatorIDSHandle, a5);
    [(PKProtobufAppletSubcredentialSharingInvitation *)v16 version];
    objc_storeStrong(&self->_identifier, a3);
    v18 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 partnerIdentifier];
    partnerIdentifier = self->_partnerIdentifier;
    self->_partnerIdentifier = v18;

    v20 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 brandIdentifier];
    brandIdentifier = self->_brandIdentifier;
    self->_brandIdentifier = v20;

    v22 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 pairedReaderIdentifier];
    pairedReaderIdentifier = self->_pairedReaderIdentifier;
    self->_pairedReaderIdentifier = v22;

    v24 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 recipientName];
    recipientName = self->_recipientName;
    self->_recipientName = v24;

    if ([(PKProtobufAppletSubcredentialSharingInvitation *)v16 hasSharingSessionIdentifier])
    {
      v26 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 sharingSessionIdentifier];
      if ([v26 length] == 16)
      {
        v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v26, "bytes")}];
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
    v30 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 issuer];
    issuer = self->_issuer;
    self->_issuer = v30;

    v32 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 deviceModel];
    deviceModel = self->_deviceModel;
    self->_deviceModel = v32;

    if ([(PKProtobufAppletSubcredentialSharingInvitation *)v16 supportedRadioTechnologies])
    {
      v34 = [(PKProtobufAppletSubcredentialSharingInvitation *)v16 supportedRadioTechnologies];
    }

    else
    {
      v34 = 1;
    }

    self->_supportedRadioTechnologies = v34;
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
  v38 = self;
LABEL_28:

  return v38;
}

+ (id)invitationFromShare:(id)a3 entitlement:(id)a4 withCredential:(id)a5 pass:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 partnerIdentifier];
  v15 = [v12 pairedReaderIdentifier];
  v16 = [v10 recipientNickname];
  v17 = v16;
  if (!v14)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v41 = v10;
    v34 = "Invalid state of credential (%@) to create invitation from: missing partnerIdentifier";
LABEL_19:
    _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    goto LABEL_20;
  }

  if (!v15)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v41 = v10;
    v34 = "Invalid state of credential (%@) to create invitation from: missing pairedReaderIdentifier";
    goto LABEL_19;
  }

  if (!v16)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v41 = v10;
    v34 = "Invalid state of shared credential (%@) to create invitation from: missing recipientName";
    goto LABEL_19;
  }

  if (!v11)
  {
    v33 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v10;
      v34 = "Invalid state of shared credential (%@) to create invitation from: missing entitlement";
      goto LABEL_19;
    }

LABEL_20:

    v21 = 0;
    goto LABEL_21;
  }

  v18 = [a1 alloc];
  v19 = [v12 brandIdentifier];
  v39 = v11;
  v20 = [v11 value];
  v21 = [v18 initWithPartnerIdentifier:v14 brandIdentifier:v19 pairedReaderIdentifier:v15 recipientName:v17 entitlement:objc_msgSend(v20 supportedRadioTechnologies:{"unsignedIntegerValue"), objc_msgSend(v12, "supportedRadioTechnologies")}];

  v22 = [v10 uuidIdentifier];
  [v21 setSharingSessionIdentifier:v22];

  v23 = [v13 organizationName];
  v24 = [v13 localizedDescription];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 length];
    v27 = [v23 length];
    v28 = v23;
    if (v26 > v27 + 1)
    {
      v29 = v27;
      v37 = v27 + 1;
      v38 = v28;
      if ([v25 hasPrefix:?])
      {
        v30 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v31 = [v30 characterIsMember:{objc_msgSend(v25, "characterAtIndex:", v29)}];

        if (v31)
        {
          v32 = [v25 substringFromIndex:v37];

          v25 = v32;
        }
      }

      v23 = v38;
    }
  }

  v36 = [v13 organizationName];
  [v21 setIssuer:v36];

  [v21 setDeviceModel:v25];
  v21[13] = 0;

  v11 = v39;
LABEL_21:

  return v21;
}

- (PKAppletSubcredentialSharingInvitation)initWithCrossPlatformInvitation:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = PKAppletSubcredentialSharingInvitation;
  v6 = [(PKAppletSubcredentialSharingInvitation *)&v24 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    v8 = [v5 shareIdentifier];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = [v5 vehicleModel];
    deviceModel = v7->_deviceModel;
    v7->_deviceModel = v10;

    v12 = [v5 vehicleIssuer];
    issuer = v7->_issuer;
    v7->_issuer = v12;

    v7->_supportedRadioTechnologies = [v5 radioTechnology];
    v14 = [v5 readerIdentifier];
    pairedReaderIdentifier = v7->_pairedReaderIdentifier;
    v7->_pairedReaderIdentifier = v14;

    v16 = [v5 brandIdentifier];
    brandIdentifier = v7->_brandIdentifier;
    v7->_brandIdentifier = v16;

    v18 = [v5 partnerIdentifier];
    partnerIdentifier = v7->_partnerIdentifier;
    v7->_partnerIdentifier = v18;

    v20 = [v5 shareSessionIdentifier];
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v20];
      sharingSessionIdentifier = v7->_sharingSessionIdentifier;
      v7->_sharingSessionIdentifier = v21;
    }

    objc_storeStrong(&v7->_originalInvitationMessage, a3);
  }

  return v7;
}

- (BOOL)isThirdPartyCrossPlatformInvitation
{
  if (self->_type != 1)
  {
    return 0;
  }

  v2 = [(PKSharingCarKeyInvitation *)self->_originalInvitationMessage proprietaryData];
  v3 = v2 == 0;

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

  v6 = [(PKProtobufAppletSubcredentialSharingInvitation *)v3 data];

  return v6;
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
  v7 = [(PKAppletSubcredentialSharingInvitation *)self dataRepresentation];
  v8 = [v4 initWithProfile:entitlement displayName:recipientName metaData:v7 targetDeviceType:v3];

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

- (BOOL)isSameInvitationAsInvitation:(id)a3
{
  v4 = a3;
  v5 = v4;
  identifier = self->_identifier;
  if (identifier)
  {
    v7 = [v4 identifier];
    LOBYTE(v8) = [(NSString *)identifier isEqualToString:v7];
  }

  else
  {
    pairedReaderIdentifier = self->_pairedReaderIdentifier;
    if (pairedReaderIdentifier && ([v4 pairedReaderIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqualToString:](pairedReaderIdentifier, "isEqualToString:", v10), v10, !v11))
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
  v5 = [(PKAppletSubcredentialSharingInvitation *)self manufacturerIdentifier];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  [(PKAddSecureElementPassConfiguration *)v3 setIssuerIdentifier:v7];
  [(PKAddCarKeyPassConfiguration *)v3 setManufacturerIdentifier:v6];
  [(PKAddCarKeyPassConfiguration *)v3 setPairedReaderIdentifier:self->_pairedReaderIdentifier];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAppletSubcredentialSharingInvitation *)self isEqualToInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToInvitation:(id)a3
{
  v4 = a3;
  v5 = [(PKAppletSubcredentialSharingInvitation *)self identifier];
  v6 = [v4 identifier];

  if (v5 && v6)
  {
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = v5 == v6;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PKAppletSubcredentialSharingInvitation *)self identifier];
  v3 = [v2 hash];

  return v3 + 527;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(PKAppletSubcredentialSharingInvitation *)self identifier];
  [v6 appendFormat:@"identifier: '%@'; ", v7];

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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [v5 encodeObject:self->_brandIdentifier forKey:@"brandIdentifier"];
  [v5 encodeObject:self->_pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  [v5 encodeObject:self->_recipientName forKey:@"recipientName"];
  [v5 encodeObject:self->_sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  [v5 encodeInteger:self->_entitlement forKey:@"entitlement"];
  [v5 encodeInteger:self->_forWatch forKey:@"forWatch"];
  [v5 encodeObject:self->_issuer forKey:@"issuer"];
  [v5 encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [v5 encodeObject:self->_originatorIDSHandle forKey:@"originatorIDSHandle"];
  [v5 encodeInteger:self->_supportedRadioTechnologies forKey:@"supportedRadioTechnologies"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_originalInvitationMessage forKey:@"invitationMessageIdentifier"];
  [v5 encodeObject:self->_activationCode forKey:@"activationCode"];
}

- (PKAppletSubcredentialSharingInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppletSubcredentialSharingInvitation *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandIdentifier"];
    brandIdentifier = v5->_brandIdentifier;
    v5->_brandIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedReaderIdentifier"];
    pairedReaderIdentifier = v5->_pairedReaderIdentifier;
    v5->_pairedReaderIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientName"];
    recipientName = v5->_recipientName;
    v5->_recipientName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v16;

    v5->_entitlement = [v4 decodeIntegerForKey:@"entitlement"];
    v5->_forWatch = [v4 decodeIntegerForKey:@"forWatch"] != 0;
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuer"];
    issuer = v5->_issuer;
    v5->_issuer = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorIDSHandle"];
    originatorIDSHandle = v5->_originatorIDSHandle;
    v5->_originatorIDSHandle = v22;

    v5->_supportedRadioTechnologies = [v4 decodeIntegerForKey:@"supportedRadioTechnologies"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationMessageIdentifier"];
    originalInvitationMessage = v5->_originalInvitationMessage;
    v5->_originalInvitationMessage = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationCode"];
    activationCode = v5->_activationCode;
    v5->_activationCode = v26;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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