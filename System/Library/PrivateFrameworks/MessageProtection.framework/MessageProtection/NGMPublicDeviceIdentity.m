@interface NGMPublicDeviceIdentity
+ (NGMPublicDeviceIdentity)identityWithIdentityData:(id)a3 prekeyData:(id)a4 error:(id *)a5;
- (BOOL)isIdenticalIdentityTo:(id)a3;
- (BOOL)isTetraCompatibleWithFullKey:(id)a3;
- (BOOL)isTetraNoRatchetCompatibleWithFullKey:(id)a3;
- (BOOL)isValidSignature:(id)a3 forMessage:(id)a4 forType:(int64_t)a5 error:(id *)a6;
- (BOOL)isValidSigningDestination;
- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 ourSigningIdentity:(id)a5 theirURI:(id)a6 theirPushToken:(id)a7;
- (BOOL)validateTetraBindingsAuthenticatedData:(id)a3 GUID:(id)a4 sendingURI:(id)a5 sendingPushToken:(id)a6 receivingURI:(id)a7 receivingPushToken:(id)a8;
- (BOOL)verifySignature:(id)a3 formatter:(id)a4;
- (NGMPublicDeviceIdentity)initWithEchnidaRegistration:(id)a3 tetraRegistration:(id)a4 signingKey:(id)a5;
- (id)description;
- (id)identityData;
- (id)prekeyData;
- (id)sealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 encryptedAttributes:(id)a13 signedByFullIdentity:(id)a14 errors:(id *)a15;
- (id)sealMessage:(id)a3 forceSizeOptimizations:(BOOL)a4 resetState:(BOOL)a5 encryptedAttributes:(id)a6 signedByFullIdentity:(id)a7 errors:(id *)a8;
- (id)sealMessage:(id)a3 guid:(id)a4 sendingURI:(id)a5 sendingPushToken:(id)a6 receivingURI:(id)a7 receivingPushToken:(id)a8 forceSizeOptimizations:(BOOL)a9 resetState:(BOOL)a10 encryptedAttributes:(id)a11 signedByFullIdentity:(id)a12 errors:(id *)a13;
- (id)sealMessage:(id)a3 signedByFullIdentity:(id)a4 error:(id *)a5;
- (id)sealMessage:(id)a3 withEncryptedAttributes:(id)a4 signedByFullIdentity:(id)a5 error:(id *)a6;
- (void)prekeyData;
@end

@implementation NGMPublicDeviceIdentity

- (NGMPublicDeviceIdentity)initWithEchnidaRegistration:(id)a3 tetraRegistration:(id)a4 signingKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NGMPublicDeviceIdentity;
  v12 = [(NGMPublicDeviceIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_signingKey, a5);
    objc_storeStrong(&v13->_echnidaRegistration, a3);
    objc_storeStrong(&v13->_tetraRegistration, a4);
  }

  return v13;
}

