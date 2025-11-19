@interface PKPaymentCredential
+ (id)fakeRemoteCredentials;
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)couldSupportSuperEasyProvisioning;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsFrictionlessProvisioning;
- (NSArray)activationMethods;
- (NSArray)appletTypes;
- (PKPaymentCredential)init;
- (PKPaymentCredential)initWithCoder:(id)a3;
- (id)_originalProvisioningDate;
- (id)accountCredential;
- (id)accountReferenceCredential;
- (id)appleBalanceCredential;
- (id)carKeyTerminalPairingCredential;
- (id)contactlessProductCredential;
- (id)digitalIssuanceProductCredential;
- (id)externalOfferCredential;
- (id)fpanCredential;
- (id)homeKeyCredential;
- (id)identityCredential;
- (id)issuerProvisioningExtensionCredential;
- (id)localAppletSubcredentialPassCredential;
- (id)localPassCredential;
- (id)peerPaymentCredential;
- (id)precursorCredential;
- (id)purchasedProductCredential;
- (id)remoteCredential;
- (id)requiresVerificationCredential;
- (id)shareableCredential;
- (id)statefulTransferCredential;
- (id)underlyingPaymentPass;
- (int64_t)compare:(id)a3 withBackedUpDefaultPaymentPassSerialNumber:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentCredential

- (PKPaymentCredential)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentCredential;
  v2 = [(PKPaymentCredential *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKSecureElementProvisioningState);
    state = v2->_state;
    v2->_state = v3;
  }

  return v2;
}

- (PKPaymentCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPaymentCredential;
  v5 = [(PKPaymentCredential *)&v19 init];
  if (v5)
  {
    v5->_credentialType = [v4 decodeIntegerForKey:@"credentialType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountNumber"];
    sanitizedPrimaryAccountNumber = v5->_sanitizedPrimaryAccountNumber;
    v5->_sanitizedPrimaryAccountNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountName"];
    sanitizedPrimaryAccountName = v5->_sanitizedPrimaryAccountName;
    v5->_sanitizedPrimaryAccountName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longDescription"];
    longDescription = v5->_longDescription;
    v5->_longDescription = v12;

    v5->_cardType = [v4 decodeIntegerForKey:@"cardType"];
    v5->_deletable = [v4 decodeBoolForKey:@"isDeletable"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementReservationGroupIdentifier"];
    secureElementReservationGroupIdentifier = v5->_secureElementReservationGroupIdentifier;
    v5->_secureElementReservationGroupIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  credentialType = self->_credentialType;
  v5 = a3;
  [v5 encodeInteger:credentialType forKey:@"credentialType"];
  [v5 encodeObject:self->_sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  [v5 encodeObject:self->_sanitizedPrimaryAccountName forKey:@"sanitizedPrimaryAccountName"];
  [v5 encodeObject:self->_expiration forKey:@"expiration"];
  [v5 encodeObject:self->_longDescription forKey:@"longDescription"];
  [v5 encodeInteger:self->_cardType forKey:@"cardType"];
  [v5 encodeBool:self->_deletable forKey:@"isDeletable"];
  [v5 encodeObject:self->_secureElementReservationGroupIdentifier forKey:@"secureElementReservationGroupIdentifier"];
  [v5 encodeObject:self->_state forKey:@"state"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  v4 = a3;
  v5 = v4[6];
  v6 = self->_longDescription;
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
      goto LABEL_7;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_33;
    }
  }

  if (self->_deletable != *(v4 + 8))
  {
    goto LABEL_33;
  }

  v11 = v4[5];
  v6 = self->_expiration;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_7;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v14 = v4[3];
  v6 = self->_sanitizedPrimaryAccountNumber;
  v15 = v14;
  v8 = v15;
  if (v6 == v15)
  {

    goto LABEL_23;
  }

  if (!v6 || !v15)
  {
LABEL_7:

LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  v16 = [(NSString *)v6 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_23:
  v17 = v4[4];
  v6 = self->_sanitizedPrimaryAccountName;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {

    goto LABEL_29;
  }

  if (!v6 || !v18)
  {
    goto LABEL_7;
  }

  v19 = [(NSString *)v6 isEqualToString:v18];

  if (!v19)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (self->_cardType != v4[7])
  {
    goto LABEL_33;
  }

  metadata = self->_metadata;
  v21 = v4[8];
  if (metadata && v21)
  {
    v22 = [(NSArray *)metadata isEqual:?];
  }

  else
  {
    v22 = metadata == v21;
  }

LABEL_34:

  return v22;
}

- (NSArray)activationMethods
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [PKPaymentCredentialProvisioningMethod alloc];
  v3 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:0];
  v8 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v5 = [(PKPaymentCredentialProvisioningMethod *)v2 initWithSupportsFrictionlessProvisioning:0 actions:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_longDescription];
  [v3 safelyAddObject:self->_expiration];
  [v3 safelyAddObject:self->_sanitizedPrimaryAccountNumber];
  [v3 safelyAddObject:self->_metadata];
  [v3 safelyAddObject:self->_sanitizedPrimaryAccountName];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_cardType - v4 + 32 * v4;
  v6 = self->_deletable - v5 + 32 * v5;

  return v6;
}

- (NSArray)appletTypes
{
  v2 = [(PKPaymentCredential *)self paymentApplications];
  v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_164];

  return v3;
}

- (BOOL)couldSupportSuperEasyProvisioning
{
  v2 = [(PKPaymentCredential *)self activationMethods];
  v3 = [v2 pk_containsObjectPassingTest:&__block_literal_global_167];

  return v3;
}

uint64_t __56__PKPaymentCredential_couldSupportSuperEasyProvisioning__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 pk_containsObjectPassingTest:&__block_literal_global_170_0];

  return v3;
}

