@interface MFAACertificateManager
+ (BOOL)isBAAUserCertInfo:(id)info;
+ (BOOL)isBAAUserPolicy:(unint64_t)policy;
+ (BOOL)isCertificateValidForFeatures:(unint64_t)features certificate:(id)certificate;
+ (BOOL)isComponentCertInfo:(id)info;
+ (BOOL)isComponentPolicy:(unint64_t)policy;
+ (BOOL)isMFi2_3CertInfo:(id)info;
+ (BOOL)isMFi2_3Policy:(unint64_t)policy;
+ (id)_anchorCertificatesDataForTypes:(int)types;
+ (id)anchorCertificatesForTypes:(int)types;
+ (id)sharedManager;
+ (int)_anchorType2CertType:(int)type;
+ (int)determineCertificateType:(id)type;
- (BOOL)verifyCertificateChainInfoSerialNumber:(id)number;
- (BOOL)verifyCertificateSerialNumberBySerialNumber:(id)number authVer:(int)ver;
- (BOOL)verifyNonceSignature:(id)signature nonce:(id)nonce signature:(id)a5;
- (MFAACertificateManager)init;
- (id)_getAnchorCertsForPolicy:(unint64_t)policy;
- (id)_init;
- (id)copyCertificateSerialNumber:(id)number authVer:(int)ver;
- (id)copyLeafCertificateSerialNumber:(id)number;
- (id)copyParsedCertificateChainInfo:(id)info;
- (id)copyParsedCertificateChainInfo:(id)info assumeType:(int)type;
- (id)createVeridianNonce:(id)nonce withChallenge:(id)challenge;
- (int)_getCachedCertStatus:(id)status issuerSeq:(id)seq ppid:(id)ppid;
- (int)_validateBAACertificateChain:(id)chain error:(id *)error;
- (int)_validateCertificateChain:(id)chain realtime:(BOOL)realtime error:(id *)error;
- (int)_validateCertificateWithServer:(id)server issuerSeq:(id)seq ppid:(id)ppid error:(id *)error;
- (int)_validateX509CertificateChain:(id)chain anchorCerts:(id)certs error:(id *)error;
- (int)authVersionFromCertificateChainInfo:(id)info;
- (int)validateCertificateChain:(id)chain type:(int)type realtime:(BOOL)realtime error:(id *)error;
- (void)requestMetadataForCertificate:(id)certificate requestedLocale:(id)locale requestInfo:(id)info completionHandler:(id)handler;
- (void)validateCertificate:(id)certificate realtime:(BOOL)realtime completionHandler:(id)handler;
@end

@implementation MFAACertificateManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MFAACertificateManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_1 != -1)
  {
    dispatch_once(&sharedManager_once_1, block);
  }

  v2 = sharedManager_sharedInstance_1;

  return v2;
}

- (MFAACertificateManager)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedManager);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  init_logging();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFAATokenManager *)self _init];
  }

  v13.receiver = self;
  v13.super_class = MFAACertificateManager;
  v6 = [(MFAACertificateManager *)&v13 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.MFAAuthentication.MFAANetwork"];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286857088];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v6->_xpcConnection resume];
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.MFAAuthentication"];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = v10;
  }

  return v6;
}

