@interface IDSEndpoint
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEndpoint:(id)endpoint;
- (BOOL)isEqualToEndpoint:(id)endpoint withDateTolerance:(double)tolerance;
- (IDSEndpoint)initWithCoder:(id)coder;
- (IDSEndpoint)initWithURI:(id)i capabilities:(id)capabilities ngmVersion:(signed __int16)version legacyVersion:(char)legacyVersion KTLoggableData:(id)data KTDeviceSignature:(id)signature mismatchedAccountFlag:(BOOL)flag ktCapableFlag:(BOOL)self0 transparency:(id)self1 pushTokenObject:(id)self2 sessionToken:(id)self3 expireDate:(id)self4 refreshDate:(id)self5 anonymizedSenderID:(id)self6 verifiedBusiness:(BOOL)self7 serializedPublicMessageProtectionIdentity:(id)self8 queryTimeInterval:(double)self9 serializedNGMDeviceIdentity:(id)deviceIdentity serializedNGMDevicePrekey:(id)prekey serializedApplicationPublicKey:(id)key endpointURIProperties:(id)properties familyEndpointData:(id)endpointData gameCenterData:(id)centerData;
- (IDSEndpoint)initWithURI:(id)i clientData:(id)data KTLoggableData:(id)loggableData KTDeviceSignature:(id)signature mismatchedAccountFlag:(BOOL)flag ktCapableFlag:(BOOL)capableFlag transparency:(id)transparency pushToken:(id)self0 sessionToken:(id)self1 expireDate:(id)self2 refreshDate:(id)self3 anonymizedSenderID:(id)self4 verifiedBusiness:(BOOL)self5 serializedPublicMessageProtectionIdentity:(id)self6 queryTimeInterval:(double)self7 serializedNGMDeviceIdentity:(id)self8 serializedNGMDevicePrekey:(id)self9 serializedApplicationPublicKey:(id)key endpointURIProperties:(id)properties familyEndpointData:(id)endpointData gameCenterData:(id)centerData;
- (IDSEndpoint)initWithURI:(id)i clientData:(id)data pushToken:(id)token sessionToken:(id)sessionToken expireDate:(id)date refreshDate:(id)refreshDate;
- (IDSEndpoint)initWithURI:(id)i serviceIdentifier:(id)identifier clientData:(id)data KTLoggableData:(id)loggableData KTDeviceSignature:(id)signature mismatchedAccountFlag:(BOOL)flag ktCapableFlag:(BOOL)capableFlag transparency:(id)self0 pushToken:(id)self1 sessionToken:(id)self2 expireDate:(id)self3 refreshDate:(id)self4 anonymizedSenderID:(id)self5 verifiedBusiness:(BOOL)self6 serializedPublicMessageProtectionIdentity:(id)self7 queryTimeInterval:(double)self8 serializedNGMDeviceIdentity:(id)self9 serializedNGMDevicePrekey:(id)prekey serializedApplicationPublicKey:(id)key endpointURIProperties:(id)properties familyEndpointData:(id)endpointData gameCenterData:(id)centerData;
- (IDSMPPublicDeviceIdentityContainer)publicDeviceIdentityContainer;
- (NSString)debugDescription;
- (NSString)description;
- (__SecKey)applicationPublicDeviceIdentity;
- (id)destinationURIs;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateTransparency:(id)transparency;
@end

@implementation IDSEndpoint