uint64_t __56__PKPaymentCredential_couldSupportSuperEasyProvisioning__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 3)
  {
    v3 = [v2 deviceProvisioningDataExpected];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsFrictionlessProvisioning
{
  v2 = [(PKPaymentCredential *)self activationMethods];
  v3 = [v2 pk_containsObjectPassingTest:&__block_literal_global_172];

  return v3;
}

- (id)remoteCredential
{
  if ([(PKPaymentCredential *)self isRemoteCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)precursorCredential
{
  if ([(PKPaymentCredential *)self isPrecursorCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)localPassCredential
{
  if ([(PKPaymentCredential *)self isLocalPassCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)peerPaymentCredential
{
  if ([(PKPaymentCredential *)self isPeerPaymentCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contactlessProductCredential
{
  if ([(PKPaymentCredential *)self isContactlessProductCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)digitalIssuanceProductCredential
{
  if ([(PKPaymentCredential *)self isDigitalIssuanceProductCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)purchasedProductCredential
{
  if ([(PKPaymentCredential *)self isPurchasedProductCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accountCredential
{
  if ([(PKPaymentCredential *)self isAccountCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accountReferenceCredential
{
  if ([(PKPaymentCredential *)self isAccountReferenceCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)shareableCredential
{
  if ([(PKPaymentCredential *)self isShareableCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)identityCredential
{
  if ([(PKPaymentCredential *)self isIdentityCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)localAppletSubcredentialPassCredential
{
  if ([(PKPaymentCredential *)self isLocalAppletSubcredentialPassCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)issuerProvisioningExtensionCredential
{
  if ([(PKPaymentCredential *)self isIssuerProvisioningExtensionCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)homeKeyCredential
{
  if ([(PKPaymentCredential *)self isHomeKeyCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fpanCredential
{
  if ([(PKPaymentCredential *)self isFPANCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)carKeyTerminalPairingCredential
{
  if ([(PKPaymentCredential *)self isCarKeyTerminalPairingCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)appleBalanceCredential
{
  if ([(PKPaymentCredential *)self isAppleBalanceCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)statefulTransferCredential
{
  if ([(PKPaymentCredential *)self isStatefulTransferCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)externalOfferCredential
{
  if ([(PKPaymentCredential *)self isExternalOfferCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)requiresVerificationCredential
{
  if ([(PKPaymentCredential *)self isRequiresVerificationCredential])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_originalProvisioningDate
{
  if ([(PKPaymentCredential *)self isRemoteCredential])
  {
    v3 = [(PKPaymentCredential *)self remoteCredential];
    v4 = [v3 originalProvisioningDate];
LABEL_8:

    goto LABEL_9;
  }

  if ([(PKPaymentCredential *)self isAccountCredential])
  {
    goto LABEL_4;
  }

  if ([(PKPaymentCredential *)self isPeerPaymentCredential])
  {
    v5 = [(PKPaymentCredential *)self peerPaymentCredential];
    goto LABEL_7;
  }

  if ([(PKPaymentCredential *)self isAccountCredential])
  {
LABEL_4:
    v5 = [(PKPaymentCredential *)self accountCredential];
LABEL_7:
    v3 = v5;
    v6 = [v5 account];
    v4 = [v6 createdDate];

    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (int64_t)compare:(id)a3 withBackedUpDefaultPaymentPassSerialNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentCredential *)self remoteCredential];
  v9 = [v8 serialNumber];
  v10 = [v9 isEqualToString:v7];

  if (v10)
  {
    goto LABEL_3;
  }

  v11 = [(PKPaymentCredential *)self underlyingPaymentPass];
  v12 = [v11 serialNumber];
  v13 = [v12 isEqualToString:v7];

  if (v13)
  {
    goto LABEL_3;
  }

  v16 = [v6 remoteCredential];
  v17 = [v16 serialNumber];
  v18 = [v17 isEqualToString:v7];

  if (v18)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_4;
  }

  v19 = __112__PKPaymentCredential_PKPaymentCredentialSubclassAdditions__compare_withBackedUpDefaultPaymentPassSerialNumber___block_invoke(self);
  v20 = __112__PKPaymentCredential_PKPaymentCredentialSubclassAdditions__compare_withBackedUpDefaultPaymentPassSerialNumber___block_invoke(v6);
  if (!v19)
  {
    if (v20)
    {
      goto LABEL_6;
    }

    v26 = [(PKPaymentCredential *)self isPurchasedProductCredential];
    v27 = [v6 isPurchasedProductCredential];
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_3;
      }

      v28 = [(PKPaymentCredential *)self purchasedProductCredential];
      v29 = [v6 purchasedProductCredential];
      v30 = [v28 purchase];
      v31 = [v30 purchaseDate];
      v32 = [v29 purchase];
      v33 = [v32 purchaseDate];
      v14 = [v31 compare:v33];

      goto LABEL_18;
    }

    if (v27)
    {
      goto LABEL_6;
    }

    v36 = [(PKPaymentCredential *)self isIssuerProvisioningExtensionCredential];
    v37 = [v6 isIssuerProvisioningExtensionCredential];
    if (!v36)
    {
      if (v37)
      {
        goto LABEL_6;
      }

      v41 = [(PKPaymentCredential *)self fpanCredential];

      v42 = [v6 fpanCredential];

      if (!v41)
      {
        if (v42)
        {
          goto LABEL_6;
        }

        v47 = [(PKPaymentCredential *)self isRequiresVerificationCredential];
        v48 = [v6 isRequiresVerificationCredential];
        if (!v47)
        {
          v14 = v48;
          goto LABEL_4;
        }

        if (!v48)
        {
          goto LABEL_3;
        }

        v49 = [(PKPaymentCredential *)self requiresVerificationCredential];
        v50 = [v49 pass];
        v51 = [v50 ingestedDate];
        v52 = v51;
        if (v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = [MEMORY[0x1E695DF00] now];
        }

        v28 = v53;

        v54 = [v6 requiresVerificationCredential];
        v55 = [v54 pass];
        v56 = [v55 ingestedDate];
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = [MEMORY[0x1E695DF00] now];
        }

        v59 = v58;

        v14 = [v28 compare:v59];
LABEL_20:

        goto LABEL_4;
      }

      if (!v42)
      {
        goto LABEL_3;
      }

      v28 = [(PKPaymentCredential *)self longDescription];
      v29 = [v6 longDescription];
      v14 = [v28 compare:v29];
LABEL_19:

      goto LABEL_20;
    }

    if (!v37)
    {
      goto LABEL_3;
    }

    v28 = [(PKPaymentCredential *)self issuerProvisioningExtensionCredential];
    v29 = [v6 issuerProvisioningExtensionCredential];
    v30 = [v28 entry];
    v31 = [v29 entry];
    v38 = [v30 title];
    v39 = [v31 title];
    v40 = v39;
    if (v38 && v39)
    {
      v14 = [v38 compare:v39];
    }

    else
    {
      v14 = v39 != 0;
      if (v38)
      {
        v14 = -1;
        goto LABEL_65;
      }
    }

    if (!v14)
    {
      v43 = [v30 addRequestConfiguration];
      v44 = [v43 primaryAccountSuffix];

      v38 = v44;
      v45 = [v31 addRequestConfiguration];
      v46 = [v45 primaryAccountSuffix];

      if (v38 && v46)
      {
        v14 = [v38 compare:v46];
      }

      else
      {
        v14 = v46 != 0;
        if (v38)
        {
          v14 = -1;
LABEL_64:
          v40 = v46;
          goto LABEL_65;
        }
      }

      if (!v14)
      {
        if (v28 > v29)
        {
          v14 = -1;
        }

        else
        {
          v14 = v28 < v29;
        }
      }

      goto LABEL_64;
    }

LABEL_65:

LABEL_18:
    goto LABEL_19;
  }

  if (!v20)
  {
    goto LABEL_3;
  }

  v21 = [(PKPaymentCredential *)self cardType];
  v22 = [v6 cardType];
  if (v21 == v22)
  {
    goto LABEL_10;
  }

  if (v21 && v22)
  {
    if (v21 >= v22)
    {
      if (v21 > v22)
      {
        goto LABEL_6;
      }

LABEL_10:
      v23 = [(PKPaymentCredential *)self _originalProvisioningDate];
      v24 = [v6 _originalProvisioningDate];
      v25 = v24;
      if (v23 && v24)
      {
        v14 = [v23 compare:v24];
        if (v14)
        {
LABEL_31:

          goto LABEL_4;
        }
      }

      else
      {
        if (v23)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        if (v23 | v24)
        {
          goto LABEL_31;
        }
      }

      v34 = [(PKPaymentCredential *)self longDescription];
      v35 = [v6 longDescription];
      v14 = [v34 compare:v35];

      goto LABEL_31;
    }

LABEL_3:
    v14 = -1;
    goto LABEL_4;
  }

  if (v21)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (!(v22 | v21))
  {
    goto LABEL_10;
  }

LABEL_4:

  return v14;
}

uint64_t __112__PKPaymentCredential_PKPaymentCredentialSubclassAdditions__compare_withBackedUpDefaultPaymentPassSerialNumber___block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 isRemoteCredential] & 1) != 0 || (objc_msgSend(v1, "isAccountCredential") & 1) != 0 || (objc_msgSend(v1, "isPeerPaymentCredential") & 1) != 0 || (objc_msgSend(v1, "isAppleBalanceCredential") & 1) != 0 || (objc_msgSend(v1, "isShareableCredential"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isHomeKeyCredential];
  }

  return v2;
}

- (id)underlyingPaymentPass
{
  if ([(PKPaymentCredential *)self isRemoteCredential])
  {
    v3 = [(PKPaymentCredential *)self remoteCredential];
LABEL_3:
    v4 = v3;
    v5 = [v3 paymentPass];
LABEL_7:

    goto LABEL_8;
  }

  if ([(PKPaymentCredential *)self isPeerPaymentCredential])
  {
    v6 = [(PKPaymentCredential *)self peerPaymentCredential];
    v7 = [v6 account];
    v4 = [v7 associatedPassUniqueID];

    v8 = +[PKPassLibrary sharedInstance];
    v9 = [v8 passWithUniqueID:v4];
LABEL_6:
    v5 = v9;

    goto LABEL_7;
  }

  if ([(PKPaymentCredential *)self isLocalAppletSubcredentialPassCredential])
  {
    v3 = [(PKPaymentCredential *)self localAppletSubcredentialPassCredential];
    goto LABEL_3;
  }

  if ([(PKPaymentCredential *)self isHomeKeyCredential])
  {
    v3 = [(PKPaymentCredential *)self homeKeyCredential];
    goto LABEL_3;
  }

  if ([(PKPaymentCredential *)self isLocalPassCredential])
  {
    v3 = [(PKPaymentCredential *)self localPassCredential];
    goto LABEL_3;
  }

  if ([(PKPaymentCredential *)self isAccountCredential])
  {
    v3 = [(PKPaymentCredential *)self accountCredential];
    goto LABEL_3;
  }

  if ([(PKPaymentCredential *)self isPrecursorCredential])
  {
    v3 = [(PKPaymentCredential *)self precursorCredential];
    goto LABEL_3;
  }

  if ([(PKPaymentCredential *)self isRequiresVerificationCredential])
  {
    v4 = [(PKPaymentCredential *)self requiresVerificationCredential];
    v8 = [v4 pass];
    v9 = [v8 paymentPass];
    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)fakeRemoteCredentials
{
  v65[9] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v64[0] = @"identifier";
  v64[1] = @"status";
  v65[0] = @"1234";
  v65[1] = &unk_1F23B4E80;
  v64[2] = @"cardType";
  v64[3] = @"sanitizedPrimaryAccountNumber";
  v65[2] = &unk_1F23B4E98;
  v65[3] = @"1234";
  v64[4] = @"expiration";
  v64[5] = @"longDescription";
  v65[4] = @"12/34";
  v65[5] = @"Suica Card - Available";
  v64[6] = @"summaryMetadata";
  v64[7] = @"paymentCardType";
  v65[6] = &unk_1F23B3E30;
  v65[7] = @"transit";
  v64[8] = @"metadata";
  v65[8] = &unk_1F23B3E48;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:9];
  v3 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v46];
  [v2 addObject:v3];

  v62[0] = @"identifier";
  v62[1] = @"status";
  v63[0] = @"5678";
  v63[1] = &unk_1F23B4E80;
  v62[2] = @"cardType";
  v62[3] = @"paymentCardType";
  v63[2] = &unk_1F23B4E98;
  v63[3] = @"transit";
  v62[4] = @"sanitizedPrimaryAccountNumber";
  v62[5] = @"expiration";
  v63[4] = @"5678";
  v63[5] = @"12/30";
  v62[6] = @"longDescription";
  v62[7] = @"summaryMetadata";
  v63[6] = @"Suica Card - Available";
  v63[7] = &unk_1F23B3E60;
  v62[8] = @"metadata";
  v63[8] = &unk_1F23B3E78;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:9];
  v4 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v45];
  [v2 addObject:v4];

  v60[0] = @"identifier";
  v60[1] = @"status";
  v61[0] = @"1999";
  v61[1] = &unk_1F23B4EB0;
  v60[2] = @"cardType";
  v60[3] = @"sanitizedPrimaryAccountNumber";
  v61[2] = &unk_1F23B4E98;
  v61[3] = @"1999";
  v60[4] = @"expiration";
  v60[5] = @"longDescription";
  v61[4] = @"12/30";
  v61[5] = @"Suica Card - Already Provisioned";
  v60[6] = @"summaryMetadata";
  v60[7] = @"paymentCardType";
  v61[6] = &unk_1F23B3E90;
  v61[7] = @"transit";
  v60[8] = @"metadata";
  v61[8] = &unk_1F23B3EA8;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:9];
  v5 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v44];
  [v2 addObject:v5];

  v58[0] = @"identifier";
  v58[1] = @"status";
  v59[0] = @"2999";
  v59[1] = &unk_1F23B4EC8;
  v58[2] = @"cardType";
  v58[3] = @"sanitizedPrimaryAccountNumber";
  v59[2] = &unk_1F23B4E98;
  v59[3] = @"8888";
  v58[4] = @"expiration";
  v58[5] = @"longDescription";
  v59[4] = @"12/32";
  v59[5] = @"Suica Card - Blacklisted";
  v58[6] = @"statusDescription";
  v58[7] = @"summaryMetadata";
  v59[6] = @"It is not possible to add this card at the moment. It will be available in within 24 hours.";
  v59[7] = &unk_1F23B3EC0;
  v58[8] = @"paymentCardType";
  v58[9] = @"metadata";
  v59[8] = @"transit";
  v59[9] = &unk_1F23B3ED8;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:10];
  v6 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v43];
  [v2 addObject:v6];

  v56[0] = @"identifier";
  v56[1] = @"status";
  v57[0] = @"29999";
  v57[1] = &unk_1F23B4EE0;
  v56[2] = @"cardType";
  v56[3] = @"sanitizedPrimaryAccountNumber";
  v57[2] = &unk_1F23B4E98;
  v57[3] = @"8888";
  v56[4] = @"expiration";
  v56[5] = @"longDescription";
  v57[4] = @"12/32";
  v57[5] = @"Suica Card - Transfer";
  v56[6] = @"statusDescription";
  v56[7] = @"summaryMetadata";
  v57[6] = @"It is not possible to add this card at the moment. It will be available in within 24 hours.";
  v57[7] = &unk_1F23B3EF0;
  v56[8] = @"metadata";
  v56[9] = @"paymentCardType";
  v57[8] = &unk_1F23B3F08;
  v57[9] = @"transit";
  v56[10] = @"transferableFromDevices";
  v57[10] = &unk_1F23B3F20;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:11];
  v41 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v42];
  [v2 addObject:?];
  v54[0] = @"identifier";
  v54[1] = @"status";
  v55[0] = @"299399";
  v55[1] = &unk_1F23B4EE0;
  v54[2] = @"cardType";
  v54[3] = @"sanitizedPrimaryAccountNumber";
  v55[2] = &unk_1F23B4E98;
  v55[3] = @"8388";
  v54[4] = @"expiration";
  v54[5] = @"longDescription";
  v55[4] = @"12/32";
  v55[5] = @"Suica Card2 - Transfer";
  v54[6] = @"statusDescription";
  v54[7] = @"summaryMetadata";
  v55[6] = @"It is not possible to add this card at the moment. It will be available in within 24 hours.";
  v55[7] = &unk_1F23B3EF0;
  v54[8] = @"metadata";
  v54[9] = @"paymentCardType";
  v55[8] = &unk_1F23B3F08;
  v55[9] = @"transit";
  v54[10] = @"transferableFromDevices";
  v55[10] = &unk_1F23B3F38;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:11];
  v39 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v40];
  [v2 addObject:?];
  v7 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6120];
  [v2 addObject:v7];

  v8 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6148];
  [v2 addObject:v8];

  v9 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6170];
  [v2 addObject:v9];

  v10 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6198];
  [v2 addObject:v10];

  v11 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B61C0];
  [v2 addObject:v11];

  v12 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B61E8];
  [v2 addObject:v12];

  v13 = [&unk_1F23B61E8 mutableCopy];
  v14 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6210];
  [v2 addObject:v14];

  v15 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6238];
  [v2 addObject:v15];

  v16 = [[PKPaymentRemoteCredential alloc] initWithDictionary:&unk_1F23B6260];
  v17 = v2;
  [v2 addObject:v16];

  v18 = 0;
  v19 = 5;
  v20 = 10000;
  do
  {
    v21 = v18;
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d", v20];

    [v13 setObject:v18 forKeyedSubscript:@"identifier"];
    [v13 setObject:v18 forKeyedSubscript:@"sanitizedPrimaryAccountNumber"];
    [v13 setObject:v18 forKeyedSubscript:@"sanitizedPrimaryAccountNumber"];
    [v13 setObject:v18 forKeyedSubscript:@"sanitizedPrimaryAccountPrefix"];
    v22 = [PKPaymentRemoteCredential alloc];
    v23 = [v13 copy];
    v24 = [(PKPaymentRemoteCredential *)v22 initWithDictionary:v23];
    [v17 addObject:v24];

    v20 = (v20 + 1);
    --v19;
  }

  while (v19);
  v25 = objc_alloc_init(PKAccount);
  [(PKAccount *)v25 setFeature:2];
  v26 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v27 = [v26 UUIDString];
  [(PKAccount *)v25 setAccountIdentifier:v27];

  v38 = [[PKAccountCredential alloc] initWithAccount:v25];
  [v17 addObject:?];
  v52[0] = @"identifier";
  v52[1] = @"status";
  v53[0] = @"909090";
  v53[1] = &unk_1F23B4E80;
  v52[2] = @"cardType";
  v52[3] = @"longDescription";
  v53[2] = &unk_1F23B4F70;
  v53[3] = @"Apple Account";
  v52[4] = @"sanitizedPrimaryAccountNumber";
  v52[5] = @"paymentCardType";
  v53[4] = @"1234";
  v53[5] = @"payment";
  v52[6] = @"summaryMetadata";
  v53[6] = &unk_1F23B3F50;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:7];
  v29 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v28];
  [v17 addObject:v29];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = v17;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v48;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v47 + 1) + 8 * i) setDeletable:(v33++ & 1) == 0];
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v32);
  }

  v36 = [v30 copy];

  return v36;
}

@end