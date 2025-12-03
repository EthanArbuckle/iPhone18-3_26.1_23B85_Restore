@interface IDSMPPublicDeviceIdentityContainer
+ (id)identityWithDataRepresentation:(id)representation error:(id *)error;
+ (id)identityWithLegacyPublicIdentity:(id)identity ngmPublicDeviceIdentity:(id)deviceIdentity ngmVersion:(id)version error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidNGMSignature:(id)signature forMessage:(id)message forType:(int64_t)type error:(id *)error;
- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token ourSigningIdentity:(id)identity theirURI:(id)rI theirPushToken:(id)pushToken;
- (IDSMPPublicDeviceIdentityContainer)initWithLegacyPublicIdentity:(id)identity ngmPublicDeviceIdentity:(id)deviceIdentity ngmVersion:(id)version;
- (id)_legacySealMessage:(id)message signedWithFullIdentity:(id)identity error:(id *)error;
- (id)_ngmSealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 withEncryptedAttributes:(id)self3 signedWithFullIdentity:(id)self4 usedIdentityWithIdentifier:(id *)self5 error:(id *)self6 additionalResult:(id *)self7;
- (id)dataRepresentationWithError:(id *)error;
- (id)debugDescription;
- (id)description;
- (id)legacySealMessage:(id)message withEncryptedAttributes:(id)attributes signedByFullIdentity:(id)identity usingIdentitiesWithIdentifier:(id)identifier error:(id *)error;
- (id)sealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 withEncryptedAttributes:(id)self3 signedByFullIdentity:(id)self4 usedIdentityWithIdentifier:(id *)self5 error:(id *)self6 additionalResult:(id *)self7;
- (id)sealPaddyMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByFullIdentity:(id)identity error:(id *)error;
- (unint64_t)hash;
- (void)accessNGMIdentityOnQueue:(id)queue;
@end

@implementation IDSMPPublicDeviceIdentityContainer

+ (id)identityWithLegacyPublicIdentity:(id)identity ngmPublicDeviceIdentity:(id)deviceIdentity ngmVersion:(id)version error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  deviceIdentityCopy = deviceIdentity;
  versionCopy = version;
  v13 = versionCopy;
  if (identityCopy)
  {
    if (!deviceIdentityCopy || versionCopy)
    {
      if (deviceIdentityCopy || !versionCopy)
      {
        goto LABEL_13;
      }

      v14 = @"Creating a IDSMPPublicDeviceIdentityContainer with a non-nil ngmVersion requires a non-nill IDSNGMPublicDeviceIdentity";
    }

    else
    {
      v14 = @"Creating a IDSMPPublicDeviceIdentityContainer with a non-nil IDSNGMPublicDeviceIdentity requires a non-nil ngmVersion";
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:v14];
LABEL_13:
    error = [[self alloc] initWithLegacyPublicIdentity:identityCopy ngmPublicDeviceIdentity:deviceIdentityCopy ngmVersion:v13];
    goto LABEL_14;
  }

  v15 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11548();
  }

  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"Failed to create IDSMPPublicDeviceIdentityContainer becuase we are missing the legacyPublicIdentity";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v16 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v17];

    error = 0;
  }

LABEL_14:

  return error;
}

- (IDSMPPublicDeviceIdentityContainer)initWithLegacyPublicIdentity:(id)identity ngmPublicDeviceIdentity:(id)deviceIdentity ngmVersion:(id)version
{
  identityCopy = identity;
  deviceIdentityCopy = deviceIdentity;
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = IDSMPPublicDeviceIdentityContainer;
  v12 = [(IDSMPPublicDeviceIdentityContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legacyPublicIdentity, identity);
    objc_storeStrong(&v13->_ngmPublicDeviceIdentity, deviceIdentity);
    objc_storeStrong(&v13->_ngmVersion, version);
  }

  return v13;
}

