@interface NGMFullPrekey
+ (id)fullPrekeyForTestingSignedBy:(id)a3;
- (BOOL)delete;
- (BOOL)isSEPKey;
- (NGMFullPrekey)initWithPBPrekey:(id)a3 verifySignedBy:(id)a4 error:(id *)a5;
- (NGMFullPrekey)initWithPrekeySignedBy:(id)a3 error:(id *)a4;
- (id)description;
- (id)keychainData;
- (id)pbDevicePrekey;
- (void)delete;
@end

@implementation NGMFullPrekey

+ (id)fullPrekeyForTestingSignedBy:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 signingKey];
  v10 = 0;
  v7 = [v5 initWithPrekeySignedBy:v6 error:&v10];
  v8 = v10;

  if (v8)
  {
    +[NGMFullPrekey fullPrekeyForTestingSignedBy:];
  }

  return v7;
}

- (BOOL)isSEPKey
{
  v2 = [(NGMFullPrekey *)self dhKey];
  v3 = [v2 keyStore] == 2;

  return v3;
}

- (id)keychainData
{
  v2 = [(NGMFullPrekey *)self dhKey];
  v3 = [v2 key];
  v4 = [v3 keychainData];

  return v4;
}

- (NGMFullPrekey)initWithPrekeySignedBy:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[SecKeyP256Private defaultProtectionClassForPlatform];
  v8 = [(FullKey *)DHKey generateNewKeyWithAccess:v7 error:a4];

  v9 = [v8 publicKey];
  if (v9)
  {
    v10 = [[NGMPrekeySignatureFormatter alloc] initToSignKey:v9];
    if (!v10)
    {
      MPLogAndAssignError(151, a4, @"Time is misconfigured on device.");
      v21 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v11 = [v6 signDataWithFormatter:v10 error:a4];
    if (v11)
    {
      v12 = [v6 publicKey];
      v13 = [v12 verifySignature:v11 formatter:v10];

      if (v13)
      {
        v37.receiver = self;
        v37.super_class = NGMFullPrekey;
        v14 = [(NGMFullPrekey *)&v37 init];
        v15 = v14;
        if (v14)
        {
          objc_storeStrong(&v14->_dhKey, v8);
          v16 = [NGMECDHPublicPreKey alloc];
          [v10 timestamp];
          v17 = [(NGMECDHPublicPreKey *)v16 initWithPublicKey:v9 signature:v11 timestamp:?];
          publicPrekey = v15->_publicPrekey;
          v15->_publicPrekey = v17;

          if (MPSecondaryRegistrationDisabled())
          {
            tetraRegistration = v15->_tetraRegistration;
            v15->_tetraRegistration = 0;

            tetraPrivateKey = v15->_tetraPrivateKey;
            v15->_tetraPrivateKey = 0;
          }

          else
          {
            v23 = +[_TtC17MessageProtection13Kyber1024ObjC KeyGen];
            v24 = v15->_tetraPrivateKey;
            v15->_tetraPrivateKey = v23;

            v33 = [_TtC17MessageProtection17TetraRegistration alloc];
            tetraPrivateKey = [(Kyber1024ObjCPrivateKey *)v15->_tetraPrivateKey publicKey];
            v36 = [(NGMFullPrekey *)v15 dhKey];
            v35 = [v36 publicKey];
            v34 = [v35 key];
            v25 = [v34 dataRepresentation];
            [v10 timestamp];
            v27 = v26;
            v28 = +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
            v29 = [v6 tetraWrapped];
            v30 = [(TetraRegistration *)v33 initWithKyberPublicKey:tetraPrivateKey ecdhPublicKey:v25 timestamp:v28 version:v29 signedBy:v27];
            v31 = v15->_tetraRegistration;
            v15->_tetraRegistration = v30;
          }
        }

        self = v15;
        v21 = self;
        goto LABEL_18;
      }

      MPLogAndAssignError(201, a4, @"Failure to verify the signature for the freshly generated prekey.");
    }

    else
    {
      v22 = MessageProtectionLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NGMFullPrekey initWithPrekeySignedBy:a4 error:v22];
      }
    }

    v21 = 0;
LABEL_18:

    goto LABEL_19;
  }

  MPLogAndAssignError(7, a4, @"Failure to get the public prekey of a new ephemeral.");
  v21 = 0;
LABEL_20:

  return v21;
}

