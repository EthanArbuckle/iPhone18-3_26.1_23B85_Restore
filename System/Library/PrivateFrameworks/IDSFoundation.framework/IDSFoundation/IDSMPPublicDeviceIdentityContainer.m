@interface IDSMPPublicDeviceIdentityContainer
+ (id)identityWithDataRepresentation:(id)a3 error:(id *)a4;
+ (id)identityWithLegacyPublicIdentity:(id)a3 ngmPublicDeviceIdentity:(id)a4 ngmVersion:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidNGMSignature:(id)a3 forMessage:(id)a4 forType:(int64_t)a5 error:(id *)a6;
- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 ourSigningIdentity:(id)a5 theirURI:(id)a6 theirPushToken:(id)a7;
- (IDSMPPublicDeviceIdentityContainer)initWithLegacyPublicIdentity:(id)a3 ngmPublicDeviceIdentity:(id)a4 ngmVersion:(id)a5;
- (id)_legacySealMessage:(id)a3 signedWithFullIdentity:(id)a4 error:(id *)a5;
- (id)_ngmSealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 withEncryptedAttributes:(id)a13 signedWithFullIdentity:(id)a14 usedIdentityWithIdentifier:(id *)a15 error:(id *)a16 additionalResult:(id *)a17;
- (id)dataRepresentationWithError:(id *)a3;
- (id)debugDescription;
- (id)description;
- (id)legacySealMessage:(id)a3 withEncryptedAttributes:(id)a4 signedByFullIdentity:(id)a5 usingIdentitiesWithIdentifier:(id)a6 error:(id *)a7;
- (id)sealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 withEncryptedAttributes:(id)a13 signedByFullIdentity:(id)a14 usedIdentityWithIdentifier:(id *)a15 error:(id *)a16 additionalResult:(id *)a17;
- (id)sealPaddyMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByFullIdentity:(id)a8 error:(id *)a9;
- (unint64_t)hash;
- (void)accessNGMIdentityOnQueue:(id)a3;
@end

@implementation IDSMPPublicDeviceIdentityContainer

+ (id)identityWithLegacyPublicIdentity:(id)a3 ngmPublicDeviceIdentity:(id)a4 ngmVersion:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (!v11 || v12)
    {
      if (v11 || !v12)
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
    a6 = [[a1 alloc] initWithLegacyPublicIdentity:v10 ngmPublicDeviceIdentity:v11 ngmVersion:v13];
    goto LABEL_14;
  }

  v15 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11548();
  }

  if (a6)
  {
    v16 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"Failed to create IDSMPPublicDeviceIdentityContainer becuase we are missing the legacyPublicIdentity";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a6 = [v16 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v17];

    a6 = 0;
  }

LABEL_14:

  return a6;
}

- (IDSMPPublicDeviceIdentityContainer)initWithLegacyPublicIdentity:(id)a3 ngmPublicDeviceIdentity:(id)a4 ngmVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSMPPublicDeviceIdentityContainer;
  v12 = [(IDSMPPublicDeviceIdentityContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legacyPublicIdentity, a3);
    objc_storeStrong(&v13->_ngmPublicDeviceIdentity, a4);
    objc_storeStrong(&v13->_ngmVersion, a5);
  }

  return v13;
}