- (void)validateCertificate:(id)certificate realtime:(BOOL)realtime completionHandler:(id)handler
{
  realtimeCopy = realtime;
  v25 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "YES";
    if (!handlerCopy)
    {
      v13 = "NO";
    }

    *buf = 136315138;
    v24 = v13;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "Validating certificate... (completionHandler: %s)", buf, 0xCu);
  }

  if (handlerCopy)
  {
    if (realtimeCopy)
    {
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__MFAACertificateManager_validateCertificate_realtime_completionHandler___block_invoke;
      block[3] = &unk_279831B50;
      block[4] = self;
      v20 = certificateCopy;
      v22 = realtimeCopy;
      v21 = handlerCopy;
      dispatch_async(v14, block);
    }

    else
    {
      v18 = 0;
      v15 = [(MFAACertificateManager *)self validateCertificate:certificateCopy realtime:0 error:&v18];
      v16 = v18;
      (*(handlerCopy + 2))(handlerCopy, v15, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __73__MFAACertificateManager_validateCertificate_realtime_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = 0;
  [v2 validateCertificate:v3 realtime:v4 error:&v6];
  v5 = v6;
  (*(*(a1 + 48) + 16))();
}

- (int)validateCertificateChain:(id)chain type:(int)type realtime:(BOOL)realtime error:(id *)error
{
  realtimeCopy = realtime;
  v96 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  v11 = chainCopy;
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type != 4)
      {
        goto LABEL_8;
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v32 = [v11 objectAtIndexedSubscript:0];
      CertificateRefWithData = createCertificateRefWithData(v32, 1);

      if (CertificateRefWithData)
      {
        CFArrayAppendValue(Mutable, CertificateRefWithData);
        CFRelease(CertificateRefWithData);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v46 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v46 = MEMORY[0x277D86220];
          v66 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v90 = 4;
          _os_log_impl(&dword_25627E000, v46, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
        }
      }

      if (_anchorCertsForProvenance_onceToken != -1)
      {
        [MFAACertificateManager validateCertificateChain:type:realtime:error:];
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v67 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v67 = MEMORY[0x277D86220];
        v68 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v69 = [_anchorCertsForProvenance_anchorCerts count];
        *buf = 134217984;
        *v90 = v69;
        _os_log_impl(&dword_25627E000, v67, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for Provenance", buf, 0xCu);
      }

      v53 = _anchorCertsForProvenance_anchorCerts;
      LODWORD(self) = [(MFAACertificateManager *)self _validateX509CertificateChain:Mutable anchorCerts:v53 error:error];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v54 = MEMORY[0x277D86220];
        v70 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_198;
      }

      *buf = 67109120;
      *v90 = self;
      v56 = "validateCertificateChain: Provenance status = %d";
LABEL_196:
      v57 = v54;
      v58 = 8;
      goto LABEL_197;
    }

    if (type == 7)
    {
      v34 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v35 = [v11 objectAtIndex:0];
      v36 = SecCertificateCreateWithData(v34, v35);

      if (v36)
      {
        CFArrayAppendValue(Mutable, v36);
        CFRelease(v36);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v47 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v47 = MEMORY[0x277D86220];
          v71 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v90 = 7;
          _os_log_impl(&dword_25627E000, v47, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
        }
      }

      v72 = [v11 objectAtIndex:1];
      v73 = SecCertificateCreateWithData(v34, v72);

      if (v73)
      {
        CFArrayAppendValue(Mutable, v73);
        CFRelease(v73);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v74 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v74 = MEMORY[0x277D86220];
          v75 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v90 = 7;
          _os_log_impl(&dword_25627E000, v74, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get intermediateCert for type %d", buf, 8u);
        }
      }

      if (_anchorCertsForWPC_onceToken != -1)
      {
        [MFAACertificateManager validateCertificateChain:type:realtime:error:];
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v76 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v76 = MEMORY[0x277D86220];
        v77 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v78 = [_anchorCertsForWPC_anchorCerts count];
        *buf = 134217984;
        *v90 = v78;
        _os_log_impl(&dword_25627E000, v76, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for WPC", buf, 0xCu);
      }

      v53 = _anchorCertsForWPC_anchorCerts;
      LODWORD(self) = [(MFAACertificateManager *)self _validateX509CertificateChain:Mutable anchorCerts:v53 error:error];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v54 = MEMORY[0x277D86220];
        v79 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_198;
      }

      *buf = 67109120;
      *v90 = self;
      v56 = "validateCertificateChain: WPC status = %d";
      goto LABEL_196;
    }

    if (type == 6)
    {
LABEL_12:
      trust = 0;
      v87 = 0;
      if (chainCopy && [chainCopy count])
      {
        [v11 objectAtIndexedSubscript:0];

        self = SecPolicyCreateiAP();
        if (!self)
        {
          [MFAACertificateManager validateCertificateChain:type:realtime:error:];
          v16 = 0;
          goto LABEL_73;
        }

        v15 = [v11 count];
        v16 = CFArrayCreateMutable(0, v15, MEMORY[0x277CBF128]);
        if (v16)
        {
          v17 = v11;
          v18 = realtimeCopy;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v82 = v17;
          v19 = v17;
          v20 = [v19 countByEnumeratingWithState:&v83 objects:v95 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v84;
            v23 = *MEMORY[0x277CBECE8];
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v84 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = SecCertificateCreateWithData(v23, *(*(&v83 + 1) + 8 * i));
                if (v25)
                {
                  v26 = v25;
                  CFArrayAppendValue(v16, v25);
                  CFRelease(v26);
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v83 objects:v95 count:16];
            }

            while (v21);
          }

          SecTrustCreateWithCertificates(v16, self, &trust);
          if (!trust)
          {
            [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            v16 = 0;
            LODWORD(self) = 0;
            realtimeCopy = v18;
            v11 = v82;
            goto LABEL_73;
          }

          realtimeCopy = v18;
          if (type == 1)
          {
            v11 = v82;
            if (_anchorCertsForMFi3_onceToken != -1)
            {
              [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            }

            if (gLogObjects && gNumLogObjects >= 2)
            {
              v27 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v27 = MEMORY[0x277D86220];
              v39 = MEMORY[0x277D86220];
            }

            v40 = &_anchorCertsForMFi3_anchorCerts;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v41 = [_anchorCertsForMFi3_anchorCerts count];
              *buf = 134217984;
              *v90 = v41;
              v42 = "%lu anchor cert(s) returned for MFi3";
LABEL_65:
              _os_log_impl(&dword_25627E000, v27, OS_LOG_TYPE_INFO, v42, buf, 0xCu);
            }
          }

          else
          {
            v11 = v82;
            if (_anchorCertsForMFi2_onceToken != -1)
            {
              [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            }

            if (gLogObjects && gNumLogObjects >= 2)
            {
              v27 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v27 = MEMORY[0x277D86220];
              v43 = MEMORY[0x277D86220];
            }

            v40 = &_anchorCertsForMFi2_anchorCerts;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v44 = [_anchorCertsForMFi2_anchorCerts count];
              *buf = 134217984;
              *v90 = v44;
              v42 = "%lu anchor cert(s) returned for MFi2";
              goto LABEL_65;
            }
          }

          v16 = *v40;
          if (v16)
          {
            SecTrustSetAnchorCertificates(trust, v16);
            if (MEMORY[0x259C60280](trust, &v87))
            {
              [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            }

            else
            {
              LODWORD(self) = 1;
              if (v87 == 1 || v87 == 4)
              {
                goto LABEL_73;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAACertificateManager validateCertificateChain:? type:? realtime:? error:?];
              }
            }
          }

          else
          {
            [MFAACertificateManager validateCertificateChain:type:realtime:error:];
          }

          goto LABEL_72;
        }

        [MFAACertificateManager validateCertificateChain:type:realtime:error:];
      }

      else
      {
        v16 = 0;
      }

LABEL_72:
      LODWORD(self) = 0;
LABEL_73:

      goto LABEL_201;
    }

    goto LABEL_34;
  }

  if (type)
  {
    if (type == 1)
    {
      goto LABEL_12;
    }

    if (type == 3)
    {
LABEL_8:
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = createCertificateRefWithData(v13, 1);

      if (v14)
      {
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v37 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v37 = MEMORY[0x277D86220];
          v48 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v90 = type;
          _os_log_impl(&dword_25627E000, v37, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
        }
      }

      if (type == 5)
      {
        v49 = _anchorCertsForComponentAuth();
      }

      else
      {
        if (_anchorCertsForDEVN_onceToken != -1)
        {
          [MFAACertificateManager validateCertificateChain:type:realtime:error:];
        }

        if (gLogObjects && gNumLogObjects >= 2)
        {
          v50 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v50 = MEMORY[0x277D86220];
          v51 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v52 = [_anchorCertsForDEVN_anchorCerts count];
          *buf = 134217984;
          *v90 = v52;
          _os_log_impl(&dword_25627E000, v50, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for DEVN", buf, 0xCu);
        }

        v49 = _anchorCertsForDEVN_anchorCerts;
      }

      v53 = v49;
      LODWORD(self) = [(MFAACertificateManager *)self _validateX509CertificateChain:Mutable anchorCerts:v49 error:error];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v54 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_198;
      }

      *buf = 67109376;
      *v90 = type;
      *&v90[4] = 1024;
      *&v90[6] = self;
      v56 = "validateCertificateChain: type=%d, status = %d";
      v57 = v54;
      v58 = 14;
LABEL_197:
      _os_log_impl(&dword_25627E000, v57, OS_LOG_TYPE_DEFAULT, v56, buf, v58);
LABEL_198:

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_201;
    }

LABEL_34:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      self = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      self = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v90 = type;
      _os_log_impl(&dword_25627E000, &self->super, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Unrecognized cert type %d for cert validation, likely not supported by this API yet", buf, 8u);
    }

    LODWORD(self) = 0;
    goto LABEL_201;
  }

  v28 = *MEMORY[0x277CBECE8];
  v29 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v30 = [v11 objectAtIndex:0];
  v31 = SecCertificateCreateWithData(v28, v30);

  if (v31)
  {
    CFArrayAppendValue(v29, v31);
    CFRelease(v31);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v45 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v45 = MEMORY[0x277D86220];
      v59 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v90 = 0;
      _os_log_impl(&dword_25627E000, v45, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
    }
  }

  v60 = [v11 objectAtIndex:1];
  v61 = SecCertificateCreateWithData(v28, v60);

  if (v61)
  {
    CFArrayAppendValue(v29, v61);
    CFRelease(v61);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v62 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v62 = MEMORY[0x277D86220];
      v63 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v90 = 0;
      _os_log_impl(&dword_25627E000, v62, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get intermediateCert for type %d", buf, 8u);
    }
  }

  LODWORD(self) = [(MFAACertificateManager *)self _validateBAACertificateChain:v29 error:error];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v64 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v64 = MEMORY[0x277D86220];
    v65 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v90 = 0;
    *&v90[4] = 1024;
    *&v90[6] = self;
    _os_log_impl(&dword_25627E000, v64, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: type=%d, status = %d", buf, 0xEu);
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_201:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v90 = self;
    *&v90[4] = 1024;
    *&v90[6] = type;
    v91 = 1024;
    v92 = realtimeCopy;
    v93 = 2112;
    v94 = v11;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "validateCertificateChain: status %d, type %d, realtime %d, certificates %@", buf, 0x1Eu);
  }

  v80 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)requestMetadataForCertificate:(id)certificate requestedLocale:(id)locale requestInfo:(id)info completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  localeCopy = locale;
  infoCopy = info;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 2;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_DEFAULT, "Processing request for certificate metadata...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [certificateCopy length];
    localeIdentifier = [localeCopy localeIdentifier];
    v21 = localeIdentifier;
    v22 = "YES";
    *buf = 134218755;
    v44 = v19;
    v45 = 2112;
    if (!handlerCopy)
    {
      v22 = "NO";
    }

    v46 = localeIdentifier;
    v47 = 2113;
    v48 = infoCopy;
    v49 = 2080;
    v50 = v22;
    _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "certificate.length: %lu, requestedLocale: %@, requestInfo: %{private}@, completionHandler: %s", buf, 0x2Au);
  }

  if (handlerCopy)
  {
    if (systemInfo_isInternalBuild() && (-[MFAACertificateManager userDefaults](self, "userDefaults"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 BOOLForKey:@"SpoofPPIDMetadata"], v23, v24))
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v25 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v25 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25627E000, v25, OS_LOG_TYPE_DEFAULT, "Spoofing PPID metadata...", buf, 2u);
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v30 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v30 = MEMORY[0x277D86220];
        v31 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v44) = 1000;
        _os_log_impl(&dword_25627E000, v30, OS_LOG_TYPE_INFO, "Sleeping %dms...", buf, 8u);
      }

      v32 = dispatch_time(0, 1000000000);
      v33 = dispatch_get_global_queue(0, 0);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke;
      v40[3] = &unk_279831B78;
      v27 = &v42;
      v42 = handlerCopy;
      v41 = localeCopy;
      dispatch_after(v32, v33, v40);

      v28 = v41;
    }

    else
    {
      v26 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74;
      block[3] = &unk_279831BA0;
      v27 = v36;
      v36[0] = certificateCopy;
      v36[1] = self;
      v37 = localeCopy;
      v39 = handlerCopy;
      v38 = infoCopy;
      dispatch_async(v26, block);

      v28 = v37;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  CertificateRefWithData = createCertificateRefWithData(*(a1 + 32), 1);
  v3 = SecCertificateGetiAuthVersion();
  if (v3 == 4)
  {
    v4 = _createCertificateArrayForCert(CertificateRefWithData);
    v5 = *(a1 + 40);
    v36 = 0;
    v6 = [v5 _validateCertificateChain:v4 realtime:1 error:&v36];
    v7 = v36;
    if (v6 == 1)
    {
      v8 = SecCertificateCopySerialNumberData(CertificateRefWithData, 0);
      if (v8)
      {
        v9 = SecCertificateCopyIssuerSequence();
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v10 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v10 = MEMORY[0x277D86220];
          v11 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_3();
        }

        if (v9)
        {
          v12 = SecCertificateCopyIssuerSummary();
          if (v12)
          {
            v32 = v4;
            v13 = SecCertificateCopyOrganization();
            v14 = v13;
            if (v13 && [v13 count] && (objc_msgSend(v14, "objectAtIndexedSubscript:", 0), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v16 = v15;
              v30 = v9;
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v17 = *(gLogObjects + 8);
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [MFAATokenManager _init];
                }

                v17 = MEMORY[0x277D86220];
                v18 = MEMORY[0x277D86220];
              }

              v31 = v7;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v19 = [(__CFData *)v8 length];
                v20 = [*(a1 + 48) localeIdentifier];
                *buf = 138478851;
                *&buf[4] = v8;
                v38 = 2048;
                v39 = v19;
                v40 = 2112;
                v41 = v12;
                v42 = 2113;
                v43 = v16;
                v44 = 2112;
                v45 = v20;
                _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_INFO, "certSerial: %{private}@, certSerial.length: %lu, issuer: %@, ppid: %{private}@, requestedLocale: %@", buf, 0x34u);
              }

              v21 = [*(a1 + 40) xpcConnection];
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79;
              v34[3] = &unk_279831188;
              v35 = *(a1 + 64);
              v22 = [v21 remoteObjectProxyWithErrorHandler:v34];
              v23 = *(a1 + 48);
              v24 = *(a1 + 56);
              v33 = *(a1 + 64);
              v9 = v30;
              [v22 requestMetadataForCertSerial:v8 issuerSeq:? ppid:? requestedLocale:? requestInfo:? withReply:?];

              v25 = v31;
            }

            else
            {
              __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
              v16 = v7;
              v25 = *buf;
            }

            v4 = v32;
          }

          else
          {
            __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
            v14 = v7;
            v25 = *buf;
          }
        }

        else
        {
          __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
          v12 = v7;
          v25 = *buf;
        }
      }

      else
      {
        __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
        v9 = v7;
        v25 = *buf;
      }
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"The provided certificate is not valid."];

      v25 = v29;
    }
  }

  else
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_1(v3, buf);
    v25 = *buf;
  }

  if (CertificateRefWithData)
  {
    CFRelease(CertificateRefWithData);
  }

  if (v25)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v26 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v26 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_11();
    }

    (*(*(a1 + 64) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2();
  }

  v7 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v8 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_4();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)copyParsedCertificateChainInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = infoCopy;
    _os_log_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo: certificateData %@", buf, 0xCu);
  }

  if (!infoCopy)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
    v14 = 0;
    v13 = 0;
    v7 = 0;
    goto LABEL_27;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v7)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
