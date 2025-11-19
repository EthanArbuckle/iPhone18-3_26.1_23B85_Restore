@interface IDSEndpoint
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEndpoint:(id)a3;
- (BOOL)isEqualToEndpoint:(id)a3 withDateTolerance:(double)a4;
- (IDSEndpoint)initWithCoder:(id)a3;
- (IDSEndpoint)initWithURI:(id)a3 capabilities:(id)a4 ngmVersion:(signed __int16)a5 legacyVersion:(char)a6 KTLoggableData:(id)a7 KTDeviceSignature:(id)a8 mismatchedAccountFlag:(BOOL)a9 ktCapableFlag:(BOOL)a10 transparency:(id)a11 pushTokenObject:(id)a12 sessionToken:(id)a13 expireDate:(id)a14 refreshDate:(id)a15 anonymizedSenderID:(id)a16 verifiedBusiness:(BOOL)a17 serializedPublicMessageProtectionIdentity:(id)a18 queryTimeInterval:(double)a19 serializedNGMDeviceIdentity:(id)a20 serializedNGMDevicePrekey:(id)a21 serializedApplicationPublicKey:(id)a22 endpointURIProperties:(id)a23 familyEndpointData:(id)a24 gameCenterData:(id)a25;
- (IDSEndpoint)initWithURI:(id)a3 clientData:(id)a4 KTLoggableData:(id)a5 KTDeviceSignature:(id)a6 mismatchedAccountFlag:(BOOL)a7 ktCapableFlag:(BOOL)a8 transparency:(id)a9 pushToken:(id)a10 sessionToken:(id)a11 expireDate:(id)a12 refreshDate:(id)a13 anonymizedSenderID:(id)a14 verifiedBusiness:(BOOL)a15 serializedPublicMessageProtectionIdentity:(id)a16 queryTimeInterval:(double)a17 serializedNGMDeviceIdentity:(id)a18 serializedNGMDevicePrekey:(id)a19 serializedApplicationPublicKey:(id)a20 endpointURIProperties:(id)a21 familyEndpointData:(id)a22 gameCenterData:(id)a23;
- (IDSEndpoint)initWithURI:(id)a3 clientData:(id)a4 pushToken:(id)a5 sessionToken:(id)a6 expireDate:(id)a7 refreshDate:(id)a8;
- (IDSEndpoint)initWithURI:(id)a3 serviceIdentifier:(id)a4 clientData:(id)a5 KTLoggableData:(id)a6 KTDeviceSignature:(id)a7 mismatchedAccountFlag:(BOOL)a8 ktCapableFlag:(BOOL)a9 transparency:(id)a10 pushToken:(id)a11 sessionToken:(id)a12 expireDate:(id)a13 refreshDate:(id)a14 anonymizedSenderID:(id)a15 verifiedBusiness:(BOOL)a16 serializedPublicMessageProtectionIdentity:(id)a17 queryTimeInterval:(double)a18 serializedNGMDeviceIdentity:(id)a19 serializedNGMDevicePrekey:(id)a20 serializedApplicationPublicKey:(id)a21 endpointURIProperties:(id)a22 familyEndpointData:(id)a23 gameCenterData:(id)a24;
- (IDSMPPublicDeviceIdentityContainer)publicDeviceIdentityContainer;
- (NSString)debugDescription;
- (NSString)description;
- (__SecKey)applicationPublicDeviceIdentity;
- (id)destinationURIs;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)updateTransparency:(id)a3;
@end

@implementation IDSEndpoint

- (unint64_t)hash
{
  v3 = [(IDSEndpoint *)self pushToken];
  v4 = [v3 hash];
  v5 = [(IDSEndpoint *)self sessionToken];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)dealloc
{
  applicationPublicDeviceIdentity = self->_applicationPublicDeviceIdentity;
  if (applicationPublicDeviceIdentity)
  {
    CFRelease(applicationPublicDeviceIdentity);
    self->_applicationPublicDeviceIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = IDSEndpoint;
  [(IDSEndpoint *)&v4 dealloc];
}

- (IDSEndpoint)initWithURI:(id)a3 clientData:(id)a4 pushToken:(id)a5 sessionToken:(id)a6 expireDate:(id)a7 refreshDate:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(IDSEndpointURIProperties);
  LOBYTE(v23) = 1;
  v21 = [(IDSEndpoint *)self initWithURI:v19 clientData:v18 KTLoggableData:0 KTDeviceSignature:0 mismatchedAccountFlag:0 ktCapableFlag:0 transparency:0.0 pushToken:0 sessionToken:v17 expireDate:v16 refreshDate:v15 anonymizedSenderID:v14 verifiedBusiness:0 serializedPublicMessageProtectionIdentity:v23 queryTimeInterval:0 serializedNGMDeviceIdentity:0 serializedNGMDevicePrekey:0 serializedApplicationPublicKey:0 endpointURIProperties:v20 familyEndpointData:0 gameCenterData:0];

  return v21;
}

- (IDSEndpoint)initWithURI:(id)a3 clientData:(id)a4 KTLoggableData:(id)a5 KTDeviceSignature:(id)a6 mismatchedAccountFlag:(BOOL)a7 ktCapableFlag:(BOOL)a8 transparency:(id)a9 pushToken:(id)a10 sessionToken:(id)a11 expireDate:(id)a12 refreshDate:(id)a13 anonymizedSenderID:(id)a14 verifiedBusiness:(BOOL)a15 serializedPublicMessageProtectionIdentity:(id)a16 queryTimeInterval:(double)a17 serializedNGMDeviceIdentity:(id)a18 serializedNGMDevicePrekey:(id)a19 serializedApplicationPublicKey:(id)a20 endpointURIProperties:(id)a21 familyEndpointData:(id)a22 gameCenterData:(id)a23
{
  LOBYTE(v25) = a15;
  LOBYTE(v24) = a8;
  return [(IDSEndpoint *)self initWithURI:a3 serviceIdentifier:0 clientData:a4 KTLoggableData:a5 KTDeviceSignature:a6 mismatchedAccountFlag:a7 ktCapableFlag:a17 transparency:v24 pushToken:a9 sessionToken:a10 expireDate:a11 refreshDate:a12 anonymizedSenderID:a13 verifiedBusiness:a14 serializedPublicMessageProtectionIdentity:v25 queryTimeInterval:a16 serializedNGMDeviceIdentity:a18 serializedNGMDevicePrekey:a19 serializedApplicationPublicKey:a20 endpointURIProperties:a21 familyEndpointData:a22 gameCenterData:a23];
}