- (void)accessNGMIdentityOnQueue:(id)a3
{
  v4 = a3;
  v5 = [(IDSMPPublicDeviceIdentityContainer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7B1DF28;
  v7[3] = &unk_1E77DD0F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performSyncBlock:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
    if (v6 && (v7 = v6, [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = [v5 ngmVersion];
      if (!v9 || (v10 = v9, [v5 ngmPublicDeviceIdentity], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
      {
        v18 = 0;
        goto LABEL_13;
      }

      v12 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
      v13 = [v5 legacyPublicIdentity];
      if ([v12 isEqual:v13])
      {
        v14 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        v15 = [v5 ngmVersion];
        if ([v14 isEqual:v15])
        {
          v16 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
          v17 = [v5 ngmPublicDeviceIdentity];
          v18 = [v16 isEqual:v17];
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
      v12 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
      v13 = [v5 legacyPublicIdentity];
      v18 = [v12 isEqual:v13];
    }

LABEL_13:
    goto LABEL_14;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

+ (id)identityWithDataRepresentation:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v43 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v43];
  v8 = v43;
  objc_autoreleasePoolPop(v6);
  if (a4 && v8)
  {
    v9 = v8;
    *a4 = v8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      if (a4)
      {
        v35 = *a4;
      }

      else
      {
        v35 = 0;
      }

      *buf = 138543875;
      v47 = v35;
      v48 = 2113;
      v49 = v5;
      v50 = 2113;
      v51 = v7;
      _os_log_fault_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_FAULT, "Failed to deserialize plist - failed to create IDSMPPublicDeviceIdentityContainer from data {error: %{public}@, dataRepresentation: %{private}@, dict: %{private}@}", buf, 0x20u);
    }

    goto LABEL_28;
  }

  v10 = [v7 objectForKeyedSubscript:@"kLegacyPublicIdentityKey"];
  if (v10)
  {
    v11 = [IDSMPPublicLegacyIdentity identityWithData:v10 error:a4];
    if (!v11)
    {
      v12 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (a4)
        {
          v37 = *a4;
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
        v51 = v5;
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
        if (a4 && v21)
        {
          v31 = v21;
          *a4 = v21;
        }

        if (!v30)
        {
          v23 = +[IDSFoundationLog accountIdentity];
          v13 = v40;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            if (a4)
            {
              v39 = *a4;
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
          if (a4)
          {
            v38 = *a4;
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

      if (!a4)
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
      *a4 = v24 = 0;
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

  if (!a4)
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
  *a4 = v24 = 0;
LABEL_54:

LABEL_55:

  return v24;
}

- (unint64_t)hash
{
  v3 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v4 = [v3 hash];
  v5 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
  v6 = [v5 hash];
  v7 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v8 = v4 ^ v6;
  v9 = [v7 hash] ^ 0x11;

  return v8 ^ v9;
}

- (id)legacySealMessage:(id)a3 withEncryptedAttributes:(id)a4 signedByFullIdentity:(id)a5 usingIdentitiesWithIdentifier:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A7E11640();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E116B4();
LABEL_3:
  v16 = [(IDSMPPublicDeviceIdentityContainer *)self _legacySealMessage:v12 signedWithFullIdentity:v14 error:a7];

  return v16;
}

- (id)sealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 withEncryptedAttributes:(id)a13 signedByFullIdentity:(id)a14 usedIdentityWithIdentifier:(id *)a15 error:(id *)a16 additionalResult:(id *)a17
{
  v42 = a3;
  v41 = a4;
  v40 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a13;
  v27 = a14;
  v28 = v27;
  if (a15)
  {
    if (v27)
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
  v29 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];

  v30 = +[IDSFoundationLog accountIdentity];
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v31)
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "Seal using ngm identities", buf, 2u);
    }

    LOWORD(v38) = __PAIR16__(a12, a11);
    v32 = self;
    v34 = v41;
    v33 = v42;
    v35 = v40;
    v36 = [(IDSMPPublicDeviceIdentityContainer *)v32 _ngmSealMessage:v42 authenticatedData:v41 messageType:a5 guid:v40 sendingURI:v22 sendingPushToken:v23 receivingURI:v24 receivingPushToken:v25 forceSizeOptimizations:v38 resetState:v26 withEncryptedAttributes:v28 signedWithFullIdentity:a15 usedIdentityWithIdentifier:a16 error:a17 additionalResult:?];
  }

  else
  {
    if (v31)
    {
      *v43 = 0;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "Seal using legacy identities", v43, 2u);
    }

    *a15 = @"pair";
    v33 = v42;
    v36 = [(IDSMPPublicDeviceIdentityContainer *)self _legacySealMessage:v42 signedWithFullIdentity:v28 error:a16];
    v35 = v40;
    v34 = v41;
  }

  return v36;
}

- (id)sealPaddyMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByFullIdentity:(id)a8 error:(id *)a9
{
  v71[1] = *MEMORY[0x1E69E9840];
  v40 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v15 = a7;
  v16 = a8;
  v17 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity:v37];
    v19 = [v16 ngmFullDeviceIdentity];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v40, "length")}];
    *buf = 138478339;
    *&buf[4] = v18;
    *&buf[12] = 2113;
    *&buf[14] = v19;
    *&buf[22] = 2113;
    v65 = v20;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Sealing paddy message using ngm identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  v21 = [v16 ngmFullDeviceIdentity];
  if (!v21)
  {
    if (a9)
    {
      v27 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A278];
      v71[0] = @"Tried to perform ngm encryption but signing container is missing NGMFullDeviceIdentity";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
      *a9 = [v27 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:11 userInfo:v28];
    }

    v22 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E118B0(self, v16);
    }

    goto LABEL_19;
  }

  v22 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  if (!v22)
  {
    if (a9)
    {
      v29 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A278];
      v69 = @"Tried to perform ngm encryption but encrypting container is missing NGMPublicDeviceIdentity";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      *a9 = [v29 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:12 userInfo:v30];
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
  v42 = v40;
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v46 = v15;
  v47 = v21;
  v49 = buf;
  [(IDSMPPublicDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v41];
  v23 = v51[5];
  if (!v23)
  {
    v24 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (a9)
      {
        v34 = *a9;
      }

      else
      {
        v34 = 0;
      }

      v35 = [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
      v36 = [v16 debugDescription];
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
      if (!a9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v26 = 0;
      if (!a9)
      {
LABEL_22:

        v23 = v51[5];
        goto LABEL_23;
      }
    }

    *a9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:21 userInfo:{v26, v37}];
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
  v5 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v6 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v7 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
  v8 = [v3 stringWithFormat:@"<%@: %p legacyPublicIdentity: %@, ngmPublicDeviceIdentity: %@, ngmVersion: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v6 = [v5 debugDescription];
  v7 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v8 = [v7 debugDescription];
  v9 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
  v10 = [v3 stringWithFormat:@"<%@: %p legacyPublicIdentity: %@, ngmPublicDeviceIdentity: %@, ngmVersion: %@>", v4, self, v6, v8, v9];

  return v10;
}

- (id)_legacySealMessage:(id)a3 signedWithFullIdentity:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
    v12 = [v9 legacyFullIdentity];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    *buf = 138478339;
    v31 = v11;
    v32 = 2113;
    v33 = v12;
    v34 = 2113;
    v35 = v13;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Sealing message using legacy identities {publicLegacyIdentity: %{private}@, fullLegacyIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  v14 = [v9 legacyFullIdentity];
  if (v14)
  {
    v15 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
    v16 = v15;
    if (!v15)
    {
      v22 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E11958();
      }

      if (a5)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:9 userInfo:0];
        *a5 = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_22;
    }

    v27 = 0;
    v17 = [v15 signAndProtectData:v8 withSigner:v14 error:&v27];
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
      if (a5)
      {
        [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
      }

      else
      {
        [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
      }
      v24 = ;
      v25 = [v9 debugDescription];
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
      if (!a5)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v20 = 0;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:10 userInfo:v20];
    goto LABEL_10;
  }

  v21 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E119F0();
  }

  if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:8 userInfo:0];
    *a5 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_23:

  return v17;
}