LABEL_42:
    v14 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  bytes = [infoCopy bytes];
  v9 = [infoCopy length];
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v10 = CTParseAccessoryCerts(bytes, v9, &v26, &v25, &v24, &v23, &v22);
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v11 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v28 = v9;
    v29 = 2048;
    v30 = v25;
    v31 = 2048;
    v32 = v23;
    v33 = 2048;
    v34 = v22;
    v35 = 1024;
    v36 = v10;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo: certData(%zu bytes), leafCertData(%zu bytes), subCACertData(%zu bytes), ctPolicyFlags 0x%llx, ret %x", buf, 0x30u);
  }

  if (v10)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
    goto LABEL_42;
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:v25];
  if (!v13)
  {
    v14 = 0;
LABEL_27:
    v15 = 0;
    goto LABEL_30;
  }

  [v7 setObject:v13 forKey:@"LeafCertData"];
  [v7 setObject:infoCopy forKey:@"FullCertData"];
  if (v24)
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v23];
    if (v14)
    {
      [v7 setObject:v14 forKey:@"SubCACertData"];
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
  [v7 setObject:v16 forKey:@"PolicyFlags"];

  v15 = [v7 copy];
LABEL_30:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo: result %@", buf, 0xCu);
  }

  v19 = v15;
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)copyParsedCertificateChainInfo:(id)info assumeType:(int)type
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109378;
    typeCopy2 = type;
    v22 = 2112;
    v23 = infoCopy;
    _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo:assumeType: %d, certificateData %@", &v20, 0x12u);
  }

  if (!infoCopy)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  if ((type + 1) > 7)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v14 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager copyParsedCertificateChainInfo:assumeType:];
    }

    goto LABEL_26;
  }

  if (((1 << (type + 1)) & 0xCF) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = v12;
    if (v12)
    {
      [v12 setObject:infoCopy forKey:@"LeafCertData"];
      [v11 setObject:infoCopy forKey:@"FullCertData"];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
      [v11 setObject:v13 forKey:@"PolicyFlags"];

      v10 = [v11 copy];
      goto LABEL_28;
    }

    [MFAACertificateManager copyParsedCertificateChainInfo:];
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v10 = [(MFAACertificateManager *)self copyParsedCertificateChainInfo:infoCopy];
  v11 = 0;
LABEL_28:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v16 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109378;
    typeCopy2 = type;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo:assumeType: %d, result %@", &v20, 0x12u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)authVersionFromCertificateChainInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (infoCopy)
  {
    v5 = [infoCopy objectForKey:@"PolicyFlags"];
    v6 = v5;
    if (v5)
    {
      if (([v5 unsignedLongLongValue] & 0x8000000) != 0)
      {
        v7 = 2;
      }

      else if (([v6 unsignedLongLongValue] & 4) != 0)
      {
        v7 = 3;
      }

      else if (([v6 unsignedLongLongValue] & 0x40000000) != 0)
      {
        v7 = 4;
      }

      else if (([v6 unsignedLongLongValue] & 0x41C00000000) != 0)
      {
        v7 = 5;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
    v6 = 0;
  }

  v7 = 0;
LABEL_14:
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MFAACertificateManager authVersionFromCertificateChainInfo:];
  }

  return v7;
}

- (id)copyCertificateSerialNumber:(id)number authVer:(int)ver
{
  v28 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v6 = numberCopy;
  error = 0;
  if (numberCopy)
  {
    v7 = *MEMORY[0x277CBECE8];
    [numberCopy bytes];
    [v6 length];
    v8 = SecCertificateCreateWithBytes();
    if (v8)
    {
      v9 = v8;
      v10 = SecCertificateCopySerialNumberData(v8, &error);
      v11 = v10;
      if (v10)
      {
        v12 = error == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        if (ver != 2)
        {
          goto LABEL_17;
        }

        BytePtr = CFDataGetBytePtr(v10);
        Length = CFDataGetLength(v11);
        v15 = BytePtr && Length == 15;
        if (!v15 || (BytePtr[7] & 0x80000000) == 0 || (!MFAAIsInternalBuild() || (MFAAIsDevelopmentHW() & 1) == 0) && !MFAAIsDeveloperBuild())
        {
          goto LABEL_17;
        }

        v21 = *BytePtr;
        *&buf[7] = *(BytePtr + 7);
        *buf = v21;
        buf[7] = HIBYTE(v21) & 0x7F;
        CFRelease(v11);
        v11 = CFDataCreate(0, buf, 15);
        if (v11)
        {
          goto LABEL_17;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager copyCertificateSerialNumber:authVer:];
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "[MFAACertificateManager copyCertificateSerialNumber:authVer:]";
        *&buf[12] = 1024;
        *&buf[14] = 1072;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = error;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WARNING: pkSerNumData = %@, pCFError = %@", buf, 0x26u);
      }

      v11 = 0;
LABEL_17:
      CFRelease(v9);
      goto LABEL_18;
    }

    [MFAACertificateManager copyCertificateSerialNumber:authVer:];
  }

  else
  {
    [MFAACertificateManager copyCertificateSerialNumber:authVer:];
  }

  v11 = 0;
LABEL_18:
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 2;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v18 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  else
  {
    v18 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MFAACertificateManager copyCertificateSerialNumber:authVer:];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)copyLeafCertificateSerialNumber:(id)number
{
  v17 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = numberCopy;
  if (numberCopy)
  {
    v6 = [numberCopy objectForKey:@"LeafCertData"];
    if (v6)
    {
      v7 = [(MFAACertificateManager *)self copyCertificateSerialNumber:v6 authVer:[(MFAACertificateManager *)self authVersionFromCertificateChainInfo:v5]];
    }

    else
    {
      [MFAACertificateManager copyLeafCertificateSerialNumber:];
      v7 = 0;
    }
  }

  else
  {
    [MFAACertificateManager copyLeafCertificateSerialNumber:];
    v7 = 0;
    v6 = 0;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "copyLeafCertificateSerialNumber: certSerial %@, certificateInfo %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)verifyCertificateSerialNumberBySerialNumber:(id)number authVer:(int)ver
{
  numberCopy = number;
  v6 = numberCopy;
  if (!numberCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
    }

    goto LABEL_26;
  }

  bytes = [numberCopy bytes];
  v8 = [v6 length];
  if (!bytes)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
    }

    goto LABEL_26;
  }

  if (ver == 2 && v8 == 15)
  {
    v9 = (*bytes << 56) | (bytes[1] << 48) | (bytes[3] << 40) | (bytes[4] << 32) | (bytes[5] << 24) | (bytes[7] << 16) | (bytes[9] << 8);
    v10 = bytes[10];
    v11 = bytes[12];
    v12 = bytes[13];
    v13 = bytes[14];
    NumRevokedAuthICBatches = getNumRevokedAuthICBatches();
    RevokedAuthICBatches = getRevokedAuthICBatches();
    v16 = MFAAPrefixesBinarySearch(RevokedAuthICBatches, v9 + v10, NumRevokedAuthICBatches);
    if (v16 != -1 && MFAABatchBinarySearch(RevokedAuthICBatches[3 * v16 + 2], (v11 << 16) | (v12 << 8) | v13, RevokedAuthICBatches[3 * v16 + 1]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(MFAACertificateManager *)bytes verifyCertificateSerialNumberBySerialNumber:v17 authVer:v18, v19, v20, v21, v22, v23];
      }

LABEL_26:
      v29 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (ver != 3 || v8 != 16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      goto LABEL_26;
    }

    v24 = *bytes;
    if (v24 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:bytes authVer:?];
      }

      goto LABEL_26;
    }

    v25 = (v24 << 40) | (bytes[1] << 32) | (bytes[2] << 24) | (bytes[3] << 16) | (bytes[4] << 8);
    v26 = bytes[5];
    NumRevokedAuth3Wafers = getNumRevokedAuth3Wafers();
    RevokedAuth3Wafers = getRevokedAuth3Wafers();
    if (MFAAWaferBinarySearch(RevokedAuth3Wafers, v25 | v26, NumRevokedAuth3Wafers))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      goto LABEL_26;
    }
  }

  v29 = 1;
LABEL_27:

  return v29;
}

- (BOOL)verifyCertificateChainInfoSerialNumber:(id)number
{
  v20 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = numberCopy;
  if (!numberCopy)
  {
    v7 = logObjectForModule(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateChainInfoSerialNumber:];
    }

    goto LABEL_27;
  }

  v6 = [numberCopy objectForKey:@"LeafCertData"];
  if (!v6)
  {
    v7 = logObjectForModule(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateChainInfoSerialNumber:];
    }