- (NGMFullPrekey)initWithPBPrekey:(id)a3 verifySignedBy:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v57.receiver = self;
  v57.super_class = NGMFullPrekey;
  v10 = [(NGMFullPrekey *)&v57 init];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [DHKey alloc];
  v12 = [v8 dhKey];
  v13 = [(FullKey *)v11 initWithProtobufferData:v12 error:a5];
  dhKey = v10->_dhKey;
  v10->_dhKey = v13;

  v15 = [NGMECDHPublicPreKey alloc];
  v16 = [(DHKey *)v10->_dhKey publicKey];
  v17 = [v8 prekeySignature];
  [v8 timestamp];
  v18 = [(NGMECDHPublicPreKey *)v15 initWithPublicKey:v16 signature:v17 timestamp:?];
  publicPrekey = v10->_publicPrekey;
  v10->_publicPrekey = v18;

  if (!a5 || !*a5)
  {
    if ([v8 hasTetraPrivateKey])
    {
      v28 = [_TtC17MessageProtection23Kyber1024ObjCPrivateKey alloc];
      v29 = [v8 tetraPrivateKey];
      v56 = 0;
      v30 = [(Kyber1024ObjCPrivateKey *)v28 initWithProtoBufData:v29 error:&v56];
      v31 = v56;
      tetraPrivateKey = v10->_tetraPrivateKey;
      v10->_tetraPrivateKey = v30;

      if (v31)
      {
        v33 = MEMORY[0x277CCACA8];
        v34 = [v31 description];
        v35 = [v33 stringWithFormat:@"Failed to deserialize a prekey containing a Kyber key because of error: %@", v34];
        MPLogAndAssignError(200, a5, v35);
LABEL_10:

        goto LABEL_11;
      }

      v36 = [_TtC17MessageProtection17TetraRegistration alloc];
      v37 = [v8 tetraRegistrationData];
      v54 = [(FullKey *)v10->_dhKey key];
      v38 = [v54 publicKey];
      v39 = [v38 dataRepresentation];
      v40 = [v8 tetraVersion];
      [v8 timestamp];
      v42 = v41;
      v43 = [v9 tetraWrapped];
      v55 = 0;
      v44 = v36;
      v45 = v37;
      v46 = [(TetraRegistration *)v44 initWithTetraRegistrationData:v37 ecdhPublicKey:v39 version:v40 timestamp:v43 signedBy:0 isEncrypting:&v55 error:v42];
      v31 = v55;
      tetraRegistration = v10->_tetraRegistration;
      v10->_tetraRegistration = v46;

      if (v31)
      {
        v48 = MEMORY[0x277CCACA8];
        v34 = [(Kyber1024ObjCPrivateKey *)v10->_tetraPrivateKey publicKey];
        v35 = [v8 prekeySignature];
        [v8 timestamp];
        v50 = v49;
        v51 = [v31 description];
        v52 = [v48 stringWithFormat:@"Failed to deserialize a prekey containing a Kyber key: %@ \n signature: %@ \n timestamp: %f \n because of error: %@", v34, v35, v50, v51];
        MPLogAndAssignError(200, a5, v52);

        goto LABEL_10;
      }
    }

LABEL_11:
    v27 = v10;
    goto LABEL_12;
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = [(DHKey *)v10->_dhKey publicKey];
  v22 = [v8 prekeySignature];
  [v8 timestamp];
  v24 = v23;
  v25 = [*a5 description];
  v26 = [v20 stringWithFormat:@"Failed to deserialize a prekey containing an ECDH private key: %@ \n signature: %@ \n timestamp: %f \n because of error: %@", v21, v22, v24, v25];
  MPLogAndAssignError(200, a5, v26);

  v27 = 0;
LABEL_12:

  return v27;
}

- (id)pbDevicePrekey
{
  v3 = objc_alloc_init(NGMPBDevicePreKey);
  v4 = [(NGMFullPrekey *)self publicPrekey];
  [v4 timestamp];
  [(NGMPBDevicePreKey *)v3 setTimestamp:?];

  v5 = [(NGMFullPrekey *)self dhKey];
  v6 = [v5 protobuffer];
  [(NGMPBDevicePreKey *)v3 setDhKey:v6];

  v7 = [(NGMFullPrekey *)self publicPrekey];
  v8 = [v7 signature];
  [(NGMPBDevicePreKey *)v3 setPrekeySignature:v8];

  v9 = [(NGMFullPrekey *)self tetraPrivateKey];

  v10 = MessageProtectionLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      [(NGMFullPrekey *)v10 pbDevicePrekey];
    }

    v12 = [(NGMFullPrekey *)self tetraPrivateKey];
    v13 = [v12 protobufData];
    [(NGMPBDevicePreKey *)v3 setTetraPrivateKey:v13];

    v14 = [(NGMFullPrekey *)self tetraRegistration];
    v15 = [v14 registrationData];
    [(NGMPBDevicePreKey *)v3 setTetraRegistrationData:v15];

    v10 = [(NGMFullPrekey *)self tetraRegistration];
    [(NGMPBDevicePreKey *)v3 setTetraVersion:[v10 tetraVersion]];
  }

  else if (v11)
  {
    [(NGMFullPrekey *)v10 pbDevicePrekey];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NGMFullPrekey *)self dhKey];
  v5 = [v4 description];
  v6 = [(NGMFullPrekey *)self publicPrekey];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"NGMFullPrekey with DHKey: %@\n Public Prekey: %@.", v5, v7];

  return v8;
}

- (BOOL)delete
{
  v3 = +[NGMReplayManager sharedManager];
  v4 = [v3 deleteReceivingCountersForKey:self];

  if ((v4 & 1) == 0)
  {
    v5 = MessageProtectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NGMFullPrekey *)self delete];
    }
  }

  return v4;
}

- (void)initWithPrekeySignedBy:(id *)a1 error:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to sign a new prekey with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)delete
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 dhKey];
  v4 = [v3 description];
  v5 = [0 description];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to delete prekey ephemeral key (%@) with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end