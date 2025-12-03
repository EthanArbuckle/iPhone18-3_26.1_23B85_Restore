@interface IDSMPFullDeviceIdentityContainer
+ (id)_identityWithLegacyFullIdentity:(id)identity ngmFullDeviceIdentity:(id)deviceIdentity ngmVersion:(id)version legacyFullIdentitySerializedData:(id)data queue:(id)queue error:(id *)error;
+ (id)identityWithDataRepresentation:(id)representation queue:(id)queue error:(id *)error;
- (BOOL)hasLegacyIdentity;
- (BOOL)hasNGMIdentity;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldRollNGMEncryptionIdentity;
- (BOOL)updateNGMIdentityWithRegisteredTicket:(id)ticket error:(id *)error;
- (IDSMPFullDeviceIdentityContainer)initWithFullLegacyIdentity:(id)identity ngmFullDeviceidentity:(id)deviceidentity ngmVersion:(id)version legacyFullIdentitySerializedData:(id)data queue:(id)queue;
- (id)_legacyUnsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error;
- (id)_ngmSynchronouslyUnsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error;
- (id)_ngmUnsealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1;
- (id)_ngmValidateEncryptingAndSigningIdentity:(id)identity forMessage:(id)message;
- (id)_paddyUnsealMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity;
- (id)batchSignWithNGMIdentity:(id)identity forType:(int64_t)type error:(id *)error;
- (id)dataRepresentationWithError:(id *)error;
- (id)debugDescription;
- (id)description;
- (id)ngmKeyRollingTicketWithError:(id *)error;
- (id)publicIdentityWithError:(id *)error;
- (id)signDataWithNGMIdentity:(id)identity forType:(int64_t)type error:(id *)error;
- (id)unsealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 usingIdentityWithIdentifier:(id)self2;
- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity usingIdentityWithIdentifier:(id)identifier error:(id *)error;
- (unint64_t)hash;
- (void)accessNGMIdentityOnQueue:(id)queue;
- (void)eraseNGMIdentityFromKeychain;
@end

@implementation IDSMPFullDeviceIdentityContainer

- (void)accessNGMIdentityOnQueue:(id)queue
{
  queueCopy = queue;
  queue = [(IDSMPFullDeviceIdentityContainer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7B19E78;
  v7[3] = &unk_1E77DD0F0;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  [queue performSyncBlock:v7];
}

+ (id)identityWithDataRepresentation:(id)representation queue:(id)queue error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  queueCopy = queue;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:representationCopy options:0 format:0 error:error];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      if (error)
      {
        v29 = *error;
      }

      else
      {
        v29 = 0;
      }

      *buf = 138543875;
      v43 = v29;
      v44 = 2113;
      v45 = representationCopy;
      v46 = 2113;
      v47 = v9;
      _os_log_fault_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_FAULT, "Failed to deserialize plist - failed to create IDSMPFullDeviceIdentityContainer from data {error: %{public}@, dataRepresentation: %{private}@, dict: %{private}@}", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v10 = [v9 objectForKeyedSubscript:@"kLegacyFullIdentityKey"];
  if (v10)
  {
    v11 = [IDSMPFullLegacyIdentity identityWithData:v10 error:error];
    if (!v11)
    {
      v12 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v33 = *error;
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
        v47 = representationCopy;
        _os_log_error_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize IDSMPFullLegacyIdentity -- failed to create IDSMPFullDeviceIdentityContainer from data {error: %{public}@, legacyData: %{private}@, dataRepresentation: %{private}@}", buf, 0x20u);
      }

      v20 = 0;
      goto LABEL_44;
    }

    v12 = [v9 objectForKeyedSubscript:@"kNGMFullDeviceIdentity"];
    v13 = [v9 objectForKeyedSubscript:@"kNGMVersion"];
    v14 = v13;
    v36 = queueCopy;
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
        if (error && v26)
        {
          v27 = v26;
          *error = v26;
        }

        v14 = v23;
        if (!v25)
        {
          v19 = +[IDSFoundationLog accountIdentity];
          v17 = v26;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if (error)
            {
              v34 = *error;
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

      if (!error)
      {
        v20 = 0;
LABEL_43:

        queueCopy = v36;
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
      *error = v20 = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  v21 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E10BD4();
  }

  if (!error)
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
  *error = v20 = 0;
LABEL_45:

LABEL_46:

  return v20;
}

+ (id)_identityWithLegacyFullIdentity:(id)identity ngmFullDeviceIdentity:(id)deviceIdentity ngmVersion:(id)version legacyFullIdentitySerializedData:(id)data queue:(id)queue error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  deviceIdentityCopy = deviceIdentity;
  versionCopy = version;
  dataCopy = data;
  queueCopy = queue;
  if (identityCopy)
  {
    if (!deviceIdentityCopy || versionCopy)
    {
      if (deviceIdentityCopy || !versionCopy)
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
    error = [[self alloc] initWithFullLegacyIdentity:identityCopy ngmFullDeviceidentity:deviceIdentityCopy ngmVersion:versionCopy legacyFullIdentitySerializedData:dataCopy queue:queueCopy];
    goto LABEL_14;
  }

  v20 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E10C48();
  }

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"Failed to create IDSMPFullDeviceIdentityContainer becuase we are missing the legacyFullIdentity";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = [v21 errorWithDomain:@"IDSMPIdentityErrorDomain" code:-1000 userInfo:v22];

    error = 0;
  }

LABEL_14:

  return error;
}