LABEL_27:
    v9 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [(MFAACertificateManager *)self authVersionFromCertificateChainInfo:v5];
  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v9 = [(MFAACertificateManager *)self verifyCertificateSerialNumber:v7 authVer:v8];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = v8;
      _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "No certSerial support for auth type %d, skip", &v16, 8u);
    }

    v9 = 1;
  }

LABEL_14:

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v12 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109378;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "verifyCertificateLeafSerialNumber: bSerNumValid %d, certificateInfo %@", &v16, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)verifyNonceSignature:(id)signature nonce:(id)nonce signature:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  nonceCopy = nonce;
  v10 = a5;
  v11 = v10;
  error = 0;
  trust = 0;
  selfCopy = self;
  v48 = nonceCopy;
  if (!signatureCopy)
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
LABEL_86:
    v21 = 0;
    LOBYTE(bytes2) = 0;
    v27 = 0;
    v24 = 0;
    nonceCopy = 0;
    goto LABEL_87;
  }

  if (!nonceCopy)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    v21 = 0;
    LOBYTE(bytes2) = 0;
    v27 = 0;
    v24 = 0;
LABEL_87:
    v12 = 0;
    goto LABEL_33;
  }

  if (!v10)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    goto LABEL_86;
  }

  v12 = [signatureCopy objectForKey:@"LeafCertData"];
  if (!v12)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    v21 = 0;
    LOBYTE(bytes2) = 0;
LABEL_90:
    v27 = 0;
    v24 = 0;
    nonceCopy = 0;
    goto LABEL_33;
  }

  bytes2 = [signatureCopy objectForKey:@"FullCertData"];
  if (!bytes2)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    v21 = 0;
    goto LABEL_90;
  }

  v14 = [(MFAACertificateManager *)self authVersionFromCertificateChainInfo:signatureCopy];
  v15 = *MEMORY[0x277CBECE8];
  if ((v14 - 4) <= 0xFFFFFFFD)
  {
    [v12 bytes];
    [v12 length];
    v16 = SecCertificateCreateWithBytes();
    if (v16)
    {
      v17 = v16;
      v18 = SecCertificateCopyKey(v16);
      if (v18)
      {
        v19 = v18;
        v20 = SecKeyVerifySignature(v18, *MEMORY[0x277CDC300], nonceCopy, v11, &error);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v52 = v20 != 0;
          *&v52[4] = 2112;
          *&v52[6] = error;
          _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "signatureValidNoCertCheck for kSecKeyAlgorithmECDSASignatureMessageX962SHA256 = %d, error %@", buf, 0x12u);
        }

        if (error)
        {
          CFRelease(error);
          error = 0;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v28 = SecKeyVerifySignature(v19, *MEMORY[0x277CDC318], nonceCopy, v11, &error);
          v21 = v28 != 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *v52 = v28 != 0;
            *&v52[4] = 2112;
            *&v52[6] = error;
            _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "signatureValidNoCertCheck for kSecKeyAlgorithmECDSASignatureRFC4754 = %d, error %@", buf, 0x12u);
          }

          if (error)
          {
            CFRelease(error);
            error = 0;
          }
        }

        nonceCopy = bytes2;
        CFRelease(v19);
        goto LABEL_31;
      }

      nonceCopy = bytes2;
      [MFAACertificateManager verifyNonceSignature:nonce:signature:];
LABEL_25:
      v21 = 0;
LABEL_31:
      v24 = 0;
LABEL_32:
      CFRelease(v17);
      LOBYTE(bytes2) = 0;
      v27 = 0;
      goto LABEL_33;
    }

    goto LABEL_91;
  }

  v22 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v12);
  if (v22)
  {
    v17 = v22;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      goto LABEL_25;
    }

    v24 = Mutable;
    CFArrayAppendValue(Mutable, v17);
    v25 = SecPolicyCreateiAP();
    if (!v25)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      v21 = 0;
      goto LABEL_32;
    }

    v26 = v25;
    SecTrustCreateWithCertificates(v24, v25, &trust);
    if (!trust)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      LOBYTE(bytes2) = 0;
      v27 = 0;
      goto LABEL_82;
    }

    *buf = 0;
    v27 = MFAACreateAnchorCertificateAuthorityArray(v14);
    if (!v27)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      LOBYTE(bytes2) = 0;
      goto LABEL_82;
    }

    v46 = v26;
    SecTrustSetAnchorCertificates(trust, v27);
    if (MEMORY[0x259C60280](trust, buf))
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }
    }

    else
    {
      if (*buf == 4 || *buf == 1)
      {
        v35 = MEMORY[0x259C60260](trust);
        nonceCopy = bytes2;
        if (v35)
        {
          v36 = v35;
          bytes = [(__CFData *)v48 bytes];
          v41 = [(__CFData *)v48 length];
          bytes2 = [(__CFData *)v11 bytes];
          v37 = [(__CFData *)v11 length];
          if (v14 == 2)
          {
            v38 = 32770;
          }

          else
          {
            v38 = 0x4000;
          }

          cf = v36;
          v39 = SecKeyRawVerify(v36, v38, bytes, v41, bytes2, v37);
          LOBYTE(bytes2) = v39 == 0;
          v26 = v46;
          if (v39)
          {
            v43 = logObjectForModule(-1);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [MFAACertificateManager verifyNonceSignature:nonce:signature:];
            }

            v44 = logObjectForModule(-1);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [MFAACertificateManager verifyNonceSignature:nonce:signature:];
            }
          }

          CFRelease(cf);
          goto LABEL_82;
        }

        v40 = logObjectForModule(-1);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager verifyNonceSignature:nonce:signature:];
        }
      }

      else
      {
        nonceCopy = bytes2;
        v40 = logObjectForModule(-1);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager verifyNonceSignature:buf nonce:? signature:?];
        }
      }
    }

    LOBYTE(bytes2) = 0;
LABEL_82:
    CFRelease(v17);
    CFRelease(v26);
    v21 = 0;
    goto LABEL_33;
  }

LABEL_91:
  nonceCopy = bytes2;
  [MFAACertificateManager verifyNonceSignature:nonce:signature:];
  v21 = 0;
  LOBYTE(bytes2) = 0;
  v27 = 0;
  v24 = 0;