- (IDSEndpoint)initWithURI:(id)a3 serviceIdentifier:(id)a4 clientData:(id)a5 KTLoggableData:(id)a6 KTDeviceSignature:(id)a7 mismatchedAccountFlag:(BOOL)a8 ktCapableFlag:(BOOL)a9 transparency:(id)a10 pushToken:(id)a11 sessionToken:(id)a12 expireDate:(id)a13 refreshDate:(id)a14 anonymizedSenderID:(id)a15 verifiedBusiness:(BOOL)a16 serializedPublicMessageProtectionIdentity:(id)a17 queryTimeInterval:(double)a18 serializedNGMDeviceIdentity:(id)a19 serializedNGMDevicePrekey:(id)a20 serializedApplicationPublicKey:(id)a21 endpointURIProperties:(id)a22 familyEndpointData:(id)a23 gameCenterData:(id)a24
{
  v75 = a3;
  v74 = a4;
  v29 = a5;
  v73 = a6;
  v72 = a7;
  v71 = a10;
  v79 = a11;
  v76 = a12;
  v78 = a13;
  v30 = a14;
  v31 = a15;
  v69 = a17;
  v32 = a19;
  v67 = a20;
  v68 = a21;
  v33 = a22;
  v34 = a23;
  v35 = a24;
  v36 = 0;
  v70 = v29;
  v63 = v31;
  v64 = v30;
  if (!v29)
  {
    v50 = v75;
    v40 = v76;
    v38 = v71;
    v37 = v72;
    v42 = v78;
    v49 = v67;
    goto LABEL_18;
  }

  v66 = v34;
  v38 = v71;
  v37 = v72;
  if (!v79)
  {
    goto LABEL_10;
  }

  v39 = v31;
  v40 = v76;
  if (!v76)
  {
LABEL_11:
    v42 = v78;
    goto LABEL_12;
  }

  v41 = v30;
  v42 = v78;
  if (!v78)
  {
LABEL_12:
    v34 = v66;
    v49 = v67;
    v50 = v75;
    goto LABEL_18;
  }

  if (!v41)
  {
LABEL_10:
    v40 = v76;
    goto LABEL_11;
  }

  v43 = v41;
  v65 = v35;
  if (!v33)
  {
    v33 = objc_alloc_init(IDSEndpointURIProperties);
  }

  v62 = v33;
  v44 = v32;
  v60 = [[IDSEndpointCapabilities alloc] initWithCapabilitiesMap:v29];
  v45 = [v29 objectForKeyedSubscript:@"public-message-identity-ngm-version"];
  v46 = [v29 objectForKeyedSubscript:@"public-message-identity-version"];
  v47 = v39;
  if (v45)
  {
    v48 = [v45 shortValue];
  }

  else
  {
    v48 = -1;
  }

  v59 = v46;
  if (v46)
  {
    v51 = [v46 shortValue];
  }

  else
  {
    v51 = -1;
  }

  v52 = [IDSPushToken pushTokenWithData:v79 withServiceLoggingHint:v74];
  v34 = v66;
  v33 = v62;
  v49 = v67;
  v58 = v44;
  LOBYTE(v57) = a16;
  v53 = v51;
  v54 = v52;
  BYTE1(v56) = a9;
  LOBYTE(v56) = a8;
  v36 = [(IDSEndpoint *)self initWithURI:v75 capabilities:v60 ngmVersion:v48 legacyVersion:v53 KTLoggableData:v73 KTDeviceSignature:v72 mismatchedAccountFlag:a18 ktCapableFlag:v56 transparency:v71 pushTokenObject:v52 sessionToken:v76 expireDate:v78 refreshDate:v43 anonymizedSenderID:v47 verifiedBusiness:v57 serializedPublicMessageProtectionIdentity:v69 queryTimeInterval:v44 serializedNGMDeviceIdentity:v67 serializedNGMDevicePrekey:v68 serializedApplicationPublicKey:v62 endpointURIProperties:v66 familyEndpointData:v65 gameCenterData:?];

  v38 = v71;
  v37 = v72;

  v40 = v76;
  v50 = v75;
  v42 = v78;
  v32 = v58;
  v35 = v65;
  self = v36;
LABEL_18:

  return v36;
}

