@interface ECSASLClient
+ (NSArray)installedMechanisms;
+ (OS_os_log)log;
- (BOOL)_logGenericError:(int)error saslConnection:(sasl_conn *)connection description:(id)description error:(id *)a6;
- (BOOL)lastResponseIncludesPlainTextCredential;
- (ECAuthenticationCredentials)credentials;
- (ECSASLClient)init;
- (ECSASLClient)initWithMechanismNames:(id)names credentials:(id)credentials externalSecurityLayer:(unsigned int)layer allowPlainText:(BOOL)text;
- (NSString)description;
- (id)newDecryptedDataForBytes:(const char *)bytes length:(unsigned int)length;
- (id)newEncryptedDataForBytes:(const char *)bytes length:(unsigned int)length;
- (id)responseForServerData:(id)data;
- (id)start;
- (void)_clearAuthenticationCallbackBuffers;
- (void)_handleNeedsUserInteraction:(sasl_interact *)interaction;
- (void)_handleStartFailure:(int)failure;
- (void)_retrieveEncryptionBufferSize;
- (void)dealloc;
@end

@implementation ECSASLClient

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__ECSASLClient_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __19__ECSASLClient_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (ECSASLClient)initWithMechanismNames:(id)names credentials:(id)credentials externalSecurityLayer:(unsigned int)layer allowPlainText:(BOOL)text
{
  textCopy = text;
  namesCopy = names;
  credentialsCopy = credentials;
  value = layer;
  if (![namesCopy count])
  {
    v29 = @"mechanismNames cannot be nil or empty";
    goto LABEL_27;
  }

  if (!credentialsCopy)
  {
    v29 = @"credentials cannot be nil";
LABEL_27:
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v29 userInfo:0];
    objc_exception_throw(v30);
  }

  v36.receiver = self;
  v36.super_class = ECSASLClient;
  v12 = [(ECSASLClient *)&v36 init];
  if (v12)
  {
    if (initializeSASLIfNecessary_onceToken != -1)
    {
      [ECSASLClient initWithMechanismNames:credentials:externalSecurityLayer:allowPlainText:];
    }

    if (initializeSASLIfNecessary_saslInitializationStatus)
    {
      goto LABEL_22;
    }

    [(ECSASLClient *)v12 setIsATOKEN2Enabled:1];
    v13 = malloc_type_malloc(0x150uLL, 0x1080040D2F62047uLL);
    v14 = v13;
    if (!v13)
    {
      v20 = +[ECSASLClient log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_22D092000, v20, OS_LOG_TYPE_INFO, "Failed to allocate memory for SASL connection callback structures", &v31, 2u);
      }

      goto LABEL_22;
    }

    v13->id = 1;
    v13->proc = getOption;
    v13->context = 0;
    v13[1].id = 16387;
    v13[1].proc = getSimpleValue;
    v13[1].context = v12;
    v13[2].id = 16386;
    v13[2].proc = getSimpleValue;
    v13[2].context = v12;
    v13[3].id = 16385;
    v13[3].proc = getSimpleValue;
    v13[3].context = v12;
    v13[4].id = 16388;
    v13[4].proc = getPassword;
    v13[4].context = v12;
    v13[5].id = 18945;
    v13[5].proc = getSimpleValue;
    v13[5].context = v12;
    v13[6].id = 18944;
    v13[6].proc = getSimpleValue;
    v13[6].context = v12;
    v13[7].id = 18946;
    v13[7].proc = getSimpleValue;
    v13[7].context = v12;
    v13[8].id = 18952;
    v13[8].proc = getSimpleValue;
    v13[8].context = v12;
    v13[9].id = 18949;
    v13[9].proc = getSimpleValue;
    v13[9].context = v12;
    v13[10].id = 18950;
    v13[10].proc = getSimpleValue;
    v13[10].context = v12;
    v13[11].id = 18951;
    v13[11].proc = getSimpleValue;
    v13[11].context = v12;
    v13[12].id = 18948;
    v13[12].proc = getSimpleValue;
    v13[12].context = v12;
    v13[13].id = 0;
    v13[13].proc = 0;
    v13[13].context = 0;
    saslProfileName = [credentialsCopy saslProfileName];
    uTF8String = [saslProfileName UTF8String];

    hostname = [credentialsCopy hostname];
    uTF8String2 = [hostname UTF8String];

    pconn = 0;
    v19 = sasl_client_new(uTF8String, uTF8String2, 0, 0, v14, 0, &pconn);
    if (v19)
    {
      [(ECSASLClient *)v12 _logGenericError:v19 saslConnection:pconn description:@"Failed to create a new SASL connection" error:0];
LABEL_21:
      free(v14);
LABEL_22:

      v12 = 0;
      goto LABEL_23;
    }

    if (layer)
    {
      v21 = sasl_setprop(pconn, 100, &value);
      if (v21)
      {
        [(ECSASLClient *)v12 _logGenericError:v21 saslConnection:pconn description:@"Failed to set the TLS/SSL strength on the SASL connection" error:0];
LABEL_20:
        sasl_dispose(&pconn);
        goto LABEL_21;
      }
    }

    else
    {
      v31 = 0;
      v34 = 0u;
      v32 = 0x280000000800;
      v33 = !textCopy;
      v21 = sasl_setprop(pconn, 101, &v31);
      if (v21)
      {
        [(ECSASLClient *)v12 _logGenericError:v21 saslConnection:pconn description:@"Failed to set security properties on the SASL connection" error:0];
        goto LABEL_20;
      }
    }

    username = [credentialsCopy username];
    uTF8String3 = [username UTF8String];

    v24 = sasl_setprop(pconn, 102, uTF8String3);
    if (!v24)
    {
      v26 = [namesCopy copy];
      mechanismNames = v12->_mechanismNames;
      v12->_mechanismNames = v26;

      objc_storeWeak(&v12->_credentials, credentialsCopy);
      v28 = pconn;
      v12->_callbacks = v14;
      v12->_saslConnection = v28;
      goto LABEL_23;
    }

    [(ECSASLClient *)v12 _logGenericError:v24 saslConnection:pconn description:@"Failed to enable the EXTERNAL mechanism on the SASL connection" error:0];
    goto LABEL_20;
  }