- (void)accessNGMIdentityOnQueue:(id)queue
{
  queueCopy = queue;
  queue = [(IDSMPPublicDeviceIdentityContainer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7B1DF28;
  v7[3] = &unk_1E77DD0F0;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  [queue performSyncBlock:v7];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ngmVersion = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
    if (ngmVersion && (v7 = ngmVersion, [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      ngmVersion2 = [v5 ngmVersion];
      if (!ngmVersion2 || (v10 = ngmVersion2, [v5 ngmPublicDeviceIdentity], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
      {
        v18 = 0;
        goto LABEL_13;
      }

      legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
      legacyPublicIdentity2 = [v5 legacyPublicIdentity];
      if ([legacyPublicIdentity isEqual:legacyPublicIdentity2])
      {
        ngmVersion3 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        ngmVersion4 = [v5 ngmVersion];
        if ([ngmVersion3 isEqual:ngmVersion4])
        {
          ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
          ngmPublicDeviceIdentity2 = [v5 ngmPublicDeviceIdentity];
          v18 = [ngmPublicDeviceIdentity isEqual:ngmPublicDeviceIdentity2];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
      legacyPublicIdentity2 = [v5 legacyPublicIdentity];
      v18 = [legacyPublicIdentity isEqual:legacyPublicIdentity2];
    }

LABEL_13:
    goto LABEL_14;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

+ (id)identityWithDataRepresentation:(id)representation error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = objc_autoreleasePoolPush();
  v43 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:representationCopy options:0 format:0 error:&v43];
  v8 = v43;
  objc_autoreleasePoolPop(v6);
  if (error && v8)
  {
    v9 = v8;
    *error = v8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      if (error)
      {
        v35 = *error;
      }

      else
      {
        v35 = 0;
      }

      *buf = 138543875;
      v47 = v35;
      v48 = 2113;
      v49 = representationCopy;
      v50 = 2113;
      v51 = v7;
      _os_log_fault_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_FAULT, "Failed to deserialize plist - failed to create IDSMPPublicDeviceIdentityContainer from data {error: %{public}@, dataRepresentation: %{private}@, dict: %{private}@}", buf, 0x20u);
    }

    goto LABEL_28;
  }

  v10 = [v7 objectForKeyedSubscript:@"kLegacyPublicIdentityKey"];
  if (v10)
  {
    v11 = [IDSMPPublicLegacyIdentity identityWithData:v10 error:error];
    if (!v11)
    {
      v12 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v37 = *error;
        }

        else
        {
          v37 = 0;
        }

        *buf = 138543875;
        v47 = v37;
        v48 = 2113;
        v49 = v10;
        v50 = 2113;
        v51 = representationCopy;
        _os_log_error_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize IDSMPPublicLegacyIdentity -- failed to create IDSMPPublicDeviceIdentityContainer from data {error: %{public}@, legacyData: %{private}@, dataRepresentation: %{private}@}", buf, 0x20u);
      }

      v24 = 0;
      goto LABEL_53;
    }

    v12 = [v7 objectForKeyedSubscript:@"kNGMPublicDeviceIdentityDataKey"];
    v13 = [v7 objectForKeyedSubscript:@"kNGMPublicDevicePrekeyDataKey"];
    v14 = [v7 objectForKeyedSubscript:@"kNGMVersion"];
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v42 = v14;
    if ((v17 & 1) != 0 || !(v12 | v13 | v14))
    {
      v41 = v12;
      if (v16)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v13;
        v29 = v27;
        v40 = v28;
        v30 = [IDSNGMPublicDeviceIdentity identityWithIdentityData:"identityWithIdentityData:prekeyData:error:" prekeyData:v12 error:?];
        v21 = 0;
        objc_autoreleasePoolPop(v29);
        if (error && v21)
        {
          v31 = v21;
          *error = v21;
        }

        if (!v30)
        {
          v23 = +[IDSFoundationLog accountIdentity];
          v13 = v40;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            if (error)
            {
              v39 = *error;
            }

            else
            {
              v39 = 0;
            }

            *buf = 138544131;
            v47 = v39;
            v48 = 2113;
            v49 = v41;
            v50 = 2113;
            v51 = v40;
            v52 = 2113;
            v53 = v7;
            _os_log_error_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_ERROR, "Failed to create IDSNGMFullDeviceIdentity from dataRepresentation -- Failed to create IDSMPFullDeviceIdentityContainer {error: %{public}@, ngmIdentityData: %{private}@, ngmPrekeyData: %{private}@, dict: %{private}@}", buf, 0x2Au);
          }

          v24 = 0;
          goto LABEL_51;
        }

        v32 = v30;
        v13 = v40;
      }

      else
      {
        v32 = 0;
      }

      v21 = v32;
      v33 = [IDSMPPublicDeviceIdentityContainer identityWithLegacyPublicIdentity:"identityWithLegacyPublicIdentity:ngmPublicDeviceIdentity:ngmVersion:error:" ngmPublicDeviceIdentity:v11 ngmVersion:? error:?];
      v23 = v33;
      if (v33)
      {
        v23 = v33;
        v24 = v23;
      }

      else
      {
        v34 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          if (error)
          {
            v38 = *error;
          }

          else
          {
            v38 = 0;
          }

          *buf = 138543619;
          v47 = v38;
          v48 = 2113;
          v49 = v7;
          _os_log_error_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_ERROR, "Failed to create IDSMPPublicDeviceIdentityContainer from parameters -- Failed to deserialize IDSMPPublicDeviceIdentityContainer {error: %{public}@, dict: %{private}@}", buf, 0x16u);
        }

        v24 = 0;
      }
    }

    else
    {
      v18 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138478595;
        v47 = v7;
        v48 = 2114;
        v49 = v42;
        v50 = 2113;
        v51 = v12;
        v52 = 2113;
        v53 = v13;
        _os_log_fault_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_FAULT, "Corrupt IDSMPPublicDeviceIdentityContainer dataRepresentation, mismatch nullability for kNGMVersion/kNGMPublicDeviceIdentityDataKey/kNGMPublicDevicePrekeyDataKey - Failed to create IDSMPPublicDeviceIdentityContainer {dict: %{private}@, ngmVersion: %{public}@, ngmIdentityData: %{private}@, ngmPrekeyData: %{private}@}", buf, 0x2Au);
      }

      if (!error)
      {
        v24 = 0;
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      v19 = @"NO";
      v41 = v12;
      if (v12)
      {
        v20 = @"NO";
      }

      else
      {
        v20 = @"YES";
      }

      if (!v13)
      {
        v19 = @"YES";
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Corrupt IDSMPPublicDeviceIdentityContainer mismatch nullability for kNGMVersion/kNGMPublicDeviceIdentityDataKey/kNGMPublicDevicePrekeyDataKey {ngmVersion: %@, ngmIdentityData==nil: %@, ngmPrekeyData==nil: %@}", v42, v20, v19];
      v22 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A278];
      v45 = v21;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [v22 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v23];
      *error = v24 = 0;
    }