LABEL_33:
  if (trust)
  {
    CFRelease(trust);
    trust = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (bytes2)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    v29 = [(MFAACertificateManager *)selfCopy copyLeafCertificateSerialNumber:signatureCopy];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v30 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v30 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = [v29 length];
      *buf = 138478083;
      *v52 = v29;
      *&v52[8] = 2048;
      *&v52[10] = v32;
      _os_log_impl(&dword_25627E000, v30, OS_LOG_TYPE_INFO, "certSerial: %{private}@, certSerial.length: %lu", buf, 0x16u);
    }

    if (v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "auth cert validity check failed, but signature was signed by certificate ... treating as success", buf, 2u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)createVeridianNonce:(id)nonce withChallenge:(id)challenge
{
  v20 = *MEMORY[0x277D85DE8];
  nonceCopy = nonce;
  challengeCopy = challenge;
  v7 = [MEMORY[0x277CBEB28] dataWithData:challengeCopy];
  [v7 appendData:nonceCopy];
  v8 = *MEMORY[0x277CBECE8];
  v9 = SecSHA256DigestCreateFromData();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = challengeCopy;
    v14 = 2112;
    v15 = nonceCopy;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "createVeridianNonce: %@ + %@ -> %@ -> %@", &v12, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int)_validateCertificateChain:(id)chain realtime:(BOOL)realtime error:(id *)error
{
  realtimeCopy = realtime;
  v123[4] = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "Validating certificate... (internal)", buf, 2u);
  }

  if (systemInfo_isInternalBuild())
  {
    userDefaults = [(MFAACertificateManager *)self userDefaults];
    v13 = [userDefaults stringForKey:@"SpoofCertificateStatus"];

    if (v13)
    {
      v122[0] = @"default";
      v122[1] = @"valid";
      v123[0] = &unk_286854398;
      v123[1] = &unk_2868543B0;
      v122[2] = @"invalid";
      v122[3] = @"revoked";
      v123[2] = &unk_2868543C8;
      v123[3] = &unk_2868543E0;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:4];
      v15 = [v14 objectForKeyedSubscript:v13];

      if (v15)
      {
        v16 = [v14 objectForKeyedSubscript:v13];
        intValue = [v16 intValue];

        if (intValue)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v18 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [MFAATokenManager _init];
            }

            v18 = MEMORY[0x277D86220];
            v20 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = intValue;
            _os_log_impl(&dword_25627E000, v18, OS_LOG_TYPE_DEFAULT, "Spoofing certificate status: %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
          }

          v21 = 0;
          goto LABEL_142;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v19 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v19 = MEMORY[0x277D86220];
          v22 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager _validateCertificateChain:realtime:error:];
        }
      }
    }
  }

  v23 = [chainCopy objectAtIndex:0];

  if (v23)
  {
    v24 = SecCertificateCopySerialNumberData(v23, 0);
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v25 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v25 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    v105 = realtimeCopy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_impl(&dword_25627E000, v25, OS_LOG_TYPE_DEFAULT, "certSerial: %@", buf, 0xCu);
    }

    v28 = SecCertificateCopyIssuerSummary();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v29 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v29 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_impl(&dword_25627E000, v29, OS_LOG_TYPE_DEFAULT, "certIssuer: %@", buf, 0xCu);
    }

    v31 = MEMORY[0x277CBEAA8];
    SecCertificateNotValidBefore();
    v110 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
    v32 = MEMORY[0x277CBEAA8];
    SecCertificateNotValidAfter();
    v109 = [v32 dateWithTimeIntervalSinceReferenceDate:?];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v33 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v109;
      *&buf[12] = 2112;
      v118 = v110;
      _os_log_impl(&dword_25627E000, v33, OS_LOG_TYPE_DEFAULT, "expirationDate: %@, issueDate: %@", buf, 0x16u);
    }

    v108 = SecCertificateCopySubjectString();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v35 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
    }

    v106 = v28;
    v107 = v24;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v108;
      _os_log_impl(&dword_25627E000, v35, OS_LOG_TYPE_DEFAULT, "certSubject: %@", buf, 0xCu);
    }

    v37 = SecCertificateGetiAuthVersion();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v38 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v38 = MEMORY[0x277D86220];
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(&dword_25627E000, v38, OS_LOG_TYPE_DEFAULT, "authVersion: %{coreacc:SeciAuthVersion}d", buf, 8u);
    }

    v40 = SecCertificateCopyComponentType();
    if (v40)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v41 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v41 = MEMORY[0x277D86220];
        v45 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v40;
        _os_log_impl(&dword_25627E000, v41, OS_LOG_TYPE_DEFAULT, "componentType is present in certificate, value is %@", buf, 0xCu);
      }

      if (v37 != 4)
      {
        *buf = 0;
        if (MFAAIsDevelopmentHW())
        {
          NSLog(&cfstr_UseBasicx509Po.isa);
          BasicX509 = SecPolicyCreateBasicX509();
        }

        else
        {
          BasicX509 = SecPolicyCreateAppleComponentCertificate();
        }

        v48 = BasicX509;
        if (BasicX509)
        {
          if (SecTrustCreateWithCertificates(chainCopy, BasicX509, buf) || (v49 = *buf, v50 = _anchorCertsForComponentAuth(), SecTrustSetAnchorCertificates(v49, v50), v116 = 0, MEMORY[0x259C60280](*buf, &v116)))
          {
            intValue = 0;
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v51 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v51 = MEMORY[0x277D86220];
              v52 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *v121 = 67109120;
              *&v121[4] = v116;
              _os_log_impl(&dword_25627E000, v51, OS_LOG_TYPE_DEFAULT, "trustResult: %d", v121, 8u);
            }

            if (v116 == 4 || v116 == 5 && SecTrustIsExpiredOnly())
            {
              intValue = 1;
            }

            else
            {
              *v121 = 0;
              SecTrustEvaluateWithError(*buf, v121);
              if (*v121)
              {
                v53 = logObjectForModule(1);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  [MFAACertificateManager _validateCertificateChain:v121 realtime:? error:?];
                }

                if (*v121)
                {
                  CFRelease(*v121);
                }
              }

              intValue = 2;
            }
          }

          CFRelease(v48);
        }

        else
        {
          intValue = 0;
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

LABEL_140:
        v21 = 0;
LABEL_141:
        CFRelease(v23);

        goto LABEL_142;
      }
    }

    else
    {
      if (!v37)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v54 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v54 = MEMORY[0x277D86220];
          v55 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager _validateCertificateChain:realtime:error:];
        }

        v21 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
        intValue = 2;
        goto LABEL_141;
      }

      if (v37 != 4)
      {
        v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(chainCopy, "count")}];
        if (v42)
        {
          if ([chainCopy count])
          {
            v43 = 0;
            do
            {
              v44 = SecCertificateCopyData([chainCopy objectAtIndex:v43]);
              [v42 addObject:v44];

              ++v43;
            }

            while ([chainCopy count] > v43);
          }

          if (MFAAVerifyPublicCertificateChain(v42))
          {
            intValue = 1;
          }

          else
          {
            intValue = 2;
          }
        }

        else
        {
          intValue = 0;
        }

        goto LABEL_140;
      }
    }

    *v121 = 0;
    v63 = mfaa_certificateManager_SWAuthCertType(v23);
    if ((systemInfo_isInternalBuild() & 1) != 0 || (systemInfo_isDeveloperBuild() & 1) != 0 || v63 == 1)
    {
      v101 = v63;
      userDefaults2 = [(MFAACertificateManager *)self userDefaults];
      v65 = [userDefaults2 BOOLForKey:@"BypassCertificateExpirationCheck"];

      if (gLogObjects)
      {
        v66 = gNumLogObjects <= 1;
      }

      else
      {
        v66 = 1;
      }

      v67 = !v66;
      if (v65)
      {
        if (v67)
        {
          v68 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v68 = MEMORY[0x277D86220];
          v69 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "NO";
          _os_log_impl(&dword_25627E000, v68, OS_LOG_TYPE_DEFAULT, "enforceExpiration: %s (overridden by internal setting)", buf, 0xCu);
        }
      }

      else
      {
        if (v67)
        {
          v68 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v68 = MEMORY[0x277D86220];
          v70 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v71 = "NO";
          if (v101 == 2)
          {
            v71 = "YES";
          }

          *buf = 136315138;
          *&buf[4] = v71;
          _os_log_impl(&dword_25627E000, v68, OS_LOG_TYPE_DEFAULT, "enforceExpiration: %s", buf, 0xCu);
        }
      }

      v72 = SecPolicyCreateiAPSWAuthWithExpiration();
      if (v72)
      {
        v73 = v72;
        if (SecTrustCreateWithCertificates(v23, v72, v121))
        {
          v21 = 0;
          intValue = 0;
        }

        else
        {
          v74 = *v121;
          cf = v73;
          if (_anchorCertsForSWAuth_onceToken != -1)
          {
            [MFAACertificateManager _validateCertificateChain:realtime:error:];
          }

          if (gLogObjects && gNumLogObjects >= 2)
          {
            v75 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [MFAATokenManager _init];
            }

            v75 = MEMORY[0x277D86220];
            v76 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v77 = [_anchorCertsForSWAuth_anchorCerts count];
            *buf = 134217984;
            *&buf[4] = v77;
            _os_log_impl(&dword_25627E000, v75, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for SW Auth", buf, 0xCu);
          }

          v78 = _anchorCertsForSWAuth_anchorCerts;
          v79 = _anchorCertsForSWAuth_anchorCerts;
          SecTrustSetAnchorCertificates(v74, v78);
          v116 = 0;
          if (MEMORY[0x259C60280](*v121, &v116))
          {
            v21 = 0;
            intValue = 0;
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v80 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v80 = MEMORY[0x277D86220];
              v81 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v116;
              _os_log_impl(&dword_25627E000, v80, OS_LOG_TYPE_DEFAULT, "trustResult: %d", buf, 8u);
            }

            v102 = v116;
            if (v116 == 4)
            {
              intValue = 1;
            }

            else if (v116 == 6)
            {
              intValue = 3;
            }

            else
            {
              *buf = 0;
              SecTrustEvaluateWithError(*v121, buf);
              if (*buf)
              {
                v82 = logObjectForModule(1);
                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  [MFAACertificateManager _validateCertificateChain:buf realtime:? error:?];
                }

                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              intValue = 2;
            }

            if (gLogObjects && gNumLogObjects >= 2)
            {
              v83 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v83 = MEMORY[0x277D86220];
              v84 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = intValue;
              _os_log_impl(&dword_25627E000, v83, OS_LOG_TYPE_DEFAULT, "certStatus (local): %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
            }

            if (v102 == 4)
            {
              v85 = SecCertificateCopyIssuerSequence();
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v86 = *(gLogObjects + 8);
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [MFAATokenManager _init];
                }

                v86 = MEMORY[0x277D86220];
                v87 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
              {
                __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_3();
              }

              if (v85)
              {
                v88 = SecCertificateCopyOrganization();
                v99 = v88;
                v100 = v85;
                if (v88 && (v89 = v88, [v88 count]) && (objc_msgSend(v89, "objectAtIndexedSubscript:", 0), (v90 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v103 = v90;
                  if (gLogObjects && gNumLogObjects >= 2)
                  {
                    v91 = *(gLogObjects + 8);
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      [MFAATokenManager _init];
                    }

                    v91 = MEMORY[0x277D86220];
                    v92 = MEMORY[0x277D86220];
                  }

                  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                  {
                    v93 = [(__CFData *)v107 length];
                    *buf = 138478339;
                    *&buf[4] = v107;
                    *&buf[12] = 2048;
                    v118 = v93;
                    v119 = 2113;
                    v120 = v103;
                    _os_log_impl(&dword_25627E000, v91, OS_LOG_TYPE_INFO, "certSerial: %{private}@, certSerial.length: %lu, ppid: %{private}@", buf, 0x20u);
                  }

                  if (v105)
                  {
                    v115 = 0;
                    intValue = [(MFAACertificateManager *)self _validateCertificateWithServer:v107 issuerSeq:v85 ppid:v103 error:&v115];
                    v21 = v115;
                    v94 = logObjectForModule(1);
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_25627E000, v94, OS_LOG_TYPE_DEFAULT, "Finished sync server query!", buf, 2u);
                    }

                    v95 = logObjectForModule(1);
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *&buf[4] = intValue;
                      _os_log_impl(&dword_25627E000, v95, OS_LOG_TYPE_DEFAULT, "certStatus (remote): %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
                    }

                    v96 = v103;
                  }

                  else
                  {
                    intValue = [(MFAACertificateManager *)self _getCachedCertStatus:v107 issuerSeq:v85 ppid:v103];
                    v97 = logObjectForModule(1);
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109376;
                      *&buf[4] = 1;
                      *&buf[8] = 1024;
                      *&buf[10] = intValue;
                      _os_log_impl(&dword_25627E000, v97, OS_LOG_TYPE_INFO, "certStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d, cachedCertStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 0xEu);
                    }

                    if (intValue <= 1)
                    {
                      intValue = 1;
                    }

                    v98 = dispatch_get_global_queue(-32768, 0);
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __67__MFAACertificateManager__validateCertificateChain_realtime_error___block_invoke;
                    block[3] = &unk_279831BC8;
                    block[4] = self;
                    v112 = v107;
                    v113 = v85;
                    v96 = v103;
                    v114 = v103;
                    dispatch_async(v98, block);

                    v21 = 0;
                  }
                }

                else
                {
                  v21 = 0;
                  intValue = 2;
                }

                v73 = cf;

                v85 = v100;
              }

              else
              {
                v21 = 0;
                intValue = 2;
                v73 = cf;
              }

              goto LABEL_266;
            }

            v21 = 0;
          }

          v73 = cf;
        }

