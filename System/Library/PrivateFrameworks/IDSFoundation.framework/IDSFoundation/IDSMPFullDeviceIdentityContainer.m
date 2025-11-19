@interface IDSMPFullDeviceIdentityContainer
+ (id)_identityWithLegacyFullIdentity:(id)a3 ngmFullDeviceIdentity:(id)a4 ngmVersion:(id)a5 legacyFullIdentitySerializedData:(id)a6 queue:(id)a7 error:(id *)a8;
+ (id)identityWithDataRepresentation:(id)a3 queue:(id)a4 error:(id *)a5;
- (BOOL)hasLegacyIdentity;
- (BOOL)hasNGMIdentity;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldRollNGMEncryptionIdentity;
- (BOOL)updateNGMIdentityWithRegisteredTicket:(id)a3 error:(id *)a4;
- (IDSMPFullDeviceIdentityContainer)initWithFullLegacyIdentity:(id)a3 ngmFullDeviceidentity:(id)a4 ngmVersion:(id)a5 legacyFullIdentitySerializedData:(id)a6 queue:(id)a7;
- (id)_legacyUnsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5;
- (id)_ngmSynchronouslyUnsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5;
- (id)_ngmUnsealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 signedByPublicIdentity:(id)a11;
- (id)_ngmValidateEncryptingAndSigningIdentity:(id)a3 forMessage:(id)a4;
- (id)_paddyUnsealMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByPublicIdentity:(id)a8;
- (id)batchSignWithNGMIdentity:(id)a3 forType:(int64_t)a4 error:(id *)a5;
- (id)dataRepresentationWithError:(id *)a3;
- (id)debugDescription;
- (id)description;
- (id)ngmKeyRollingTicketWithError:(id *)a3;
- (id)publicIdentityWithError:(id *)a3;
- (id)signDataWithNGMIdentity:(id)a3 forType:(int64_t)a4 error:(id *)a5;
- (id)unsealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 signedByPublicIdentity:(id)a11 usingIdentityWithIdentifier:(id)a12;
- (id)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 usingIdentityWithIdentifier:(id)a5 error:(id *)a6;
- (unint64_t)hash;
- (void)accessNGMIdentityOnQueue:(id)a3;
- (void)eraseNGMIdentityFromKeychain;
@end

@implementation IDSMPFullDeviceIdentityContainer