- (unint64_t)hash
{
  pushToken = [(IDSEndpoint *)self pushToken];
  v4 = [pushToken hash];
  sessionToken = [(IDSEndpoint *)self sessionToken];
  v6 = [sessionToken hash];

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

- (IDSEndpoint)initWithURI:(id)i clientData:(id)data pushToken:(id)token sessionToken:(id)sessionToken expireDate:(id)date refreshDate:(id)refreshDate
{
  refreshDateCopy = refreshDate;
  dateCopy = date;
  sessionTokenCopy = sessionToken;
  tokenCopy = token;
  dataCopy = data;
  iCopy = i;
  v20 = objc_alloc_init(IDSEndpointURIProperties);
  LOBYTE(v23) = 1;
  v21 = [(IDSEndpoint *)self initWithURI:iCopy clientData:dataCopy KTLoggableData:0 KTDeviceSignature:0 mismatchedAccountFlag:0 ktCapableFlag:0 transparency:0.0 pushToken:0 sessionToken:tokenCopy expireDate:sessionTokenCopy refreshDate:dateCopy anonymizedSenderID:refreshDateCopy verifiedBusiness:0 serializedPublicMessageProtectionIdentity:v23 queryTimeInterval:0 serializedNGMDeviceIdentity:0 serializedNGMDevicePrekey:0 serializedApplicationPublicKey:0 endpointURIProperties:v20 familyEndpointData:0 gameCenterData:0];

  return v21;
}

- (IDSEndpoint)initWithURI:(id)i clientData:(id)data KTLoggableData:(id)loggableData KTDeviceSignature:(id)signature mismatchedAccountFlag:(BOOL)flag ktCapableFlag:(BOOL)capableFlag transparency:(id)transparency pushToken:(id)self0 sessionToken:(id)self1 expireDate:(id)self2 refreshDate:(id)self3 anonymizedSenderID:(id)self4 verifiedBusiness:(BOOL)self5 serializedPublicMessageProtectionIdentity:(id)self6 queryTimeInterval:(double)self7 serializedNGMDeviceIdentity:(id)self8 serializedNGMDevicePrekey:(id)self9 serializedApplicationPublicKey:(id)key endpointURIProperties:(id)properties familyEndpointData:(id)endpointData gameCenterData:(id)centerData
{
  LOBYTE(v25) = business;
  LOBYTE(v24) = capableFlag;
  return [(IDSEndpoint *)self initWithURI:i serviceIdentifier:0 clientData:data KTLoggableData:loggableData KTDeviceSignature:signature mismatchedAccountFlag:flag ktCapableFlag:interval transparency:v24 pushToken:transparency sessionToken:token expireDate:sessionToken refreshDate:date anonymizedSenderID:refreshDate verifiedBusiness:d serializedPublicMessageProtectionIdentity:v25 queryTimeInterval:identity serializedNGMDeviceIdentity:deviceIdentity serializedNGMDevicePrekey:prekey serializedApplicationPublicKey:key endpointURIProperties:properties familyEndpointData:endpointData gameCenterData:centerData];
}

- (IDSEndpoint)initWithURI:(id)i serviceIdentifier:(id)identifier clientData:(id)data KTLoggableData:(id)loggableData KTDeviceSignature:(id)signature mismatchedAccountFlag:(BOOL)flag ktCapableFlag:(BOOL)capableFlag transparency:(id)self0 pushToken:(id)self1 sessionToken:(id)self2 expireDate:(id)self3 refreshDate:(id)self4 anonymizedSenderID:(id)self5 verifiedBusiness:(BOOL)self6 serializedPublicMessageProtectionIdentity:(id)self7 queryTimeInterval:(double)self8 serializedNGMDeviceIdentity:(id)self9 serializedNGMDevicePrekey:(id)prekey serializedApplicationPublicKey:(id)key endpointURIProperties:(id)properties familyEndpointData:(id)endpointData gameCenterData:(id)centerData
{
  iCopy = i;
  identifierCopy = identifier;
  dataCopy = data;
  loggableDataCopy = loggableData;
  signatureCopy = signature;
  transparencyCopy = transparency;
  tokenCopy = token;
  sessionTokenCopy = sessionToken;
  dateCopy = date;
  refreshDateCopy = refreshDate;
  dCopy = d;
  identityCopy = identity;
  deviceIdentityCopy = deviceIdentity;
  prekeyCopy = prekey;
  keyCopy = key;
  propertiesCopy = properties;
  endpointDataCopy = endpointData;
  centerDataCopy = centerData;
  v36 = 0;
  v70 = dataCopy;
  v63 = dCopy;
  v64 = refreshDateCopy;
  if (!dataCopy)
  {
    v50 = iCopy;
    v40 = sessionTokenCopy;
    v38 = transparencyCopy;
    v37 = signatureCopy;
    v42 = dateCopy;
    v49 = prekeyCopy;
    goto LABEL_18;
  }

  v66 = endpointDataCopy;
  v38 = transparencyCopy;
  v37 = signatureCopy;
  if (!tokenCopy)
  {
    goto LABEL_10;
  }

  v39 = dCopy;
  v40 = sessionTokenCopy;
  if (!sessionTokenCopy)
  {
LABEL_11:
    v42 = dateCopy;
    goto LABEL_12;
  }

  v41 = refreshDateCopy;
  v42 = dateCopy;
  if (!dateCopy)
  {
LABEL_12:
    endpointDataCopy = v66;
    v49 = prekeyCopy;
    v50 = iCopy;
    goto LABEL_18;
  }

  if (!v41)
  {
LABEL_10:
    v40 = sessionTokenCopy;
    goto LABEL_11;
  }

  v43 = v41;
  v65 = centerDataCopy;
  if (!propertiesCopy)
  {
    propertiesCopy = objc_alloc_init(IDSEndpointURIProperties);
  }

  v62 = propertiesCopy;
  v44 = deviceIdentityCopy;
  v60 = [[IDSEndpointCapabilities alloc] initWithCapabilitiesMap:dataCopy];
  v45 = [dataCopy objectForKeyedSubscript:@"public-message-identity-ngm-version"];
  v46 = [dataCopy objectForKeyedSubscript:@"public-message-identity-version"];
  v47 = v39;
  if (v45)
  {
    shortValue = [v45 shortValue];
  }

  else
  {
    shortValue = -1;
  }

  v59 = v46;
  if (v46)
  {
    shortValue2 = [v46 shortValue];
  }

  else
  {
    shortValue2 = -1;
  }

  v52 = [IDSPushToken pushTokenWithData:tokenCopy withServiceLoggingHint:identifierCopy];
  endpointDataCopy = v66;
  propertiesCopy = v62;
  v49 = prekeyCopy;
  v58 = v44;
  LOBYTE(v57) = business;
  v53 = shortValue2;
  v54 = v52;
  BYTE1(v56) = capableFlag;
  LOBYTE(v56) = flag;
  v36 = [(IDSEndpoint *)self initWithURI:iCopy capabilities:v60 ngmVersion:shortValue legacyVersion:v53 KTLoggableData:loggableDataCopy KTDeviceSignature:signatureCopy mismatchedAccountFlag:interval ktCapableFlag:v56 transparency:transparencyCopy pushTokenObject:v52 sessionToken:sessionTokenCopy expireDate:dateCopy refreshDate:v43 anonymizedSenderID:v47 verifiedBusiness:v57 serializedPublicMessageProtectionIdentity:identityCopy queryTimeInterval:v44 serializedNGMDeviceIdentity:prekeyCopy serializedNGMDevicePrekey:keyCopy serializedApplicationPublicKey:v62 endpointURIProperties:v66 familyEndpointData:v65 gameCenterData:?];

  v38 = transparencyCopy;
  v37 = signatureCopy;

  v40 = sessionTokenCopy;
  v50 = iCopy;
  v42 = dateCopy;
  deviceIdentityCopy = v58;
  centerDataCopy = v65;
  self = v36;
LABEL_18:

  return v36;
}

- (IDSEndpoint)initWithURI:(id)i capabilities:(id)capabilities ngmVersion:(signed __int16)version legacyVersion:(char)legacyVersion KTLoggableData:(id)data KTDeviceSignature:(id)signature mismatchedAccountFlag:(BOOL)flag ktCapableFlag:(BOOL)self0 transparency:(id)self1 pushTokenObject:(id)self2 sessionToken:(id)self3 expireDate:(id)self4 refreshDate:(id)self5 anonymizedSenderID:(id)self6 verifiedBusiness:(BOOL)self7 serializedPublicMessageProtectionIdentity:(id)self8 queryTimeInterval:(double)self9 serializedNGMDeviceIdentity:(id)deviceIdentity serializedNGMDevicePrekey:(id)prekey serializedApplicationPublicKey:(id)key endpointURIProperties:(id)properties familyEndpointData:(id)endpointData gameCenterData:(id)centerData
{
  iCopy = i;
  capabilitiesCopy = capabilities;
  capabilitiesCopy2 = capabilities;
  dataCopy = data;
  signatureCopy = signature;
  transparencyCopy = transparency;
  objectCopy = object;
  tokenCopy = token;
  dateCopy = date;
  refreshDateCopy = refreshDate;
  dCopy = d;
  identityCopy = identity;
  deviceIdentityCopy = deviceIdentity;
  prekeyCopy = prekey;
  keyCopy = key;
  propertiesCopy = properties;
  endpointDataCopy = endpointData;
  centerDataCopy = centerData;
  v34 = 0;
  if (!capabilitiesCopy2 || !objectCopy)
  {
    v35 = dateCopy;
LABEL_12:
    selfCopy = self;
    goto LABEL_13;
  }

  v35 = dateCopy;
  if (!tokenCopy || !dateCopy || !refreshDateCopy)
  {
    goto LABEL_12;
  }

  v56 = centerDataCopy;
  if (!propertiesCopy)
  {
    propertiesCopy = objc_alloc_init(IDSEndpointURIProperties);
  }

  v69.receiver = self;
  v69.super_class = IDSEndpoint;
  v36 = [(IDSEndpoint *)&v69 init];
  v37 = v36;
  if (v36)
  {
    v36->_queryTimeInterval = interval;
    objc_storeStrong(&v36->_URI, obja);
    v38 = [dataCopy copy];
    KTLoggableData = v37->_KTLoggableData;
    v37->_KTLoggableData = v38;

    v40 = [signatureCopy copy];
    KTDeviceSignature = v37->_KTDeviceSignature;
    v37->_KTDeviceSignature = v40;

    v37->_mismatchedAccountFlag = flag;
    v37->_ktCapableFlag = capableFlag;
    v35 = dateCopy;
    objc_storeStrong(&v37->_transparency, transparency);
    objc_storeStrong(&v37->_pushTokenObject, object);
    v42 = [tokenCopy copy];
    sessionToken = v37->_sessionToken;
    v37->_sessionToken = v42;

    objc_storeStrong(&v37->_expireDate, date);
    objc_storeStrong(&v37->_refreshDate, refreshDate);
    objc_storeStrong(&v37->_anonymizedSenderID, d);
    v37->_verifiedBusiness = business;
    senderCorrelationIdentifier = [(IDSEndpointURIProperties *)propertiesCopy senderCorrelationIdentifier];
    senderCorrelationIdentifier = v37->_senderCorrelationIdentifier;
    v37->_senderCorrelationIdentifier = senderCorrelationIdentifier;

    shortHandle = [(IDSEndpointURIProperties *)propertiesCopy shortHandle];
    shortHandle = v37->_shortHandle;
    v37->_shortHandle = shortHandle;

    objc_storeStrong(&v37->_capabilities, capabilitiesCopy);
    objc_storeStrong(&v37->_serializedLegacyPublicIdentity, identity);
    objc_storeStrong(&v37->_serializedNGMDevicePrekey, prekey);
    objc_storeStrong(&v37->_serializedApplicationPublicKey, key);
    objc_storeStrong(&v37->_serializedNGMDeviceIdentity, deviceIdentity);
    v37->_ngmVersion = version;
    v37->_legacyVersion = legacyVersion;
    objc_storeStrong(&v37->_familyEndpointData, endpointData);
    objc_storeStrong(&v37->_gameCenterData, centerData);
  }

  selfCopy = v37;
  v34 = selfCopy;
  centerDataCopy = v56;
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
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
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
          _os_log_error_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_ERROR, "Endpoint failed creating public identity {error : %{public}@, URI: %{private}@, pushToken: %{private}@, serializedApplicationPublicKey: %{private}@}", buf, 0x2Au);
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
            registration = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
            {
              sub_1A7E1BBA0(self, registration);
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
          registration2 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_FAULT))
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
            _os_log_fault_impl(&dword_1A7AD9000, registration2, OS_LOG_TYPE_FAULT, "Failed to deserialize IDSNGMPublicDeviceIdentity -- creating legacy endpoint {error: %{public}@, serializedNGMDeviceIdentity: %{private}@, URI: %{private}@, pushToken: %{private}@}", buf, 0x2Au);
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
        registration3 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_URI;
          v14 = self->_pushTokenObject;
          *buf = 138478083;
          v51 = v13;
          v52 = 2113;
          v53 = v14;
          _os_log_impl(&dword_1A7AD9000, registration3, OS_LOG_TYPE_DEFAULT, "Endpoint missing serializedNGMDeviceIdentity -- creating legacy endpoint {URI: %{private}@, pushToken: %{private}@}", buf, 0x16u);
        }

        v15 = [(IDSEndpointCapabilities *)self->_capabilities valueForCapability:@"ec-version"];
        v16 = _IDSECVersion();
        integerValue = [v16 integerValue];

        v18 = [(IDSEndpointCapabilities *)self->_capabilities valueForCapability:@"supports-certified-delivery-v1"];
        if (self->_serializedNGMDeviceIdentity)
        {
          v19 = 1;
        }

        else
        {
          v22 = 3;
          if (v15 < integerValue)
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
        registration4 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration4, OS_LOG_TYPE_FAULT))
        {
          sub_1A7E1BC2C(v6, self, registration4);
        }

        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:8 userInfo:v10];
        v28 = self->_identityContainerDeserializationError;
        self->_identityContainerDeserializationError = v27;
      }
    }

    else
    {
      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_FAULT))
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
        _os_log_fault_impl(&dword_1A7AD9000, registration5, OS_LOG_TYPE_FAULT, "Endpoint failed creating public identity {error : %{public}@, URI: %{private}@, pushToken: %{private}@, serializedPublicMessageProtectionIdentity: %{private}@}", buf, 0x2Au);
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
  pushTokenObject = [(IDSEndpoint *)self pushTokenObject];
  senderCorrelationIdentifier = [(IDSEndpoint *)self senderCorrelationIdentifier];
  publicDeviceIdentityContainer = self->_publicDeviceIdentityContainer;
  serializedNGMDeviceIdentity = [(IDSEndpoint *)self serializedNGMDeviceIdentity];
  applicationPublicDeviceIdentity = self->_applicationPublicDeviceIdentity;
  serializedApplicationPublicKey = [(IDSEndpoint *)self serializedApplicationPublicKey];
  capabilities = [(IDSEndpoint *)self capabilities];
  v12 = [v14 stringWithFormat:@"<%@: %p URI: %@, pushToken: %@, mergeID: %@, publicDeviceIdentityContainer: %@, devicePublicIdentity: %@, applicationPublicDeviceIdentity: %@, applicationDevicePublicIdentity: %@, capabilities: %@>", v3, self, v4, pushTokenObject, senderCorrelationIdentifier, publicDeviceIdentityContainer, serializedNGMDeviceIdentity, applicationPublicDeviceIdentity, serializedApplicationPublicKey, capabilities];

  return v12;
}

