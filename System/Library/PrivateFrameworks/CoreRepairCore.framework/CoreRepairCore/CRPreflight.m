@interface CRPreflight
- (BOOL)verify:(id)a3 signature:(id)a4 keyBlob:(id)a5;
- (id)_getVersionInfo:(id)a3;
- (id)_sendBAARequest:(id)a3 proxySettings:(id)a4 withError:(id *)a5;
- (id)componentsWithPrimaryKeys:(id)a3;
- (id)requestBAACertificates:(id)a3 apticket:(id)a4 proxySettings:(id)a5 withError:(id *)a6;
- (id)sha256Data:(id)a3;
- (id)sign:(id)a3 keyBlob:(id)a4;
- (void)challengeStrongComponents:(id)a3 withReply:(id)a4;
- (void)issueRepairCert:(id)a3 withReply:(id)a4;
- (void)queryRepairDeltaWithReply:(id)a3;
@end

@implementation CRPreflight

- (id)componentsWithPrimaryKeys:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CRFDRDeviceController sharedSingleton];
  v36 = [v4 getHandlerForDevice];

  v5 = [v3 mutableCopy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v56 count:16];
  v8 = v6;
  if (!v7)
  {
LABEL_33:

    goto LABEL_34;
  }

  v9 = v7;
  v34 = 0;
  v10 = *v48;
  v29 = *v48;
  v30 = v6;
  do
  {
    v11 = 0;
    v31 = v9;
    do
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v47 + 1) + 8 * v11);
      if (([v12 isEqualToString:{@"SrvP", v29, v30}] & 1) == 0)
      {
        v32 = v11;
        v13 = [v6 objectForKeyedSubscript:v12];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v13;
        v38 = [v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v38)
        {
          v37 = *v44;
          v35 = v12;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v44 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v15 = [v36 spcWithComponent:v12 withIdentifier:*(*(&v43 + 1) + 8 * i)];
              v16 = [CRDeviceMap getKeysWithSPC:v15];
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v17 = v16;
              v18 = [v17 countByEnumeratingWithState:&v39 objects:v54 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v40;
                while (2)
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v40 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v39 + 1) + 8 * j);
                    if ([CRFDRUtils isPrimaryDataClassSupported:v22])
                    {
                      v23 = [v5 objectForKeyedSubscript:v22];

                      if (!v23)
                      {
                        v24 = AMFDRSealingMapCopyInstanceForClass();
                        if (v24)
                        {
                          v25 = v24;
                          v53 = v24;
                          v34 = 1;
                          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
                          [v5 setObject:v26 forKeyedSubscript:v22];

                          goto LABEL_24;
                        }
                      }
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v39 objects:v54 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }

LABEL_24:
                v12 = v35;
              }
            }

            v38 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v38);
        }

        v10 = v29;
        v6 = v30;
        v9 = v31;
        v11 = v32;
      }

      ++v11;
    }

    while (v11 != v9);
    v9 = [v6 countByEnumeratingWithState:&v47 objects:v56 count:16];
  }

  while (v9);

  if (v34)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v5;
      _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "Updated unsealed: %@", buf, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_34:

  v27 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)queryRepairDeltaWithReply:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v54 = 0;
  v6 = [CRFDRUtils findUnsealedDataWithError:&v54];
  v7 = v54;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CRFDRUtils(ComponentState) *)v8 hasMesaUnsealedData:v10];
    }

    v17 = 0;
    goto LABEL_46;
  }

  if ([v6 count])
  {
    if (+[CRFDRUtils isRepairASIDSupported])
    {
      v18 = [(CRPreflight *)self componentsWithPrimaryKeys:v6];

      v6 = v18;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = v6;
    v41 = [v10 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (!v41)
    {
      v17 = 1;
      goto LABEL_45;
    }

    v20 = *v51;
    *&v19 = 136315650;
    v39 = v19;
    v44 = v8;
    v45 = v4;
    v43 = v10;
    v40 = *v51;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v42 = v21;
        v22 = *(*(&v50 + 1) + 8 * v21);
        v23 = [v10 objectForKeyedSubscript:v22, v39];
        v24 = AMFDRSealingMapCopyAssemblyIdentifierForClass();
        v25 = handleForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v39;
          v61 = "[CRPreflight queryRepairDeltaWithReply:]";
          v62 = 2112;
          v63 = v22;
          v64 = 2112;
          v65 = v24;
          _os_log_debug_impl(&dword_1CEDC5000, v25, OS_LOG_TYPE_DEBUG, "%s: key: %@, asid: %@", buf, 0x20u);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v26 = v23;
        v27 = [v26 countByEnumeratingWithState:&v46 objects:v59 count:16];
        if (!v27)
        {
          goto LABEL_35;
        }

        v28 = v27;
        v29 = *v47;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v31 dataUsingEncoding:4];
              v33 = [v32 base64EncodedStringWithOptions:0];

              if (!v24)
              {
                goto LABEL_29;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v37 = handleForCategory(0);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  [(CRPreflight *)buf queryRepairDeltaWithReply:v31, &v61, v37];
                }

                v17 = 0;
                v10 = v43;
                v8 = v44;
                v6 = v43;
                v4 = v45;
                goto LABEL_46;
              }

              v33 = [v31 base64EncodedStringWithOptions:0];
              if (!v24)
              {
LABEL_29:
                v55[0] = @"key";
                v55[1] = @"identifier";
                v56[0] = v22;
                v56[1] = v33;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
                [v5 addObject:v35];
                goto LABEL_33;
              }
            }

            v34 = [v24 stringByReplacingOccurrencesOfString:@"-" withString:{@", "}];
            v35 = v34;
            if (v34)
            {
              v57[0] = @"key";
              v57[1] = @"identifier";
              v58[0] = v22;
              v58[1] = v33;
              v57[2] = @"asid";
              v58[2] = v34;
              v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
              [v5 addObject:v36];
            }

            else
            {
              v36 = handleForCategory(0);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v61 = v24;
                _os_log_error_impl(&dword_1CEDC5000, v36, OS_LOG_TYPE_ERROR, "Failed to change asid format: %@", buf, 0xCu);
              }
            }

