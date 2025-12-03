@interface PKSEConsistencyCheckDeviceCredential
+ (id)deviceCredentialWithApplet:(id)applet;
+ (id)deviceCredentialWithDAKeyInformation:(id)information;
+ (id)deviceCredentialWithISOCredentialProperties:(id)properties hasKeyMeterial:(BOOL)meterial requireKeySync:(BOOL)sync;
- (PKSEConsistencyCheckDeviceCredential)initWithType:(unint64_t)type state:(unint64_t)state underlyingCredentialState:(id)credentialState address:(id)address;
- (id)description;
@end

@implementation PKSEConsistencyCheckDeviceCredential

- (PKSEConsistencyCheckDeviceCredential)initWithType:(unint64_t)type state:(unint64_t)state underlyingCredentialState:(id)credentialState address:(id)address
{
  credentialStateCopy = credentialState;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = PKSEConsistencyCheckDeviceCredential;
  v13 = [(PKSEConsistencyCheckDeviceCredential *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_state = state;
    objc_storeStrong(&v13->_underlyingCredentialState, credentialState);
    objc_storeStrong(&v14->_address, address);
    v14->_isManagedByTSM = 1;
  }

  return v14;
}

+ (id)deviceCredentialWithISOCredentialProperties:(id)properties hasKeyMeterial:(BOOL)meterial requireKeySync:(BOOL)sync
{
  propertiesCopy = properties;
  credentialIdentifier = [propertiesCopy credentialIdentifier];
  v9 = PKISO18013_SubcredentialIdentifierFromProperties(propertiesCopy);
  v10 = [PKSECredentialAddress alloc];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"null";
  }

  v12 = [(PKSECredentialAddress *)v10 initWithType:1 identifier:v11];
  credentialState = [propertiesCopy credentialState];
  v14 = credentialState;
  if (credentialState > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1ADB99728[credentialState];
  }

  v16 = [PKSEConsistencyCheckDeviceCredential alloc];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  v18 = [(PKSEConsistencyCheckDeviceCredential *)v16 initWithType:2 state:v15 underlyingCredentialState:v17 address:v12];

  if (v18)
  {
    v19 = [PKSEConsistencyCheckDeviceCredentialISO18013Properties alloc];
    v20 = credentialIdentifier;
    if (v19)
    {
      v41.receiver = v19;
      v41.super_class = PKSEConsistencyCheckDeviceCredentialISO18013Properties;
      v21 = objc_msgSendSuper2(&v41, sel_init);
      v19 = v21;
      if (v21)
      {
        v21->_hasKeyMeterial = meterial;
        objc_storeStrong(&v21->_isoIdentifier, credentialIdentifier);
        v19->_requireKeySync = sync;
      }
    }

    v22 = *(v18 + 72);
    *(v18 + 72) = v19;

    partition = [propertiesCopy partition];
    v24 = partition;
    if (partition == @"identity")
    {
    }

    else
    {
      if (!partition || !@"identity")
      {

        goto LABEL_23;
      }

      v25 = [(__CFString *)partition isEqualToString:@"identity"];

      if (!v25)
      {
LABEL_23:
        docType = [propertiesCopy docType];
        v30 = docType;
        if (docType == @"aliro-a")
        {
        }

        else
        {
          if (!docType || !@"aliro-a")
          {

LABEL_43:
            v36 = v30;
            v33 = v36;
            if (v36 == @"aliro-r")
            {
            }

            else
            {
              if (!v30 || !@"aliro-r")
              {

LABEL_51:
                v32 = 130;
                goto LABEL_52;
              }

              v37 = [(__CFString *)v36 isEqualToString:@"aliro-r"];

              if (!v37)
              {
                goto LABEL_51;
              }
            }

            v32 = 139;
            goto LABEL_52;
          }

          v31 = [(__CFString *)docType isEqualToString:@"aliro-a"];

          if ((v31 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v32 = 139;
        v33 = v30;
        goto LABEL_52;
      }
    }

    docType2 = [propertiesCopy docType];
    v27 = docType2;
    if (docType2 == @"org.iso.23220.1.jp.mnc")
    {
    }

    else
    {
      if (!docType2 || !@"org.iso.23220.1.jp.mnc")
      {

LABEL_33:
        v32 = 129;
        goto LABEL_34;
      }

      v28 = [(__CFString *)docType2 isEqualToString:@"org.iso.23220.1.jp.mnc"];

      if (!v28)
      {
        goto LABEL_33;
      }
    }

    v32 = 138;
LABEL_34:
    v34 = v27;
    v33 = v34;
    if (v34 == @"org.iso.23220.photoid.1")
    {
    }

    else
    {
      if (!v34 || !@"org.iso.23220.photoid.1")
      {

        goto LABEL_52;
      }

      v35 = [(__CFString *)v34 isEqualToString:@"org.iso.23220.photoid.1"];

      if (!v35)
      {
        goto LABEL_52;
      }
    }

    v32 = 140;
LABEL_52:

    *(v18 + 56) = v32;
    *(v18 + 9) = 0;
    payloadIngestionHash = [propertiesCopy payloadIngestionHash];
    v39 = *(v18 + 40);
    *(v18 + 40) = payloadIngestionHash;
  }

  return v18;
}

+ (id)deviceCredentialWithDAKeyInformation:(id)information
{
  informationCopy = information;
  keyType = [informationCopy keyType];
  v5 = keyType;
  uppercaseString = 0;
  v7 = 0;
  v8 = 1;
  v29 = informationCopy;
  if (keyType <= 2)
  {
    if (keyType == 1)
    {
      alishaKeyInformation = [informationCopy alishaKeyInformation];
      revocationAttestation = [alishaKeyInformation revocationAttestation];

      if (revocationAttestation)
      {
        v11 = 2;
        v10 = 129;
      }

      else
      {
        trackingReceipt = [alishaKeyInformation trackingReceipt];

        if (trackingReceipt)
        {
          v10 = 15;
        }

        else
        {
          v10 = 21;
        }

        if (trackingReceipt)
        {
          v11 = 1;
        }

        else
        {
          v11 = 4;
        }
      }

      trackingRequest = [alishaKeyInformation trackingRequest];
      v7 = trackingRequest != 0;

      uppercaseString = @"A000000809434343444B417631";
      v8 = 1;
      v9 = 301;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (keyType != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (keyType != 3)
  {
    if (keyType != 4)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (keyType != 5)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

LABEL_11:
    hydraKeyInformation = [informationCopy hydraKeyInformation];
    alishaKeyInformation = hydraKeyInformation;
    if (v5 == 4)
    {
      v9 = 139;
    }

    else
    {
      v9 = 130;
    }

    appletIdentifier = [hydraKeyInformation appletIdentifier];
    hexEncoding = [appletIdentifier hexEncoding];
    uppercaseString = [hexEncoding uppercaseString];

    v7 = 0;
    v8 = 1;
    v10 = 21;
    v11 = 1;
    goto LABEL_24;
  }

LABEL_5:
  homeKeyInformation = [informationCopy homeKeyInformation];
  alishaKeyInformation = homeKeyInformation;
  if (v5 == 5)
  {
    v9 = 139;
  }

  else
  {
    v9 = 133;
  }

  appletIdentifier2 = [homeKeyInformation appletIdentifier];
  hexEncoding2 = [appletIdentifier2 hexEncoding];
  uppercaseString = [hexEncoding2 uppercaseString];

  v8 = 0;
  v7 = 0;
  v11 = 1;
  v10 = 21;
LABEL_24:

  informationCopy = v29;
LABEL_25:
  v22 = v7;
  publicKeyIdentifier = [informationCopy publicKeyIdentifier];
  v24 = [[PKSECredentialAddress alloc] initWithType:0 identifier:uppercaseString];
  [(PKSECredentialAddress *)v24 appendType:1 identifier:publicKeyIdentifier];
  v25 = [PKSEConsistencyCheckDeviceCredential alloc];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v27 = [(PKSEConsistencyCheckDeviceCredential *)v25 initWithType:1 state:v11 underlyingCredentialState:v26 address:v24];

  if (v27)
  {
    *(v27 + 56) = v9;
    *(v27 + 8) = v22;
    *(v27 + 9) = v8;
  }

  return v27;
}

+ (id)deviceCredentialWithApplet:(id)applet
{
  appletCopy = applet;
  v4 = [PKSECredentialAddress alloc];
  identifier = [appletCopy identifier];
  v6 = [(PKSECredentialAddress *)v4 initWithType:0 identifier:identifier];

  lifecycleState = [appletCopy lifecycleState];
  v8 = lifecycleState;
  if (lifecycleState <= 14)
  {
    if (lifecycleState == 1 || lifecycleState == 3 || lifecycleState == 7)
    {
      v13 = 5;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v9 = 2;
    v10 = 6;
    if (lifecycleState != 130)
    {
      v10 = 0;
    }

    if (lifecycleState != 129)
    {
      v9 = v10;
    }

    v11 = 1;
    v12 = 4;
    if (lifecycleState != 23)
    {
      v12 = 0;
    }

    if (lifecycleState != 15)
    {
      v11 = v12;
    }

    if (lifecycleState <= 128)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }
  }

  v14 = [PKSEConsistencyCheckDeviceCredential alloc];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v16 = [(PKSEConsistencyCheckDeviceCredential *)v14 initWithType:0 state:v13 underlyingCredentialState:v15 address:v6];

  if (v16)
  {
    v17 = [PKSEConsistencyCheckDeviceCredentialAppletProperties alloc];
    isLocked = [appletCopy isLocked];
    containsSubKeys = [appletCopy containsSubKeys];
    if (v17)
    {
      v20 = containsSubKeys;
      v24.receiver = v17;
      v24.super_class = PKSEConsistencyCheckDeviceCredentialAppletProperties;
      v21 = objc_msgSendSuper2(&v24, sel_init);
      if (v21)
      {
        v21->_locked = isLocked;
        v21->_container = v20;
      }
    }

    else
    {
      v21 = 0;
    }

    appletProperties = v16->_appletProperties;
    v16->_appletProperties = v21;
  }

  return v16;
}

- (id)description
{
  type = self->_type;
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E79CC7C8[type];
  }

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v5 appendFormat:@"type: '%@'; ", v4];
  [v5 appendFormat:@"state: '%lu'; ", self->_state];
  [v5 appendFormat:@"credentialType: '%lu'; ", self->_credentialType];
  [v5 appendFormat:@"underlyingCredentialState: '%@'; ", self->_underlyingCredentialState];
  shortDescription = [(PKSECredentialAddress *)self->_address shortDescription];
  [v5 appendFormat:@"address: '%@'; ", shortDescription];

  if (self->_appletProperties)
  {
    [v5 appendFormat:@"appletProperties: '%@'; ", self->_appletProperties];
  }

  if (self->_isoProperties)
  {
    [v5 appendFormat:@"isoProperties: '%@'; ", self->_isoProperties];
  }

  keyMaterialHash = self->_keyMaterialHash;
  if (keyMaterialHash)
  {
    v8 = [(NSData *)keyMaterialHash base64EncodedStringWithOptions:0];
    [v5 appendFormat:@"keyMaterialHash: '%@'; ", v8];
  }

  if (self->_shouldRegister)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v5 appendFormat:@"shouldRegister: '%@'; ", v9];
  if (self->_isManagedByTSM)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v5 appendFormat:@"isManagedByTSM: '%@'; ", v10];
  [v5 appendFormat:@">"];

  return v5;
}

@end