- (NSString)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v3 = [(IDSEndpoint *)self URI];
  pushTokenObject = [(IDSEndpoint *)self pushTokenObject];
  senderCorrelationIdentifier = [(IDSEndpoint *)self senderCorrelationIdentifier];
  publicDeviceIdentityContainer = self->_publicDeviceIdentityContainer;
  serializedNGMDeviceIdentity = [(IDSEndpoint *)self serializedNGMDeviceIdentity];
  applicationPublicDeviceIdentity = self->_applicationPublicDeviceIdentity;
  serializedApplicationPublicKey = [(IDSEndpoint *)self serializedApplicationPublicKey];
  capabilities = [(IDSEndpoint *)self capabilities];
  v11 = [capabilities debugDescription];
  v12 = [v15 stringWithFormat:@"<%@: %p URI: %@, pushToken: %@, mergeID: %@, publicDeviceIdentityContainer: %@, devicePublicIdentity: %@, applicationPublicDeviceIdentity: %@, applicationDevicePublicIdentity: %@, capabilities: %@>", v14, self, v3, pushTokenObject, senderCorrelationIdentifier, publicDeviceIdentityContainer, serializedNGMDeviceIdentity, applicationPublicDeviceIdentity, serializedApplicationPublicKey, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSEndpoint *)self isEqualToEndpoint:equalCopy];

  return v5;
}