LABEL_33:
          }

          v28 = [v26 countByEnumeratingWithState:&v46 objects:v59 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

LABEL_35:

        v21 = v42 + 1;
        v8 = v44;
        v4 = v45;
        v10 = v43;
        v20 = v40;
      }

      while (v42 + 1 != v41);
      v17 = 1;
      v41 = [v43 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (!v41)
      {
LABEL_45:
        v6 = v10;
        goto LABEL_46;
      }
    }
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "No delta components found", buf, 2u);
  }

  v17 = 1;
LABEL_46:

  if (v4)
  {
    v4[2](v4, v17, v5, v8);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)issueRepairCert:(id)a3 withReply:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v63 = 0;
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v79 = "[CRPreflight issueRepairCert:withReply:]";
    v80 = 2112;
    v81 = v6;
    _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "%s parameters: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_19;
  }

  v9 = [v6 objectForKeyedSubscript:@"miniPreflight"];
  if (v9 && (v10 = v9, [v6 objectForKeyedSubscript:@"miniPreflight"], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) != 0))
  {
    v13 = [v6 objectForKeyedSubscript:@"miniPreflight"];
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"socksHost"];
  if (v15 && (v16 = v15, [v6 objectForKeyedSubscript:@"socksHost"], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v18 = objc_opt_isKindOfClass(), v17, v16, (v18 & 1) != 0))
  {
    v19 = [v6 objectForKeyedSubscript:@"socksHost"];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v6 objectForKeyedSubscript:@"socksPort"];
  if (!v20)
  {
LABEL_18:
    v23 = 0;
    if (v14)
    {
      goto LABEL_36;
    }

LABEL_19:
    v24 = +[CRPersonalizationManager getDefaultAMAuthInstallRef];
    v60 = v20;
    if (v24)
    {
      v25 = v24;
      if (v19 && v20 && (v26 = AMAuthInstallSetSOCKSProxyInformation(), v26))
      {
        v59 = v19;
        v27 = MEMORY[0x1E696ABC0];
        v74 = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to enable SOCKS proxy: %d", v26];
        v75 = v28;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v75;
        v31 = &v74;
      }

      else
      {
        if (!+[CRPersonalizationManager shouldPersonalizeWithSSOByDefault]|| (v32 = [CRPersonalizationManager enableSSO:v25], !v32))
        {
          v40 = +[CRFDRUtils hasUnsealedComponentRequireOSUpdate];
          v41 = [CRPersonalizationManager initWithAuthInstallObj:v25];
          v62 = 0;
          v42 = [v41 getRepairTicket:&v63 useRepairAudience:!v40 error:&v62];
          v43 = v62;

          if (!v42 || v43)
          {
            v59 = v19;
            v53 = MEMORY[0x1E696ABC0];
            v70 = *MEMORY[0x1E696A578];
            v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get repair ticket: %@", v43];
            v71 = v54;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            v34 = [v53 errorWithDomain:@"com.apple.corerepair" code:-85 userInfo:v55];

            v38 = 0;
            v39 = 0;
            v23 = 0;
            goto LABEL_43;
          }

          v20 = v60;
          goto LABEL_33;
        }

        v59 = v19;
        v27 = MEMORY[0x1E696ABC0];
        v72 = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to enable SSO: %d", v32];
        v73 = v28;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v73;
        v31 = &v72;
      }

      v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
      v34 = [v27 errorWithDomain:@"com.apple.corerepair" code:-85 userInfo:v33];
    }

    else
    {
      v59 = v19;
      v35 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A578];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get auth ref"];
      v77 = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v34 = [v35 errorWithDomain:@"com.apple.corerepair" code:-85 userInfo:v37];
    }

    v38 = 0;
    v39 = 0;
    v23 = 0;