- (IDSEndpoint)initWithURI:(id)a3 capabilities:(id)a4 ngmVersion:(signed __int16)a5 legacyVersion:(char)a6 KTLoggableData:(id)a7 KTDeviceSignature:(id)a8 mismatchedAccountFlag:(BOOL)a9 ktCapableFlag:(BOOL)a10 transparency:(id)a11 pushTokenObject:(id)a12 sessionToken:(id)a13 expireDate:(id)a14 refreshDate:(id)a15 anonymizedSenderID:(id)a16 verifiedBusiness:(BOOL)a17 serializedPublicMessageProtectionIdentity:(id)a18 queryTimeInterval:(double)a19 serializedNGMDeviceIdentity:(id)a20 serializedNGMDevicePrekey:(id)a21 serializedApplicationPublicKey:(id)a22 endpointURIProperties:(id)a23 familyEndpointData:(id)a24 gameCenterData:(id)a25
{
  v63 = a3;
  v52 = a4;
  v55 = a4;
  v65 = a7;
  v64 = a8;
  v62 = a11;
  v28 = a12;
  v68 = a13;
  v29 = a14;
  v66 = a15;
  v61 = a16;
  v60 = a18;
  v30 = a20;
  v59 = a21;
  v58 = a22;
  v31 = a23;
  v32 = a24;
  v33 = a25;
  v34 = 0;
  if (!v55 || !v28)
  {
    v35 = v29;
LABEL_12:
    v48 = self;
    goto LABEL_13;
  }

  v35 = v29;
  if (!v68 || !v29 || !v66)
  {
    goto LABEL_12;
  }

  v56 = v33;
  if (!v31)
  {
    v31 = objc_alloc_init(IDSEndpointURIProperties);
  }

  v69.receiver = self;
  v69.super_class = IDSEndpoint;
  v36 = [(IDSEndpoint *)&v69 init];
  v37 = v36;
  if (v36)
  {
    v36->_queryTimeInterval = a19;
    objc_storeStrong(&v36->_URI, obja);
    v38 = [v65 copy];
    KTLoggableData = v37->_KTLoggableData;
    v37->_KTLoggableData = v38;

    v40 = [v64 copy];
    KTDeviceSignature = v37->_KTDeviceSignature;
    v37->_KTDeviceSignature = v40;

    v37->_mismatchedAccountFlag = a9;
    v37->_ktCapableFlag = a10;
    v35 = v29;
    objc_storeStrong(&v37->_transparency, a11);
    objc_storeStrong(&v37->_pushTokenObject, a12);
    v42 = [v68 copy];
    sessionToken = v37->_sessionToken;
    v37->_sessionToken = v42;

    objc_storeStrong(&v37->_expireDate, a14);
    objc_storeStrong(&v37->_refreshDate, a15);
    objc_storeStrong(&v37->_anonymizedSenderID, a16);
    v37->_verifiedBusiness = a17;
    v44 = [(IDSEndpointURIProperties *)v31 senderCorrelationIdentifier];
    senderCorrelationIdentifier = v37->_senderCorrelationIdentifier;
    v37->_senderCorrelationIdentifier = v44;

    v46 = [(IDSEndpointURIProperties *)v31 shortHandle];
    shortHandle = v37->_shortHandle;
    v37->_shortHandle = v46;

    objc_storeStrong(&v37->_capabilities, v52);
    objc_storeStrong(&v37->_serializedLegacyPublicIdentity, a18);
    objc_storeStrong(&v37->_serializedNGMDevicePrekey, a21);
    objc_storeStrong(&v37->_serializedApplicationPublicKey, a22);
    objc_storeStrong(&v37->_serializedNGMDeviceIdentity, a20);
    v37->_ngmVersion = a5;
    v37->_legacyVersion = a6;
    objc_storeStrong(&v37->_familyEndpointData, a24);
    objc_storeStrong(&v37->_gameCenterData, a25);
  }

  v48 = v37;
  v34 = v48;
  v33 = v56;
LABEL_13:

  return v34;
}