LABEL_51:

    v12 = v41;
    goto LABEL_52;
  }

  v25 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E115CC();
  }

  if (!error)
  {
LABEL_28:
    v24 = 0;
    goto LABEL_55;
  }

  v26 = MEMORY[0x1E696ABC0];
  v54 = *MEMORY[0x1E696A278];
  v55[0] = @"IDSMPPublicDeviceIdentityContainer dataRepresentation missing legacyData}";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  [v26 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v11];
  *error = v24 = 0;
LABEL_54:

LABEL_55:

  return v24;
}

- (unint64_t)hash
{
  legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v4 = [legacyPublicIdentity hash];
  ngmVersion = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
  v6 = [ngmVersion hash];
  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v8 = v4 ^ v6;
  v9 = [ngmPublicDeviceIdentity hash] ^ 0x11;

  return v8 ^ v9;
}

- (id)legacySealMessage:(id)message withEncryptedAttributes:(id)attributes signedByFullIdentity:(id)identity usingIdentitiesWithIdentifier:(id)identifier error:(id *)error
{
  messageCopy = message;
  attributesCopy = attributes;
  identityCopy = identity;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A7E11640();
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E116B4();
LABEL_3:
  v16 = [(IDSMPPublicDeviceIdentityContainer *)self _legacySealMessage:messageCopy signedWithFullIdentity:identityCopy error:error];

  return v16;
}