- (void)accessNGMIdentityOnQueue:(id)a3
{
  v4 = a3;
  v5 = [(IDSMPFullDeviceIdentityContainer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7B19E78;
  v7[3] = &unk_1E77DD0F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performSyncBlock:v7];
}

+ (id)identityWithDataRepresentation:(id)a3 queue:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:a5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      if (a5)
      {
        v29 = *a5;
      }

      else
      {
        v29 = 0;
      }

      *buf = 138543875;
      v43 = v29;
      v44 = 2113;
      v45 = v7;
      v46 = 2113;
      v47 = v9;
      _os_log_fault_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_FAULT, "Failed to deserialize plist - failed to create IDSMPFullDeviceIdentityContainer from data {error: %{public}@, dataRepresentation: %{private}@, dict: %{private}@}", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v10 = [v9 objectForKeyedSubscript:@"kLegacyFullIdentityKey"];
  if (v10)
  {
    v11 = [IDSMPFullLegacyIdentity identityWithData:v10 error:a5];
    if (!v11)
    {
      v12 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (a5)
        {
          v33 = *a5;
        }

        else
        {
          v33 = 0;
        }

        *buf = 138543875;
        v43 = v33;
        v44 = 2113;
        v45 = v10;
        v46 = 2113;
        v47 = v7;
        _os_log_error_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize IDSMPFullLegacyIdentity -- failed to create IDSMPFullDeviceIdentityContainer from data {error: %{public}@, legacyData: %{private}@, dataRepresentation: %{private}@}", buf, 0x20u);
      }

      v20 = 0;
      goto LABEL_44;
    }

    v12 = [v9 objectForKeyedSubscript:@"kNGMFullDeviceIdentity"];
    v13 = [v9 objectForKeyedSubscript:@"kNGMVersion"];
    v14 = v13;
    v36 = v8;
    if ((!v12 || v13) && (!v13 || v12))
    {
      if (v12)
      {
        v23 = v13;
        v24 = objc_autoreleasePoolPush();
        v37 = 0;
        v25 = [IDSNGMFullDeviceIdentity identityWithDataRepresentation:v12 error:&v37];
        v26 = v37;
        objc_autoreleasePoolPop(v24);
        if (a5 && v26)
        {
          v27 = v26;
          *a5 = v26;
        }

        v14 = v23;
        if (!v25)
        {
          v19 = +[IDSFoundationLog accountIdentity];
          v17 = v26;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if (a5)
            {
              v34 = *a5;
            }

            else
            {
              v34 = 0;
            }

            *buf = 138543875;
            v43 = v34;
            v44 = 2113;
            v45 = v12;
            v46 = 2113;
            v47 = v9;
            _os_log_error_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_ERROR, "Failed to create IDSNGMFullDeviceIdentity from dataRepresentation -- Failed to create IDSMPFullDeviceIdentityContainer {error: %{public}@, ngmData: %{private}@, dict: %{private}@}", buf, 0x20u);
          }

          v20 = 0;
          goto LABEL_42;
        }

        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v35 = v28;
      v30 = [IDSMPFullDeviceIdentityContainer _identityWithLegacyFullIdentity:"_identityWithLegacyFullIdentity:ngmFullDeviceIdentity:ngmVersion:legacyFullIdentitySerializedData:queue:error:" ngmFullDeviceIdentity:v11 ngmVersion:? legacyFullIdentitySerializedData:? queue:? error:?];
      v19 = v30;
      if (v30)
      {
        v19 = v30;
        v20 = v19;
      }

      else
      {
        v31 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E10B4C();
        }

        v20 = 0;
      }

      v17 = v35;
    }

    else
    {
      v15 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138478339;
        v43 = v9;
        v44 = 2114;
        v45 = v14;
        v46 = 2113;
        v47 = v12;
        _os_log_fault_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_FAULT, "Corrupt IDSMPFullDeviceIdentityContainer dataRepresentation, mismatch nullability for kNGMVersion an dkNGMFullDeviceIdentity - Failed to create IDSMPFullDeviceIdentityContainer {dict: %{private}@, ngmVersion: %{public}@, ngmData: %{private}@}", buf, 0x20u);
      }

      if (!a5)
      {
        v20 = 0;
LABEL_43:

        v8 = v36;
LABEL_44:

        goto LABEL_45;
      }

      v16 = @"NO";
      if (!v12)
      {
        v16 = @"YES";
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Corrupt IDSMPFullDeviceIdentityContainer mismatch nullability for kNGMVersion an dkNGMFullDeviceIdentity {ngmVersion: %@, ngmData==nil: %@}", v14, v16];
      v18 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A278];
      v39 = v17;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v18 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v19];
      *a5 = v20 = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  v21 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E10BD4();
  }

  if (!a5)
  {
LABEL_15:
    v20 = 0;
    goto LABEL_46;
  }

  v22 = MEMORY[0x1E696ABC0];
  v40 = *MEMORY[0x1E696A278];
  v41 = @"IDSMPFullDeviceIdentityContainer dataRepresentation missing legacyData}";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  [v22 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v11];
  *a5 = v20 = 0;
LABEL_45:

LABEL_46:

  return v20;
}

+ (id)_identityWithLegacyFullIdentity:(id)a3 ngmFullDeviceIdentity:(id)a4 ngmVersion:(id)a5 legacyFullIdentitySerializedData:(id)a6 queue:(id)a7 error:(id *)a8
{
  v25[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    if (!v15 || v16)
    {
      if (v15 || !v16)
      {
        goto LABEL_13;
      }

      v19 = @"Creating a IDSMPFullDeviceIdentityContainer with a non-nil ngmVersion requires a non-nill IDSNGMFullDeviceIdentity";
    }

    else
    {
      v19 = @"Creating a IDSMPFullDeviceIdentityContainer with a non-nil IDSNGMFullDeviceIdentity requires a non-nil ngmVersion";
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:v19];
LABEL_13:
    a8 = [[a1 alloc] initWithFullLegacyIdentity:v14 ngmFullDeviceidentity:v15 ngmVersion:v16 legacyFullIdentitySerializedData:v17 queue:v18];
    goto LABEL_14;
  }

  v20 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E10C48();
  }

  if (a8)
  {
    v21 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"Failed to create IDSMPFullDeviceIdentityContainer becuase we are missing the legacyFullIdentity";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *a8 = [v21 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v22];

    a8 = 0;
  }