LABEL_266:
        CFRelease(v73);
        goto LABEL_267;
      }

      intValue = 0;
      v21 = 0;
    }

    else
    {
      [MFAACertificateManager _validateCertificateChain:realtime:error:];
      v21 = 0;
      intValue = 2;
    }

LABEL_267:
    if (*v121)
    {
      CFRelease(*v121);
    }

    goto LABEL_141;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v26 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v26 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [MFAACertificateManager _validateCertificateChain:realtime:error:];
  }

  v21 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
  intValue = 2;
LABEL_142:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v56 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v56 = MEMORY[0x277D86220];
    v57 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = intValue;
    _os_log_impl(&dword_25627E000, v56, OS_LOG_TYPE_DEFAULT, "Returning certStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
  }

  if (v21)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v58 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v58 = MEMORY[0x277D86220];
      v59 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_4();
    }
  }

  if (error)
  {
    v60 = v21;
    *error = v21;
  }

  v61 = *MEMORY[0x277D85DE8];
  return intValue;
}

void __67__MFAACertificateManager__validateCertificateChain_realtime_error___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v16 = 0;
  v5 = [v2 _validateCertificateWithServer:v1 issuerSeq:v3 ppid:v4 error:&v16];
  v6 = v16;
  if (v6)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_11();
    }
  }

  if (gLogObjects)
  {
    v10 = gNumLogObjects < 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "Finished async server query!", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v13 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v5;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "certStatus (remote): %{coreacc:MFAACertificateManager_CertStatus_t}d)", buf, 8u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int)_validateCertificateWithServer:(id)server issuerSeq:(id)seq ppid:(id)ppid error:(id *)error
{
  serverCopy = server;
  seqCopy = seq;
  ppidCopy = ppid;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v35 = 0;
  v36[0] = &v35;
  v36[1] = 0x3032000000;
  v36[2] = __Block_byref_object_copy_;
  v36[3] = __Block_byref_object_dispose_;
  v37 = 0;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v13 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "Validating certificate with server...", buf, 2u);
  }

  v15 = dispatch_semaphore_create(0);
  xpcConnection = [(MFAACertificateManager *)self xpcConnection];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke;
  v31[3] = &unk_279831BF0;
  v33 = &v35;
  v17 = v15;
  v32 = v17;
  v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v31];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke_128;
  v27[3] = &unk_279831C18;
  v29 = &v38;
  v30 = &v35;
  v19 = v17;
  v28 = v19;
  [v18 validateCertSerial:serverCopy issuerSeq:seqCopy ppid:ppidCopy withReply:v27];

  v20 = dispatch_time(0, 65000000000);
  if (dispatch_semaphore_wait(v19, v20))
  {
    v21 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:@"Timed out waiting for XPC reply!"];
    v22 = *(v36[0] + 40);
    *(v36[0] + 40) = v21;
  }

  if (*(v36[0] + 40))
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v23 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager _validateCertificateWithServer:v36 issuerSeq:? ppid:? error:?];
    }
  }

  if (error)
  {
    *error = *(v36[0] + 40);
  }

  v25 = *(v39 + 6);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v38, 8);

  return v25;
}

void __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2();
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [v3 description];
  v9 = [v7 MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke_128(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)_getCachedCertStatus:(id)status issuerSeq:(id)seq ppid:(id)ppid
{
  v42 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  seqCopy = seq;
  ppidCopy = ppid;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = __Block_byref_object_copy_;
  v34[3] = __Block_byref_object_dispose_;
  v35 = 0;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v11 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v41 = statusCopy;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "Checking cached cert status... (certSerial: %{private}@)", buf, 0xCu);
  }

  v13 = dispatch_semaphore_create(0);
  xpcConnection = [(MFAACertificateManager *)self xpcConnection];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke;
  v30[3] = &unk_279831BF0;
  v32 = &v33;
  v15 = v13;
  v31 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke_133;
  v26[3] = &unk_279831C18;
  v28 = &v36;
  v29 = &v33;
  v17 = v15;
  v27 = v17;
  [v16 getCachedStatusForCertSerial:statusCopy issuerSeq:seqCopy ppid:ppidCopy withReply:v26];

  v18 = dispatch_time(0, 65000000000);
  if (dispatch_semaphore_wait(v17, v18))
  {
    v19 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:@"Timed out waiting for XPC reply!"];
    v20 = *(v34[0] + 40);
    *(v34[0] + 40) = v19;
  }

  if (*(v34[0] + 40))
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager _validateCertificateWithServer:v34 issuerSeq:? ppid:? error:?];
    }
  }

  v23 = *(v37 + 6);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v36, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2();
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [v3 description];
  v9 = [v7 MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke_133(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_anchorCertificatesDataForTypes:(int)types
{
  v39 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  init_logging();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v35 = 67109120;
    LODWORD(v36) = types;
    _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_INFO, "Generating anchor cert(s) for types: 0x%02X", &v35, 8u);
  }

  if (types)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&kiPodAccessoryCA1 length:1091];
    [array addObject:v8];

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:&kiPodAccessoryCA2 length:1026];
    [array addObject:v9];
  }

  if ((types & 2) != 0)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCAProd length:667];
    [array addObject:v10];

    v11 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCADev length:667];
    [array addObject:v11];

    v12 = [MEMORY[0x277CBEA90] dataWithBytes:kiPodAccessoryTestAuth3CA length:667];
    [array addObject:v12];

    if (systemInfo_isInternalBuild())
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:kiPodAccessoryTestCAProto length:637];
      [array addObject:v13];

      v14 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCASimu length:667];
      [array addObject:v14];

      v15 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCADev0 length:667];
      [array addObject:v15];
    }
  }

  if ((types & 4) != 0)
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_SWAuth_ProdRoot length:573];
    [array addObject:v16];

    if (systemInfo_isInternalBuild())
    {
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_SWAuth_TestRoot length:584];
      [array addObject:v17];
    }
  }

  if ((types & 8) != 0)
  {
    if (systemInfo_isInternalBuild())
    {
      v18 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_VeridianAuth_SoftCA length:512];
      [array addObject:v18];
    }

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_ComponentAuth_ComponentRoot length:517];
    [array addObject:v19];
  }

  if ((types & 0x10) != 0)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_BAAAuth_UserRoot length:542];
    [array addObject:v20];
  }

  if ((types & 0x20) != 0)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_DEVN_Root length:467];
    [array addObject:v21];
  }

  if ((types & 0x40) != 0)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_Prov_Root length:1500];
    [array addObject:v22];
  }

  if ((types & 0x80) != 0)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCCA1 length:304];
    [array addObject:v23];

    if (systemInfo_isInternalBuild())
    {
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_TSTWPC1 length:305];
      [array addObject:v24];

      v25 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCDevCACert length:328];
      [array addObject:v25];

      v26 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCCAX length:304];
      [array addObject:v26];

      v27 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCDUMCA1 length:306];
      [array addObject:v27];
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v28 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v28 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [array count];
    v35 = 134218240;
    v36 = v30;
    v37 = 1024;
    typesCopy = types;
    _os_log_impl(&dword_25627E000, v28, OS_LOG_TYPE_DEFAULT, "Returning %lu anchor cert(s) for types: 0x%02X", &v35, 0x12u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v31 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v35 = 138412290;
    v36 = array;
    _os_log_impl(&dword_25627E000, v31, OS_LOG_TYPE_INFO, "anchorCerts: %@", &v35, 0xCu);
  }

  v33 = *MEMORY[0x277D85DE8];

  return array;
}

+ (int)_anchorType2CertType:(int)type
{
  if (type <= 15)
  {
    if (type == 1)
    {
      return 6;
    }

    if (type != 2)
    {
      if (type == 8)
      {
        return 5;
      }

      return -1;
    }

    return 1;
  }

  else if (type > 63)
  {
    if (type != 64)
    {
      if (type == 128)
      {
        return 7;
      }

      return -1;
    }

    return 4;
  }

  else
  {
    if (type != 16)
    {
      if (type == 32)
      {
        return 3;
      }

      return -1;
    }

    return 0;
  }
}