+ (NGMPublicDeviceIdentity)identityWithIdentityData:(id)a3 prekeyData:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[NGMPBPublicDeviceIdentity alloc] initWithData:v9];

  if (v10 && ([(NGMPBPublicDeviceIdentity *)v10 signingKey], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [SigningPublicKey alloc];
    v13 = [(NGMPBPublicDeviceIdentity *)v10 signingKey];
    v14 = [(PublicKey *)v12 initWithData:v13 error:a5];

    if (v14)
    {
      v15 = [[NGMPBPublicDevicePrekey alloc] initWithData:v8];
      v16 = v15;
      if (v15 && ([(NGMPBPublicDevicePrekey *)v15 prekey], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
      {
        v18 = [[NGMECDHPublicPreKey alloc] initRemotePrekeyWithPublicPrekeyPB:v16 signedBy:v14 error:a5];
        v19 = v18;
        if (v18 && ([v18 dhKey], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          if ([_TtC17MessageProtection13TetraVersions isWireCompatibleWith:[(NGMPBPublicDeviceIdentity *)v10 tetraVersion]])
          {
            v30 = [_TtC17MessageProtection17TetraRegistration alloc];
            v21 = [(NGMPBPublicDevicePrekey *)v16 tetraPreKey];
            v32 = [v19 dhKey];
            v31 = [v32 key];
            v22 = [v31 dataRepresentation];
            v29 = [(NGMPBPublicDeviceIdentity *)v10 tetraVersion];
            [(NGMPBPublicDevicePrekey *)v16 timestamp];
            v24 = v23;
            v25 = [(SigningPublicKey *)v14 tetraWrapped];
            v26 = [(TetraRegistration *)v30 initWithTetraRegistrationData:v21 ecdhPublicKey:v22 version:v29 timestamp:v25 signedBy:1 isEncrypting:a5 error:v24];
          }

          else
          {
            NSLog(&cfstr_TetraVersionMi.isa, [(NGMPBPublicDeviceIdentity *)v10 tetraVersion], +[_TtC17MessageProtection13TetraVersions currentTetraVersion]);
            v26 = 0;
          }

          v27 = [[a1 alloc] initWithEchnidaRegistration:v19 tetraRegistration:v26 signingKey:v14];
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        MPLogAndAssignError(100, a5, @"Failed to deserialize the device public prekey.");
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    MPLogAndAssignError(302, a5, @"The deserialization of the public fixed device identity failed.");
    v27 = 0;
  }

  return v27;
}

- (id)identityData
{
  v3 = objc_alloc_init(NGMPBPublicDeviceIdentity);
  v4 = [(NGMPublicDeviceIdentity *)self signingKey];
  v5 = [v4 dataRepresentation];
  [(NGMPBPublicDeviceIdentity *)v3 setSigningKey:v5];

  v6 = [(NGMPublicDeviceIdentity *)self tetraRegistration];

  if (v6)
  {
    v7 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
    -[NGMPBPublicDeviceIdentity setTetraVersion:](v3, "setTetraVersion:", [v7 tetraVersion]);
  }

  v8 = [(NGMPBPublicDeviceIdentity *)v3 signingKey];

  if (v8)
  {
    v9 = [(NGMPBPublicDeviceIdentity *)v3 data];
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity identityData];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)isIdenticalIdentityTo:(id)a3
{
  v4 = a3;
  v5 = [[NGMPBPublicDeviceIdentity alloc] initWithData:v4];

  if (!v5 || ([(NGMPBPublicDeviceIdentity *)v5 signingKey], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v16 = MessageProtectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity isIdenticalIdentityTo:];
    }

    goto LABEL_13;
  }

  v7 = [(NGMPublicDeviceIdentity *)self signingKey];
  v8 = [v7 dataRepresentation];
  v9 = [(NGMPBPublicDeviceIdentity *)v5 signingKey];
  v10 = [v8 isEqualToData:v9];

  if ((v10 & 1) == 0)
  {
    v16 = MessageProtectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity isIdenticalIdentityTo:];
    }

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v11 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
  if (!v11 || (v12 = v11, -[NGMPublicDeviceIdentity tetraRegistration](self, "tetraRegistration"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 tetraVersion], v15 = -[NGMPBPublicDeviceIdentity tetraVersion](v5, "tetraVersion"), v13, v12, v14 >= v15))
  {
    v17 = 1;
    goto LABEL_15;
  }

  v16 = MessageProtectionLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity isIdenticalIdentityTo:];
  }

  v17 = 1;
LABEL_14:

LABEL_15:
  return v17;
}

- (id)prekeyData
{
  v3 = objc_alloc_init(NGMPBPublicDevicePrekey);
  v4 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  [v4 timestamp];
  [(NGMPBPublicDevicePrekey *)v3 setTimestamp:?];

  v5 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  [v5 timestamp];
  LOBYTE(v4) = [NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:1 forEvaluationType:?];

  if (v4)
  {
    v6 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
    v7 = [v6 dhKey];
    v8 = [v7 dataRepresentation];
    [(NGMPBPublicDevicePrekey *)v3 setPrekey:v8];

    v9 = [(NGMPBPublicDevicePrekey *)v3 prekey];

    if (!v9)
    {
      v19 = 0;
      goto LABEL_17;
    }

    v10 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
    v11 = [v10 signature];
    [(NGMPBPublicDevicePrekey *)v3 setPrekeySignature:v11];

    v12 = [(NGMPublicDeviceIdentity *)self tetraRegistration];

    if (v12)
    {
      v13 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
      v14 = [v13 registrationData];
      [(NGMPBPublicDevicePrekey *)v3 setTetraPreKey:v14];
    }

    v15 = [(NGMPBPublicDevicePrekey *)v3 data];
    v16 = [(NGMPublicDeviceIdentity *)self identityData];
    v22 = 0;
    v17 = [NGMPublicDeviceIdentity identityWithIdentityData:v16 prekeyData:v15 error:&v22];
    v18 = v22;

    if (v18 || !v17)
    {
      v20 = MessageProtectionLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(NGMPublicDeviceIdentity *)v18 prekeyData];
      }

      v19 = 0;
    }

    else
    {
      v19 = v15;
    }
  }

  else
  {
    v15 = MessageProtectionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity prekeyData];
    }

    v19 = 0;
  }