- (id)_ngmSealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 forceSizeOptimizations:(BOOL)a11 resetState:(BOOL)a12 withEncryptedAttributes:(id)a13 signedWithFullIdentity:(id)a14 usedIdentityWithIdentifier:(id *)a15 error:(id *)a16 additionalResult:(id *)a17
{
  v119[1] = *MEMORY[0x1E69E9840];
  v100 = a3;
  v22 = a4;
  v94 = a6;
  v99 = a7;
  v98 = a8;
  v97 = a9;
  v96 = a10;
  v95 = a13;
  v23 = a14;
  v24 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
    v26 = [v23 ngmFullDeviceIdentity];
    v27 = v22;
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v100, "length")}];
    *buf = 138478339;
    v107 = v25;
    v108 = 2113;
    v109 = v26;
    v110 = 2113;
    v111 = v28;
    _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Sealing message using ngm identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);

    v22 = v27;
  }

  v29 = [v23 ngmFullDeviceIdentity];
  if (v29)
  {
    v30 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
    v31 = v30;
    v32 = a16;
    if (!v30)
    {
      if (a16)
      {
        v46 = MEMORY[0x1E696ABC0];
        v116 = *MEMORY[0x1E696A278];
        v117 = @"Tried to perform ngm encryption but encrypting container is missing NGMPublicDeviceIdentity";
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
        v48 = v47 = v29;
        v31 = 0;
        *a16 = [v46 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:12 userInfo:v48];

        v29 = v47;
      }

      v49 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E11B34();
      }

      v50 = v94;
      v45 = 0;
      if (a15)
      {
        *a15 = @"pair-ec";
      }

      goto LABEL_77;
    }

    v89 = v30;
    v90 = v29;
    v33 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
    if (v33)
    {
      v34 = v33;
      v35 = [v23 ngmVersion];
      if (v35)
      {
        v36 = v35;
        v37 = v22;
        v38 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        v39 = [v23 ngmVersion];
        if ([v38 isEqualToNumber:v39])
        {

          v22 = v37;
          v40 = 0x1E77DB000;
          v41 = a17;
LABEL_25:
          v50 = v94;
          if (!v94 || !v99 || !v98 || !v97 || !v96)
          {
            v68 = [*(v40 + 2592) accountIdentity];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 138413314;
              v107 = v94;
              v108 = 2112;
              v109 = v99;
              v110 = 2112;
              v111 = v98;
              v112 = 2112;
              v113 = v97;
              v114 = 2112;
              v115 = v96;
              _os_log_error_impl(&dword_1A7AD9000, v68, OS_LOG_TYPE_ERROR, "Failed to seal message - one or more required fields is nil {guid: %@ sendingURI: %@ sendingPushToken: %@ receivingURI: %@ receivingPushToken: %@}", buf, 0x34u);
            }

            v29 = v90;
            if (v32)
            {
              v69 = v32;
              v70 = MEMORY[0x1E696ABC0];
              v104 = *MEMORY[0x1E696A278];
              v105 = @"Tried to perform ngm encryption but one or more required fields is missing";
              v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
              v50 = v94;
              *v69 = [v70 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:22 userInfo:v71];
            }

            v45 = 0;
            if (a15)
            {
              *a15 = @"pair-ec";
            }

            goto LABEL_76;
          }

          v53 = [MEMORY[0x1E695DF90] dictionary];
          v101 = v53;
          LOWORD(v88) = __PAIR16__(a12, a11);
          v45 = [v89 sealMessage:v100 authenticatedData:v22 messageType:a5 guid:v94 sendingURI:v99 sendingPushToken:v98 receivingURI:v97 receivingPushToken:v96 forceSizeOptimizations:v88 resetState:v95 encryptedAttributes:v90 signedByFullIdentity:&v101 errors:?];
          v54 = v101;

          v55 = v54;
          v56 = [v54 objectForKey:&unk_1F1B1FF28];
          v91 = v56;
          if ([v56 code])
          {
            v93 = v56;
            v57 = a16;
            if (!v45)
            {
LABEL_55:
              v73 = [*(v40 + 2592) accountIdentity];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v86 = [(IDSMPPublicDeviceIdentityContainer *)self debugDescription];
                v87 = [v23 debugDescription];
                *buf = 138543875;
                v107 = v93;
                v108 = 2113;
                v109 = v86;
                v110 = 2113;
                v111 = v87;
                _os_log_error_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_ERROR, "Container failed to encrypt with ngm identities - fail to seal message {error: %{public}@, encryptingIdentity: %{private}@, signingIdentity: %{private}@}", buf, 0x20u);

                v50 = v94;
                v57 = a16;
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

              if (v57)
              {
                *v57 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:15 userInfo:v74];
              }
            }
          }

          else
          {
            v72 = [v56 domain];
            if ([v72 isEqualToString:@"com.apple.messageprotection"])
            {
              v93 = 0;
            }

            else
            {
              v93 = v56;
            }

            v57 = a16;

            if (!v45)
            {
              goto LABEL_55;
            }
          }

          v75 = v55;
          if (v41 && v55)
          {
            v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v77 = [v55 objectForKey:&unk_1F1B1FF40];
            if (v77)
            {
              CFDictionarySetValue(v76, &unk_1F1B1FF58, v77);
            }

            v78 = v76;
            *v41 = v76;
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

            v82 = a15;
            *a15 = *v81;
          }

          else
          {
            v82 = a15;
            *a15 = @"pair-ec";
          }

          v83 = [*(v40 + 2592) accountIdentity];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = *v82;
            *buf = 138412290;
            v107 = v84;
            _os_log_impl(&dword_1A7AD9000, v83, OS_LOG_TYPE_DEFAULT, "Finished encrypting message with identifier type: %@", buf, 0xCu);
          }

          v29 = v90;