LABEL_23:

  return v12;
}

- (ECSASLClient)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:265 description:{@"Invalid initializer called, returning nil"}];

  return 0;
}

- (void)dealloc
{
  sasl_dispose(&self->_saslConnection);
  free(self->_callbacks);
  free(self->_userLanguageCode);
  free(self->_authenticationName);
  free(self->_authorizationName);
  free(self->_password);
  free(self->_authenticationPersonID);
  free(self->_authorizationPersonID);
  free(self->_appleToken);
  free(self->_machineID);
  free(self->_oneTimePassword);
  free(self->_clientInfo);
  free(self->_oauthToken);
  free(self->_appleToken2);
  v3.receiver = self;
  v3.super_class = ECSASLClient;
  [(ECSASLClient *)&v3 dealloc];
}

- (NSString)description
{
  saslStatus = [(ECSASLClient *)self saslStatus];
  if (saslStatus > 1)
  {
    if (saslStatus == 2)
    {
      v5 = @"AuthenticationCompleted";
    }

    else if (saslStatus == 3)
    {
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      saslError = [(ECSASLClient *)self saslError];
      v5 = [v6 initWithFormat:@"Error[%@]", saslError];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = @"NegotiatingAuthentication";
    if (saslStatus != 1)
    {
      v4 = 0;
    }

    if (saslStatus)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"Unauthenticated";
    }
  }

  v8 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = ECSASLClient;
  v9 = [(ECSASLClient *)&v17 description];
  selectedMechanismName = [(ECSASLClient *)self selectedMechanismName];
  mechanismNames = [(ECSASLClient *)self mechanismNames];
  v12 = [mechanismNames componentsJoinedByString:{@", "}];
  encryptionBufferSize = [(ECSASLClient *)self encryptionBufferSize];
  v14 = @"yes";
  if (!encryptionBufferSize)
  {
    v14 = @"no";
  }

  v15 = [v8 stringWithFormat:@"%@ status: %@, selected mechanism: %@ (out of %@), security layer: %@", v9, v5, selectedMechanismName, v12, v14];

  return v15;
}