LABEL_14:

  return a8;
}

- (IDSMPFullDeviceIdentityContainer)initWithFullLegacyIdentity:(id)a3 ngmFullDeviceidentity:(id)a4 ngmVersion:(id)a5 legacyFullIdentitySerializedData:(id)a6 queue:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IDSMPFullDeviceIdentityContainer;
  v17 = [(IDSMPFullDeviceIdentityContainer *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_legacyFullIdentity, a3);
    objc_storeStrong(&v18->_ngmFullDeviceIdentity, a4);
    objc_storeStrong(&v18->_ngmVersion, a5);
    objc_storeStrong(&v18->_cachedLegacySerializedData, a6);
    objc_storeStrong(&v18->_queue, a7);
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
    if (v6 && (v7 = v6, [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = [v5 ngmVersion];
      if (!v9 || (v10 = v9, [v5 ngmFullDeviceIdentity], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
      {
        v18 = 0;
        goto LABEL_13;
      }

      v12 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
      v13 = [v5 legacyFullIdentity];
      if ([v12 isEqual:v13])
      {
        v14 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
        v15 = [v5 ngmVersion];
        if ([v14 isEqual:v15])
        {
          v16 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
          v17 = [v5 ngmFullDeviceIdentity];
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
      v12 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
      v13 = [v5 legacyFullIdentity];
      v18 = [v12 isEqual:v13];
    }

LABEL_13:
    goto LABEL_14;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (unint64_t)hash
{
  v3 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v4 = [v3 hash];
  v5 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
  v6 = [v5 hash];
  v7 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v8 = v4 ^ v6;
  v9 = [v7 hash] ^ 0x11;

  return v8 ^ v9;
}

- (id)publicIdentityWithError:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1A7B1AD64;
  v25 = sub_1A7B1AD74;
  v26 = 0;
  v5 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [v5 publicIdentityWithError:&obj];
  objc_storeStrong(v6, obj);

  if (v7)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1A7B1AD64;
    v32 = sub_1A7B1AD74;
    v33 = 0;
    v8 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];

    if (v8)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A7B1AD7C;
      v19[3] = &unk_1E77DD118;
      v19[4] = &v28;
      v19[5] = &v21;
      [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v19];
      v9 = v29[5];
      if (!v9)
      {
        v10 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = v22[5];
          v12 = [(IDSMPFullDeviceIdentityContainer *)self debugDescription];
          sub_1A7E10CC0(v11, v12, v27);
        }

        v13 = 0;
        if (a3)
        {
          *a3 = v22[5];
        }

        goto LABEL_14;
      }
    }

    else
    {
      v9 = v29[5];
    }

    v17 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
    v13 = [IDSMPPublicDeviceIdentityContainer identityWithLegacyPublicIdentity:v7 ngmPublicDeviceIdentity:v9 ngmVersion:v17 error:a3];

LABEL_14:
    _Block_object_dispose(&v28, 8);

    goto LABEL_15;
  }

  v14 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = v22[5];
    v16 = [(IDSMPFullDeviceIdentityContainer *)self debugDescription];
    sub_1A7E10D18(v15, v16, &v28);
  }

  v13 = 0;
  if (a3)
  {
    *a3 = v22[5];
  }

LABEL_15:

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedLegacySerializedData = self->_cachedLegacySerializedData;
  if (cachedLegacySerializedData)
  {
    v7 = cachedLegacySerializedData;
  }

  else
  {
    v8 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
    v7 = [v8 dataRepresentationWithError:a3];

    objc_storeStrong(&self->_cachedLegacySerializedData, v7);
    if (!v7)
    {
      v14 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E10D70();
      }

      v7 = 0;
      v15 = 0;
      goto LABEL_20;
    }
  }

  [v5 setObject:v7 forKeyedSubscript:@"kLegacyFullIdentityKey"];
  v9 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];

  if (!v10)
  {
    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = sub_1A7B1AD64;
  v34 = sub_1A7B1AD74;
  v35 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1A7B1AD64;
  v26 = sub_1A7B1AD74;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A7B1B22C;
  v21[3] = &unk_1E77DD118;
  v21[4] = buf;
  v21[5] = &v22;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v21];
  if (a3)
  {
    v11 = v23[5];
    if (v11)
    {
      *a3 = v11;
    }
  }

  v12 = *(*&buf[8] + 40);
  if (v12)
  {
    [v5 setObject:*(*&buf[8] + 40) forKeyedSubscript:@"kNGMFullDeviceIdentity"];
    v13 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
    [v5 setObject:v13 forKeyedSubscript:@"kNGMVersion"];
  }

  else
  {
    v13 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v20 = *a3;
      }

      else
      {
        v20 = 0;
      }

      *v28 = 138543619;
      v29 = v20;
      v30 = 2113;
      v31 = self;
      _os_log_error_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_ERROR, "Failed to serialize - failed to serialize IDSMPFullDeviceIdentityContainer {error: %{public}@, container: %{private}@}", v28, 0x16u);
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  if (v12)
  {
LABEL_16:
    v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:a3];
    v14 = v16;
    if (v16)
    {
      v14 = v16;
      v15 = v14;
    }

    else
    {
      v17 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        if (a3)
        {
          v19 = *a3;
        }

        else
        {
          v19 = 0;
        }

        *buf = 138543875;
        *&buf[4] = v19;
        *&buf[12] = 2113;
        *&buf[14] = v5;
        *&buf[22] = 2113;
        v33 = self;
        _os_log_fault_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_FAULT, "Failed to create plist - failed to serialize IDSMPFullDeviceIdentityContainer {error: %{public}@, dict: %{private}@, container: %{private}@}", buf, 0x20u);
      }

      v15 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (id)unsealMessage:(id)a3 signedByPublicIdentity:(id)a4 usingIdentityWithIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A7E10DF8();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E10E6C();