LABEL_42:
    v43 = 0;
    goto LABEL_43;
  }

  v21 = [v6 objectForKeyedSubscript:@"socksPort"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if ((v22 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_18;
  }

  v20 = [v6 objectForKeyedSubscript:@"socksPort"];
  if ((v14 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  v23 = 0;
  if (v19 && v20)
  {
    v68[0] = @"socksHost";
    v68[1] = @"socksPort";
    v69[0] = v19;
    v69[1] = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
  }

LABEL_36:
  v44 = objc_alloc_init(CRRIK);
  v59 = v19;
  v60 = v20;
  if (!v44)
  {
    v47 = MEMORY[0x1E696ABC0];
    v66 = *MEMORY[0x1E696A578];
    v67 = @"Create RIK failed";
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v34 = [v47 errorWithDomain:@"com.apple.corerepair" code:-75 userInfo:v48];

    v38 = 0;
    v39 = 0;
    goto LABEL_42;
  }

  v38 = v44;
  v61 = 0;
  v39 = [(CRPreflight *)self requestBAACertificates:v44 apticket:v63 proxySettings:v23 withError:&v61];
  v45 = v61;
  v43 = v45;
  if (v39 && !v45)
  {
    v34 = 0;
    v46 = 1;
    if (!v7)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v45)
  {
    v51 = [v45 domain];
    v52 = [v51 isEqual:@"com.apple.corerepair"];

    if (v52)
    {
      v34 = v43;
      v46 = 0;
      v43 = v34;
      if (!v7)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  v56 = MEMORY[0x1E696ABC0];
  v64 = *MEMORY[0x1E696A578];
  v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to request BAA: %@", v43, v59, v20];
  v65 = v57;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v34 = [v56 errorWithDomain:@"com.apple.corerepair" code:-76 userInfo:v58];

LABEL_43:
  v46 = 0;
  if (v7)
  {
LABEL_44:
    v49 = [(CRRIK *)v38 keyBlob];
    v7[2](v7, v46, v49, v39, v34);
  }

LABEL_45:
  AMSupportSafeRelease();

  v50 = *MEMORY[0x1E69E9840];
}

- (void)challengeStrongComponents:(id)a3 withReply:(id)a4
{
  v74[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v53 = +[CRComponentSigning sharedInstance];
  if (v5)
  {
    v8 = [v5 objectForKeyedSubscript:@"challenges"];
    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"challenges"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v5 objectForKeyedSubscript:@"challenges"];
      }

      else
      {
        v8 = 0;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"socksHost"];
    if (v12 && (v13 = v12, [v5 objectForKeyedSubscript:@"socksHost"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v15 = objc_opt_isKindOfClass(), v14, v13, (v15 & 1) != 0))
    {
      v16 = [v5 objectForKeyedSubscript:@"socksHost"];
    }

    else
    {
      v16 = 0;
    }

    v11 = [v5 objectForKeyedSubscript:@"socksPort"];
    v51 = v16;
    if (v11)
    {
      v17 = [v5 objectForKeyedSubscript:@"socksPort"];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v19 = [v5 objectForKeyedSubscript:@"socksPort"];
        v11 = v19;
        if (v16 && v19)
        {
          v20 = v19;
          v73[0] = @"SOCKSHost";
          v73[1] = @"SOCKSPort";
          v74[0] = v16;
          v74[1] = v19;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
          v11 = v20;
          [CRPersonalizationManager setSOCKSInfo:v21];
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
    v51 = 0;
    v8 = 0;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v8;
  v22 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (!v22)
  {
    v41 = 0;
    v42 = 1;
    v43 = v51;
    goto LABEL_69;
  }

  v23 = v22;
  v48 = v11;
  v49 = v6;
  v50 = v5;
  v24 = *v61;
LABEL_19:
  v25 = 0;
  while (1)
  {
    if (*v61 != v24)
    {
      objc_enumerationMutation(obj);
    }

    v26 = *(*(&v60 + 1) + 8 * v25);
    v58 = 0;
    cf = 0;
    v57 = 0;
    v27 = [v26 objectForKeyedSubscript:@"key"];
    v28 = [v26 objectForKeyedSubscript:@"nonce"];
    v29 = v28;
    if (v27)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_55;
    }

    if ([v27 isEqual:@"vcrt"])
    {
      v31 = [(CRPreflight *)self sha256Data:v29];
      [v53 vcrtSign:v31 outSignature:&cf outDeviceNonce:&v58 outError:&v57];

LABEL_28:
      v32 = 1;
      goto LABEL_34;
    }

    if ([v27 isEqual:@"bcrt"])
    {
      [v53 bcrtSign:v29 outSignature:&cf outDeviceNonce:0 outError:&v57];
    }

    else
    {
      if (![v27 isEqual:@"tcrt"])
      {
        if (![v27 isEqual:@"prpc"])
        {
          v39 = handleForCategory(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [(CRPreflight *)&buf challengeStrongComponents:v56 withReply:v39];
          }

          goto LABEL_54;
        }

        [v53 prpcSign:v29 outSignature:&cf outDeviceNonce:&v58 outError:&v57];
        goto LABEL_28;
      }

      [v53 tcrtSign:v29 outSignature:&cf outDeviceNonce:0 outError:&v57];
    }

    v32 = 0;
LABEL_34:
    v33 = cf;
    if (!cf)
    {
      v34 = handleForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(bytes) = 138412290;
        *(&bytes + 4) = v27;
        _os_log_error_impl(&dword_1CEDC5000, v34, OS_LOG_TYPE_ERROR, "Failed to get strong component signature: %@", &bytes, 0xCu);
      }

      bytes = 0uLL;
      v71 = 0;
      v33 = CFDataCreate(0, &bytes, 20);
      cf = v33;
    }

    v35 = v58;
    if (v58)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

    if (v36 == 1)
    {
      v37 = handleForCategory(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LODWORD(bytes) = 138412290;
        *(&bytes + 4) = v27;
        _os_log_error_impl(&dword_1CEDC5000, v37, OS_LOG_TYPE_ERROR, "Failed to get strong component nonce: %@", &bytes, 0xCu);
      }

      bytes = 0uLL;
      v71 = 0;
      v35 = CFDataCreate(0, &bytes, 20);
      v58 = v35;
      v33 = cf;
    }

    if (!v33)
    {
      goto LABEL_65;
    }

    v38 = v35 ? 0 : v32;
    if (v38 == 1)
    {
      break;
    }

    if (v32)
    {
      v66[0] = @"key";
      v66[1] = @"signature";
      v67[0] = v27;
      v67[1] = v33;
      v66[2] = @"deviceNonce";
      v67[2] = v35;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
    }

    else
    {
      v64[0] = @"key";
      v64[1] = @"signature";
      v65[0] = v27;
      v65[1] = v33;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    }

    [v7 addObject:v39];
LABEL_54:

LABEL_55:
    if (v23 == ++v25)
    {
      v40 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      v23 = v40;
      if (!v40)
      {
        v41 = 0;
        v42 = 1;
        v6 = v49;
        v5 = v50;
        v43 = v51;
        goto LABEL_68;
      }

      goto LABEL_19;
    }
  }

  CFRelease(v33);
  v35 = v58;
LABEL_65:
  v5 = v50;
  v43 = v51;
  if (v35)
  {
    CFRelease(v35);
  }

  v44 = MEMORY[0x1E696ABC0];
  v68 = *MEMORY[0x1E696A578];
  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to challenge strong component: %@", v27];
  v69 = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v41 = [v44 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v46];

  v42 = 0;
  v6 = v49;
LABEL_68:
  v11 = v48;
LABEL_69:

  if (v6)
  {
    v6[2](v6, v42, v7, v41);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (id)sign:(id)a3 keyBlob:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [[CRRIK alloc] initWithKeyBlob:v7];
      if (v8)
      {
        p_super = &v8->super;
        v10 = [(CRPreflight *)self sha256Data:v6];
        if (v10)
        {
          v11 = v10;
          v12 = [p_super sign:v10];

          goto LABEL_16;
        }

        v13 = handleForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CRPreflight sign:keyBlob:];
        }
      }

      else
      {
        p_super = handleForCategory(0);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [CRPreflight sign:keyBlob:];
        }
      }
    }

    else
    {
      p_super = handleForCategory(0);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [CRPreflight sign:keyBlob:];
      }
    }
  }

  else
  {
    p_super = handleForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (BOOL)verify:(id)a3 signature:(id)a4 keyBlob:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    p_super = handleForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }

    goto LABEL_12;
  }

  v11 = [[CRRIK alloc] initWithKeyBlob:v10];
  if (!v11)
  {
    p_super = handleForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }

    goto LABEL_12;
  }

  p_super = &v11->super;
  v13 = [(CRPreflight *)self sha256Data:v8];
  if (!v13)
  {
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [p_super verify:v13 signature:v9];

LABEL_13:
  return v15;
}