- (id)start
{
  v26[2] = *MEMORY[0x277D85DE8];
  if ([(ECSASLClient *)self saslStatus])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:314 description:@"This method must be called in the Unauthenticated state"];
  }

  saslConnection = [(ECSASLClient *)self saslConnection];
  mechanismNames = [(ECSASLClient *)self mechanismNames];
  v6 = [mechanismNames componentsJoinedByString:@" "];
  uTF8String = [v6 UTF8String];

  clientout[0] = 0;
  clientoutlen = 0;
  v22 = 0;
  mech = 0;
  if ([(ECSASLClient *)self excludeInitialResponse])
  {
    v8 = sasl_client_start(saslConnection, uTF8String, 0, 0, 0, &mech);
  }

  else
  {
    v8 = sasl_client_start(saslConnection, uTF8String, &v22, clientout, &clientoutlen, &mech);
  }

  v9 = v8;
  if (mech)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    if (([mechanismNames containsObject:v10] & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:335 description:@"SASL selected a mechanism outside of the requested ones"];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [(ECSASLClient *)self setSelectedMechanismName:v11];
  if (v9 > 1)
  {
    v12 = 0;
    if (v9 == 2)
    {
      [(ECSASLClient *)self _handleNeedsUserInteraction:v22];
    }

    else
    {
      [(ECSASLClient *)self _handleStartFailure:v9];
    }

    goto LABEL_29;
  }

  if (!clientout[0])
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_14;
    }

LABEL_19:
    [(ECSASLClient *)self _clearAuthenticationCallbackBuffers];
    [(ECSASLClient *)self setSaslStatus:2];
    [(ECSASLClient *)self _retrieveEncryptionBufferSize];
    goto LABEL_20;
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:clientout[0] length:clientoutlen];
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_14:
  [(ECSASLClient *)self setSaslStatus:1];
LABEL_20:
  v13 = mech;
  if (!mech)
  {
    v13 = "";
    mech = "";
  }

  clientout[1] = 0;
  v26[0] = 0;
  *(v26 + 5) = 0;
  v14 = strlen(v13);
  if (v14 <= 0x14)
  {
    v16 = __strcpy_chk();
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:370 description:@"SASL selected a mechanism whose name is longer than permitted by the standard"];

    v16 = malloc_type_malloc(v14 + 1, 0xF6DA48BDuLL);
    strcpy(v16, mech);
  }

  v17 = sasl_client_plugin_info(v16, getMechanismInformation, self);
  if (v14 >= 0x15)
  {
    free(v16);
  }

  if (v17)
  {
    [(ECSASLClient *)self setSaslStatus:3];
    [(ECSASLClient *)self _handleGenericError:v17 description:@"Failed to get information about the SASL mechanism"];
  }

LABEL_29:

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (NSArray)installedMechanisms
{
  if (initializeSASLIfNecessary_onceToken != -1)
  {
    +[ECSASLClient installedMechanisms];
  }

  if (initializeSASLIfNecessary_saslInitializationStatus)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = sasl_global_listmech();
    if (v4 && *v4)
    {
      v5 = v4 + 1;
      do
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v2 addObject:v6];
      }

      while (*v5++);
    }
  }

  return v2;
}