LABEL_3:
  if ([v12 isEqualToString:@"pair"])
  {
    v13 = [(IDSMPFullDeviceIdentityContainer *)self _legacyUnsealMessage:v10 signedByPublicIdentity:v11 error:a6];
LABEL_7:
    v14 = v13;
    goto LABEL_11;
  }

  if ([v12 isEqualToString:@"pair-ec"])
  {
    v13 = [(IDSMPFullDeviceIdentityContainer *)self _ngmSynchronouslyUnsealMessage:v10 signedByPublicIdentity:v11 error:a6];
    goto LABEL_7;
  }

  v15 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E10EE0(self);
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)unsealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 signedByPublicIdentity:(id)a11 usingIdentityWithIdentifier:(id)a12
{
  v46[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v43 = a4;
  v42 = a6;
  v41 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  if (v21)
  {
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A7E10F6C();
    if (v20)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E10FE0();
LABEL_3:
  v22 = v16;
  if (![v21 isEqualToString:@"pair"])
  {
    v27 = v42;
    if (([v21 isEqualToString:@"pair-ec"] & 1) != 0 || objc_msgSend(v21, "isEqualToString:", @"pair-tetra"))
    {
      v28 = v16;
      v29 = v43;
      v30 = v41;
      v31 = [(IDSMPFullDeviceIdentityContainer *)self _ngmUnsealMessage:v28 authenticatedData:v43 messageType:a5 guid:v42 sendingURI:v41 sendingPushToken:v17 receivingURI:v18 receivingPushToken:v19 signedByPublicIdentity:v20];
    }

    else
    {
      v29 = v43;
      v30 = v41;
      if (![v21 isEqualToString:@"paddy"])
      {
        v34 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_1A7E10EE0(self);
        }

        v35 = objc_alloc_init(MEMORY[0x1E69956F8]);
        v36 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E696A278];
        v46[0] = @"Called unseal without an identifier";
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
        v38 = [v36 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v37];

        [v35 failWithError:v38];
        v32 = [v35 promise];

        goto LABEL_12;
      }

      v31 = [(IDSMPFullDeviceIdentityContainer *)self _paddyUnsealMessage:v22 sendingURI:v41 sendingPushToken:v17 receivingURI:v18 receivingPushToken:v19 signedByPublicIdentity:v20];
    }

    v32 = v31;
    goto LABEL_13;
  }

  v23 = objc_alloc_init(MEMORY[0x1E69956F8]);
  v44 = 0;
  v24 = [(IDSMPFullDeviceIdentityContainer *)self _legacyUnsealMessage:v16 signedByPublicIdentity:v20 error:&v44];
  v25 = v44;
  if (v24)
  {
    v26 = [[IDSMPDecryptionResult alloc] initWithData:v24 encryptedAttributes:0 withCommitState:0 additionalDecryptionResult:0];
    [v23 fulfillWithValue:v26];
  }

  else
  {
    [v23 failWithError:v25];
  }

  v32 = [v23 promise];

LABEL_12:
  v27 = v42;
  v29 = v43;
  v30 = v41;
LABEL_13:

  return v32;
}