LABEL_76:
          v31 = v89;
LABEL_77:

          goto LABEL_78;
        }

        v51 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        v52 = +[IDSNGMProtocolVersion isVersionSupported:](IDSNGMProtocolVersion, "isVersionSupported:", [v51 intValue]);

        v32 = a16;
        v22 = v37;
        v40 = 0x1E77DB000uLL;
        v41 = a17;
        if (v52)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    if (v32)
    {
      v58 = MEMORY[0x1E696AEC0];
      v59 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
      v60 = [v23 ngmVersion];
      v61 = [v58 stringWithFormat:@"Unable to ngm seal message due to mismatching versions {encryptingIdentity.ngmVersion: %@, signingIdentity.ngmVersion: %@}", v59, v60];

      v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v62 setObject:v61 forKeyedSubscript:*MEMORY[0x1E696A278]];
      v63 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];

      if (v63)
      {
        v64 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        [v62 setObject:v64 forKeyedSubscript:@"encryptingIdentityNGMVersion"];
      }

      v65 = [v23 ngmVersion];

      if (v65)
      {
        v66 = [v23 ngmVersion];
        [v62 setObject:v66 forKeyedSubscript:@"signingIdentityNGMVersion"];
      }

      *a16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:13 userInfo:v62];
    }

    v67 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11A84();
    }

    v31 = v89;
    v45 = 0;
    if (a15)
    {
      *a15 = @"pair-ec";
    }

    v50 = v94;
    v29 = v90;
    goto LABEL_77;
  }

  if (a16)
  {
    v42 = MEMORY[0x1E696ABC0];
    v118 = *MEMORY[0x1E696A278];
    v119[0] = @"Tried to perform ngm encryption but signing container is missing NGMFullDeviceIdentity";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];
    *a16 = [v42 errorWithDomain:@"com.apple.ids.IDSEncryptionErrorDomain" code:11 userInfo:v43];
  }

  v44 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11BCC();
  }

  v45 = 0;
  if (a15)
  {
    *a15 = @"pair-ec";
  }

  v50 = v94;