- (id)responseForServerData:(id)data
{
  dataCopy = data;
  if ([(ECSASLClient *)self saslStatus]!= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:419 description:@"This method must be called in the NegotiatingAuthentication state"];
  }

  [(ECSASLClient *)self setLastResponseIncludesCredential:0];
  v6 = [dataCopy length];
  v7 = v6;
  if (HIDWORD(v6))
  {
    NSLog(&cfstr_ServerDataWasT.isa, v6, 0xFFFFFFFFLL, self);
    v7 = -1;
  }

  clientout = 0;
  clientoutlen = 0;
  prompt_need = 0;
  v8 = sasl_client_step(-[ECSASLClient saslConnection](self, "saslConnection"), [dataCopy bytes], v7, &prompt_need, &clientout, &clientoutlen);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:clientout length:clientoutlen];
    }

    else
    {
      if (v8 == 2)
      {
        [(ECSASLClient *)self _handleNeedsUserInteraction:prompt_need];
      }

      else
      {
        [(ECSASLClient *)self _handleGenericError:v8 description:@"Failed a step of SASL authentication"];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:clientout length:clientoutlen];
    [(ECSASLClient *)self _clearAuthenticationCallbackBuffers];
    [(ECSASLClient *)self setSaslStatus:2];
    [(ECSASLClient *)self _retrieveEncryptionBufferSize];
  }

  return v9;
}

- (BOOL)lastResponseIncludesPlainTextCredential
{
  lastResponseIncludesCredential = [(ECSASLClient *)self lastResponseIncludesCredential];
  if (lastResponseIncludesCredential)
  {

    LOBYTE(lastResponseIncludesCredential) = [(ECSASLClient *)self mechanismUsesPlainText];
  }

  return lastResponseIncludesCredential;
}

- (void)_retrieveEncryptionBufferSize
{
  saslConnection = [(ECSASLClient *)self saslConnection];
  pvalue = 0;
  v4 = sasl_getprop(saslConnection, 1, &pvalue);
  if (v4)
  {
    v5 = v4;
    v6 = @"Failed to get security strength factor from the SASL connection";
LABEL_3:
    [(ECSASLClient *)self _handleGenericError:v5 description:v6];
    return;
  }

  if (*pvalue)
  {
    v8 = 0;
    v7 = sasl_getprop(saslConnection, 2, &v8);
    if (!v7)
    {
      [(ECSASLClient *)self setEncryptionBufferSize:*v8];
      return;
    }

    v5 = v7;
    v6 = @"Failed to get security layer buffer size from the SASL connection";
    goto LABEL_3;
  }
}

- (id)newEncryptedDataForBytes:(const char *)bytes length:(unsigned int)length
{
  if ([(ECSASLClient *)self saslStatus]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:738 description:@"This method must be called in the Authenticated state"];
  }

  output = 0;
  outputlen = 0;
  v8 = sasl_encode([(ECSASLClient *)self saslConnection], bytes, length, &output, &outputlen);
  if (v8)
  {
    [(ECSASLClient *)self _handleGenericError:v8 description:@"Failed to encrypt data"];
    return 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v10 initWithBytes:output length:outputlen];
  }
}

- (id)newDecryptedDataForBytes:(const char *)bytes length:(unsigned int)length
{
  if ([(ECSASLClient *)self saslStatus]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:755 description:@"This method must be called in the Authenticated state"];
  }

  output = 0;
  outputlen = 0;
  v8 = sasl_decode([(ECSASLClient *)self saslConnection], bytes, length, &output, &outputlen);
  if (v8)
  {
    [(ECSASLClient *)self _handleGenericError:v8 description:@"Failed to decrypt data"];
    return 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v10 initWithBytes:output length:outputlen];
  }
}

- (void)_clearAuthenticationCallbackBuffers
{
  free(self->_authenticationName);
  self->_authenticationName = 0;
  free(self->_authorizationName);
  self->_authorizationName = 0;
  free(self->_password);
  self->_password = 0;
}