- (id)_ngmValidateEncryptingAndSigningIdentity:(id)a3 forMessage:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0x1E77DB000uLL;
  v9 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
    v11 = [v6 ngmPublicDeviceIdentity];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
    *buf = 138478339;
    v36 = v10;
    v37 = 2113;
    v38 = v11;
    v39 = 2113;
    v40 = v12;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Unsealing message using ngm identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  v13 = [v6 ngmPublicDeviceIdentity];
  if (v13)
  {
    v14 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
    if (v14)
    {
      v15 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
      if (v15)
      {
        v16 = v15;
        v17 = [v6 ngmVersion];
        if (v17)
        {
          v18 = v17;
          v19 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
          v20 = [v6 ngmVersion];
          if ([v19 isEqualToNumber:v20])
          {

LABEL_15:
            v21 = 0;
            goto LABEL_24;
          }

          v23 = [v6 ngmVersion];
          v34 = +[IDSNGMProtocolVersion isVersionSupported:](IDSNGMProtocolVersion, "isVersionSupported:", [v23 intValue]);

          v8 = 0x1E77DB000;
          if (v34)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v24 = MEMORY[0x1E696AEC0];
      v25 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
      v26 = [v6 ngmVersion];
      v22 = [v24 stringWithFormat:@"Unable to ngm unseal message due to mismatching versions {encryptingIdentity.ngmVersion: %@, signingIdentity.ngmVersion: %@}", v25, v26];

      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v27 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696A278]];
      v28 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];

      if (v28)
      {
        v29 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
        [v27 setObject:v29 forKeyedSubscript:@"encryptingIdentityNGMVersion"];
      }

      v30 = [v6 ngmVersion];

      if (v30)
      {
        v31 = [v6 ngmVersion];
        [v27 setObject:v31 forKeyedSubscript:@"signingIdentityNGMVersion"];
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:14 userInfo:v27];
      v32 = [*(v8 + 2592) accountIdentity];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E11054();
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:13 userInfo:0];
      v22 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E11104();
      }
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:12 userInfo:0];
    v14 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1119C();
    }
  }

LABEL_24:

  return v21;
}

- (id)_ngmSynchronouslyUnsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(IDSMPFullDeviceIdentityContainer *)self _ngmValidateEncryptingAndSigningIdentity:v9 forMessage:v8];
  v11 = v10;
  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_1A7B1AD64;
    v33 = sub_1A7B1AD74;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_1A7B1AD64;
    v27 = sub_1A7B1AD74;
    v28 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A7B1BE84;
    v18[3] = &unk_1E77DD140;
    v21 = &v23;
    v19 = v8;
    v20 = v9;
    v22 = &v29;
    [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v18];
    v14 = v24[5];
    if (!v14)
    {
      v15 = v30[5];
      if (v15)
      {
        v35 = *MEMORY[0x1E696AA08];
        v36[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      }

      else
      {
        v16 = 0;
      }

      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:15 userInfo:v16];

      v14 = v24[5];
    }

    v13 = v14;

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  return v13;
}