LABEL_17:

  return v19;
}

- (BOOL)verifySignature:(id)a3 formatter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NGMPublicDeviceIdentity *)self signingKey];
  v9 = [v8 verifySignature:v7 formatter:v6];

  return v9;
}

- (BOOL)isValidSigningDestination
{
  v2 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  [v2 timestamp];
  v3 = [NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:1 forEvaluationType:?];

  return v3;
}

- (BOOL)isTetraCompatibleWithFullKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  tetraRegistration = self->_tetraRegistration;
  if (!tetraRegistration)
  {
    goto LABEL_5;
  }

  if (![_TtC17MessageProtection13TetraVersions isWireCompatibleWith:[(TetraRegistration *)tetraRegistration tetraVersion]])
  {
    goto LABEL_5;
  }

  v6 = [v4 devicePrekeys];
  v7 = [v6 lastObject];
  v8 = [v7 tetraRegistration];
  v9 = +[TetraVersions isWireCompatibleWith:](_TtC17MessageProtection13TetraVersions, "isWireCompatibleWith:", [v8 tetraVersion]);

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v11 = MessageProtectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(TetraRegistration *)self->_tetraRegistration tetraVersion];
      v13 = [v4 devicePrekeys];
      v14 = [v13 lastObject];
      v15 = [v14 tetraRegistration];
      v18[0] = 67109632;
      v18[1] = v12;
      v19 = 1024;
      v20 = [v15 tetraVersion];
      v21 = 1024;
      v22 = +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
      _os_log_impl(&dword_22B404000, v11, OS_LOG_TYPE_INFO, "Their remote registered Tetra version (%u), our registered Tetra version (%d) and our software version (%u) are different.", v18, 0x14u);
    }

    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isTetraNoRatchetCompatibleWithFullKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  tetraRegistration = self->_tetraRegistration;
  if (!tetraRegistration)
  {
    goto LABEL_5;
  }

  if (![_TtC17MessageProtection13TetraVersions isTetraNoRatchetCompatibleWith:[(TetraRegistration *)tetraRegistration tetraVersion]])
  {
    goto LABEL_5;
  }

  v6 = [v4 devicePrekeys];
  v7 = [v6 lastObject];
  v8 = [v7 tetraRegistration];
  v9 = +[TetraVersions isTetraNoRatchetCompatibleWith:](_TtC17MessageProtection13TetraVersions, "isTetraNoRatchetCompatibleWith:", [v8 tetraVersion]);

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    v11 = MessageProtectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(TetraRegistration *)self->_tetraRegistration tetraVersion];
      v13 = [v4 devicePrekeys];
      v14 = [v13 lastObject];
      v15 = [v14 tetraRegistration];
      v18[0] = 67109632;
      v18[1] = v12;
      v19 = 1024;
      v20 = [v15 tetraVersion];
      v21 = 1024;
      v22 = +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
      _os_log_impl(&dword_22B404000, v11, OS_LOG_TYPE_INFO, "(TetraNoRatchet) Their remote registered Tetra version (%u), our registered Tetra version (%d) and our software version (%u) are different.", v18, 0x14u);
    }

    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)sealMessage:(id)a3 signedByFullIdentity:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = MessageProtectionLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity sealMessage:signedByFullIdentity:error:];
  }

  v11 = [(NGMPublicDeviceIdentity *)self sealMessage:v9 withEncryptedAttributes:0 signedByFullIdentity:v8 error:a5];

  return v11;
}