- (BOOL)_logGenericError:(int)error saslConnection:(sasl_conn *)connection description:(id)description error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:sasl_errdetail(connection)];
  v11 = +[ECSASLClient log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = descriptionCopy;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_22D092000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@\n%{public}@", buf, 0x16u);
  }

  if (a6)
  {
    v19 = *MEMORY[0x277CCA498];
    v20 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SASLErrorDomain" code:error userInfo:v12];
    v17 = *MEMORY[0x277CCA7E8];
    v18 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    *a6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ECAuthenticationErrorDomain" code:1030 userInfo:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_handleStartFailure:(int)failure
{
  if (failure == -4)
  {
    saslConnection = [(ECSASLClient *)self saslConnection];
    memset(value, 0, sizeof(value));
    if (sasl_setprop(saslConnection, 101, value))
    {
      v5 = 1046;
    }

    else
    {
      prompt_need = 0;
      mechanismNames = [(ECSASLClient *)self mechanismNames];
      v7 = [mechanismNames componentsJoinedByString:@" "];
      uTF8String = [v7 UTF8String];

      if (sasl_client_start(saslConnection, uTF8String, &prompt_need, 0, 0, 0) == -4)
      {
        v5 = 1046;
      }

      else
      {
        v5 = 1045;
      }
    }

    [(ECSASLClient *)self setSaslStatus:3];
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ECAuthenticationErrorDomain" code:v5 userInfo:0];
    [(ECSASLClient *)self setSaslError:v9];
  }

  else
  {

    [ECSASLClient _handleGenericError:"_handleGenericError:description:" description:?];
  }
}

- (void)_handleNeedsUserInteraction:(sasl_interact *)interaction
{
  interactionCopy = interaction;
  if (!interaction)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECSASLClient.m" lineNumber:858 description:@"libsasl returned SASL_INTERACT without a corresponding sasl_interact_t"];
  }

  credentials = [(ECSASLClient *)self credentials];
  do
  {
    v5 = 0;
    id = interactionCopy->id;
    if (interactionCopy->id > 18947)
    {
      if (id == 18948)
      {
        password = [credentials password];
        if (!password)
        {
          appleAuthenticationToken = [credentials appleAuthenticationToken];
          if (!appleAuthenticationToken)
          {
LABEL_24:
            base64EncodedAppleAuthenticationToken2 = [credentials base64EncodedAppleAuthenticationToken2];
            goto LABEL_25;
          }

LABEL_23:
          v5 = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
        if (id != 18952)
        {
          goto LABEL_28;
        }

        password = [credentials password];
        if (!password)
        {
          appleAuthenticationToken = [credentials oauthToken];
          if (!appleAuthenticationToken)
          {
            base64EncodedAppleAuthenticationToken2 = [credentials appleAuthenticationToken];
LABEL_25:
            v5 = base64EncodedAppleAuthenticationToken2 == 0;

            goto LABEL_26;
          }

          goto LABEL_23;
        }
      }

LABEL_19:
      v5 = 0;
LABEL_27:

      goto LABEL_28;
    }

    switch(id)
    {
      case 16388:
        password = [credentials appleAuthenticationToken];
        if (!password)
        {
          appleAuthenticationToken = [credentials oauthToken];
          if (!appleAuthenticationToken)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_19;
      case 18946:
        password = [credentials password];
        if (!password)
        {
          appleAuthenticationToken = [credentials oauthToken];
          if (!appleAuthenticationToken)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_19;
      case 0:
        [(ECSASLClient *)self _handleGenericError:2 description:@"User interaction needed"];
        goto LABEL_30;
    }

LABEL_28:
    ++interactionCopy;
  }

  while (!v5);
  [(ECSASLClient *)self setSaslStatus:3];
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECAuthenticationErrorDomain" code:1032 userInfo:0];
  [(ECSASLClient *)self setSaslError:v10];

LABEL_30:
}

- (ECAuthenticationCredentials)credentials
{
  WeakRetained = objc_loadWeakRetained(&self->_credentials);

  return WeakRetained;
}

@end