- (id)_ngmUnsealMessage:(id)a3 authenticatedData:(id)a4 messageType:(int64_t)a5 guid:(id)a6 sendingURI:(id)a7 sendingPushToken:(id)a8 receivingURI:(id)a9 receivingPushToken:(id)a10 signedByPublicIdentity:(id)a11
{
  v72 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v47 = a4;
  v46 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v45 = self;
  v48 = v16;
  v22 = [(IDSMPFullDeviceIdentityContainer *)self _ngmValidateEncryptingAndSigningIdentity:v21 forMessage:v16];
  v23 = objc_alloc_init(MEMORY[0x1E69956F8]);
  v24 = v23;
  if (v22)
  {
    [v23 failWithError:v22];
    v26 = v46;
    v25 = v47;
LABEL_21:
    v31 = [v24 promise];
    goto LABEL_22;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B1C33C;
  aBlock[3] = &unk_1E77DD168;
  v27 = v23;
  v61 = v27;
  v62 = self;
  v28 = v17;
  v29 = v21;
  v63 = v29;
  v30 = _Block_copy(aBlock);
  v31 = v18;
  if (v28)
  {
    v32 = v18 == 0;
  }

  else
  {
    v32 = 1;
  }

  v34 = v32 || v19 == 0 || v20 == 0;
  v35 = !v34;
  v43 = v35;
  v42 = v30;
  if (v34)
  {
    v38 = +[IDSFoundationLog accountIdentity];
    v17 = v28;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v65 = v28;
      v66 = 2112;
      v67 = v18;
      v68 = 2112;
      v69 = v19;
      v70 = 2112;
      v71 = v20;
      _os_log_error_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_ERROR, "Failed to unseal message - one or more required fields is nil {sendingURI: %@ sendingPushToken: %@ receivingURI: %@ receivingPushToken: %@}", buf, 0x2Au);
    }

    v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:20 userInfo:0];
    [v27 failWithError:v39];

    v31 = [v27 promise];
    v26 = v46;
    v25 = v47;
    v37 = v42;
  }

  else
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1A7B1C5E8;
    v49[3] = &unk_1E77DD190;
    v50 = v48;
    v36 = v28;
    v41 = v28;
    v25 = v47;
    v51 = v47;
    v59 = a5;
    v26 = v46;
    v52 = v46;
    v53 = v36;
    v18 = v31;
    v54 = v31;
    v55 = v19;
    v56 = v20;
    v57 = v29;
    v58 = v42;
    [(IDSMPFullDeviceIdentityContainer *)v45 accessNGMIdentityOnQueue:v49];

    v17 = v41;
    v37 = v42;
  }

  if (v43)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v31;
}

- (id)_legacyUnsealMessage:(id)a3 signedByPublicIdentity:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
    v12 = [v9 legacyPublicIdentity];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    *buf = 138478339;
    v30 = v11;
    v31 = 2113;
    v32 = v12;
    v33 = 2113;
    v34 = v13;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Unsealing message using legacy identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  v14 = [v9 legacyPublicIdentity];
  if (v14)
  {
    v15 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
    v16 = v15;
    if (v15)
    {
      v26 = 0;
      v17 = [v15 verifyAndExposeData:v8 withSigner:v14 error:&v26];
      v18 = v26;
      if (!v17)
      {
        v19 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = [(IDSMPFullDeviceIdentityContainer *)self debugDescription];
          v25 = [v9 debugDescription];
          *buf = 138543875;
          v30 = v18;
          v31 = 2113;
          v32 = v24;
          v33 = 2113;
          v34 = v25;
          _os_log_error_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_ERROR, "MessageProtection failed to decrypt with legacy identities - fail to unseal message {error: %{public}@, encryptingIdentity: %{private}@, signingIdentity:%{private}@}", buf, 0x20u);
        }

        if (a5)
        {
          if (v18)
          {
            v27 = *MEMORY[0x1E696AA08];
            v28 = v18;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          }

          else
          {
            v20 = 0;
          }

          *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:11 userInfo:v20];
        }
      }
    }

    else
    {
      v22 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E112E8();
      }

      if (a5)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:10 userInfo:0];
        *a5 = v17 = 0;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v21 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E11380();
    }

    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:9 userInfo:0];
      *a5 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)_paddyUnsealMessage:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 signedByPublicIdentity:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(IDSMPFullDeviceIdentityContainer *)self _ngmValidateEncryptingAndSigningIdentity:v19 forMessage:v14];
  v21 = objc_alloc_init(MEMORY[0x1E69956F8]);
  v22 = v21;
  if (v20)
  {
    [v21 failWithError:v20];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A7B1CCCC;
    aBlock[3] = &unk_1E77DD1B8;
    aBlock[4] = self;
    v33 = v14;
    v23 = v18;
    v24 = v17;
    v25 = v16;
    v26 = v15;
    v27 = v19;
    v46 = v27;
    v47 = v22;
    v28 = _Block_copy(aBlock);
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = sub_1A7B1CE4C;
    v37 = &unk_1E77DD1E0;
    v38 = v33;
    v39 = v26;
    v40 = v25;
    v41 = v24;
    v42 = v23;
    v29 = v27;
    v15 = v26;
    v16 = v25;
    v17 = v24;
    v18 = v23;
    v14 = v33;
    v43 = v29;
    v44 = v28;
    v30 = v28;
    [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:&v34];
  }

  v31 = [v22 promise];

  return v31;
}