- (id)sealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 withEncryptedAttributes:(id)self3 signedByFullIdentity:(id)self4 usedIdentityWithIdentifier:(id *)self5 error:(id *)self6 additionalResult:(id *)self7
{
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  attributesCopy = attributes;
  identityCopy = identity;
  v28 = identityCopy;
  if (identifier)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A7E11728();
    if (v28)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E1179C();
LABEL_3:
  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];

  v30 = +[IDSFoundationLog accountIdentity];
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (ngmPublicDeviceIdentity)
  {
    if (v31)
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "Seal using ngm identities", buf, 2u);
    }

    LOWORD(v38) = __PAIR16__(state, optimizations);
    selfCopy = self;
    v34 = dataCopy;
    v33 = messageCopy;
    v35 = guidCopy;
    v36 = [(IDSMPPublicDeviceIdentityContainer *)selfCopy _ngmSealMessage:messageCopy authenticatedData:dataCopy messageType:type guid:guidCopy sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy forceSizeOptimizations:v38 resetState:attributesCopy withEncryptedAttributes:v28 signedWithFullIdentity:identifier usedIdentityWithIdentifier:error error:result additionalResult:?];
  }

  else
  {
    if (v31)
    {
      *v43 = 0;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "Seal using legacy identities", v43, 2u);
    }

    *identifier = @"pair";
    v33 = messageCopy;
    v36 = [(IDSMPPublicDeviceIdentityContainer *)self _legacySealMessage:messageCopy signedWithFullIdentity:v28 error:error];
    v35 = guidCopy;
    v34 = dataCopy;
  }

  return v36;
}

- (id)sealPaddyMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByFullIdentity:(id)identity error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  identityCopy = identity;
  v17 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity:iCopy];
    ngmFullDeviceIdentity = [identityCopy ngmFullDeviceIdentity];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "length")}];
    *buf = 138478339;
    *&buf[4] = v18;
    *&buf[12] = 2113;
    *&buf[14] = ngmFullDeviceIdentity;
    *&buf[22] = 2113;
    v65 = v20;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Sealing paddy message using ngm identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  ngmFullDeviceIdentity2 = [identityCopy ngmFullDeviceIdentity];
  if (!ngmFullDeviceIdentity2)
  {
    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A278];
      v71[0] = @"Tried to perform ngm encryption but signing container is missing NGMFullDeviceIdentity";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
      *error = [v27 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:11 userInfo:v28];
    }

    ngmPublicDeviceIdentity = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(ngmPublicDeviceIdentity, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E118B0(self, identityCopy);
    }

    goto LABEL_19;
  }

  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  if (!ngmPublicDeviceIdentity)
  {
    if (error)
    {
      v29 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A278];
      v69 = @"Tried to perform ngm encryption but encrypting container is missing NGMPublicDeviceIdentity";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      *error = [v29 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:12 userInfo:v30];
    }

    v31 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11810(self);
    }

LABEL_19:
    v32 = 0;
    goto LABEL_24;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = sub_1A7B1AD64;
  v66 = sub_1A7B1AD74;
  v67 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1A7B1AD64;
  v54 = sub_1A7B1AD74;
  v55 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1A7B1F1BC;
  v41[3] = &unk_1E77DD2A0;
  v48 = &v50;
  v42 = messageCopy;
  v43 = iCopy;
  v44 = tokenCopy;
  v45 = rICopy;
  v46 = pushTokenCopy;
  v47 = ngmFullDeviceIdentity2;
  v49 = buf;
  [(IDSMPPublicDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v41];
  v23 = v51[5];
  if (!v23)
  {
    v24 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v34 = *error;
      }

      else
      {
        v34 = 0;
      }

      v35 = [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
      v36 = [identityCopy debugDescription];
      *v58 = 138543875;
      v59 = v34;
      v60 = 2113;
      v61 = v35;
      v62 = 2113;
      v63 = v36;
      _os_log_error_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_ERROR, "Contianer failed to encrypt with ngm identities - fail to seal paddy message {error: %{public}@, publicContainer: %{private}@, signingContainer:%{private}@}", v58, 0x20u);
    }

    v25 = *(*&buf[8] + 40);
    if (v25)
    {
      v56 = *MEMORY[0x1E696AA08];
      v57 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      if (!error)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = 0;
      if (!error)
      {
LABEL_22:

        v23 = v51[5];
        goto LABEL_23;
      }
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:21 userInfo:{v26, iCopy}];
    goto LABEL_22;
  }

