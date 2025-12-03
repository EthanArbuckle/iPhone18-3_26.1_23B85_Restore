@interface NGMFullPrekey
+ (id)fullPrekeyForTestingSignedBy:(id)by;
- (BOOL)delete;
- (BOOL)isSEPKey;
- (NGMFullPrekey)initWithPBPrekey:(id)prekey verifySignedBy:(id)by error:(id *)error;
- (NGMFullPrekey)initWithPrekeySignedBy:(id)by error:(id *)error;
- (id)description;
- (id)keychainData;
- (id)pbDevicePrekey;
- (void)delete;
@end

@implementation NGMFullPrekey

+ (id)fullPrekeyForTestingSignedBy:(id)by
{
  byCopy = by;
  v5 = [self alloc];
  signingKey = [byCopy signingKey];
  v10 = 0;
  v7 = [v5 initWithPrekeySignedBy:signingKey error:&v10];
  v8 = v10;

  if (v8)
  {
    +[NGMFullPrekey fullPrekeyForTestingSignedBy:];
  }

  return v7;
}

- (BOOL)isSEPKey
{
  dhKey = [(NGMFullPrekey *)self dhKey];
  v3 = [dhKey keyStore] == 2;

  return v3;
}

- (id)keychainData
{
  dhKey = [(NGMFullPrekey *)self dhKey];
  v3 = [dhKey key];
  keychainData = [v3 keychainData];

  return keychainData;
}

- (NGMFullPrekey)initWithPrekeySignedBy:(id)by error:(id *)error
{
  byCopy = by;
  v7 = +[SecKeyP256Private defaultProtectionClassForPlatform];
  v8 = [(FullKey *)DHKey generateNewKeyWithAccess:v7 error:error];

  publicKey = [v8 publicKey];
  if (publicKey)
  {
    v10 = [[NGMPrekeySignatureFormatter alloc] initToSignKey:publicKey];
    if (!v10)
    {
      MPLogAndAssignError(151, error, @"Time is misconfigured on device.");
      selfCopy = 0;
LABEL_19:

      goto LABEL_20;
    }

    v11 = [byCopy signDataWithFormatter:v10 error:error];
    if (v11)
    {
      publicKey2 = [byCopy publicKey];
      v13 = [publicKey2 verifySignature:v11 formatter:v10];

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
          v17 = [(NGMECDHPublicPreKey *)v16 initWithPublicKey:publicKey signature:v11 timestamp:?];
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
            dhKey = [(NGMFullPrekey *)v15 dhKey];
            publicKey3 = [dhKey publicKey];
            v34 = [publicKey3 key];
            dataRepresentation = [v34 dataRepresentation];
            [v10 timestamp];
            v27 = v26;
            v28 = +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
            tetraWrapped = [byCopy tetraWrapped];
            v30 = [(TetraRegistration *)v33 initWithKyberPublicKey:tetraPrivateKey ecdhPublicKey:dataRepresentation timestamp:v28 version:tetraWrapped signedBy:v27];
            v31 = v15->_tetraRegistration;
            v15->_tetraRegistration = v30;
          }
        }

        self = v15;
        selfCopy = self;
        goto LABEL_18;
      }

      MPLogAndAssignError(201, error, @"Failure to verify the signature for the freshly generated prekey.");
    }

    else
    {
      v22 = MessageProtectionLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NGMFullPrekey initWithPrekeySignedBy:error error:v22];
      }
    }

    selfCopy = 0;