- (void)eraseNGMIdentityFromKeychain
{
  v3 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];

  if (v3)
  {

    [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:&unk_1F1AAA140];
  }
}

- (BOOL)shouldRollNGMEncryptionIdentity
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7B1D108;
  v4[3] = &unk_1E77DD228;
  v4[4] = &v5;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)hasNGMIdentity
{
  v2 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasLegacyIdentity
{
  v2 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v3 = v2 != 0;

  return v3;
}

- (id)ngmKeyRollingTicketWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A7B1AD64;
  v18 = sub_1A7B1AD74;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A7B1AD64;
  v12 = sub_1A7B1AD74;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7B1D314;
  v7[3] = &unk_1E77DD118;
  v7[4] = &v14;
  v7[5] = &v8;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v7];
  if (a3)
  {
    v4 = v9[5];
    if (v4)
    {
      *a3 = v4;
    }
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

- (BOOL)updateNGMIdentityWithRegisteredTicket:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A7B1AD64;
  v19 = sub_1A7B1AD74;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A7B1D4F4;
  v11[3] = &unk_1E77DD250;
  v13 = &v21;
  v7 = v6;
  v12 = v7;
  v14 = &v15;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v11];
  if (a4)
  {
    v8 = v16[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)signDataWithNGMIdentity:(id)a3 forType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1A7B1AD64;
  v28 = sub_1A7B1AD74;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1A7B1AD64;
  v22 = sub_1A7B1AD74;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7B1D6FC;
  v13[3] = &unk_1E77DD278;
  v15 = &v18;
  v9 = v8;
  v16 = &v24;
  v17 = a4;
  v14 = v9;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v13];
  if (a5)
  {
    v10 = v25[5];
    if (v10)
    {
      *a5 = v10;
    }
  }

  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)batchSignWithNGMIdentity:(id)a3 forType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1A7B1AD64;
  v28 = sub_1A7B1AD74;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1A7B1AD64;
  v22 = sub_1A7B1AD74;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7B1D92C;
  v13[3] = &unk_1E77DD278;
  v15 = &v18;
  v9 = v8;
  v16 = &v24;
  v17 = a4;
  v14 = v9;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v13];
  if (a5)
  {
    v10 = v25[5];
    if (v10)
    {
      *a5 = v10;
    }
  }

  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v6 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v7 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
  v8 = [v3 stringWithFormat:@"<%@: %p legacyFullIdentity: %@, ngmFullDeviceIdentity: %@, ngmVersion: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v6 = [v5 debugDescription];
  v7 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v8 = [v7 debugDescription];
  v9 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
  v10 = [v3 stringWithFormat:@"<%@: %p legacyFullIdentity: %@, ngmFullDeviceIdentity: %@, ngmVersion: %@>", v4, self, v6, v8, v9];

  return v10;
}

@end