LABEL_23:
  v32 = v23;

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);

LABEL_24:

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  ngmVersion = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
  v8 = [v3 stringWithFormat:@"<%@: %p legacyPublicIdentity: %@, ngmPublicDeviceIdentity: %@, ngmVersion: %@>", v4, self, legacyPublicIdentity, ngmPublicDeviceIdentity, ngmVersion];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v6 = [legacyPublicIdentity debugDescription];
  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v8 = [ngmPublicDeviceIdentity debugDescription];
  ngmVersion = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
  v10 = [v3 stringWithFormat:@"<%@: %p legacyPublicIdentity: %@, ngmPublicDeviceIdentity: %@, ngmVersion: %@>", v4, self, v6, v8, ngmVersion];

  return v10;
}

- (id)_legacySealMessage:(id)message signedWithFullIdentity:(id)identity error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identityCopy = identity;
  v10 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
    legacyFullIdentity = [identityCopy legacyFullIdentity];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "length")}];
    *buf = 138478339;
    v31 = legacyPublicIdentity;
    v32 = 2113;
    v33 = legacyFullIdentity;
    v34 = 2113;
    v35 = v13;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Sealing message using legacy identities {publicLegacyIdentity: %{private}@, fullLegacyIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  legacyFullIdentity2 = [identityCopy legacyFullIdentity];
  if (legacyFullIdentity2)
  {
    legacyPublicIdentity2 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
    v16 = legacyPublicIdentity2;
    if (!legacyPublicIdentity2)
    {
      v22 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E11958();
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:9 userInfo:0];
        *error = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_22;
    }

    v27 = 0;
    v17 = [legacyPublicIdentity2 signAndProtectData:messageCopy withSigner:legacyFullIdentity2 error:&v27];
    v18 = v27;
    if (v17)
    {
LABEL_11:

LABEL_22:
      goto LABEL_23;
    }

    v19 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
      }

      else
      {
        [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
      }
      v24 = ;
      v25 = [identityCopy debugDescription];
      *buf = 138543875;
      v31 = v26;
      v32 = 2113;
      v33 = v24;
      v34 = 2113;
      v35 = v25;
      _os_log_error_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_ERROR, "Contianer failed to encrypt with legacy identities - fail to seal message {error: %{public}@, publicContainer: %{private}@, signingContainer:%{private}@}", buf, 0x20u);
    }

    if (v18)
    {
      v28 = *MEMORY[0x1E696AA08];
      v29 = v18;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      if (!error)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v20 = 0;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:10 userInfo:v20];
    goto LABEL_10;
  }

  v21 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E119F0();
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:8 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_23:

  return v17;
}