LABEL_18:

    goto LABEL_19;
  }

  MPLogAndAssignError(7, error, @"Failure to get the public prekey of a new ephemeral.");
  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (NGMFullPrekey)initWithPBPrekey:(id)prekey verifySignedBy:(id)by error:(id *)error
{
  prekeyCopy = prekey;
  byCopy = by;
  v57.receiver = self;
  v57.super_class = NGMFullPrekey;
  v10 = [(NGMFullPrekey *)&v57 init];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [DHKey alloc];
  dhKey = [prekeyCopy dhKey];
  v13 = [(FullKey *)v11 initWithProtobufferData:dhKey error:error];
  dhKey = v10->_dhKey;
  v10->_dhKey = v13;

  v15 = [NGMECDHPublicPreKey alloc];
  publicKey = [(DHKey *)v10->_dhKey publicKey];
  prekeySignature = [prekeyCopy prekeySignature];
  [prekeyCopy timestamp];
  v18 = [(NGMECDHPublicPreKey *)v15 initWithPublicKey:publicKey signature:prekeySignature timestamp:?];
  publicPrekey = v10->_publicPrekey;
  v10->_publicPrekey = v18;

  if (!error || !*error)
  {
    if ([prekeyCopy hasTetraPrivateKey])
    {
      v28 = [_TtC17MessageProtection23Kyber1024ObjCPrivateKey alloc];
      tetraPrivateKey = [prekeyCopy tetraPrivateKey];
      v56 = 0;
      v30 = [(Kyber1024ObjCPrivateKey *)v28 initWithProtoBufData:tetraPrivateKey error:&v56];
      v31 = v56;
      tetraPrivateKey = v10->_tetraPrivateKey;
      v10->_tetraPrivateKey = v30;

      if (v31)
      {
        v33 = MEMORY[0x277CCACA8];
        publicKey3 = [v31 description];
        prekeySignature2 = [v33 stringWithFormat:@"Failed to deserialize a prekey containing a Kyber key because of error: %@", publicKey3];
        MPLogAndAssignError(200, error, prekeySignature2);
LABEL_10:

        goto LABEL_11;
      }

      v36 = [_TtC17MessageProtection17TetraRegistration alloc];
      tetraRegistrationData = [prekeyCopy tetraRegistrationData];
      v54 = [(FullKey *)v10->_dhKey key];
      publicKey2 = [v54 publicKey];
      dataRepresentation = [publicKey2 dataRepresentation];
      tetraVersion = [prekeyCopy tetraVersion];
      [prekeyCopy timestamp];
      v42 = v41;
      tetraWrapped = [byCopy tetraWrapped];
      v55 = 0;
      v44 = v36;
      v45 = tetraRegistrationData;
      v46 = [(TetraRegistration *)v44 initWithTetraRegistrationData:tetraRegistrationData ecdhPublicKey:dataRepresentation version:tetraVersion timestamp:tetraWrapped signedBy:0 isEncrypting:&v55 error:v42];
      v31 = v55;
      tetraRegistration = v10->_tetraRegistration;
      v10->_tetraRegistration = v46;

      if (v31)
      {
        v48 = MEMORY[0x277CCACA8];
        publicKey3 = [(Kyber1024ObjCPrivateKey *)v10->_tetraPrivateKey publicKey];
        prekeySignature2 = [prekeyCopy prekeySignature];
        [prekeyCopy timestamp];
        v50 = v49;
        v51 = [v31 description];
        v52 = [v48 stringWithFormat:@"Failed to deserialize a prekey containing a Kyber key: %@ \n signature: %@ \n timestamp: %f \n because of error: %@", publicKey3, prekeySignature2, v50, v51];
        MPLogAndAssignError(200, error, v52);

        goto LABEL_10;
      }
    }

LABEL_11:
    v27 = v10;
    goto LABEL_12;
  }

  v20 = MEMORY[0x277CCACA8];
  publicKey4 = [(DHKey *)v10->_dhKey publicKey];
  prekeySignature3 = [prekeyCopy prekeySignature];
  [prekeyCopy timestamp];
  v24 = v23;
  v25 = [*error description];
  v26 = [v20 stringWithFormat:@"Failed to deserialize a prekey containing an ECDH private key: %@ \n signature: %@ \n timestamp: %f \n because of error: %@", publicKey4, prekeySignature3, v24, v25];
  MPLogAndAssignError(200, error, v26);

  v27 = 0;
LABEL_12:

  return v27;
}

- (id)pbDevicePrekey
{
  v3 = objc_alloc_init(NGMPBDevicePreKey);
  publicPrekey = [(NGMFullPrekey *)self publicPrekey];
  [publicPrekey timestamp];
  [(NGMPBDevicePreKey *)v3 setTimestamp:?];

  dhKey = [(NGMFullPrekey *)self dhKey];
  protobuffer = [dhKey protobuffer];
  [(NGMPBDevicePreKey *)v3 setDhKey:protobuffer];

  publicPrekey2 = [(NGMFullPrekey *)self publicPrekey];
  signature = [publicPrekey2 signature];
  [(NGMPBDevicePreKey *)v3 setPrekeySignature:signature];

  tetraPrivateKey = [(NGMFullPrekey *)self tetraPrivateKey];

  tetraRegistration2 = MessageProtectionLog();
  v11 = os_log_type_enabled(tetraRegistration2, OS_LOG_TYPE_DEBUG);
  if (tetraPrivateKey)
  {
    if (v11)
    {
      [(NGMFullPrekey *)tetraRegistration2 pbDevicePrekey];
    }

    tetraPrivateKey2 = [(NGMFullPrekey *)self tetraPrivateKey];
    protobufData = [tetraPrivateKey2 protobufData];
    [(NGMPBDevicePreKey *)v3 setTetraPrivateKey:protobufData];

    tetraRegistration = [(NGMFullPrekey *)self tetraRegistration];
    registrationData = [tetraRegistration registrationData];
    [(NGMPBDevicePreKey *)v3 setTetraRegistrationData:registrationData];

    tetraRegistration2 = [(NGMFullPrekey *)self tetraRegistration];
    [(NGMPBDevicePreKey *)v3 setTetraVersion:[tetraRegistration2 tetraVersion]];
  }

  else if (v11)
  {
    [(NGMFullPrekey *)tetraRegistration2 pbDevicePrekey];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  dhKey = [(NGMFullPrekey *)self dhKey];
  v5 = [dhKey description];
  publicPrekey = [(NGMFullPrekey *)self publicPrekey];
  v7 = [publicPrekey description];
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
  dhKey = [self dhKey];
  v4 = [dhKey description];
  v5 = [0 description];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to delete prekey ephemeral key (%@) with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end