- (IDSMPFullDeviceIdentityContainer)initWithFullLegacyIdentity:(id)identity ngmFullDeviceidentity:(id)deviceidentity ngmVersion:(id)version legacyFullIdentitySerializedData:(id)data queue:(id)queue
{
  identityCopy = identity;
  deviceidentityCopy = deviceidentity;
  versionCopy = version;
  dataCopy = data;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = IDSMPFullDeviceIdentityContainer;
  v17 = [(IDSMPFullDeviceIdentityContainer *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_legacyFullIdentity, identity);
    objc_storeStrong(&v18->_ngmFullDeviceIdentity, deviceidentity);
    objc_storeStrong(&v18->_ngmVersion, version);
    objc_storeStrong(&v18->_cachedLegacySerializedData, data);
    objc_storeStrong(&v18->_queue, queue);
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
    if (ngmVersion && (v7 = ngmVersion, [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      ngmVersion2 = [v5 ngmVersion];
      if (!ngmVersion2 || (v10 = ngmVersion2, [v5 ngmFullDeviceIdentity], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
      {
        v18 = 0;
        goto LABEL_13;
      }

      legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
      legacyFullIdentity2 = [v5 legacyFullIdentity];
      if ([legacyFullIdentity isEqual:legacyFullIdentity2])
      {
        ngmVersion3 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
        ngmVersion4 = [v5 ngmVersion];
        if ([ngmVersion3 isEqual:ngmVersion4])
        {
          ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
          ngmFullDeviceIdentity2 = [v5 ngmFullDeviceIdentity];
          v18 = [ngmFullDeviceIdentity isEqual:ngmFullDeviceIdentity2];
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
      legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
      legacyFullIdentity2 = [v5 legacyFullIdentity];
      v18 = [legacyFullIdentity isEqual:legacyFullIdentity2];
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
  legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v4 = [legacyFullIdentity hash];
  ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
  v6 = [ngmVersion hash];
  ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v8 = v4 ^ v6;
  v9 = [ngmFullDeviceIdentity hash] ^ 0x11;

  return v8 ^ v9;
}

- (id)publicIdentityWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1A7B1AD64;
  v25 = sub_1A7B1AD74;
  v26 = 0;
  legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [legacyFullIdentity publicIdentityWithError:&obj];
  objc_storeStrong(v6, obj);

  if (v7)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1A7B1AD64;
    v32 = sub_1A7B1AD74;
    v33 = 0;
    ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];

    if (ngmFullDeviceIdentity)
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
        if (error)
        {
          *error = v22[5];
        }

        goto LABEL_14;
      }
    }

    else
    {
      v9 = v29[5];
    }

    ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
    v13 = [IDSMPPublicDeviceIdentityContainer identityWithLegacyPublicIdentity:v7 ngmPublicDeviceIdentity:v9 ngmVersion:ngmVersion error:error];

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
  if (error)
  {
    *error = v22[5];
  }

LABEL_15:

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)dataRepresentationWithError:(id *)error
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
    legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
    v7 = [legacyFullIdentity dataRepresentationWithError:error];

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
  ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  if (!ngmFullDeviceIdentity)
  {
    goto LABEL_16;
  }

  ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];

  if (!ngmVersion)
  {
    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy2 = sub_1A7B1AD64;
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
  if (error)
  {
    v11 = v23[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(*&buf[8] + 40);
  if (v12)
  {
    [v5 setObject:*(*&buf[8] + 40) forKeyedSubscript:@"kNGMFullDeviceIdentity"];
    ngmVersion2 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
    [v5 setObject:ngmVersion2 forKeyedSubscript:@"kNGMVersion"];
  }

  else
  {
    ngmVersion2 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(ngmVersion2, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v20 = *error;
      }

      else
      {
        v20 = 0;
      }

      *v28 = 138543619;
      v29 = v20;
      v30 = 2113;
      selfCopy = self;
      _os_log_error_impl(&dword_1A7AD9000, ngmVersion2, OS_LOG_TYPE_ERROR, "Failed to serialize - failed to serialize IDSMPFullDeviceIdentityContainer {error: %{public}@, container: %{private}@}", v28, 0x16u);
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  if (v12)
  {
LABEL_16:
    v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:error];
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
        if (error)
        {
          v19 = *error;
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
        selfCopy2 = self;
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

- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity usingIdentityWithIdentifier:(id)identifier error:(id *)error
{
  messageCopy = message;
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
    sub_1A7E10DF8();
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E10E6C();
LABEL_3:
  if ([identifierCopy isEqualToString:@"pair"])
  {
    v13 = [(IDSMPFullDeviceIdentityContainer *)self _legacyUnsealMessage:messageCopy signedByPublicIdentity:identityCopy error:error];
LABEL_7:
    v14 = v13;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"pair-ec"])
  {
    v13 = [(IDSMPFullDeviceIdentityContainer *)self _ngmSynchronouslyUnsealMessage:messageCopy signedByPublicIdentity:identityCopy error:error];
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

- (id)unsealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 usingIdentityWithIdentifier:(id)self2
{
  v46[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
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
    sub_1A7E10F6C();
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  sub_1A7E10FE0();
LABEL_3:
  v22 = messageCopy;
  if (![identifierCopy isEqualToString:@"pair"])
  {
    v27 = guidCopy;
    if (([identifierCopy isEqualToString:@"pair-ec"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"pair-tetra"))
    {
      v28 = messageCopy;
      v29 = dataCopy;
      v30 = iCopy;
      v31 = [(IDSMPFullDeviceIdentityContainer *)self _ngmUnsealMessage:v28 authenticatedData:dataCopy messageType:type guid:guidCopy sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy signedByPublicIdentity:identityCopy];
    }

    else
    {
      v29 = dataCopy;
      v30 = iCopy;
      if (![identifierCopy isEqualToString:@"paddy"])
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
        promise = [v35 promise];

        goto LABEL_12;
      }

      v31 = [(IDSMPFullDeviceIdentityContainer *)self _paddyUnsealMessage:v22 sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy signedByPublicIdentity:identityCopy];
    }

    promise = v31;
    goto LABEL_13;
  }

  v23 = objc_alloc_init(MEMORY[0x1E69956F8]);
  v44 = 0;
  v24 = [(IDSMPFullDeviceIdentityContainer *)self _legacyUnsealMessage:messageCopy signedByPublicIdentity:identityCopy error:&v44];
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

  promise = [v23 promise];

LABEL_12:
  v27 = guidCopy;
  v29 = dataCopy;
  v30 = iCopy;
LABEL_13:

  return promise;
}

- (id)_ngmValidateEncryptingAndSigningIdentity:(id)identity forMessage:(id)message
{
  v41 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  messageCopy = message;
  v8 = 0x1E77DB000uLL;
  v9 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
    ngmPublicDeviceIdentity = [identityCopy ngmPublicDeviceIdentity];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "length")}];
    *buf = 138478339;
    v36 = ngmFullDeviceIdentity;
    v37 = 2113;
    v38 = ngmPublicDeviceIdentity;
    v39 = 2113;
    v40 = v12;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Unsealing message using ngm identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  ngmPublicDeviceIdentity2 = [identityCopy ngmPublicDeviceIdentity];
  if (ngmPublicDeviceIdentity2)
  {
    ngmFullDeviceIdentity2 = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
    if (ngmFullDeviceIdentity2)
    {
      ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
      if (ngmVersion)
      {
        v16 = ngmVersion;
        ngmVersion2 = [identityCopy ngmVersion];
        if (ngmVersion2)
        {
          v18 = ngmVersion2;
          ngmVersion3 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
          ngmVersion4 = [identityCopy ngmVersion];
          if ([ngmVersion3 isEqualToNumber:ngmVersion4])
          {

LABEL_15:
            v21 = 0;
            goto LABEL_24;
          }

          ngmVersion5 = [identityCopy ngmVersion];
          v34 = +[IDSNGMProtocolVersion isVersionSupported:](IDSNGMProtocolVersion, "isVersionSupported:", [ngmVersion5 intValue]);

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
      ngmVersion6 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
      ngmVersion7 = [identityCopy ngmVersion];
      v22 = [v24 stringWithFormat:@"Unable to ngm unseal message due to mismatching versions {encryptingIdentity.ngmVersion: %@, signingIdentity.ngmVersion: %@}", ngmVersion6, ngmVersion7];

      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v27 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696A278]];
      ngmVersion8 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];

      if (ngmVersion8)
      {
        ngmVersion9 = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
        [v27 setObject:ngmVersion9 forKeyedSubscript:@"encryptingIdentityNGMVersion"];
      }

      ngmVersion10 = [identityCopy ngmVersion];

      if (ngmVersion10)
      {
        ngmVersion11 = [identityCopy ngmVersion];
        [v27 setObject:ngmVersion11 forKeyedSubscript:@"signingIdentityNGMVersion"];
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:14 userInfo:v27];
      accountIdentity = [*(v8 + 2592) accountIdentity];
      if (os_log_type_enabled(accountIdentity, OS_LOG_TYPE_ERROR))
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
    ngmFullDeviceIdentity2 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(ngmFullDeviceIdentity2, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1119C();
    }
  }

LABEL_24:

  return v21;
}

- (id)_ngmSynchronouslyUnsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identityCopy = identity;
  v10 = [(IDSMPFullDeviceIdentityContainer *)self _ngmValidateEncryptingAndSigningIdentity:identityCopy forMessage:messageCopy];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
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
    v19 = messageCopy;
    v20 = identityCopy;
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

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:15 userInfo:v16];

      v14 = v24[5];
    }

    v13 = v14;

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  return v13;
}

- (id)_ngmUnsealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1
{
  v72 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  identityCopy = identity;
  selfCopy = self;
  v48 = messageCopy;
  v22 = [(IDSMPFullDeviceIdentityContainer *)self _ngmValidateEncryptingAndSigningIdentity:identityCopy forMessage:messageCopy];
  v23 = objc_alloc_init(MEMORY[0x1E69956F8]);
  v24 = v23;
  if (v22)
  {
    [v23 failWithError:v22];
    v26 = guidCopy;
    v25 = dataCopy;
LABEL_21:
    promise = [v24 promise];
    goto LABEL_22;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A7B1C33C;
  aBlock[3] = &unk_1E77DD168;
  v27 = v23;
  v61 = v27;
  selfCopy2 = self;
  v28 = iCopy;
  v29 = identityCopy;
  v63 = v29;
  v30 = _Block_copy(aBlock);
  promise = tokenCopy;
  if (v28)
  {
    v32 = tokenCopy == 0;
  }

  else
  {
    v32 = 1;
  }

  v34 = v32 || rICopy == 0 || pushTokenCopy == 0;
  v35 = !v34;
  v43 = v35;
  v42 = v30;
  if (v34)
  {
    v38 = +[IDSFoundationLog accountIdentity];
    iCopy = v28;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v65 = v28;
      v66 = 2112;
      v67 = tokenCopy;
      v68 = 2112;
      v69 = rICopy;
      v70 = 2112;
      v71 = pushTokenCopy;
      _os_log_error_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_ERROR, "Failed to unseal message - one or more required fields is nil {sendingURI: %@ sendingPushToken: %@ receivingURI: %@ receivingPushToken: %@}", buf, 0x2Au);
    }

    v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:20 userInfo:0];
    [v27 failWithError:v39];

    promise = [v27 promise];
    v26 = guidCopy;
    v25 = dataCopy;
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
    v25 = dataCopy;
    v51 = dataCopy;
    typeCopy = type;
    v26 = guidCopy;
    v52 = guidCopy;
    v53 = v36;
    tokenCopy = promise;
    v54 = promise;
    v55 = rICopy;
    v56 = pushTokenCopy;
    v57 = v29;
    v58 = v42;
    [(IDSMPFullDeviceIdentityContainer *)selfCopy accessNGMIdentityOnQueue:v49];

    iCopy = v41;
    v37 = v42;
  }

  if (v43)
  {
    goto LABEL_21;
  }

LABEL_22:

  return promise;
}

- (id)_legacyUnsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identityCopy = identity;
  v10 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
    legacyPublicIdentity = [identityCopy legacyPublicIdentity];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "length")}];
    *buf = 138478339;
    v30 = legacyFullIdentity;
    v31 = 2113;
    v32 = legacyPublicIdentity;
    v33 = 2113;
    v34 = v13;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Unsealing message using legacy identities {encryptingIdentity: %{private}@, signingIdentity: %{private}@, message.length: %{private}@}", buf, 0x20u);
  }

  legacyPublicIdentity2 = [identityCopy legacyPublicIdentity];
  if (legacyPublicIdentity2)
  {
    legacyFullIdentity2 = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
    v16 = legacyFullIdentity2;
    if (legacyFullIdentity2)
    {
      v26 = 0;
      v17 = [legacyFullIdentity2 verifyAndExposeData:messageCopy withSigner:legacyPublicIdentity2 error:&v26];
      v18 = v26;
      if (!v17)
      {
        v19 = +[IDSFoundationLog accountIdentity];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = [(IDSMPFullDeviceIdentityContainer *)self debugDescription];
          v25 = [identityCopy debugDescription];
          *buf = 138543875;
          v30 = v18;
          v31 = 2113;
          v32 = v24;
          v33 = 2113;
          v34 = v25;
          _os_log_error_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_ERROR, "MessageProtection failed to decrypt with legacy identities - fail to unseal message {error: %{public}@, encryptingIdentity: %{private}@, signingIdentity:%{private}@}", buf, 0x20u);
        }

        if (error)
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

          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:11 userInfo:v20];
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

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:10 userInfo:0];
        *error = v17 = 0;
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

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.IDSDecryptionErrorDomain" code:9 userInfo:0];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)_paddyUnsealMessage:(id)message sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity
{
  messageCopy = message;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  identityCopy = identity;
  v20 = [(IDSMPFullDeviceIdentityContainer *)self _ngmValidateEncryptingAndSigningIdentity:identityCopy forMessage:messageCopy];
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
    v33 = messageCopy;
    v23 = pushTokenCopy;
    v24 = rICopy;
    v25 = tokenCopy;
    v26 = iCopy;
    v27 = identityCopy;
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
    iCopy = v26;
    tokenCopy = v25;
    rICopy = v24;
    pushTokenCopy = v23;
    messageCopy = v33;
    v43 = v29;
    v44 = v28;
    v30 = v28;
    [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:&v34];
  }

  promise = [v22 promise];

  return promise;
}