- (id)sha256Data:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 length];
  if ((v4 - 1) > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    CC_SHA256([v3 bytes], v4, &v8);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:32];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)requestBAACertificates:(id)a3 apticket:(id)a4 proxySettings:(id)a5 withError:(id *)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v54 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = v11;
  if (!v10)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight requestBAACertificates:apticket:proxySettings:withError:];
    }

    goto LABEL_18;
  }

  v13 = [v10 attestationBlob];
  if (!v13)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight requestBAACertificates:apticket:proxySettings:withError:];
    }

LABEL_18:

    v29 = 0;
    v27 = 0;
    v32 = 0;
    v16 = 0;
    v14 = 0;
LABEL_19:
    v24 = 0;
    v22 = 0;
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v10 pubKeyBlob];
  if (!v15)
  {
    v36 = handleForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight requestBAACertificates:apticket:proxySettings:withError:];
    }

    v29 = 0;
    v27 = 0;
    v32 = 0;
    v16 = 0;
    goto LABEL_19;
  }

  v16 = v15;
  v52 = self;
  if (v11)
  {
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v11 base64EncodedStringWithOptions:0];
      *buf = 138477827;
      v58 = v18;
      _os_log_impl(&dword_1CEDC5000, v17, OS_LOG_TYPE_DEFAULT, "repairticket: %{private}@", buf, 0xCu);
    }

    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6999EC0]];
  }

  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6999E88]];
  [v12 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6999E90]];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6999F18]];
  v19 = *MEMORY[0x1E6999EE0];
  v56[0] = *MEMORY[0x1E6999F08];
  v56[1] = v19;
  v20 = *MEMORY[0x1E6999EF8];
  v56[2] = *MEMORY[0x1E6999EF0];
  v56[3] = v20;
  v56[4] = *MEMORY[0x1E6999EE8];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:5];
  [v12 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6999F00]];

  v55[1] = 0;
  v22 = DeviceIdentityCreateClientCertificateRequest();
  v23 = 0;
  v24 = v23;
  if (!v22 || v23)
  {
    v37 = handleForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CRPreflight *)v24 requestBAACertificates:v37 apticket:v38 proxySettings:v39 withError:v40, v41, v42, v43];
    }

    v29 = 0;
    v27 = 0;
    v32 = 0;
    goto LABEL_20;
  }

  v51 = a6;
  v25 = MGGetBoolAnswer();
  v26 = @"corerepaird-SB";
  if (v25)
  {
    v26 = @"corerepaird-CB";
  }

  v27 = v26;
  v28 = v52;
  v29 = [(CRPreflight *)v52 _getVersionInfo:v22];
  if (v29)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v29, v27];
    [v22 setValue:v30 forHTTPHeaderField:@"User-Agent"];
  }

  else
  {
    [v22 setValue:v27 forHTTPHeaderField:@"User-Agent"];
  }

  if (os_variant_has_internal_content())
  {
    v44 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v45 = [(CRUserDefaults *)v44 stringForKey:@"HumbugURL"];
    if (v45)
    {
      v46 = handleForCategory(0);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v45;
        _os_log_impl(&dword_1CEDC5000, v46, OS_LOG_TYPE_DEFAULT, "Overriding serverUrlString: %@", buf, 0xCu);
      }

      v47 = [MEMORY[0x1E695DFF8] URLWithString:v45];
      [v22 setURL:v47];
    }

    if ([(CRUserDefaults *)v44 BOOLForKey:@"DumpAttestationPayload"])
    {
      v48 = [v22 HTTPBody];
      [v48 writeToFile:@"/tmp/baa_request" atomically:1];
    }

    v28 = v52;
  }

  v55[0] = 0;
  v32 = [(CRPreflight *)v28 _sendBAARequest:v22 proxySettings:v54 withError:v55];
  v49 = v55[0];
  v24 = v49;
  if (v32 && !v49)
  {
    v32 = v32;
    v33 = v32;
    goto LABEL_21;
  }

  if (!v51)
  {
LABEL_20:
    v33 = 0;
    goto LABEL_21;
  }

  v50 = v49;
  v33 = 0;
  *v51 = v24;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_sendBAARequest:(id)a3 proxySettings:(id)a4 withError:(id *)a5
{
  v61[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy_;
  v56 = __Block_byref_object_dispose_;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v9 = objc_opt_new();
  if (v7)
  {
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"socksHost"];
      v11 = v10 == 0;

      if (!v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"socksHost"];
        [v9 setObject:v12 forKeyedSubscript:@"SOCKSProxy"];
      }

      v13 = [v8 objectForKeyedSubscript:@"socksPort"];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [v8 objectForKeyedSubscript:@"socksPort"];
        [v9 setObject:v15 forKeyedSubscript:@"SOCKSPort"];
      }
    }

    v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CoreRepairCoreNetworkXPCService"];
    v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BD86E8];
    [v16 setRemoteObjectInterface:v17];

    [v16 resume];
    v18 = dispatch_semaphore_create(0);
    v19 = objc_autoreleasePoolPush();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke;
    v39[3] = &unk_1E83B3E78;
    v41 = &v46;
    v20 = v18;
    v40 = v20;
    v21 = [v16 remoteObjectProxyWithErrorHandler:v39];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke_2;
    v33[3] = &unk_1E83B3EA0;
    v36 = &v52;
    v37 = &v46;
    v38 = &v42;
    v22 = v20;
    v34 = v22;
    v23 = v16;
    v35 = v23;
    [v21 sendBAARequest:v7 options:v9 withReply:v33];

    objc_autoreleasePoolPop(v19);
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    if (a5)
    {
      v24 = v47[5];
      if (v24 || *(v43 + 6) != 200)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request BAA failed with status: %d error: %@", *(v43 + 6), v24];
        v26 = v25;
        v27 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        if (*(v43 + 6) == 429)
        {
          v60 = *MEMORY[0x1E696A578];
          v61[0] = v25;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
          [v27 errorWithDomain:@"com.apple.corerepair" code:-94 userInfo:v29];
        }

        else
        {
          v58 = *MEMORY[0x1E696A578];
          v59 = v25;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          [v27 errorWithDomain:@"com.apple.corerepair" code:-76 userInfo:v29];
        }
        *a5 = ;
      }
    }

    v30 = v53[5];
  }

  else
  {
    v23 = handleForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight _sendBAARequest:proxySettings:withError:];
    }

    v30 = 0;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

intptr_t __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Network XPC call failed";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.corerepair" code:-76 userInfo:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = dispatch_semaphore_signal(*(a1 + 32));
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(*(a1 + 64) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidate];
}

- (id)_getVersionInfo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a3 allHTTPHeaderFields];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "Original Headers: %@", buf, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"User-Agent"];
  if (v5)
  {
    v23 = 0;
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^.*\\(MobileActivation-.*?\\)" options:0 error:&v23];
    v7 = v23;
    v8 = v7;
    if (!v6 || v7)
    {
      v10 = handleForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CRPreflight *)v8 _getVersionInfo:v10, v14, v15, v16, v17, v18, v19];
      }
    }

    else
    {
      v9 = [v6 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 range];
        v13 = [v5 substringWithRange:{v11, v12}];
LABEL_17:

        goto LABEL_18;
      }

      v20 = handleForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CRPreflight _getVersionInfo:];
      }
    }

    v13 = 0;
    goto LABEL_17;
  }

  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CRPreflight _getVersionInfo:];
  }

  v13 = 0;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

@end