- (id)sealMessage:(id)a3 withEncryptedAttributes:(id)a4 signedByFullIdentity:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![(NGMPublicDeviceIdentity *)self isValidSigningDestination])
  {
    v23 = MEMORY[0x277CCACA8];
    v13 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
    [v13 timestamp];
    v25 = [v23 stringWithFormat:@"Failed to encrypt to prekey that is no longer valid: %f.", v24];
    MPLogAndAssignError(150, a6, v25);

LABEL_10:
    v21 = 0;
    goto LABEL_19;
  }

  v13 = [(FullKey *)DHKey generateNewKeyWithAccess:0 forceNoSEP:1 error:a6];
  if (!v13)
  {
    MPLogAndAssignError(4, a6, @"Failed to generate an ephemeral P-256 key for message sealing.");
    goto LABEL_10;
  }

  v14 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  v15 = [v14 dhKey];
  v16 = [v13 keyAgreementWithPublicKey:v15 error:a6];

  if (v16)
  {
    v17 = [@"LastPawn-MessageKeys" dataUsingEncoding:4];
    v18 = [_TtC17MessageProtection4HKDF deriveKeyWith:v16 salt:v17 outputSize:48];

    if (!v18)
    {
      v21 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v46 = [v18 subdataWithRange:{0, 32}];
    v45 = [v18 subdataWithRange:{32, 16}];
    v19 = [NGMMessageFormatter formatOutgoingInnerMessageWithPayload:v10 attributes:v11 destinationIdentity:self sendingIdentity:v12 error:a6];
    if (v19)
    {
      v20 = v19;
      if (*a6)
      {
        v21 = 0;
        v22 = v19;
LABEL_16:

        goto LABEL_17;
      }

      v22 = [NGMPadding padMessage:v19 error:a6];

      if (!*a6)
      {
        v27 = [MP_AES_CTR encrypt:v22 key:v46 IV:v45];
        if (v27)
        {
          v43 = [NGMMessageSignatureFormatter alloc];
          v37 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
          v36 = [v37 dhKey];
          v41 = [v36 dataRepresentation];
          v35 = [v13 publicKey];
          v39 = [v35 dataRepresentation];
          v34 = [(NGMPublicDeviceIdentity *)self signingKey];
          v28 = [v34 dataRepresentation];
          v29 = v27;
          v30 = v28;
          v38 = v29;
          v44 = [(NGMMessageSignatureFormatter *)v43 initWithDHOutput:v16 prekeyPub:v41 ephemeralPub:v39 recipientPub:v28 ciphertext:?];

          v31 = [v12 signDataWithFormatter:v44 error:a6];
          if (v31)
          {
            v42 = v31;
            v40 = [NGMKeyValidator keyValidatorWithReceiversIdentity:self sendersIdentity:v12];
            v32 = [v13 key];
            v33 = [v32 publicKey];
            v21 = [NGMMessageFormatter formatOutgoingMessageWithEncryptedPayload:v38 ephemeral:v33 signature:v42 keyValidator:v40];

            v31 = v42;
          }

          else
          {
            v21 = 0;
          }

          v27 = v38;
        }

        else
        {
          MPLogAndAssignError(400, a6, @"The encryption of an outgoing message failed.");
          v21 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
    }

    v21 = 0;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_18:

LABEL_19:

  return v21;
}

- (id)sealMessage:(id)a3 forceSizeOptimizations:(BOOL)a4 resetState:(BOOL)a5 encryptedAttributes:(id)a6 signedByFullIdentity:(id)a7 errors:(id *)a8
{
  v11 = a7;
  v12 = a3;
  v13 = MessageProtectionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity sealMessage:forceSizeOptimizations:resetState:encryptedAttributes:signedByFullIdentity:errors:];
  }

  v17 = 0;
  v14 = [(NGMPublicDeviceIdentity *)self sealMessage:v12 withEncryptedAttributes:0 signedByFullIdentity:v11 error:&v17];

  v15 = v17;
  if (!v15)
  {
    v15 = NoError();
  }

  [*a8 setObject:v15 forKey:&unk_283F13B38];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NGMPublicDeviceIdentity *)self signingKey];
  v5 = [v4 description];
  v6 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"NGMPublicDeviceIdentity with device signing key: %@ \n prekey: %@", v5, v7];

  return v8;
}