- (id)_ngmSealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 withEncryptedAttributes:(id)self3 signedWithFullIdentity:(id)self4 usedIdentityWithIdentifier:(id *)self5 error:(id *)self6 additionalResult:(id *)self7
{
  v119[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  attributesCopy = attributes;
  identityCopy = identity;
  v24 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
    ngmFullDeviceIdentity = [identityCopy ngmFullDeviceIdentity];
    v27 = dataCopy;
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "length")}];
    *buf = 138478339;
    v107 = ngmPublicDeviceIdentity;
    v108 = 2113;
    v109 = ngmFullDeviceIdentity;
    v110 = 2113;
    v111 = v28;
    _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Sealing message using ngm identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);

    dataCopy = v27;
  }

  ngmFullDeviceIdentity2 = [identityCopy ngmFullDeviceIdentity];
  if (ngmFullDeviceIdentity2)
  {
    ngmPublicDeviceIdentity2 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
    v31 = ngmPublicDeviceIdentity2;
    errorCopy5 = error;
    if (!ngmPublicDeviceIdentity2)
    {
      if (error)
      {
        v46 = MEMORY[0x1E696ABC0];
        v116 = *MEMORY[0x1E696A278];
        v117 = @"Tried to perform ngm encryption but encrypting container is missing NGMPublicDeviceIdentity";
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
        v48 = v47 = ngmFullDeviceIdentity2;
        v31 = 0;
        *error = [v46 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:12 userInfo:v48];

        ngmFullDeviceIdentity2 = v47;
      }

      v49 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E11B34();
      }

      v50 = guidCopy;
      v45 = 0;
      if (identifier)
      {
        *identifier = @"pair-ec";
      }

      goto LABEL_77;
    }

    v89 = ngmPublicDeviceIdentity2;
    v90 = ngmFullDeviceIdentity2;
    ngmVersion = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
    if (ngmVersion)
    {
      v34 = ngmVersion;
      ngmVersion2 = [identityCopy ngmVersion];
      if (ngmVersion2)
      {
        v36 = ngmVersion2;
        v37 = dataCopy;
        ngmVersion3 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        ngmVersion4 = [identityCopy ngmVersion];
        if ([ngmVersion3 isEqualToNumber:ngmVersion4])
        {

          dataCopy = v37;
          v40 = 0x1E77DB000;
          resultCopy2 = result;
LABEL_25:
          v50 = guidCopy;
          if (!guidCopy || !iCopy || !tokenCopy || !rICopy || !pushTokenCopy)
          {
            accountIdentity = [*(v40 + 2592) accountIdentity];
            if (os_log_type_enabled(accountIdentity, OS_LOG_TYPE_ERROR))
            {
              *buf = 138413314;
              v107 = guidCopy;
              v108 = 2112;
              v109 = iCopy;
              v110 = 2112;
              v111 = tokenCopy;
              v112 = 2112;
              v113 = rICopy;
              v114 = 2112;
              v115 = pushTokenCopy;
              _os_log_error_impl(&dword_1A7AD9000, accountIdentity, OS_LOG_TYPE_ERROR, "Failed to seal message - one or more required fields is nil {guid: %@ sendingURI: %@ sendingPushToken: %@ receivingURI: %@ receivingPushToken: %@}", buf, 0x34u);
            }

            ngmFullDeviceIdentity2 = v90;
            if (errorCopy5)
            {
              v69 = errorCopy5;
              v70 = MEMORY[0x1E696ABC0];
              v104 = *MEMORY[0x1E696A278];
              v105 = @"Tried to perform ngm encryption but one or more required fields is missing";
              v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
              v50 = guidCopy;
              *v69 = [v70 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:22 userInfo:v71];
            }

            v45 = 0;
            if (identifier)
            {
              *identifier = @"pair-ec";
            }

            goto LABEL_76;
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v101 = dictionary;
          LOWORD(v88) = __PAIR16__(state, optimizations);
          v45 = [v89 sealMessage:messageCopy authenticatedData:dataCopy messageType:type guid:guidCopy sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy forceSizeOptimizations:v88 resetState:attributesCopy encryptedAttributes:v90 signedByFullIdentity:&v101 errors:?];
          v54 = v101;

          v55 = v54;
          v56 = [v54 objectForKey:&unk_1F1B1FF28];
          v91 = v56;
          if ([v56 code])
          {
            v93 = v56;
            errorCopy4 = error;
            if (!v45)
            {
LABEL_55:
              accountIdentity2 = [*(v40 + 2592) accountIdentity];
              if (os_log_type_enabled(accountIdentity2, OS_LOG_TYPE_ERROR))
              {
                v86 = [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
                v87 = [identityCopy debugDescription];
                *buf = 138543875;
                v107 = v93;
                v108 = 2113;
                v109 = v86;
                v110 = 2113;
                v111 = v87;
                _os_log_error_impl(&dword_1A7AD9000, accountIdentity2, OS_LOG_TYPE_ERROR, "Container failed to encrypt with ngm identities - fail to seal message {error: %{public}@, encryptingIdentity: %{private}@, signingIdentity: %{private}@}", buf, 0x20u);

                v50 = guidCopy;
                errorCopy4 = error;
              }

              if (v93)
              {
                v102 = *MEMORY[0x1E696AA08];
                v103 = v93;
                v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
              }

              else
              {
                v74 = 0;
              }

              if (errorCopy4)
              {
                *errorCopy4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:15 userInfo:v74];
              }
            }
          }

          else
          {
            domain = [v56 domain];
            if ([domain isEqualToString:@"com.apple.messageprotection"])
            {
              v93 = 0;
            }

            else
            {
              v93 = v56;
            }

            errorCopy4 = error;

            if (!v45)
            {
              goto LABEL_55;
            }
          }

          v75 = v55;
          if (resultCopy2 && v55)
          {
            v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v77 = [v55 objectForKey:&unk_1F1B1FF40];
            if (v77)
            {
              CFDictionarySetValue(v76, &unk_1F1B1FF58, v77);
            }

            v78 = v76;
            *resultCopy2 = v76;
          }

          v79 = [v75 objectForKey:&unk_1F1B1FF40];
          if (v79)
          {
            v80 = [v75 objectForKey:&unk_1F1B1FF28];
            v81 = IDSSecondaryIdentityIdentifier;
            if (v80)
            {
              v81 = IDSNGMDeviceIdentityIdentifier;
            }

            identifierCopy2 = identifier;
            *identifier = *v81;
          }

          else
          {
            identifierCopy2 = identifier;
            *identifier = @"pair-ec";
          }

          accountIdentity3 = [*(v40 + 2592) accountIdentity];
          if (os_log_type_enabled(accountIdentity3, OS_LOG_TYPE_DEFAULT))
          {
            v84 = *identifierCopy2;
            *buf = 138412290;
            v107 = v84;
            _os_log_impl(&dword_1A7AD9000, accountIdentity3, OS_LOG_TYPE_DEFAULT, "Finished encrypting message with identifier type: %@", buf, 0xCu);
          }

          ngmFullDeviceIdentity2 = v90;
LABEL_76:
          v31 = v89;
LABEL_77:

          goto LABEL_78;
        }

        ngmVersion5 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        v52 = +[IDSNGMProtocolVersion isVersionSupported:](IDSNGMProtocolVersion, "isVersionSupported:", [ngmVersion5 intValue]);

        errorCopy5 = error;
        dataCopy = v37;
        v40 = 0x1E77DB000uLL;
        resultCopy2 = result;
        if (v52)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    if (errorCopy5)
    {
      v58 = MEMORY[0x1E696AEC0];
      ngmVersion6 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
      ngmVersion7 = [identityCopy ngmVersion];
      v61 = [v58 stringWithFormat:@"Unable to ngm seal message due to mismatching versions {encryptingIdentity.ngmVersion: %@, signingIdentity.ngmVersion: %@}", ngmVersion6, ngmVersion7];

      v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v62 setObject:v61 forKeyedSubscript:*MEMORY[0x1E696A278]];
      ngmVersion8 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];

      if (ngmVersion8)
      {
        ngmVersion9 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        [v62 setObject:ngmVersion9 forKeyedSubscript:@"encryptingIdentityNGMVersion"];
      }

      ngmVersion10 = [identityCopy ngmVersion];

      if (ngmVersion10)
      {
        ngmVersion11 = [identityCopy ngmVersion];
        [v62 setObject:ngmVersion11 forKeyedSubscript:@"signingIdentityNGMVersion"];
      }

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:13 userInfo:v62];
    }

    v67 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11A84();
    }

    v31 = v89;
    v45 = 0;
    if (identifier)
    {
      *identifier = @"pair-ec";
    }

    v50 = guidCopy;
    ngmFullDeviceIdentity2 = v90;
    goto LABEL_77;
  }

  if (error)
  {
    v42 = MEMORY[0x1E696ABC0];
    v118 = *MEMORY[0x1E696A278];
    v119[0] = @"Tried to perform ngm encryption but signing container is missing NGMFullDeviceIdentity";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];
    *error = [v42 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:11 userInfo:v43];
  }

  v44 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11BCC();
  }

  v45 = 0;
  if (identifier)
  {
    *identifier = @"pair-ec";
  }

  v50 = guidCopy;