- (id)_getAnchorCertsForPolicy:(unint64_t)policy
{
  if ([MFAACertificateManager isMFi2_3Policy:?])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = (policy >> 27) & 8 | (policy >> 38) & 0x10 | v4;
  if ((policy & 0x30000000) != 0)
  {
    v6 = v5 | 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [MFAACertificateManager _anchorCertificatesDataForTypes:v6];
  if ([v7 count])
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __39__MFAACertificateManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_1 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

+ (id)anchorCertificatesForTypes:(int)types
{
  v60 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  init_logging();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v56 = 67109120;
    LODWORD(v57) = types;
    _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_INFO, "Generating anchor cert(s) for types: 0x%02X", &v56, 8u);
  }

  if (types)
  {
    CertificateRefWithBytes = createCertificateRefWithBytes(&kiPodAccessoryCA1, 1091, 1);
    if (CertificateRefWithBytes)
    {
      v9 = CertificateRefWithBytes;
      [array addObject:CertificateRefWithBytes];
    }

    v10 = createCertificateRefWithBytes(&kiPodAccessoryCA2, 1026, 1);
    if (v10)
    {
      v11 = v10;
      [array addObject:v10];
    }
  }

  if ((types & 2) != 0)
  {
    v12 = createCertificateRefWithBytes(kAuth3ECSSubCAProd, 667, 1);
    if (v12)
    {
      v13 = v12;
      [array addObject:v12];
    }

    v14 = createCertificateRefWithBytes(kAuth3ECSSubCADev, 667, 1);
    if (v14)
    {
      v15 = v14;
      [array addObject:v14];
    }

    v16 = createCertificateRefWithBytes(kiPodAccessoryTestAuth3CA, 667, 1);
    if (v16)
    {
      v17 = v16;
      [array addObject:v16];
    }

    if (systemInfo_isInternalBuild())
    {
      v18 = createCertificateRefWithBytes(kiPodAccessoryTestCAProto, 637, 1);
      if (v18)
      {
        v19 = v18;
        [array addObject:v18];
      }

      v20 = createCertificateRefWithBytes(kAuth3ECSSubCASimu, 667, 1);
      if (v20)
      {
        v21 = v20;
        [array addObject:v20];
      }

      v22 = createCertificateRefWithBytes(kAuth3ECSSubCADev0, 667, 1);
      if (v22)
      {
        v23 = v22;
        [array addObject:v22];
      }
    }
  }

  if ((types & 4) != 0)
  {
    v24 = createCertificateRefWithBytes(&kCertDER_SWAuth_ProdRoot, 573, 1);
    if (v24)
    {
      v25 = v24;
      [array addObject:v24];
    }

    if (systemInfo_isInternalBuild())
    {
      v26 = createCertificateRefWithBytes(&kCertDER_SWAuth_TestRoot, 584, 1);
      if (v26)
      {
        v27 = v26;
        [array addObject:v26];
      }
    }
  }

  if ((types & 8) != 0)
  {
    if (systemInfo_isInternalBuild())
    {
      v28 = createCertificateRefWithBytes(&kCertDER_VeridianAuth_SoftCA, 512, 1);
      if (v28)
      {
        v29 = v28;
        [array addObject:v28];
      }
    }

    v30 = createCertificateRefWithBytes(&kCertDER_ComponentAuth_ComponentRoot, 517, 1);
    if (v30)
    {
      v31 = v30;
      [array addObject:v30];
    }
  }

  if ((types & 0x10) != 0)
  {
    v32 = createCertificateRefWithBytes(&kCertDER_BAAAuth_UserRoot, 542, 1);
    if (v32)
    {
      v33 = v32;
      [array addObject:v32];
    }
  }

  if ((types & 0x20) != 0)
  {
    v34 = createCertificateRefWithBytes(&kCertDER_DEVN_Root, 467, 1);
    if (v34)
    {
      v35 = v34;
      [array addObject:v34];
    }
  }

  if ((types & 0x40) != 0)
  {
    v36 = createCertificateRefWithBytes(&kCertDER_Prov_Root, 1500, 1);
    if (v36)
    {
      v37 = v36;
      [array addObject:v36];
    }
  }

  if ((types & 0x80) != 0)
  {
    v38 = createCertificateRefWithBytes(&kCertDER_WPCCA1, 304, 1);
    if (v38)
    {
      v39 = v38;
      [array addObject:v38];
    }

    if (systemInfo_isInternalBuild())
    {
      v40 = createCertificateRefWithBytes(&kCertDER_TSTWPC1, 305, 1);
      if (v40)
      {
        v41 = v40;
        [array addObject:v40];
      }

      v42 = createCertificateRefWithBytes(&kCertDER_WPCDevCACert, 328, 1);
      if (v42)
      {
        v43 = v42;
        [array addObject:v42];
      }

      v44 = createCertificateRefWithBytes(&kCertDER_WPCCAX, 304, 1);
      if (v44)
      {
        v45 = v44;
        [array addObject:v44];
      }

      v46 = createCertificateRefWithBytes(&kCertDER_WPCDUMCA1, 306, 1);
      if (v46)
      {
        v47 = v46;
        [array addObject:v46];
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v48 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v48 = MEMORY[0x277D86220];
    v49 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [array count];
    v56 = 134218240;
    v57 = v50;
    v58 = 1024;
    typesCopy = types;
    _os_log_impl(&dword_25627E000, v48, OS_LOG_TYPE_DEFAULT, "Returning %lu anchor cert(s) for types: 0x%02X", &v56, 0x12u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v51 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v51 = MEMORY[0x277D86220];
    v52 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v56 = 138412290;
    v57 = array;
    _os_log_impl(&dword_25627E000, v51, OS_LOG_TYPE_INFO, "anchorCerts: %@", &v56, 0xCu);
  }

  v53 = array;
  v54 = *MEMORY[0x277D85DE8];
  return array;
}

+ (int)determineCertificateType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    v5 = [typeCopy valueForKey:@"PolicyFlags"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];

    if ((unsignedLongLongValue & 0x200000) != 0)
    {
      v7 = 4;
    }

    else
    {
      v7 = -1;
    }

    if ((unsignedLongLongValue & 0x41C00000000) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if ((unsignedLongLongValue & 0x40000000) != 0)
    {
      v9 = 5;
    }

    else
    {
      v9 = v8;
    }

    if ((unsignedLongLongValue & 4) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if ((unsignedLongLongValue & 0x8000000) != 0)
    {
      v11 = 6;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    +[MFAACertificateManager determineCertificateType:];
    v11 = -1;
  }

  return v11;
}

+ (BOOL)isMFi2_3Policy:(unint64_t)policy
{
  policyCopy = policy;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MFAACertificateManager isMFi2_3Policy:];
  }

  return (policyCopy & 0x8000004) != 0;
}

+ (BOOL)isMFi2_3CertInfo:(id)info
{
  v3 = [info objectForKey:@"PolicyFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = +[MFAACertificateManager isMFi2_3Policy:](MFAACertificateManager, "isMFi2_3Policy:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isBAAUserPolicy:(unint64_t)policy
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MFAACertificateManager isBAAUserPolicy:];
  }

  return (policy & 0x40000000000) != 0;
}

+ (BOOL)isBAAUserCertInfo:(id)info
{
  v3 = [info objectForKey:@"PolicyFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = +[MFAACertificateManager isBAAUserPolicy:](MFAACertificateManager, "isBAAUserPolicy:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isComponentPolicy:(unint64_t)policy
{
  policyCopy = policy;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MFAACertificateManager isComponentPolicy:];
  }

  return (policyCopy & 0x40000000) != 0;
}

+ (BOOL)isComponentCertInfo:(id)info
{
  v3 = [info objectForKey:@"PolicyFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = +[MFAACertificateManager isComponentPolicy:](MFAACertificateManager, "isComponentPolicy:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_validateBAACertificateChain:(id)chain error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  trust = 0;
  AppleBasicAttestationUser = SecPolicyCreateAppleBasicAttestationUser();
  if (AppleBasicAttestationUser)
  {
    v6 = AppleBasicAttestationUser;
    if (SecTrustCreateWithCertificates(chainCopy, AppleBasicAttestationUser, &trust))
    {
      goto LABEL_50;
    }

    v7 = trust;
    if (qword_280CC7850 != -1)
    {
      dispatch_once(&qword_280CC7850, &__block_literal_global_215);
    }

    v8 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_0();
        v60 = v8;
        OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, v54, error, v56, trust, buf[0]);
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [_MergedGlobals count];
      *buf = 134217984;
      errorCopy = v11;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v12, v13, OS_LOG_TYPE_INFO, v14, v15, 0xCu);
    }

    v16 = _MergedGlobals;
    v17 = _MergedGlobals;
    SecTrustSetAnchorCertificates(v7, v16);
    HIDWORD(v56) = 0;
    if (MEMORY[0x259C60280](trust, &v56 + 4))
    {
LABEL_50:
      v21 = 0;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v18 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40, v41, v42, v43, v54, error, v56, trust, buf[0]);
        }

        v18 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = HIDWORD(v56);
        OUTLINED_FUNCTION_19(&dword_25627E000, v18, v20, "BAA trustResult: %d", buf);
      }

      if (HIDWORD(v56) == 4 || HIDWORD(v56) == 5 && SecTrustIsExpiredOnly())
      {
        v21 = 1;
      }

      else
      {
        error = 0;
        SecTrustEvaluateWithError(trust, &error);
        if (error)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v22 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_17();
              OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, v51, v52, v53, v54, error, v56, trust, buf[0]);
            }

            v22 = MEMORY[0x277D86220];
            v23 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            errorCopy = error;
            _os_log_error_impl(&dword_25627E000, v22, OS_LOG_TYPE_ERROR, "trustError: %@", buf, 0xCu);
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        v21 = 2;
      }

      v24 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v25 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_6_0();
          v60 = v24;
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48, v54, error, v56, trust, buf[0]);
        }

        v25 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = v21;
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_19(v27, v28, v29, v30, v31);
      }
    }

    CFRelease(v6);
    if (trust)
    {
      CFRelease(trust);
    }
  }

  else
  {
    v21 = 2;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

- (int)_validateX509CertificateChain:(id)chain anchorCerts:(id)certs error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  certsCopy = certs;
  trust = 0;
  BasicX509 = SecPolicyCreateBasicX509();
  if (BasicX509)
  {
    v9 = BasicX509;
    if (SecTrustCreateWithCertificates(chainCopy, BasicX509, &trust) || (SecTrustSetAnchorCertificates(trust, certsCopy), HIDWORD(v50) = 0, MEMORY[0x259C60280](trust, &v50 + 4)))
    {
      v18 = 0;
    }

    else
    {
      v10 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v11 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_6_0();
          v55 = v10;
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, v48, error, v50, trust, buf[0]);
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = HIDWORD(v50);
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_19(v13, v14, v15, v16, v17);
      }

      if (HIDWORD(v50) == 4 || HIDWORD(v50) == 5 && SecTrustIsExpiredOnly())
      {
        v18 = 1;
      }

      else
      {
        error = 0;
        SecTrustEvaluateWithError(trust, &error);
        if (error)
        {
          v19 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v20 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_6_0();
              v55 = v19;
              OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, v48, error, v50, trust, buf[0]);
            }

            v20 = MEMORY[0x277D86220];
            v21 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            errorCopy = error;
            OUTLINED_FUNCTION_23();
            _os_log_error_impl(v39, v40, OS_LOG_TYPE_ERROR, v41, v42, 0xCu);
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        v18 = 2;
      }

      v22 = HIDWORD(gLogObjects);
      v23 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v24 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          HIDWORD(errorCopy) = v22;
          v54 = 1024;
          v55 = v23;
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v25, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v26, v27, v28, v29, v48, error, v50, trust, 0);
        }

        v24 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = v18;
        OUTLINED_FUNCTION_19(&dword_25627E000, v24, v31, "after verifying standard X509 cert chain, certStatus = %d", buf);
      }
    }

    CFRelease(v9);
    if (trust)
    {
      CFRelease(trust);
    }
  }

  else
  {
    v18 = 2;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)isCertificateValidForFeatures:(unint64_t)features certificate:(id)certificate
{
  v68 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  if (certificateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (CertificateRefWithData = createCertificateRefWithData(certificateCopy, 1)) != 0)
  {
    v7 = CertificateRefWithData;
    v8 = SecCertificateGetiAuthVersion();
    if (v8 == 4)
    {
      v9 = SecCertificateCopyiAPSWAuthCapabilities();
      v10 = HIDWORD(gLogObjects);
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          HIDWORD(v66) = v10;
          OUTLINED_FUNCTION_5_0();
          v67 = v11;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52, 0);
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        HIDWORD(v66) = HIDWORD(v9);
        OUTLINED_FUNCTION_13(&dword_25627E000, v14, v15, "airPlayOIDData : %@", v16, v17, v18, v19, 2u);
      }

      if (v9 && [v9 length] >= 6 && *objc_msgSend(v9, "bytes") == 255)
      {
        [v9 bytes];
        v65 = 0;
        [v9 getBytes:&v65 range:{2, 4}];
        v20 = bswap32(v65);
        v21 = 19;
        if ((v20 & 1) == 0)
        {
          v21 = 17;
        }

        v22 = v21 | (2 * v20) & 4;
      }

      else
      {
        v22 = 0;
      }

      v23 = SecCertificateCopyiAPSWAuthCapabilities();
      v24 = gLogObjects;
      v25 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v65 = 134218240;
          v66 = v24;
          OUTLINED_FUNCTION_5_0();
          v67 = v25;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v65);
        }

        v26 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        HIDWORD(v66) = HIDWORD(v23);
        OUTLINED_FUNCTION_13(&dword_25627E000, v28, v29, "homeKitOIDData : %@", v30, v31, v32, v33, 2u);
      }

      if (v23 && [v23 length] >= 2 && *objc_msgSend(v23, "bytes") == 255)
      {
        v22 |= 8uLL;
      }

      v34 = SecCertificateCopyiAPSWAuthCapabilities();
      v35 = gLogObjects;
      v36 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v37 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v65 = 134218240;
          v66 = v35;
          OUTLINED_FUNCTION_5_0();
          v67 = v36;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59, v60, v61, v62, v65);
        }

        v37 = MEMORY[0x277D86220];
        v38 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        HIDWORD(v66) = HIDWORD(v34);
        OUTLINED_FUNCTION_13(&dword_25627E000, v39, v40, "fairPlayOIDData : %@", v41, v42, v43, v44, 2u);
      }

      if (v34 && [v34 length] >= 2 && *objc_msgSend(v34, "bytes") == 255)
      {
        v22 |= 0x10uLL;
      }

      v45 = (features & ~v22) == 0;
    }

    else
    {
      v63 = v8;
      v64 = logObjectForModule(1);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = 67109120;
        LODWORD(v66) = v63;
        _os_log_error_impl(&dword_25627E000, v64, OS_LOG_TYPE_ERROR, "Certificate is not valid for SW Auth! (authVersion: %{coreacc:SeciAuthVersion}d)", &v65, 8u);
      }

      v45 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v45 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