- (__SecKey)applicationPublicDeviceIdentity
{
  keys[2] = *MEMORY[0x1E69E9840];
  result = self->_applicationPublicDeviceIdentity;
  if (!result)
  {
    if (self->_serializedApplicationPublicKey)
    {
      error = 0;
      v4 = *MEMORY[0x1E697AD30];
      keys[0] = *MEMORY[0x1E697AD68];
      keys[1] = v4;
      v5 = *MEMORY[0x1E697AD40];
      values[0] = *MEMORY[0x1E697AD78];
      values[1] = v5;
      v6 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      self->_applicationPublicDeviceIdentity = SecKeyCreateWithData(self->_serializedApplicationPublicKey, v6, &error);
      if (error)
      {
        v7 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          URI = self->_URI;
          pushTokenObject = self->_pushTokenObject;
          serializedApplicationPublicKey = self->_serializedApplicationPublicKey;
          *buf = 138544131;
          v13 = error;
          v14 = 2113;
          v15 = URI;
          v16 = 2113;
          v17 = pushTokenObject;
          v18 = 2113;
          v19 = serializedApplicationPublicKey;
          _os_log_error_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_ERROR, "Endpoint failed creating public identity {error : %{public}@, URI: %{private}@, pushToken: %{private}@, serializedApplicationPublicKey: %{private}@}", buf, 0x2Au);
        }
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (error)
      {
        CFRelease(error);
      }

      return self->_applicationPublicDeviceIdentity;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (IDSMPPublicDeviceIdentityContainer)publicDeviceIdentityContainer
{
  v58 = *MEMORY[0x1E69E9840];
  publicDeviceIdentityContainer = self->_publicDeviceIdentityContainer;
  if (!publicDeviceIdentityContainer)
  {
    serializedLegacyPublicIdentity = self->_serializedLegacyPublicIdentity;
    v45 = 0;
    v5 = [IDSMPPublicLegacyIdentity identityWithData:serializedLegacyPublicIdentity error:&v45];
    v6 = v45;
    if (v5)
    {
      if (self->_serializedNGMDeviceIdentity && self->_serializedNGMDevicePrekey)
      {
        v44 = v6;
        v7 = [IDSNGMPublicDeviceIdentity identityWithIdentityData:"identityWithIdentityData:prekeyData:error:" prekeyData:? error:?];
        v8 = v44;

        if (v7)
        {
          if (self->_ngmVersion == -1)
          {
            v32 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              sub_1A7E1BBA0(self, v32);
            }

            v33 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:4 userInfo:0];
            identityContainerDeserializationError = self->_identityContainerDeserializationError;
            self->_identityContainerDeserializationError = v33;

            v9 = 0;
            v11 = 0;
            v10 = 0;
          }

          else
          {
            v7 = v7;
            v9 = [MEMORY[0x1E696AD98] numberWithShort:self->_ngmVersion];
            v10 = 0;
            v11 = v7;
          }
        }

        else
        {
          v31 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            serializedNGMDeviceIdentity = self->_serializedNGMDeviceIdentity;
            URI = self->_URI;
            pushTokenObject = self->_pushTokenObject;
            *buf = 138544131;
            v51 = v8;
            v52 = 2113;
            v53 = serializedNGMDeviceIdentity;
            v54 = 2113;
            v55 = URI;
            v56 = 2113;
            v57 = pushTokenObject;
            _os_log_fault_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_FAULT, "Failed to deserialize IDSNGMPublicDeviceIdentity -- creating legacy endpoint {error: %{public}@, serializedNGMDeviceIdentity: %{private}@, URI: %{private}@, pushToken: %{private}@}", buf, 0x2Au);
          }

          if (v8)
          {
            v48 = *MEMORY[0x1E696AA08];
            v49 = v8;
            v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          }

          else
          {
            v10 = 0;
          }

          v35 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:7 userInfo:v10];
          v36 = self->_identityContainerDeserializationError;
          self->_identityContainerDeserializationError = v35;

          v9 = 0;
          v11 = 0;
        }
      }

      else
      {
        v12 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_URI;
          v14 = self->_pushTokenObject;
          *buf = 138478083;
          v51 = v13;
          v52 = 2113;
          v53 = v14;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Endpoint missing serializedNGMDeviceIdentity -- creating legacy endpoint {URI: %{private}@, pushToken: %{private}@}", buf, 0x16u);
        }

        v15 = [(IDSEndpointCapabilities *)self->_capabilities valueForCapability:@"ec-version"];
        v16 = _IDSECVersion();
        v17 = [v16 integerValue];

        v18 = [(IDSEndpointCapabilities *)self->_capabilities valueForCapability:@"supports-certified-delivery-v1"];
        if (self->_serializedNGMDeviceIdentity)
        {
          v19 = 1;
        }

        else
        {
          v22 = 3;
          if (v15 < v17)
          {
            v22 = 10;
          }

          if (!v18)
          {
            v22 = 9;
          }

          if (self->_serializedNGMDevicePrekey)
          {
            v19 = 2;
          }

          else
          {
            v19 = v22;
          }
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:v19 userInfo:0];
        v9 = 0;
        v11 = 0;
        v10 = 0;
        v7 = self->_identityContainerDeserializationError;
        self->_identityContainerDeserializationError = v23;
        v8 = v6;
      }

      v43 = v8;
      v24 = [IDSMPPublicDeviceIdentityContainer identityWithLegacyPublicIdentity:v5 ngmPublicDeviceIdentity:v11 ngmVersion:v9 error:&v43];
      v6 = v43;

      v25 = self->_publicDeviceIdentityContainer;
      self->_publicDeviceIdentityContainer = v24;

      if (!self->_publicDeviceIdentityContainer)
      {
        v26 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1A7E1BC2C(v6, self, v26);
        }

        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:8 userInfo:v10];
        v28 = self->_identityContainerDeserializationError;
        self->_identityContainerDeserializationError = v27;
      }
    }

    else
    {
      v20 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v37 = self->_URI;
        v38 = self->_pushTokenObject;
        v39 = self->_serializedLegacyPublicIdentity;
        *buf = 138544131;
        v51 = v6;
        v52 = 2113;
        v53 = v37;
        v54 = 2113;
        v55 = v38;
        v56 = 2113;
        v57 = v39;
        _os_log_fault_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_FAULT, "Endpoint failed creating public identity {error : %{public}@, URI: %{private}@, pushToken: %{private}@, serializedPublicMessageProtectionIdentity: %{private}@}", buf, 0x2Au);
      }

      if (self->_serializedLegacyPublicIdentity)
      {
        v21 = 6;
      }

      else
      {
        v21 = 5;
      }

      if (v6)
      {
        v46 = *MEMORY[0x1E696AA08];
        v47 = v6;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      }

      else
      {
        v10 = 0;
      }

      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:v21 userInfo:v10];
      v11 = self->_identityContainerDeserializationError;
      self->_identityContainerDeserializationError = v29;
    }

    publicDeviceIdentityContainer = self->_publicDeviceIdentityContainer;
  }

  return publicDeviceIdentityContainer;
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(IDSEndpoint *)self URI];
  v5 = [(IDSEndpoint *)self pushTokenObject];
  v6 = [(IDSEndpoint *)self senderCorrelationIdentifier];
  publicDeviceIdentityContainer = self->_publicDeviceIdentityContainer;
  v8 = [(IDSEndpoint *)self serializedNGMDeviceIdentity];
  applicationPublicDeviceIdentity = self->_applicationPublicDeviceIdentity;
  v10 = [(IDSEndpoint *)self serializedApplicationPublicKey];
  v11 = [(IDSEndpoint *)self capabilities];
  v12 = [v14 stringWithFormat:@"<%@: %p URI: %@, pushToken: %@, mergeID: %@, publicDeviceIdentityContainer: %@, devicePublicIdentity: %@, applicationPublicDeviceIdentity: %@, applicationDevicePublicIdentity: %@, capabilities: %@>", v3, self, v4, v5, v6, publicDeviceIdentityContainer, v8, applicationPublicDeviceIdentity, v10, v11];

  return v12;
}

- (NSString)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v3 = [(IDSEndpoint *)self URI];
  v4 = [(IDSEndpoint *)self pushTokenObject];
  v5 = [(IDSEndpoint *)self senderCorrelationIdentifier];
  publicDeviceIdentityContainer = self->_publicDeviceIdentityContainer;
  v7 = [(IDSEndpoint *)self serializedNGMDeviceIdentity];
  applicationPublicDeviceIdentity = self->_applicationPublicDeviceIdentity;
  v9 = [(IDSEndpoint *)self serializedApplicationPublicKey];
  v10 = [(IDSEndpoint *)self capabilities];
  v11 = [v10 debugDescription];
  v12 = [v15 stringWithFormat:@"<%@: %p URI: %@, pushToken: %@, mergeID: %@, publicDeviceIdentityContainer: %@, devicePublicIdentity: %@, applicationPublicDeviceIdentity: %@, applicationDevicePublicIdentity: %@, capabilities: %@>", v14, self, v3, v4, v5, publicDeviceIdentityContainer, v7, applicationPublicDeviceIdentity, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSEndpoint *)self isEqualToEndpoint:v4];

  return v5;
}