- (void)eraseNGMIdentityFromKeychain
{
  ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];

  if (ngmFullDeviceIdentity)
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
  ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v3 = ngmFullDeviceIdentity != 0;

  return v3;
}

- (BOOL)hasLegacyIdentity
{
  legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v3 = legacyFullIdentity != 0;

  return v3;
}

- (id)ngmKeyRollingTicketWithError:(id *)error
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
  if (error)
  {
    v4 = v9[5];
    if (v4)
    {
      *error = v4;
    }
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

- (BOOL)updateNGMIdentityWithRegisteredTicket:(id)ticket error:(id *)error
{
  ticketCopy = ticket;
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
  v7 = ticketCopy;
  v12 = v7;
  v14 = &v15;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v11];
  if (error)
  {
    v8 = v16[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)signDataWithNGMIdentity:(id)identity forType:(int64_t)type error:(id *)error
{
  identityCopy = identity;
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
  v9 = identityCopy;
  v16 = &v24;
  typeCopy = type;
  v14 = v9;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v13];
  if (error)
  {
    v10 = v25[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)batchSignWithNGMIdentity:(id)identity forType:(int64_t)type error:(id *)error
{
  identityCopy = identity;
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
  v9 = identityCopy;
  v16 = &v24;
  typeCopy = type;
  v14 = v9;
  [(IDSMPFullDeviceIdentityContainer *)self accessNGMIdentityOnQueue:v13];
  if (error)
  {
    v10 = v25[5];
    if (v10)
    {
      *error = v10;
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
  legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
  v8 = [v3 stringWithFormat:@"<%@: %p legacyFullIdentity: %@, ngmFullDeviceIdentity: %@, ngmVersion: %@>", v4, self, legacyFullIdentity, ngmFullDeviceIdentity, ngmVersion];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  legacyFullIdentity = [(IDSMPFullDeviceIdentityContainer *)self legacyFullIdentity];
  v6 = [legacyFullIdentity debugDescription];
  ngmFullDeviceIdentity = [(IDSMPFullDeviceIdentityContainer *)self ngmFullDeviceIdentity];
  v8 = [ngmFullDeviceIdentity debugDescription];
  ngmVersion = [(IDSMPFullDeviceIdentityContainer *)self ngmVersion];
  v10 = [v3 stringWithFormat:@"<%@: %p legacyFullIdentity: %@, ngmFullDeviceIdentity: %@, ngmVersion: %@>", v4, self, v6, v8, ngmVersion];

  return v10;
}

@end