LABEL_78:

  return v45;
}

- (id)dataRepresentationWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  legacyPublicIdentity = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v7 = [legacyPublicIdentity dataRepresentationWithError:error];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"kLegacyPublicIdentityKey"];
    ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
    if (ngmPublicDeviceIdentity)
    {
      ngmVersion = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];

      if (ngmVersion)
      {
        identityData = [ngmPublicDeviceIdentity identityData];
        prekeyData = [ngmPublicDeviceIdentity prekeyData];
        v12 = prekeyData;
        if (!identityData || !prekeyData)
        {
          v17 = +[IDSFoundationLog accountIdentity];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E11C60();
          }

          v15 = 0;
          goto LABEL_17;
        }

        [v5 setObject:identityData forKeyedSubscript:@"kNGMPublicDeviceIdentityDataKey"];
        [v5 setObject:v12 forKeyedSubscript:@"kNGMPublicDevicePrekeyDataKey"];
        ngmVersion2 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        [v5 setObject:ngmVersion2 forKeyedSubscript:@"kNGMVersion"];
      }
    }

    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:error];
    identityData = v14;
    if (v14)
    {
      identityData = v14;
      v15 = identityData;
    }

    else
    {
      v16 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        if (error)
        {
          v19 = *error;
        }

        else
        {
          v19 = 0;
        }

        v20 = 138543875;
        v21 = v19;
        v22 = 2113;
        v23 = v5;
        v24 = 2113;
        selfCopy = self;
        _os_log_fault_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_FAULT, "Failed to create plist - failed to serialize IDSMPFullDeviceIdentityContainer {error: %{public}@, dict: %{private}@, container: %{private}@}", &v20, 0x20u);
      }

      v15 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  ngmPublicDeviceIdentity = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(ngmPublicDeviceIdentity, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E10D70();
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token ourSigningIdentity:(id)identity theirURI:(id)rI theirPushToken:(id)pushToken
{
  iCopy = i;
  tokenCopy = token;
  identityCopy = identity;
  rICopy = rI;
  pushTokenCopy = pushToken;
  ngmFullDeviceIdentity = [identityCopy ngmFullDeviceIdentity];
  if (!ngmFullDeviceIdentity)
  {
    v19 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11DC4();
    }

    goto LABEL_18;
  }

  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v19 = ngmPublicDeviceIdentity;
  if (!ngmPublicDeviceIdentity)
  {
    v21 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11D84();
    }

    goto LABEL_17;
  }

  if (!iCopy || !tokenCopy || !rICopy || !pushTokenCopy)
  {
    v21 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11CD0();
    }

    goto LABEL_17;
  }

  if (([ngmPublicDeviceIdentity markForStateResetWithOurURI:iCopy ourPushToken:tokenCopy ourSigningIdentity:ngmFullDeviceIdentity theirURI:rICopy theirPushToken:pushTokenCopy]& 1) == 0)
  {
    v21 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11D10();
    }

LABEL_17:

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v20 = 1;
LABEL_19:

  return v20;
}

- (BOOL)isValidNGMSignature:(id)signature forMessage:(id)message forType:(int64_t)type error:(id *)error
{
  messageCopy = message;
  signatureCopy = signature;
  ngmPublicDeviceIdentity = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  LOBYTE(error) = [ngmPublicDeviceIdentity isValidSignature:signatureCopy forMessage:messageCopy forType:type error:error];

  return error;
}

@end