- (BOOL)isEqualToEndpoint:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v16 = 1;
  }

  else
  {
    queryTimeInterval = self->_queryTimeInterval;
    [(IDSEndpoint *)v5 queryTimeInterval];
    v9 = queryTimeInterval - v8;
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 < 2.22044605e-16)
    {
      URI = self->_URI;
      v11 = [(IDSEndpoint *)v6 URI];
      if (![(IDSURI *)URI isEqual:v11])
      {
        v16 = 0;
LABEL_40:

        goto LABEL_41;
      }

      shortHandle = self->_shortHandle;
      v13 = [(IDSEndpoint *)v6 shortHandle];
      if (shortHandle != v13)
      {
        v14 = self->_shortHandle;
        v15 = [(IDSEndpoint *)v6 shortHandle];
        if (![(NSString *)v14 isEqual:v15])
        {
          v16 = 0;
          goto LABEL_38;
        }

        v87 = v15;
      }

      KTLoggableData = self->_KTLoggableData;
      v18 = [(IDSEndpoint *)v6 KTLoggableData];
      if (KTLoggableData != v18)
      {
        v19 = self->_KTLoggableData;
        v3 = [(IDSEndpoint *)v6 KTLoggableData];
        if (([(NSData *)v19 isEqual:v3]& 1) == 0)
        {
          goto LABEL_35;
        }
      }

      KTDeviceSignature = self->_KTDeviceSignature;
      v21 = [(IDSEndpoint *)v6 KTDeviceSignature];
      v86 = KTDeviceSignature;
      if (KTDeviceSignature == v21)
      {
        v85 = v3;
      }

      else
      {
        v22 = self->_KTDeviceSignature;
        v23 = [(IDSEndpoint *)v6 KTDeviceSignature];
        v24 = v22;
        v25 = v23;
        if (([(NSData *)v24 isEqual:v23]& 1) == 0)
        {

          goto LABEL_34;
        }

        v84 = v25;
        v85 = v3;
      }

      pushTokenObject = self->_pushTokenObject;
      v27 = [(IDSEndpoint *)v6 pushTokenObject];
      if (![(IDSPushToken *)pushTokenObject isEqual:v27])
      {
        v16 = 0;
        v42 = v85;
LABEL_28:

        if (v86 != v21)
        {
        }

        if (KTLoggableData != v18)
        {
        }

LABEL_37:
        v15 = v87;
        if (shortHandle == v13)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }

      sessionToken = self->_sessionToken;
      v29 = [(IDSEndpoint *)v6 sessionToken];
      v30 = sessionToken;
      v31 = v29;
      if (([(NSData *)v30 isEqual:v29]& 1) != 0)
      {
        v83 = v31;
        expireDate = self->_expireDate;
        v33 = [(IDSEndpoint *)v6 expireDate];
        v34 = expireDate;
        v35 = v33;
        if (([(NSDate *)v34 isEqual:v33]& 1) != 0)
        {
          v82 = v35;
          refreshDate = self->_refreshDate;
          v37 = [(IDSEndpoint *)v6 refreshDate];
          v38 = refreshDate;
          v39 = v37;
          if (([(NSDate *)v38 isEqual:v37]& 1) != 0)
          {
            v80 = v39;
            anonymizedSenderID = self->_anonymizedSenderID;
            v81 = [(IDSEndpoint *)v6 anonymizedSenderID];
            v79 = anonymizedSenderID;
            if (anonymizedSenderID != v81)
            {
              v41 = self->_anonymizedSenderID;
              v78 = [(IDSEndpoint *)v6 anonymizedSenderID];
              if (![(NSString *)v41 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
                goto LABEL_55;
              }
            }

            verifiedBusiness = self->_verifiedBusiness;
            if (verifiedBusiness != [(IDSEndpoint *)v6 verifiedBusiness])
            {
              v16 = 0;
              v42 = v85;
              if (v79 == v81)
              {
LABEL_56:

                goto LABEL_28;
              }

LABEL_55:

              goto LABEL_56;
            }

            senderCorrelationIdentifier = self->_senderCorrelationIdentifier;
            [(IDSEndpoint *)v6 senderCorrelationIdentifier];
            v77 = v76 = senderCorrelationIdentifier;
            if (senderCorrelationIdentifier != v77)
            {
              v46 = self->_senderCorrelationIdentifier;
              v75 = [(IDSEndpoint *)v6 senderCorrelationIdentifier];
              if (![(NSString *)v46 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
LABEL_87:

LABEL_88:
                if (v79 == v81)
                {
                  goto LABEL_56;
                }

                goto LABEL_55;
              }
            }

            capabilities = self->_capabilities;
            v48 = [(IDSEndpoint *)v6 capabilities];
            v49 = capabilities;
            v50 = v48;
            if (![(IDSEndpointCapabilities *)v49 isEqual:v48])
            {

              v16 = 0;
              v52 = v77;
              v42 = v85;
              if (v76 != v77)
              {
                goto LABEL_87;
              }

LABEL_62:

              goto LABEL_88;
            }

            serializedLegacyPublicIdentity = self->_serializedLegacyPublicIdentity;
            [(IDSEndpoint *)v6 serializedLegacyPublicIdentity];
            v73 = v72 = v50;
            if (serializedLegacyPublicIdentity != v73)
            {
              v51 = self->_serializedLegacyPublicIdentity;
              v70 = [(IDSEndpoint *)v6 serializedLegacyPublicIdentity];
              if (![(NSData *)v51 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
                goto LABEL_84;
              }
            }

            serializedNGMDevicePrekey = self->_serializedNGMDevicePrekey;
            v71 = [(IDSEndpoint *)v6 serializedNGMDevicePrekey];
            v68 = serializedNGMDevicePrekey;
            if (serializedNGMDevicePrekey != v71)
            {
              v54 = self->_serializedNGMDevicePrekey;
              v67 = [(IDSEndpoint *)v6 serializedNGMDevicePrekey];
              if (![(NSData *)v54 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
                goto LABEL_81;
              }
            }

            serializedNGMDeviceIdentity = self->_serializedNGMDeviceIdentity;
            v69 = [(IDSEndpoint *)v6 serializedNGMDeviceIdentity];
            v66 = serializedNGMDeviceIdentity;
            if (serializedNGMDeviceIdentity == v69 || (v56 = self->_serializedNGMDeviceIdentity, [(IDSEndpoint *)v6 serializedNGMDeviceIdentity], v64 = objc_claimAutoreleasedReturnValue(), [(NSData *)v56 isEqual:?]))
            {
              serializedApplicationPublicKey = self->_serializedApplicationPublicKey;
              v65 = [(IDSEndpoint *)v6 serializedApplicationPublicKey];
              if (serializedApplicationPublicKey == v65)
              {
                ngmVersion = self->_ngmVersion;
                if (ngmVersion == [(IDSEndpoint *)v6 ngmVersion])
                {
                  legacyVersion = self->_legacyVersion;
                  v16 = legacyVersion == [(IDSEndpoint *)v6 legacyVersion];
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v58 = self->_serializedApplicationPublicKey;
                v63 = [(IDSEndpoint *)v6 serializedApplicationPublicKey];
                if (([(NSData *)v58 isEqual:?]& 1) != 0 && (v59 = self->_ngmVersion, v59 == [(IDSEndpoint *)v6 ngmVersion]))
                {
                  v60 = self->_legacyVersion;
                  v16 = v60 == [(IDSEndpoint *)v6 legacyVersion];
                }

                else
                {
                  v16 = 0;
                }
              }

              v42 = v85;
              if (v66 == v69)
              {
LABEL_80:

                if (v68 == v71)
                {

LABEL_83:
                  if (serializedLegacyPublicIdentity == v73)
                  {

LABEL_86:
                    v52 = v77;
                    if (v76 != v77)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_62;
                  }

LABEL_84:

                  goto LABEL_86;
                }

LABEL_81:

                goto LABEL_83;
              }
            }

            else
            {
              v16 = 0;
              v42 = v85;
            }

            goto LABEL_80;
          }

          v3 = v85;
          if (v86 != v21)
          {
          }

LABEL_34:

          if (KTLoggableData == v18)
          {
LABEL_36:

            v16 = 0;
            goto LABEL_37;
          }

LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
      }

      if (v86 != v21)
      {
      }

      if (KTLoggableData != v18)
      {
      }

      goto LABEL_36;
    }

    v16 = 0;
  }

LABEL_41:

  return v16;
}

- (BOOL)isEqualToEndpoint:(id)a3 withDateTolerance:(double)a4
{
  v7 = a3;
  v8 = v7;
  if (self == v7)
  {
    v17 = 1;
  }

  else
  {
    queryTimeInterval = self->_queryTimeInterval;
    [(IDSEndpoint *)v7 queryTimeInterval];
    v11 = queryTimeInterval - v10;
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    if (v11 < a4)
    {
      URI = self->_URI;
      v13 = [(IDSEndpoint *)v8 URI];
      if (![(IDSURI *)URI isEqual:v13])
      {
        v17 = 0;
LABEL_31:

        goto LABEL_32;
      }

      KTLoggableData = self->_KTLoggableData;
      v15 = [(IDSEndpoint *)v8 KTLoggableData];
      if (KTLoggableData != v15)
      {
        v16 = self->_KTLoggableData;
        v4 = [(IDSEndpoint *)v8 KTLoggableData];
        if (![(NSData *)v16 isEqual:v4])
        {
          v17 = 0;
          goto LABEL_29;
        }
      }

      KTDeviceSignature = self->_KTDeviceSignature;
      v19 = [(IDSEndpoint *)v8 KTDeviceSignature];
      if (KTDeviceSignature != v19)
      {
        v20 = self->_KTDeviceSignature;
        v21 = [(IDSEndpoint *)v8 KTDeviceSignature];
        if (([(NSData *)v20 isEqual:v21]& 1) == 0)
        {

          goto LABEL_27;
        }

        v79 = v21;
      }

      pushTokenObject = self->_pushTokenObject;
      v23 = [(IDSEndpoint *)v8 pushTokenObject];
      if (![(IDSPushToken *)pushTokenObject isEqual:v23])
      {
        v17 = 0;
        goto LABEL_23;
      }

      v78 = v4;
      sessionToken = self->_sessionToken;
      v25 = [(IDSEndpoint *)v8 sessionToken];
      if (([(NSData *)sessionToken isEqual:v25]& 1) != 0)
      {
        expireDate = self->_expireDate;
        v27 = [(IDSEndpoint *)v8 expireDate];
        v28 = expireDate;
        v29 = v27;
        [(NSDate *)v28 timeIntervalSinceDate:v27];
        if (fabs(v30) < a4)
        {
          v77 = v29;
          refreshDate = self->_refreshDate;
          v32 = [(IDSEndpoint *)v8 refreshDate];
          v33 = refreshDate;
          v34 = v32;
          [(NSDate *)v33 timeIntervalSinceDate:v32];
          if (fabs(v35) < a4)
          {
            v75 = v34;
            anonymizedSenderID = self->_anonymizedSenderID;
            v76 = [(IDSEndpoint *)v8 anonymizedSenderID];
            v74 = anonymizedSenderID;
            if (anonymizedSenderID != v76)
            {
              v37 = self->_anonymizedSenderID;
              v73 = [(IDSEndpoint *)v8 anonymizedSenderID];
              if (![(NSString *)v37 isEqual:?])
              {
                v17 = 0;
                v4 = v78;
                goto LABEL_45;
              }
            }

            verifiedBusiness = self->_verifiedBusiness;
            if (verifiedBusiness != [(IDSEndpoint *)v8 verifiedBusiness])
            {
              v17 = 0;
              v4 = v78;
              if (v74 == v76)
              {
LABEL_46:

                if (KTDeviceSignature == v19)
                {
                  goto LABEL_25;
                }

                v38 = v79;
                goto LABEL_24;
              }

LABEL_45:

              goto LABEL_46;
            }

            senderCorrelationIdentifier = self->_senderCorrelationIdentifier;
            [(IDSEndpoint *)v8 senderCorrelationIdentifier];
            v72 = v71 = senderCorrelationIdentifier;
            if (senderCorrelationIdentifier != v72)
            {
              v42 = self->_senderCorrelationIdentifier;
              v70 = [(IDSEndpoint *)v8 senderCorrelationIdentifier];
              if (![(NSString *)v42 isEqual:?])
              {
                v17 = 0;
                v4 = v78;
                goto LABEL_81;
              }
            }

            capabilities = self->_capabilities;
            v44 = [(IDSEndpoint *)v8 capabilities];
            v45 = capabilities;
            v46 = v44;
            if (![(IDSEndpointCapabilities *)v45 isEqual:v44])
            {

              v17 = 0;
              v48 = v72;
              v4 = v78;
              if (v71 != v72)
              {
                goto LABEL_81;
              }

LABEL_53:

              if (v74 != v76)
              {
              }

LABEL_23:
              v38 = v79;
              if (KTDeviceSignature == v19)
              {
LABEL_25:

                goto LABEL_28;
              }

LABEL_24:

              goto LABEL_25;
            }

            serializedLegacyPublicIdentity = self->_serializedLegacyPublicIdentity;
            [(IDSEndpoint *)v8 serializedLegacyPublicIdentity];
            v68 = v67 = v46;
            if (serializedLegacyPublicIdentity != v68)
            {
              v47 = self->_serializedLegacyPublicIdentity;
              v64 = [(IDSEndpoint *)v8 serializedLegacyPublicIdentity];
              if (![(NSData *)v47 isEqual:?])
              {
                v17 = 0;
                v4 = v78;
                goto LABEL_78;
              }
            }

            serializedNGMDevicePrekey = self->_serializedNGMDevicePrekey;
            v65 = [(IDSEndpoint *)v8 serializedNGMDevicePrekey];
            if (serializedNGMDevicePrekey != v65)
            {
              v49 = self->_serializedNGMDevicePrekey;
              v62 = [(IDSEndpoint *)v8 serializedNGMDevicePrekey];
              if (![(NSData *)v49 isEqual:?])
              {
                v17 = 0;
                v4 = v78;
                goto LABEL_75;
              }
            }

            serializedNGMDeviceIdentity = self->_serializedNGMDeviceIdentity;
            v63 = [(IDSEndpoint *)v8 serializedNGMDeviceIdentity];
            v61 = serializedNGMDeviceIdentity;
            if (serializedNGMDeviceIdentity == v63 || (v51 = self->_serializedNGMDeviceIdentity, [(IDSEndpoint *)v8 serializedNGMDeviceIdentity], v59 = objc_claimAutoreleasedReturnValue(), [(NSData *)v51 isEqual:?]))
            {
              serializedApplicationPublicKey = self->_serializedApplicationPublicKey;
              v60 = [(IDSEndpoint *)v8 serializedApplicationPublicKey];
              if (serializedApplicationPublicKey == v60)
              {
                ngmVersion = self->_ngmVersion;
                if (ngmVersion == [(IDSEndpoint *)v8 ngmVersion])
                {
                  legacyVersion = self->_legacyVersion;
                  v17 = legacyVersion == [(IDSEndpoint *)v8 legacyVersion];
                }

                else
                {
                  v17 = 0;
                }
              }

              else
              {
                v53 = self->_serializedApplicationPublicKey;
                v58 = [(IDSEndpoint *)v8 serializedApplicationPublicKey];
                if (([(NSData *)v53 isEqual:?]& 1) != 0 && (v54 = self->_ngmVersion, v54 == [(IDSEndpoint *)v8 ngmVersion]))
                {
                  v55 = self->_legacyVersion;
                  v17 = v55 == [(IDSEndpoint *)v8 legacyVersion];
                }

                else
                {
                  v17 = 0;
                }
              }

              v4 = v78;
              if (v61 == v63)
              {

LABEL_74:
                if (serializedNGMDevicePrekey == v65)
                {

LABEL_77:
                  if (serializedLegacyPublicIdentity == v68)
                  {

LABEL_80:
                    v48 = v72;
                    if (v71 != v72)
                    {
LABEL_81:

                      if (v74 == v76)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_45;
                    }

                    goto LABEL_53;
                  }

LABEL_78:

                  goto LABEL_80;
                }

LABEL_75:

                goto LABEL_77;
              }
            }

            else
            {
              v17 = 0;
              v4 = v78;
            }

            goto LABEL_74;
          }

          v4 = v78;
          if (KTDeviceSignature != v19)
          {
          }

LABEL_27:

          v17 = 0;
LABEL_28:
          if (KTLoggableData == v15)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      if (KTDeviceSignature != v19)
      {
      }

      v17 = 0;
      v4 = v78;
      if (KTLoggableData == v15)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v17 = 0;
  }

LABEL_32:

  return v17;
}

- (id)destinationURIs
{
  if (self->_pushTokenObject && (URI = self->_URI) != 0)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [(IDSURI *)URI URIByAddingPushToken:?];
    v5 = [v4 prefixedURI];
    v6 = [v3 setWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IDSEndpoint)initWithCoder:(id)a3
{
  v3 = a3;
  v75 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v69 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"KTLoggableData"];
  v68 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"KTDeviceSignature"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pushTokenObj"];
  v74 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sessionToken"];
  v73 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"expireDate"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"refreshDate"];
  v67 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedSenderID"];
  [v3 decodeDoubleForKey:@"queryTimeInterval"];
  v8 = v7;
  v66 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serializedNGMDeviceIdentity"];
  v65 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serializedApplicationPublicKey"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"familyEndpointData"];
  v72 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"gameCenterData"];
  v10 = objc_alloc_init(IDSEndpointURIProperties);
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"senderCorrelationIdentifier"];
  [(IDSEndpointURIProperties *)v10 setSenderCorrelationIdentifier:v11];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"shortHandle"];
  v71 = v10;
  [(IDSEndpointURIProperties *)v10 setShortHandle:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  v17 = [v3 decodeObjectOfClasses:v16 forKey:@"clientData"];

  v70 = v4;
  v61 = v9;
  v64 = v17;
  if (v17)
  {
    v62 = v5;
    v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"verifiedBusiness"];
    v19 = [v18 BOOLValue];

    v20 = [v3 decodeBoolForKey:@"KTMismatchedAccountFlag"];
    v21 = [v3 decodeBoolForKey:@"KTCapableFlag"];
    v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Transparency"];
    v23 = [v17 objectForKey:@"public-message-ngm-device-prekey-data-key"];
    v24 = [v17 objectForKey:@"public-message-identity-key"];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      LOBYTE(v49) = v19;
      v25 = [(IDSEndpoint *)self initWithURI:v75 clientData:v64 KTLoggableData:v69 KTDeviceSignature:v68 mismatchedAccountFlag:v20 ktCapableFlag:v21 transparency:v8 pushToken:v22 sessionToken:v70 expireDate:v74 refreshDate:v73 anonymizedSenderID:v6 verifiedBusiness:v67 serializedPublicMessageProtectionIdentity:v49 queryTimeInterval:v24 serializedNGMDeviceIdentity:v66 serializedNGMDevicePrekey:v23 serializedApplicationPublicKey:v65 endpointURIProperties:v71 familyEndpointData:v9 gameCenterData:v72];
      v26 = v25;
    }

    else
    {
      v27 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1BCC4(v24, v27);
      }

      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:5 userInfo:0];
      [v3 failWithError:v28];

      v25 = 0;
      v26 = self;
    }

    v30 = v68;
    v29 = v69;
    v31 = v9;
    v32 = v66;
    v33 = v67;
    v34 = v65;
  }

  else
  {
    v57 = [v3 decodeBoolForKey:@"verifiedBusinessb"];
    v58 = [v3 decodeBoolForKey:@"KTMismatchedAccountFlag"];
    v56 = [v3 decodeBoolForKey:@"KTCapableFlag"];
    v60 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Transparency"];
    v59 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serializedLegacyPublicIdentity"];
    v35 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serializedNGMDevicePrekey"];
    v55 = [v3 decodeIntForKey:@"NGMVersion"];
    v36 = [v3 decodeIntForKey:@"legacyVersion"];
    v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
    v38 = v5;
    if (v5)
    {
      v39 = v73;
      v40 = v74;
      v32 = v66;
      v41 = v71;
      v42 = v72;
    }

    else
    {
      v39 = v73;
      v40 = v74;
      v32 = v66;
      v41 = v71;
      v42 = v72;
      if (v70)
      {
        v43 = v37;
        v38 = [IDSPushToken pushTokenWithData:v70];
        v37 = v43;
      }
    }

    v62 = v38;
    v31 = v61;
    v53 = v42;
    v52 = v41;
    v34 = v65;
    v51 = v35;
    v54 = v35;
    LOBYTE(v50) = v57;
    v47 = v40;
    v48 = v39;
    BYTE1(v46) = v56;
    LOBYTE(v46) = v58;
    v33 = v67;
    v44 = v37;
    v30 = v68;
    v29 = v69;
    v26 = [(IDSEndpoint *)self initWithURI:v75 capabilities:v37 ngmVersion:v55 legacyVersion:v36 KTLoggableData:v69 KTDeviceSignature:v68 mismatchedAccountFlag:v8 ktCapableFlag:v46 transparency:v60 pushTokenObject:v38 sessionToken:v47 expireDate:v48 refreshDate:v6 anonymizedSenderID:v67 verifiedBusiness:v50 serializedPublicMessageProtectionIdentity:v59 queryTimeInterval:v32 serializedNGMDeviceIdentity:v51 serializedNGMDevicePrekey:v65 serializedApplicationPublicKey:v52 endpointURIProperties:v61 familyEndpointData:v53 gameCenterData:?];

    v25 = v26;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  queryTimeInterval = self->_queryTimeInterval;
  v5 = a3;
  [v5 encodeDouble:@"queryTimeInterval" forKey:queryTimeInterval];
  v6 = [(IDSEndpoint *)self URI];
  [v5 encodeObject:v6 forKey:@"uri"];

  v7 = [(IDSEndpoint *)self KTLoggableData];
  [v5 encodeObject:v7 forKey:@"KTLoggableData"];

  v8 = [(IDSEndpoint *)self KTDeviceSignature];
  [v5 encodeObject:v8 forKey:@"KTDeviceSignature"];

  v9 = [(IDSEndpoint *)self pushTokenObject];
  [v5 encodeObject:v9 forKey:@"pushTokenObj"];

  v10 = [(IDSEndpoint *)self sessionToken];
  [v5 encodeObject:v10 forKey:@"sessionToken"];

  v11 = [(IDSEndpoint *)self expireDate];
  [v5 encodeObject:v11 forKey:@"expireDate"];

  v12 = [(IDSEndpoint *)self refreshDate];
  [v5 encodeObject:v12 forKey:@"refreshDate"];

  v13 = [(IDSEndpoint *)self anonymizedSenderID];
  [v5 encodeObject:v13 forKey:@"anonymizedSenderID"];

  [v5 encodeBool:-[IDSEndpoint verifiedBusiness](self forKey:{"verifiedBusiness"), @"verifiedBusinessb"}];
  [v5 encodeBool:-[IDSEndpoint mismatchedAccountFlag](self forKey:{"mismatchedAccountFlag"), @"KTMismatchedAccountFlag"}];
  [v5 encodeBool:-[IDSEndpoint ktCapableFlag](self forKey:{"ktCapableFlag"), @"KTCapableFlag"}];
  v14 = [(IDSEndpoint *)self senderCorrelationIdentifier];
  [v5 encodeObject:v14 forKey:@"senderCorrelationIdentifier"];

  v15 = [(IDSEndpoint *)self shortHandle];
  [v5 encodeObject:v15 forKey:@"shortHandle"];

  v16 = [(IDSEndpoint *)self serializedNGMDeviceIdentity];
  [v5 encodeObject:v16 forKey:@"serializedNGMDeviceIdentity"];

  v17 = [(IDSEndpoint *)self serializedLegacyPublicIdentity];
  [v5 encodeObject:v17 forKey:@"serializedLegacyPublicIdentity"];

  v18 = [(IDSEndpoint *)self serializedNGMDevicePrekey];
  [v5 encodeObject:v18 forKey:@"serializedNGMDevicePrekey"];

  v19 = [(IDSEndpoint *)self serializedApplicationPublicKey];
  [v5 encodeObject:v19 forKey:@"serializedApplicationPublicKey"];

  [v5 encodeInt:-[IDSEndpoint ngmVersion](self forKey:{"ngmVersion"), @"NGMVersion"}];
  [v5 encodeInt:-[IDSEndpoint legacyVersion](self forKey:{"legacyVersion"), @"legacyVersion"}];
  v20 = [(IDSEndpoint *)self capabilities];
  [v5 encodeObject:v20 forKey:@"capabilities"];

  v21 = [(IDSEndpoint *)self familyEndpointData];
  [v5 encodeObject:v21 forKey:@"familyEndpointData"];

  v22 = [(IDSEndpoint *)self gameCenterData];
  [v5 encodeObject:v22 forKey:@"gameCenterData"];
}

- (void)updateTransparency:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  dispatch_assert_queue_V2(v5);

  transparency = self->_transparency;
  self->_transparency = v4;
}

@end