- (BOOL)isEqualToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6 = endpointCopy;
  if (self == endpointCopy)
  {
    v16 = 1;
  }

  else
  {
    queryTimeInterval = self->_queryTimeInterval;
    [(IDSEndpoint *)endpointCopy queryTimeInterval];
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
      shortHandle = [(IDSEndpoint *)v6 shortHandle];
      if (shortHandle != shortHandle)
      {
        v14 = self->_shortHandle;
        shortHandle2 = [(IDSEndpoint *)v6 shortHandle];
        if (![(NSString *)v14 isEqual:shortHandle2])
        {
          v16 = 0;
          goto LABEL_38;
        }

        v87 = shortHandle2;
      }

      KTLoggableData = self->_KTLoggableData;
      kTLoggableData = [(IDSEndpoint *)v6 KTLoggableData];
      if (KTLoggableData != kTLoggableData)
      {
        v19 = self->_KTLoggableData;
        kTLoggableData2 = [(IDSEndpoint *)v6 KTLoggableData];
        if (([(NSData *)v19 isEqual:kTLoggableData2]& 1) == 0)
        {
          goto LABEL_35;
        }
      }

      KTDeviceSignature = self->_KTDeviceSignature;
      kTDeviceSignature = [(IDSEndpoint *)v6 KTDeviceSignature];
      v86 = KTDeviceSignature;
      if (KTDeviceSignature == kTDeviceSignature)
      {
        v85 = kTLoggableData2;
      }

      else
      {
        v22 = self->_KTDeviceSignature;
        kTDeviceSignature2 = [(IDSEndpoint *)v6 KTDeviceSignature];
        v24 = v22;
        v25 = kTDeviceSignature2;
        if (([(NSData *)v24 isEqual:kTDeviceSignature2]& 1) == 0)
        {

          goto LABEL_34;
        }

        v84 = v25;
        v85 = kTLoggableData2;
      }

      pushTokenObject = self->_pushTokenObject;
      pushTokenObject = [(IDSEndpoint *)v6 pushTokenObject];
      if (![(IDSPushToken *)pushTokenObject isEqual:pushTokenObject])
      {
        v16 = 0;
        v42 = v85;
LABEL_28:

        if (v86 != kTDeviceSignature)
        {
        }

        if (KTLoggableData != kTLoggableData)
        {
        }

LABEL_37:
        shortHandle2 = v87;
        if (shortHandle == shortHandle)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }

      sessionToken = self->_sessionToken;
      sessionToken = [(IDSEndpoint *)v6 sessionToken];
      v30 = sessionToken;
      v31 = sessionToken;
      if (([(NSData *)v30 isEqual:sessionToken]& 1) != 0)
      {
        v83 = v31;
        expireDate = self->_expireDate;
        expireDate = [(IDSEndpoint *)v6 expireDate];
        v34 = expireDate;
        v35 = expireDate;
        if (([(NSDate *)v34 isEqual:expireDate]& 1) != 0)
        {
          v82 = v35;
          refreshDate = self->_refreshDate;
          refreshDate = [(IDSEndpoint *)v6 refreshDate];
          v38 = refreshDate;
          v39 = refreshDate;
          if (([(NSDate *)v38 isEqual:refreshDate]& 1) != 0)
          {
            v80 = v39;
            anonymizedSenderID = self->_anonymizedSenderID;
            anonymizedSenderID = [(IDSEndpoint *)v6 anonymizedSenderID];
            v79 = anonymizedSenderID;
            if (anonymizedSenderID != anonymizedSenderID)
            {
              v41 = self->_anonymizedSenderID;
              anonymizedSenderID2 = [(IDSEndpoint *)v6 anonymizedSenderID];
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
              if (v79 == anonymizedSenderID)
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
              senderCorrelationIdentifier = [(IDSEndpoint *)v6 senderCorrelationIdentifier];
              if (![(NSString *)v46 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
LABEL_87:

LABEL_88:
                if (v79 == anonymizedSenderID)
                {
                  goto LABEL_56;
                }

                goto LABEL_55;
              }
            }

            capabilities = self->_capabilities;
            capabilities = [(IDSEndpoint *)v6 capabilities];
            v49 = capabilities;
            v50 = capabilities;
            if (![(IDSEndpointCapabilities *)v49 isEqual:capabilities])
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
              serializedLegacyPublicIdentity = [(IDSEndpoint *)v6 serializedLegacyPublicIdentity];
              if (![(NSData *)v51 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
                goto LABEL_84;
              }
            }

            serializedNGMDevicePrekey = self->_serializedNGMDevicePrekey;
            serializedNGMDevicePrekey = [(IDSEndpoint *)v6 serializedNGMDevicePrekey];
            v68 = serializedNGMDevicePrekey;
            if (serializedNGMDevicePrekey != serializedNGMDevicePrekey)
            {
              v54 = self->_serializedNGMDevicePrekey;
              serializedNGMDevicePrekey2 = [(IDSEndpoint *)v6 serializedNGMDevicePrekey];
              if (![(NSData *)v54 isEqual:?])
              {
                v16 = 0;
                v42 = v85;
                goto LABEL_81;
              }
            }

            serializedNGMDeviceIdentity = self->_serializedNGMDeviceIdentity;
            serializedNGMDeviceIdentity = [(IDSEndpoint *)v6 serializedNGMDeviceIdentity];
            v66 = serializedNGMDeviceIdentity;
            if (serializedNGMDeviceIdentity == serializedNGMDeviceIdentity || (v56 = self->_serializedNGMDeviceIdentity, [(IDSEndpoint *)v6 serializedNGMDeviceIdentity], v64 = objc_claimAutoreleasedReturnValue(), [(NSData *)v56 isEqual:?]))
            {
              serializedApplicationPublicKey = self->_serializedApplicationPublicKey;
              serializedApplicationPublicKey = [(IDSEndpoint *)v6 serializedApplicationPublicKey];
              if (serializedApplicationPublicKey == serializedApplicationPublicKey)
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
                serializedApplicationPublicKey2 = [(IDSEndpoint *)v6 serializedApplicationPublicKey];
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
              if (v66 == serializedNGMDeviceIdentity)
              {
LABEL_80:

                if (v68 == serializedNGMDevicePrekey)
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

          kTLoggableData2 = v85;
          if (v86 != kTDeviceSignature)
          {
          }

LABEL_34:

          if (KTLoggableData == kTLoggableData)
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

      if (v86 != kTDeviceSignature)
      {
      }

      if (KTLoggableData != kTLoggableData)
      {
      }

      goto LABEL_36;
    }

    v16 = 0;
  }

LABEL_41:

  return v16;
}

- (BOOL)isEqualToEndpoint:(id)endpoint withDateTolerance:(double)tolerance
{
  endpointCopy = endpoint;
  v8 = endpointCopy;
  if (self == endpointCopy)
  {
    v17 = 1;
  }

  else
  {
    queryTimeInterval = self->_queryTimeInterval;
    [(IDSEndpoint *)endpointCopy queryTimeInterval];
    v11 = queryTimeInterval - v10;
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    if (v11 < tolerance)
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
      kTLoggableData = [(IDSEndpoint *)v8 KTLoggableData];
      if (KTLoggableData != kTLoggableData)
      {
        v16 = self->_KTLoggableData;
        kTLoggableData2 = [(IDSEndpoint *)v8 KTLoggableData];
        if (![(NSData *)v16 isEqual:kTLoggableData2])
        {
          v17 = 0;
          goto LABEL_29;
        }
      }

      KTDeviceSignature = self->_KTDeviceSignature;
      kTDeviceSignature = [(IDSEndpoint *)v8 KTDeviceSignature];
      if (KTDeviceSignature != kTDeviceSignature)
      {
        v20 = self->_KTDeviceSignature;
        kTDeviceSignature2 = [(IDSEndpoint *)v8 KTDeviceSignature];
        if (([(NSData *)v20 isEqual:kTDeviceSignature2]& 1) == 0)
        {

          goto LABEL_27;
        }

        v79 = kTDeviceSignature2;
      }

      pushTokenObject = self->_pushTokenObject;
      pushTokenObject = [(IDSEndpoint *)v8 pushTokenObject];
      if (![(IDSPushToken *)pushTokenObject isEqual:pushTokenObject])
      {
        v17 = 0;
        goto LABEL_23;
      }

      v78 = kTLoggableData2;
      sessionToken = self->_sessionToken;
      sessionToken = [(IDSEndpoint *)v8 sessionToken];
      if (([(NSData *)sessionToken isEqual:sessionToken]& 1) != 0)
      {
        expireDate = self->_expireDate;
        expireDate = [(IDSEndpoint *)v8 expireDate];
        v28 = expireDate;
        v29 = expireDate;
        [(NSDate *)v28 timeIntervalSinceDate:expireDate];
        if (fabs(v30) < tolerance)
        {
          v77 = v29;
          refreshDate = self->_refreshDate;
          refreshDate = [(IDSEndpoint *)v8 refreshDate];
          v33 = refreshDate;
          v34 = refreshDate;
          [(NSDate *)v33 timeIntervalSinceDate:refreshDate];
          if (fabs(v35) < tolerance)
          {
            v75 = v34;
            anonymizedSenderID = self->_anonymizedSenderID;
            anonymizedSenderID = [(IDSEndpoint *)v8 anonymizedSenderID];
            v74 = anonymizedSenderID;
            if (anonymizedSenderID != anonymizedSenderID)
            {
              v37 = self->_anonymizedSenderID;
              anonymizedSenderID2 = [(IDSEndpoint *)v8 anonymizedSenderID];
              if (![(NSString *)v37 isEqual:?])
              {
                v17 = 0;
                kTLoggableData2 = v78;
                goto LABEL_45;
              }
            }

            verifiedBusiness = self->_verifiedBusiness;
            if (verifiedBusiness != [(IDSEndpoint *)v8 verifiedBusiness])
            {
              v17 = 0;
              kTLoggableData2 = v78;
              if (v74 == anonymizedSenderID)
              {
LABEL_46:

                if (KTDeviceSignature == kTDeviceSignature)
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
              senderCorrelationIdentifier = [(IDSEndpoint *)v8 senderCorrelationIdentifier];
              if (![(NSString *)v42 isEqual:?])
              {
                v17 = 0;
                kTLoggableData2 = v78;
                goto LABEL_81;
              }
            }

            capabilities = self->_capabilities;
            capabilities = [(IDSEndpoint *)v8 capabilities];
            v45 = capabilities;
            v46 = capabilities;
            if (![(IDSEndpointCapabilities *)v45 isEqual:capabilities])
            {

              v17 = 0;
              v48 = v72;
              kTLoggableData2 = v78;
              if (v71 != v72)
              {
                goto LABEL_81;
              }

LABEL_53:

              if (v74 != anonymizedSenderID)
              {
              }

LABEL_23:
              v38 = v79;
              if (KTDeviceSignature == kTDeviceSignature)
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
              serializedLegacyPublicIdentity = [(IDSEndpoint *)v8 serializedLegacyPublicIdentity];
              if (![(NSData *)v47 isEqual:?])
              {
                v17 = 0;
                kTLoggableData2 = v78;
                goto LABEL_78;
              }
            }

            serializedNGMDevicePrekey = self->_serializedNGMDevicePrekey;
            serializedNGMDevicePrekey = [(IDSEndpoint *)v8 serializedNGMDevicePrekey];
            if (serializedNGMDevicePrekey != serializedNGMDevicePrekey)
            {
              v49 = self->_serializedNGMDevicePrekey;
              serializedNGMDevicePrekey2 = [(IDSEndpoint *)v8 serializedNGMDevicePrekey];
              if (![(NSData *)v49 isEqual:?])
              {
                v17 = 0;
                kTLoggableData2 = v78;
                goto LABEL_75;
              }
            }

            serializedNGMDeviceIdentity = self->_serializedNGMDeviceIdentity;
            serializedNGMDeviceIdentity = [(IDSEndpoint *)v8 serializedNGMDeviceIdentity];
            v61 = serializedNGMDeviceIdentity;
            if (serializedNGMDeviceIdentity == serializedNGMDeviceIdentity || (v51 = self->_serializedNGMDeviceIdentity, [(IDSEndpoint *)v8 serializedNGMDeviceIdentity], v59 = objc_claimAutoreleasedReturnValue(), [(NSData *)v51 isEqual:?]))
            {
              serializedApplicationPublicKey = self->_serializedApplicationPublicKey;
              serializedApplicationPublicKey = [(IDSEndpoint *)v8 serializedApplicationPublicKey];
              if (serializedApplicationPublicKey == serializedApplicationPublicKey)
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
                serializedApplicationPublicKey2 = [(IDSEndpoint *)v8 serializedApplicationPublicKey];
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

              kTLoggableData2 = v78;
              if (v61 == serializedNGMDeviceIdentity)
              {

LABEL_74:
                if (serializedNGMDevicePrekey == serializedNGMDevicePrekey)
                {

LABEL_77:
                  if (serializedLegacyPublicIdentity == v68)
                  {

LABEL_80:
                    v48 = v72;
                    if (v71 != v72)
                    {
LABEL_81:

                      if (v74 == anonymizedSenderID)
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
              kTLoggableData2 = v78;
            }

            goto LABEL_74;
          }

          kTLoggableData2 = v78;
          if (KTDeviceSignature != kTDeviceSignature)
          {
          }

LABEL_27:

          v17 = 0;
LABEL_28:
          if (KTLoggableData == kTLoggableData)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      if (KTDeviceSignature != kTDeviceSignature)
      {
      }

      v17 = 0;
      kTLoggableData2 = v78;
      if (KTLoggableData == kTLoggableData)
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
    prefixedURI = [v4 prefixedURI];
    v6 = [v3 setWithObject:prefixedURI];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IDSEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTLoggableData"];
  v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KTDeviceSignature"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushTokenObj"];
  v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionToken"];
  v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expireDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshDate"];
  v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedSenderID"];
  [coderCopy decodeDoubleForKey:@"queryTimeInterval"];
  v8 = v7;
  v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedNGMDeviceIdentity"];
  v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedApplicationPublicKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyEndpointData"];
  v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameCenterData"];
  v10 = objc_alloc_init(IDSEndpointURIProperties);
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderCorrelationIdentifier"];
  [(IDSEndpointURIProperties *)v10 setSenderCorrelationIdentifier:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortHandle"];
  v71 = v10;
  [(IDSEndpointURIProperties *)v10 setShortHandle:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"clientData"];

  v70 = v4;
  v61 = v9;
  v64 = v17;
  if (v17)
  {
    v62 = v5;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verifiedBusiness"];
    bOOLValue = [v18 BOOLValue];

    v20 = [coderCopy decodeBoolForKey:@"KTMismatchedAccountFlag"];
    v21 = [coderCopy decodeBoolForKey:@"KTCapableFlag"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Transparency"];
    v23 = [v17 objectForKey:@"public-message-ngm-device-prekey-data-key"];
    v24 = [v17 objectForKey:@"public-message-identity-key"];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      LOBYTE(v49) = bOOLValue;
      v25 = [(IDSEndpoint *)self initWithURI:v75 clientData:v64 KTLoggableData:v69 KTDeviceSignature:v68 mismatchedAccountFlag:v20 ktCapableFlag:v21 transparency:v8 pushToken:v22 sessionToken:v70 expireDate:v74 refreshDate:v73 anonymizedSenderID:v6 verifiedBusiness:v67 serializedPublicMessageProtectionIdentity:v49 queryTimeInterval:v24 serializedNGMDeviceIdentity:v66 serializedNGMDevicePrekey:v23 serializedApplicationPublicKey:v65 endpointURIProperties:v71 familyEndpointData:v9 gameCenterData:v72];
      selfCopy = v25;
    }

    else
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1BCC4(v24, registration);
      }

      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:IDSEndpointErrorDomain code:5 userInfo:0];
      [coderCopy failWithError:v28];

      v25 = 0;
      selfCopy = self;
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
    v57 = [coderCopy decodeBoolForKey:@"verifiedBusinessb"];
    v58 = [coderCopy decodeBoolForKey:@"KTMismatchedAccountFlag"];
    v56 = [coderCopy decodeBoolForKey:@"KTCapableFlag"];
    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Transparency"];
    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedLegacyPublicIdentity"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedNGMDevicePrekey"];
    v55 = [coderCopy decodeIntForKey:@"NGMVersion"];
    v36 = [coderCopy decodeIntForKey:@"legacyVersion"];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
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
    selfCopy = [(IDSEndpoint *)self initWithURI:v75 capabilities:v37 ngmVersion:v55 legacyVersion:v36 KTLoggableData:v69 KTDeviceSignature:v68 mismatchedAccountFlag:v8 ktCapableFlag:v46 transparency:v60 pushTokenObject:v38 sessionToken:v47 expireDate:v48 refreshDate:v6 anonymizedSenderID:v67 verifiedBusiness:v50 serializedPublicMessageProtectionIdentity:v59 queryTimeInterval:v32 serializedNGMDeviceIdentity:v51 serializedNGMDevicePrekey:v65 serializedApplicationPublicKey:v52 endpointURIProperties:v61 familyEndpointData:v53 gameCenterData:?];

    v25 = selfCopy;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  queryTimeInterval = self->_queryTimeInterval;
  coderCopy = coder;
  [coderCopy encodeDouble:@"queryTimeInterval" forKey:queryTimeInterval];
  v6 = [(IDSEndpoint *)self URI];
  [coderCopy encodeObject:v6 forKey:@"uri"];

  kTLoggableData = [(IDSEndpoint *)self KTLoggableData];
  [coderCopy encodeObject:kTLoggableData forKey:@"KTLoggableData"];

  kTDeviceSignature = [(IDSEndpoint *)self KTDeviceSignature];
  [coderCopy encodeObject:kTDeviceSignature forKey:@"KTDeviceSignature"];

  pushTokenObject = [(IDSEndpoint *)self pushTokenObject];
  [coderCopy encodeObject:pushTokenObject forKey:@"pushTokenObj"];

  sessionToken = [(IDSEndpoint *)self sessionToken];
  [coderCopy encodeObject:sessionToken forKey:@"sessionToken"];

  expireDate = [(IDSEndpoint *)self expireDate];
  [coderCopy encodeObject:expireDate forKey:@"expireDate"];

  refreshDate = [(IDSEndpoint *)self refreshDate];
  [coderCopy encodeObject:refreshDate forKey:@"refreshDate"];

  anonymizedSenderID = [(IDSEndpoint *)self anonymizedSenderID];
  [coderCopy encodeObject:anonymizedSenderID forKey:@"anonymizedSenderID"];

  [coderCopy encodeBool:-[IDSEndpoint verifiedBusiness](self forKey:{"verifiedBusiness"), @"verifiedBusinessb"}];
  [coderCopy encodeBool:-[IDSEndpoint mismatchedAccountFlag](self forKey:{"mismatchedAccountFlag"), @"KTMismatchedAccountFlag"}];
  [coderCopy encodeBool:-[IDSEndpoint ktCapableFlag](self forKey:{"ktCapableFlag"), @"KTCapableFlag"}];
  senderCorrelationIdentifier = [(IDSEndpoint *)self senderCorrelationIdentifier];
  [coderCopy encodeObject:senderCorrelationIdentifier forKey:@"senderCorrelationIdentifier"];

  shortHandle = [(IDSEndpoint *)self shortHandle];
  [coderCopy encodeObject:shortHandle forKey:@"shortHandle"];

  serializedNGMDeviceIdentity = [(IDSEndpoint *)self serializedNGMDeviceIdentity];
  [coderCopy encodeObject:serializedNGMDeviceIdentity forKey:@"serializedNGMDeviceIdentity"];

  serializedLegacyPublicIdentity = [(IDSEndpoint *)self serializedLegacyPublicIdentity];
  [coderCopy encodeObject:serializedLegacyPublicIdentity forKey:@"serializedLegacyPublicIdentity"];

  serializedNGMDevicePrekey = [(IDSEndpoint *)self serializedNGMDevicePrekey];
  [coderCopy encodeObject:serializedNGMDevicePrekey forKey:@"serializedNGMDevicePrekey"];

  serializedApplicationPublicKey = [(IDSEndpoint *)self serializedApplicationPublicKey];
  [coderCopy encodeObject:serializedApplicationPublicKey forKey:@"serializedApplicationPublicKey"];

  [coderCopy encodeInt:-[IDSEndpoint ngmVersion](self forKey:{"ngmVersion"), @"NGMVersion"}];
  [coderCopy encodeInt:-[IDSEndpoint legacyVersion](self forKey:{"legacyVersion"), @"legacyVersion"}];
  capabilities = [(IDSEndpoint *)self capabilities];
  [coderCopy encodeObject:capabilities forKey:@"capabilities"];

  familyEndpointData = [(IDSEndpoint *)self familyEndpointData];
  [coderCopy encodeObject:familyEndpointData forKey:@"familyEndpointData"];

  gameCenterData = [(IDSEndpoint *)self gameCenterData];
  [coderCopy encodeObject:gameCenterData forKey:@"gameCenterData"];
}

- (void)updateTransparency:(id)transparency
{
  transparencyCopy = transparency;
  v5 = im_primary_queue();
  dispatch_assert_queue_V2(v5);

  transparency = self->_transparency;
  self->_transparency = transparencyCopy;
}

@end