- (void)validateCertificate:realtime:error:.cold.3()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:realtime:error:.cold.3()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:realtime:error:.cold.4()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.21()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = logObjectForModule(-1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)validateCertificateChain:(unsigned int *)a1 type:realtime:error:.cold.22(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x14u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)validateCertificateChain:type:realtime:error:.cold.23()
{
  v1 = logObjectForModule(-1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.24()
{
  v1 = logObjectForModule(-1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.25()
{
  v1 = logObjectForModule(-1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.26()
{
  v1 = logObjectForModule(-1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

uint64_t __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_1(int a1, uint64_t *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_20();
  v6 = logObjectForModule(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_error_impl(&dword_25627E000, v6, OS_LOG_TYPE_ERROR, "Certificate is not valid for SW Auth! (authVersion: %{coreacc:SeciAuthVersion}d)", v9, 8u);
  }

  result = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
  *a2 = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
  *a1 = result;
  return result;
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_18(&dword_25627E000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyParsedCertificateChainInfo:.cold.3()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_20();
  v3 = logObjectForModule(v2);
  if (OUTLINED_FUNCTION_12(v3))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)copyParsedCertificateChainInfo:.cold.4()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyParsedCertificateChainInfo:.cold.5()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyParsedCertificateChainInfo:assumeType:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyParsedCertificateChainInfoFromCerts:assumeType:.cold.2()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyParsedCertificateChainInfoFromCerts:assumeType:.cold.3()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.9()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.10()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.11()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)authVersionFromCertificateChainInfo:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyCertificateSerialNumber:authVer:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v0, "%s:%d pkSerNumData == NULL!", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyCertificateSerialNumber:authVer:.cold.2()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyCertificateSerialNumber:authVer:.cold.3()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyCertificateSerialNumber:authVer:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyLeafCertificateSerialNumber:.cold.1()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyLeafCertificateSerialNumber:.cold.2()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyCertificateSerialNumberBySerialNumber:authVer:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v0, "Unsupported authVerMajor:%02X, serNumLen:%02lX", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumberBySerialNumber:(unsigned __int8 *)a1 authVer:.cold.2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumberBySerialNumber:authVer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumberBySerialNumber:authVer:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumberBySerialNumber:(uint64_t)a3 authVer:(uint64_t)a4 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], a3, "Certificate serial number: <%{coreacc:bytes}.*P>\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumber:authVer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumber:authVer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateSerialNumber:(void *)a1 authVer:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 length];
  [a1 bytes];
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v2, "Certificate serial number: <%{coreacc:bytes}.*P>\n", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)verifyCertificateChainInfoSerialNumber:.cold.2()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyCertificateChainInfoSerialNumber:.cold.3()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyNonceSignature:nonce:signature:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyNonceSignature:nonce:signature:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_25627E000, v1, OS_LOG_TYPE_ERROR, "SecKeyRawVerify osStatus:%02X, authVerMajor:%02X\n", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)verifyNonceSignature:nonce:signature:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyNonceSignature:nonce:signature:.cold.4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyNonceSignature:(unsigned int *)a1 nonce:signature:.cold.5(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x14u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)verifyNonceSignature:nonce:signature:.cold.10()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_20();
  v3 = logObjectForModule(v2);
  if (OUTLINED_FUNCTION_12(v3))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)verifyNonceSignature:nonce:signature:.cold.11()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.13()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.14()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.15()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.16()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_validateCertificateChain:realtime:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_25627E000, v0, v1, "Unknown spoof status selected: '%@'. Falling back to %{coreacc:MFAACertificateManager_CertStatus_t}d...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateCertificateChain:(uint64_t *)a1 realtime:error:.cold.12(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_validateCertificateChain:realtime:error:.cold.13()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_validateCertificateChain:realtime:error:.cold.25()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateCertificateChain:realtime:error:.cold.27()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateCertificateWithServer:(uint64_t *)a1 issuerSeq:ppid:error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)determineCertificateType:.cold.1()
{
  v1 = logObjectForModule(1);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

+ (void)isMFi2_3Policy:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isBAAUserPolicy:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isComponentPolicy:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end