- (BOOL)validateTetraBindingsAuthenticatedData:(id)a3 GUID:(id)a4 sendingURI:(id)a5 sendingPushToken:(id)a6 receivingURI:(id)a7 receivingPushToken:(id)a8
{
  v52 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = MessageProtectionLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v13 base64EncodedStringWithOptions:0];
    v21 = [v16 base64EncodedStringWithOptions:0];
    v22 = [v18 base64EncodedStringWithOptions:0];
    *buf = 138413570;
    v41 = v20;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v15;
    v46 = 2112;
    v47 = v21;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = v22;
    _os_log_impl(&dword_22B404000, v19, OS_LOG_TYPE_INFO, "Tetra binding arguments: {authenticatedData = %@, guid = %@, sendingURI = %@, sendingPushToken = %@, receivingURI = %@, receivingPushToken = %@}", buf, 0x3Eu);
  }

  if (v13)
  {
    v39 = [v13 length] != 0;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v39 = 0;
    if (v14)
    {
LABEL_5:
      v23 = [(__CFString *)v14 isEqualToString:&stru_283F0C6E8]^ 1;
      if (v15)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  LOBYTE(v23) = 0;
  if (v15)
  {
LABEL_6:
    v24 = [(__CFString *)v15 isEqualToString:&stru_283F0C6E8];
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = 1;
  if (v16)
  {
LABEL_7:
    v25 = [v16 length] == 0;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_14:
    LOBYTE(v26) = 0;
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_13:
  v25 = 1;
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_8:
  v26 = [(__CFString *)v17 isEqualToString:&stru_283F0C6E8]^ 1;
  if (v18)
  {
LABEL_9:
    v27 = [v18 length] != 0;
    goto LABEL_16;
  }

LABEL_15:
  v27 = 0;
LABEL_16:
  v28 = ((v39 & v23 ^ 1 | v24 | v25) ^ 1) & v26 & v27;
  if ((v28 & 1) == 0)
  {
    v29 = MessageProtectionLog();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
LABEL_18:

      goto LABEL_19;
    }

    if (v39)
    {
      v32 = @"Valid";
    }

    else
    {
      v32 = [v13 description];
    }

    if (v23)
    {
      v38 = @"Valid";
    }

    else
    {
      v38 = [(__CFString *)v14 description];
    }

    if (v15)
    {
      v37 = @"Valid";
    }

    else
    {
      v37 = [0 description];
    }

    if (v16)
    {
      v36 = @"Valid";
    }

    else
    {
      v36 = [0 description];
    }

    if (v17)
    {
      v35 = @"Valid";
    }

    else
    {
      v35 = [0 description];
    }

    if (v18)
    {
      v33 = @"Valid";
    }

    else
    {
      v33 = [0 description];
    }

    *buf = 138413570;
    v41 = v32;
    v42 = 2112;
    v43 = v38;
    v44 = 2112;
    v45 = v37;
    v46 = 2112;
    v47 = v36;
    v48 = 2112;
    v49 = v35;
    v50 = 2112;
    v34 = v33;
    v51 = v33;
    _os_log_fault_impl(&dword_22B404000, v29, OS_LOG_TYPE_FAULT, "Invalid Tetra binding argument: {authenticatedData = %@, guid = %@, sendingURI = %@, sendingPushToken = %@, receivingURI = %@, receivingPushToken = %@}", buf, 0x3Eu);
    if (v18)
    {
      if (v17)
      {
        goto LABEL_40;
      }
    }

    else
    {

      if (v17)
      {
LABEL_40:
        if (v16)
        {
          goto LABEL_41;
        }

        goto LABEL_48;
      }
    }

    if (v16)
    {
LABEL_41:
      if (v15)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }

LABEL_48:

    if (v15)
    {
LABEL_42:
      if (v23)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_49:

    if (v23)
    {
LABEL_44:
      if (!v39)
      {
      }

      goto LABEL_18;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 ourSigningIdentity:(id)a5 theirURI:(id)a6 theirPushToken:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
  if (v17)
  {
    v18 = v17;
    v34 = v13;
    v35 = v15;
    v19 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
    v20 = [v19 signingPublicKey];
    if (v20)
    {
      v21 = v20;
      [(NGMPublicDeviceIdentity *)self tetraRegistration];
      v22 = v16;
      v23 = v14;
      v25 = v24 = v12;
      v26 = [v25 signingPublicKey];
      v27 = [v26 compactRepresentation];

      v12 = v24;
      v14 = v23;
      v16 = v22;

      v13 = v34;
      v15 = v35;
      if (v27)
      {
        v28 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
        v29 = [v14 deviceSigningKey];
        v30 = [v29 tetraWrapped];
        v31 = [_TtC17MessageProtection8TetraAPI markForStateResetWithOurURI:v12 ourPushToken:v34 theirURI:v35 theirPushToken:v16 theirRegistration:v28 signedByOur:v30];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v32 = MessageProtectionLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity markForStateResetWithOurURI:ourPushToken:ourSigningIdentity:theirURI:theirPushToken:];
  }

  v31 = 0;
LABEL_9:

  return v31;
}

- (id)sealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 encryptedAttributes:(id)a13 signedByFullIdentity:(id)a14 errors:(id *)a15
{
  v68 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v54 = a13;
  v53 = a14;
  v26 = MPSecondaryEncryptionDisabled();
  v27 = MPSecondaryRegistrationDisabled();
  v56 = v22;
  v57 = v20;
  v28 = v21;
  v55 = v23;
  v29 = v23;
  v30 = v21;
  v31 = v25;
  v32 = [(NGMPublicDeviceIdentity *)self validateTetraBindingsAuthenticatedData:v20 GUID:v28 sendingURI:v22 sendingPushToken:v29 receivingURI:v24 receivingPushToken:v25];
  v33 = MessageProtectionLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v63 = v30;
    v64 = 1024;
    v65 = v26;
    v66 = 1024;
    v67 = v27;
    _os_log_impl(&dword_22B404000, v33, OS_LOG_TYPE_INFO, "Sealing message with GUID: %@. secondaryDisabled=%d, secondaryRegistrationDisabled=%d", buf, 0x18u);
  }

  v34 = _os_feature_enabled_impl();
  v35 = self;
  v36 = v31;
  if (v26 & 1 | ![(NGMPublicDeviceIdentity *)self isTetraCompatibleWithFullKey:v53]|| !v32)
  {
    goto LABEL_15;
  }

  if (([(NGMPublicDeviceIdentity *)self messageTypeRequiresNoRatcheting:a5]& v34) == 1)
  {
    v37 = [(NGMPublicDeviceIdentity *)self isTetraNoRatchetCompatibleWithFullKey:v53];
    if (!a5 || v37)
    {
LABEL_10:
      if ([(NGMPublicDeviceIdentity *)self messageTypeRequiresNoRatcheting:a5])
      {
        v61 = 0;
        v38 = [_TtC17MessageProtection8TetraAPI sealNoRatchetWithMessage:v58 authenticatedData:v57 sendingURI:v56 sendingPushToken:v55 receivingURI:v24 receivingPushToken:v31 encryptedAttributes:v54 receiverIdentity:self senderIdentity:v53 error:&v61];
        v39 = v61;
        v40 = 0;
        if (v39)
        {
LABEL_12:
          [*a15 setObject:v39 forKey:&unk_283F13B50];
          v41 = MessageProtectionLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [NGMPublicDeviceIdentity sealMessage:v39 authenticatedData:v40 messageType:v41 guid:? sendingURI:? sendingPushToken:? receivingURI:? receivingPushToken:? forceSizeOptimizations:? resetState:? encryptedAttributes:? signedByFullIdentity:? errors:?];
          }

          goto LABEL_15;
        }
      }

      else
      {
        v47 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
        v48 = [v53 deviceSigningKey];
        v49 = [v48 tetraWrapped];
        v60 = 0;
        LOBYTE(v51) = a12;
        v38 = [_TtC17MessageProtection8TetraAPI sealWithMessage:v58 authenticatedData:v57 guid:v30 sendingURI:v56 sendingPushToken:v55 receivingURI:v24 receivingPushToken:v31 receiverRegistration:v47 encryptedAttributes:v54 resetState:v51 signedBy:v49 error:&v60];
        v39 = v60;

        v40 = 1;
        if (v39)
        {
          goto LABEL_12;
        }
      }

      v44 = NoError();
      [*a15 setObject:v44 forKey:&unk_283F13B50];
      v50 = objc_alloc_init(NGMPBOuterMessage);
      [(NGMPBOuterMessage *)v50 setTetraMessage:v38];
      v43 = [(NGMPBOuterMessage *)v50 data];

      v42 = v58;
      goto LABEL_18;
    }
  }

  else if (!a5)
  {
    goto LABEL_10;
  }

LABEL_15:
  v59 = 0;
  v42 = v58;
  v43 = [(NGMPublicDeviceIdentity *)v35 sealMessage:v58 withEncryptedAttributes:v54 signedByFullIdentity:v53 error:&v59];
  v44 = v59;
  if (!v44)
  {
    v44 = NoError();
  }

  [*a15 setObject:v44 forKey:&unk_283F13B38];
LABEL_18:

  v45 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)sealMessage:(id)a3 guid:(id)a4 sendingURI:(id)a5 sendingPushToken:(id)a6 receivingURI:(id)a7 receivingPushToken:(id)a8 forceSizeOptimizations:(BOOL)a9 resetState:(BOOL)a10 encryptedAttributes:(id)a11 signedByFullIdentity:(id)a12 errors:(id *)a13
{
  v19 = MEMORY[0x277CBEA90];
  v20 = a12;
  v21 = a11;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = [v19 data];
  LOWORD(v31) = __PAIR16__(a10, a9);
  v29 = [(NGMPublicDeviceIdentity *)self sealMessage:v27 authenticatedData:v28 messageType:0 guid:v26 sendingURI:v25 sendingPushToken:v24 receivingURI:v23 receivingPushToken:v22 forceSizeOptimizations:v31 resetState:v21 encryptedAttributes:v20 signedByFullIdentity:a13 errors:?];

  return v29;
}

- (BOOL)isValidSignature:(id)a3 forMessage:(id)a4 forType:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (a5 > 2)
  {
    v13 = 0;
  }

  else
  {
    v11 = [objc_alloc(*off_2786FDF30[a5]) initWithApplicationData:v10];
    v12 = [(NGMPublicDeviceIdentity *)self signingKey];
    v13 = [v12 verifySignature:v9 formatter:v11];
  }

  return v13;
}

- (void)prekeyData
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Attempting to register an invalidly signed public key: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)sealMessage:(NSObject *)a3 authenticatedData:messageType:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:forceSizeOptimizations:resetState:encryptedAttributes:signedByFullIdentity:errors:.cold.1(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 debugDescription];
  v7[0] = 67109378;
  v7[1] = a2;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_22B404000, a3, OS_LOG_TYPE_ERROR, "Tetra encryption (TetraRatchet = %d) failed, allowing fallback on Echnida. {tetraError=%@}", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end