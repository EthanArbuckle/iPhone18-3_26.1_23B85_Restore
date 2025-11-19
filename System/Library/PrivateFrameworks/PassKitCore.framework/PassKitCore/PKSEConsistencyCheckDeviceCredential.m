@interface PKSEConsistencyCheckDeviceCredential
+ (id)deviceCredentialWithApplet:(id)a3;
+ (id)deviceCredentialWithDAKeyInformation:(id)a3;
+ (id)deviceCredentialWithISOCredentialProperties:(id)a3 hasKeyMeterial:(BOOL)a4 requireKeySync:(BOOL)a5;
- (PKSEConsistencyCheckDeviceCredential)initWithType:(unint64_t)a3 state:(unint64_t)a4 underlyingCredentialState:(id)a5 address:(id)a6;
- (id)description;
@end

@implementation PKSEConsistencyCheckDeviceCredential

- (PKSEConsistencyCheckDeviceCredential)initWithType:(unint64_t)a3 state:(unint64_t)a4 underlyingCredentialState:(id)a5 address:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = PKSEConsistencyCheckDeviceCredential;
  v13 = [(PKSEConsistencyCheckDeviceCredential *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v13->_state = a4;
    objc_storeStrong(&v13->_underlyingCredentialState, a5);
    objc_storeStrong(&v14->_address, a6);
    v14->_isManagedByTSM = 1;
  }

  return v14;
}

+ (id)deviceCredentialWithISOCredentialProperties:(id)a3 hasKeyMeterial:(BOOL)a4 requireKeySync:(BOOL)a5
{
  v7 = a3;
  v8 = [v7 credentialIdentifier];
  v9 = PKISO18013_SubcredentialIdentifierFromProperties(v7);
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
  v13 = [v7 credentialState];
  v14 = v13;
  if (v13 > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1ADB99728[v13];
  }

  v16 = [PKSEConsistencyCheckDeviceCredential alloc];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  v18 = [(PKSEConsistencyCheckDeviceCredential *)v16 initWithType:2 state:v15 underlyingCredentialState:v17 address:v12];

  if (v18)
  {
    v19 = [PKSEConsistencyCheckDeviceCredentialISO18013Properties alloc];
    v20 = v8;
    if (v19)
    {
      v41.receiver = v19;
      v41.super_class = PKSEConsistencyCheckDeviceCredentialISO18013Properties;
      v21 = objc_msgSendSuper2(&v41, sel_init);
      v19 = v21;
      if (v21)
      {
        v21->_hasKeyMeterial = a4;
        objc_storeStrong(&v21->_isoIdentifier, v8);
        v19->_requireKeySync = a5;
      }
    }

    v22 = *(v18 + 72);
    *(v18 + 72) = v19;

    v23 = [v7 partition];
    v24 = v23;
    if (v23 == @"identity")
    {
    }

    else
    {
      if (!v23 || !@"identity")
      {

        goto LABEL_23;
      }

      v25 = [(__CFString *)v23 isEqualToString:@"identity"];

      if (!v25)
      {
LABEL_23:
        v29 = [v7 docType];
        v30 = v29;
        if (v29 == @"aliro-a")
        {
        }

        else
        {
          if (!v29 || !@"aliro-a")
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

          v31 = [(__CFString *)v29 isEqualToString:@"aliro-a"];

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

    v26 = [v7 docType];
    v27 = v26;
    if (v26 == @"org.iso.23220.1.jp.mnc")
    {
    }

    else
    {
      if (!v26 || !@"org.iso.23220.1.jp.mnc")
      {

LABEL_33:
        v32 = 129;
        goto LABEL_34;
      }

      v28 = [(__CFString *)v26 isEqualToString:@"org.iso.23220.1.jp.mnc"];

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
    v38 = [v7 payloadIngestionHash];
    v39 = *(v18 + 40);
    *(v18 + 40) = v38;
  }

  return v18;
}

+ (id)deviceCredentialWithDAKeyInformation:(id)a3
{
  v3 = a3;
  v4 = [v3 keyType];
  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v29 = v3;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v13 = [v3 alishaKeyInformation];
      v19 = [v13 revocationAttestation];

      if (v19)
      {
        v11 = 2;
        v10 = 129;
      }

      else
      {
        v20 = [v13 trackingReceipt];

        if (v20)
        {
          v10 = 15;
        }

        else
        {
          v10 = 21;
        }

        if (v20)
        {
          v11 = 1;
        }

        else
        {
          v11 = 4;
        }
      }

      v21 = [v13 trackingRequest];
      v7 = v21 != 0;

      v6 = @"A000000809434343444B417631";
      v8 = 1;
      v9 = 301;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v4 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (v4 != 3)
  {
    if (v4 != 4)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (v4 != 5)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

LABEL_11:
    v16 = [v3 hydraKeyInformation];
    v13 = v16;
    if (v5 == 4)
    {
      v9 = 139;
    }

    else
    {
      v9 = 130;
    }

    v17 = [v16 appletIdentifier];
    v18 = [v17 hexEncoding];
    v6 = [v18 uppercaseString];

    v7 = 0;
    v8 = 1;
    v10 = 21;
    v11 = 1;
    goto LABEL_24;
  }

LABEL_5:
  v12 = [v3 homeKeyInformation];
  v13 = v12;
  if (v5 == 5)
  {
    v9 = 139;
  }

  else
  {
    v9 = 133;
  }

  v14 = [v12 appletIdentifier];
  v15 = [v14 hexEncoding];
  v6 = [v15 uppercaseString];

  v8 = 0;
  v7 = 0;
  v11 = 1;
  v10 = 21;
LABEL_24:

  v3 = v29;
LABEL_25:
  v22 = v7;
  v23 = [v3 publicKeyIdentifier];
  v24 = [[PKSECredentialAddress alloc] initWithType:0 identifier:v6];
  [(PKSECredentialAddress *)v24 appendType:1 identifier:v23];
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

+ (id)deviceCredentialWithApplet:(id)a3
{
  v3 = a3;
  v4 = [PKSECredentialAddress alloc];
  v5 = [v3 identifier];
  v6 = [(PKSECredentialAddress *)v4 initWithType:0 identifier:v5];

  v7 = [v3 lifecycleState];
  v8 = v7;
  if (v7 <= 14)
  {
    if (v7 == 1 || v7 == 3 || v7 == 7)
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
    if (v7 != 130)
    {
      v10 = 0;
    }

    if (v7 != 129)
    {
      v9 = v10;
    }

    v11 = 1;
    v12 = 4;
    if (v7 != 23)
    {
      v12 = 0;
    }

    if (v7 != 15)
    {
      v11 = v12;
    }

    if (v7 <= 128)
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
    v18 = [v3 isLocked];
    v19 = [v3 containsSubKeys];
    if (v17)
    {
      v20 = v19;
      v24.receiver = v17;
      v24.super_class = PKSEConsistencyCheckDeviceCredentialAppletProperties;
      v21 = objc_msgSendSuper2(&v24, sel_init);
      if (v21)
      {
        v21->_locked = v18;
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
  v6 = [(PKSECredentialAddress *)self->_address shortDescription];
  [v5 appendFormat:@"address: '%@'; ", v6];

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