LABEL_78:

  return v45;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(IDSMPPublicDeviceIdentityContainer *)self legacyPublicIdentity];
  v7 = [v6 dataRepresentationWithError:a3];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"kLegacyPublicIdentityKey"];
    v8 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
    if (v8)
    {
      v9 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];

      if (v9)
      {
        v10 = [v8 identityData];
        v11 = [v8 prekeyData];
        v12 = v11;
        if (!v10 || !v11)
        {
          v17 = +[IDSFoundationLog accountIdentity];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E11C60();
          }

          v15 = 0;
          goto LABEL_17;
        }

        [v5 setObject:v10 forKeyedSubscript:@"kNGMPublicDeviceIdentityDataKey"];
        [v5 setObject:v12 forKeyedSubscript:@"kNGMPublicDevicePrekeyDataKey"];
        v13 = [(IDSMPPublicDeviceIdentityContainer *)self ngmVersion];
        [v5 setObject:v13 forKeyedSubscript:@"kNGMVersion"];
      }
    }

    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:a3];
    v10 = v14;
    if (v14)
    {
      v10 = v14;
      v15 = v10;
    }

    else
    {
      v16 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        if (a3)
        {
          v19 = *a3;
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
        v25 = self;
        _os_log_fault_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_FAULT, "Failed to create plist - failed to serialize IDSMPFullDeviceIdentityContainer {error: %{public}@, dict: %{private}@, container: %{private}@}", &v20, 0x20u);
      }

      v15 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v8 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E10D70();
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 ourSigningIdentity:(id)a5 theirURI:(id)a6 theirPushToken:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v14 ngmFullDeviceIdentity];
  if (!v17)
  {
    v19 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11DC4();
    }

    goto LABEL_18;
  }

  v18 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  v19 = v18;
  if (!v18)
  {
    v21 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11D84();
    }

    goto LABEL_17;
  }

  if (!v12 || !v13 || !v15 || !v16)
  {
    v21 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11CD0();
    }

    goto LABEL_17;
  }

  if (([v18 markForStateResetWithOurURI:v12 ourPushToken:v13 ourSigningIdentity:v17 theirURI:v15 theirPushToken:v16]& 1) == 0)
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

- (BOOL)isValidNGMSignature:(id)a3 forMessage:(id)a4 forType:(int64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(IDSMPPublicDeviceIdentityContainer *)self ngmPublicDeviceIdentity];
  LOBYTE(a6) = [v12 isValidSignature:v11 forMessage:v10 forType:a5 error:a6];

  return a6;
}

@end