@interface MIUserManagement
+ (id)sharedInstance;
- (BOOL)_onQueue_refreshPersonaInformationWithError:(id *)error;
- (BOOL)isKnownPersonaUniqueString:(id)string error:(id *)error;
- (BOOL)setBundleIdentifiers:(id)identifiers forPersonaUniqueString:(id)string error:(id *)error;
- (MIUserManagement)init;
- (NSDictionary)allPersonaVolumeDaemonContainersMap;
- (NSString)enterprisePersonaUniqueString;
- (NSString)primaryPersonaUniqueString;
- (NSString)systemPersonaUniqueString;
- (id)bundleIDsAssociatedWithPersonaUniqueString:(id)string error:(id *)error;
- (id)multiPersonaSADAppBundleIDsWithError:(id *)error;
- (id)personaForBundleID:(id)d error:(id *)error;
- (id)personaVolumeDaemonContainerForUUID:(id)d;
- (unint64_t)personaTypeForPersonaUniqueString:(id)string;
@end

@implementation MIUserManagement

uint64_t __34__MIUserManagement_sharedInstance__block_invoke()
{
  sharedInstance_defaultInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MIUserManagement_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_defaultInstance;

  return v2;
}

- (NSString)primaryPersonaUniqueString
{
  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MIUserManagement_primaryPersonaUniqueString__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  return self->_primaryPersonaUniqueString;
}

void __46__MIUserManagement_primaryPersonaUniqueString__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  v2 = [v1 _onQueue_refreshPersonaInformationWithError:&v4];
  v3 = v4;
  if ((v2 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }
}

- (MIUserManagement)init
{
  v6.receiver = self;
  v6.super_class = MIUserManagement;
  v2 = [(MIUserManagement *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.installd.umAccessQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;
  }

  return v2;
}

- (NSString)systemPersonaUniqueString
{
  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MIUserManagement_systemPersonaUniqueString__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  return self->_systemPersonaUniqueString;
}

void __45__MIUserManagement_systemPersonaUniqueString__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  v2 = [v1 _onQueue_refreshPersonaInformationWithError:&v4];
  v3 = v4;
  if ((v2 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }
}

- (BOOL)_onQueue_refreshPersonaInformationWithError:(id *)error
{
  selfCopy = self;
  v85 = *MEMORY[0x1E69E9840];
  internalQueue = [(MIUserManagement *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  sharedManager = [getUMUserManagerClass() sharedManager];
  v75 = 0;
  v7 = [sharedManager personaGenerationIdentifierWithError:&v75];
  v8 = v75;

  if (v7)
  {
    personaAttributesMap = [(MIUserManagement *)selfCopy personaAttributesMap];
    if (personaAttributesMap)
    {
      v11 = personaAttributesMap;
      personaGenerationIdentifier = [(MIUserManagement *)selfCopy personaGenerationIdentifier];

      if (v7 == personaGenerationIdentifier)
      {
        v13 = 1;
        goto LABEL_73;
      }
    }

    sharedManager2 = [getUMUserManagerClass() sharedManager];
    v74 = v8;
    v15 = [sharedManager2 listAllPersonaAttributesWithError:&v74];
    v16 = v74;

    if (v15)
    {
      v52 = v7;
      v61 = objc_opt_new();
      v53 = objc_opt_new();
      v57 = +[MIFileManager defaultManager];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v15;
      v18 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
      if (!v18)
      {
        goto LABEL_66;
      }

      v19 = v18;
      v66 = *v71;
      v65 = selfCopy;
      while (1)
      {
        v20 = 0;
        v62 = v19;
        do
        {
          if (*v71 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v70 + 1) + 8 * v20);
          userPersonaUniqueString = [v21 userPersonaUniqueString];
          if (userPersonaUniqueString)
          {
            if ([v21 isSystemPersona])
            {
              objc_storeStrong(&selfCopy->_systemPersonaUniqueString, userPersonaUniqueString);
            }

            if ([v21 isEnterprisePersona])
            {
              objc_storeStrong(&selfCopy->_enterprisePersonaUniqueString, userPersonaUniqueString);
            }

            if ([v21 isPersonalPersona])
            {
              objc_storeStrong(&selfCopy->_primaryPersonaUniqueString, userPersonaUniqueString);
            }

            userPersonaBundleIDList = [v21 userPersonaBundleIDList];
            if (!userPersonaBundleIDList)
            {
              userPersonaBundleIDList = objc_opt_new();
            }

            personaLayoutPathURL = [v21 personaLayoutPathURL];
            if (!personaLayoutPathURL)
            {
              v28 = 0;
              v64 = -1;
              v26 = v16;
              goto LABEL_29;
            }

            v69 = v16;
            v25 = [MIMCMContainer daemonContainerForPersona:userPersonaUniqueString error:&v69];
            v26 = v69;

            if (v25)
            {
              containerURL = [v25 containerURL];
              if (containerURL)
              {
                v28 = containerURL;
                transferOwnershipOfSandboxExtensionToCaller = [v25 transferOwnershipOfSandboxExtensionToCaller];
                if (transferOwnershipOfSandboxExtensionToCaller == -1)
                {
                  if (!gLogHandle || *(gLogHandle + 44) >= 3)
                  {
                    [v28 path];
                    path5 = path4 = userPersonaUniqueString;
                    MOLogWrite();
                  }

                  goto LABEL_33;
                }

                v59 = v26;
                v64 = transferOwnershipOfSandboxExtensionToCaller;
                v68 = 0;
                v30 = [v57 volumeUUIDForURL:v28 error:&v68];
                v31 = v68;
                v32 = v31;
                v60 = v30;
                if (v30)
                {
                  v67 = v31;
                  v33 = [v57 volumeUUIDForURL:personaLayoutPathURL error:&v67];
                  v58 = v67;

                  v34 = v33;
                  if (v33)
                  {
                    v35 = [v33 isEqual:v30];
                    v19 = v62;
                    v26 = v59;
                    if (v35)
                    {
                      [v53 setObject:v28 forKeyedSubscript:v34];
                      goto LABEL_63;
                    }

                    v56 = v34;
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                    {
                      path = [v28 path];
                      path2 = [personaLayoutPathURL path];
                      *buf = 136315906;
                      v77 = "[MIUserManagement _onQueue_refreshPersonaInformationWithError:]";
                      v78 = 2112;
                      v79 = path;
                      v80 = 2112;
                      v81 = userPersonaUniqueString;
                      v82 = 2112;
                      v83 = path2;
                      v40 = path2;
                      _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Got daemon container at %@ for data separated persona %@ that was not on persona mount %@", buf, 0x2Au);
                    }

                    if (!gLogHandle || *(gLogHandle + 44) >= 3)
                    {
                      path3 = [v28 path];
                      [personaLayoutPathURL path];
                      v51 = path5 = userPersonaUniqueString;
                      path4 = path3;
                      MOLogWrite();
                    }
                  }

                  else
                  {
                    v56 = 0;
                    v19 = v62;
                    v26 = v59;
                    if (!gLogHandle || *(gLogHandle + 44) >= 3)
                    {
                      path4 = [personaLayoutPathURL path];
                      path5 = v58;
                      MOLogWrite();
                    }

                    v58 = 0;
                  }

                  v34 = v56;
LABEL_63:

                  if (!v34)
                  {
LABEL_50:

                    v16 = v26;
                    selfCopy = v65;
                    goto LABEL_51;
                  }

LABEL_29:
                  userPersonaType = [v21 userPersonaType];
                  if (gLogHandle && *(gLogHandle + 44) >= 7)
                  {
                    [personaLayoutPathURL path];
                    v51 = path5 = userPersonaType;
                    path4 = userPersonaUniqueString;
                    MOLogWrite();
                  }

                  v37 = [MIPersonaAttributes alloc];
                  v25 = [MEMORY[0x1E695DFD8] setWithArray:userPersonaBundleIDList];
                  v38 = [(MIPersonaAttributes *)v37 initWithPersonaString:userPersonaUniqueString personaType:userPersonaType associatedBundleIDs:v25 volumeDaemonContainer:v28 volumeDaemonContainerSandboxExtension:v64];
                  [v61 setObject:v38 forKeyedSubscript:userPersonaUniqueString];

LABEL_33:
                  v19 = v62;
                }

                else
                {
                  if (!gLogHandle || *(gLogHandle + 44) >= 3)
                  {
                    path5 = [v28 path];
                    v51 = v32;
                    path4 = userPersonaUniqueString;
                    MOLogWrite();
                  }

                  v19 = v62;
                  v26 = v59;
                }
              }

              else
              {
                if (!gLogHandle || *(gLogHandle + 44) >= 3)
                {
                  path4 = v25;
                  MOLogWrite();
                }

                v28 = 0;
              }
            }

            else
            {
              if (!gLogHandle || *(gLogHandle + 44) >= 3)
              {
                path4 = userPersonaUniqueString;
                path5 = v26;
                MOLogWrite();
              }

              v28 = 0;
              v26 = 0;
            }

            goto LABEL_50;
          }

LABEL_51:

          ++v20;
        }

        while (v19 != v20);
        v41 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
        v19 = v41;
        if (!v41)
        {
LABEL_66:

          v42 = [v61 copy];
          personaAttributesMap = selfCopy->_personaAttributesMap;
          selfCopy->_personaAttributesMap = v42;

          v44 = [v53 copy];
          personaVolumeUUIDToDaemonContainerMap = selfCopy->_personaVolumeUUIDToDaemonContainerMap;
          selfCopy->_personaVolumeUUIDToDaemonContainerMap = v44;

          selfCopy->_personaGenerationIdentifier = v52;
          v13 = 1;
          v8 = v16;
          goto LABEL_73;
        }
      }
    }

    v46 = _CreateAndLogError("[MIUserManagement _onQueue_refreshPersonaInformationWithError:]", 85, @"MIInstallerErrorDomain", 4, v16, 0, @"Failed to read persona attributes from UM", v17, path4);
    v8 = v16;
  }

  else
  {
    v46 = _CreateAndLogError("[MIUserManagement _onQueue_refreshPersonaInformationWithError:]", 73, @"MIInstallerErrorDomain", 4, v8, 0, @"Failed to read UM's persona generation identifier when resolving persona", v9, path4);
  }

  if (error)
  {
    v47 = v46;
    v13 = 0;
    *error = v46;
  }

  else
  {
    v13 = 0;
  }

  v8 = v46;
LABEL_73:

  return v13;
}

- (NSString)enterprisePersonaUniqueString
{
  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MIUserManagement_enterprisePersonaUniqueString__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  return self->_enterprisePersonaUniqueString;
}

void __49__MIUserManagement_enterprisePersonaUniqueString__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  v2 = [v1 _onQueue_refreshPersonaInformationWithError:&v4];
  v3 = v4;
  if ((v2 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }
}

- (BOOL)isKnownPersonaUniqueString:(id)string error:(id *)error
{
  stringCopy = string;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if ([stringCopy isEqualToString:@"Invalid"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"PersonalPersonaPlaceholderString"))
  {
    v7 = 1;
  }

  else
  {
    internalQueue = [(MIUserManagement *)self internalQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__MIUserManagement_isKnownPersonaUniqueString_error___block_invoke;
    v10[3] = &unk_1E7AE1820;
    v10[4] = self;
    v12 = &v14;
    v11 = stringCopy;
    v13 = &v20;
    dispatch_sync(internalQueue, v10);

    v7 = *(v21 + 24);
    if (error && (v21[3] & 1) == 0)
    {
      *error = v15[5];
      v7 = *(v21 + 24);
    }
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v7 & 1;
}

void __53__MIUserManagement_isKnownPersonaUniqueString_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _onQueue_refreshPersonaInformationWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) personaAttributesMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    if (v6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v8 = _CreateAndLogError("[MIUserManagement isKnownPersonaUniqueString:error:]_block_invoke", 239, @"MIInstallerErrorDomain", 4, 0, 0, @"Client provided persona %@ is not among available personas on the system", v7, *(a1 + 40));
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (id)multiPersonaSADAppBundleIDsWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MIUserManagement_multiPersonaSADAppBundleIDsWithError___block_invoke;
  block[3] = &unk_1E7AE1848;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v16;
  dispatch_sync(internalQueue, block);

  v6 = v17[5];
  if (error && !v6)
  {
    *error = v11[5];
    v6 = v17[5];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __57__MIUserManagement_multiPersonaSADAppBundleIDsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _onQueue_refreshPersonaInformationWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = a1[4];
    v6 = v5[3];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 personaAttributesMap];
      v9 = [v8 objectForKeyedSubscript:v7];
      v10 = [v9 bundleIDs];
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v8 = 0;
      v13 = objc_opt_new();
      v14 = *(a1[6] + 8);
      v9 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

- (id)personaForBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v15 = dCopy;
    MOLogWrite();
  }

  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MIUserManagement_personaForBundleID_error___block_invoke;
  block[3] = &unk_1E7AE1898;
  v18 = &v21;
  block[4] = self;
  v19 = &v25;
  v8 = dCopy;
  v17 = v8;
  v20 = &v31;
  dispatch_sync(internalQueue, block);

  v9 = *(v22 + 24);
  if (v9 == 1)
  {
    if (!v32[5])
    {
      v12 = +[MIGlobalConfiguration sharedInstance];
      primaryPersonaString = [v12 primaryPersonaString];
      v14 = v32[5];
      v32[5] = primaryPersonaString;

      LOBYTE(v9) = *(v22 + 24);
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    LOBYTE(v9) = 1;
  }

  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v9 & 1) == 0)
  {
    *error = v26[5];
  }

LABEL_10:
  v10 = v32[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v10;
}

void __45__MIUserManagement_personaForBundleID_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v11 = *(v3 + 40);
  v4 = [v2 _onQueue_refreshPersonaInformationWithError:&v11];
  objc_storeStrong((v3 + 40), v11);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 32) personaAttributesMap];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__MIUserManagement_personaForBundleID_error___block_invoke_2;
    v8[3] = &unk_1E7AE1870;
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v9 = v6;
    v10 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __45__MIUserManagement_personaForBundleID_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = a3;
  if (([v8 personaType] & 0xFFFFFFFFFFFFFFFBLL) == 2)
  {
    v9 = [v8 bundleIDs];
    if ([v9 containsObject:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }

      *a4 = 1;
    }
  }
}

- (unint64_t)personaTypeForPersonaUniqueString:(id)string
{
  stringCopy = string;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1000;
  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MIUserManagement_personaTypeForPersonaUniqueString___block_invoke;
  block[3] = &unk_1E7AE18C0;
  block[4] = self;
  v10 = stringCopy;
  v11 = &v12;
  v6 = stringCopy;
  dispatch_sync(internalQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __54__MIUserManagement_personaTypeForPersonaUniqueString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) personaAttributesMap];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 personaType];
    v3 = v4;
  }
}

- (NSDictionary)allPersonaVolumeDaemonContainersMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  internalQueue = [(MIUserManagement *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MIUserManagement_allPersonaVolumeDaemonContainersMap__block_invoke;
  v6[3] = &unk_1E7AE18E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__MIUserManagement_allPersonaVolumeDaemonContainersMap__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 _onQueue_refreshPersonaInformationWithError:&v13];
  v4 = v13;
  if ((v3 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v12 = v4;
    MOLogWrite();
  }

  v5 = [*(a1 + 32) personaVolumeUUIDToDaemonContainerMap];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = objc_opt_new();
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)personaVolumeDaemonContainerForUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  internalQueue = [(MIUserManagement *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MIUserManagement_personaVolumeDaemonContainerForUUID___block_invoke;
  block[3] = &unk_1E7AE1910;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__MIUserManagement_personaVolumeDaemonContainerForUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 _onQueue_refreshPersonaInformationWithError:&v10];
  v4 = v10;
  if ((v3 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v9 = v4;
    MOLogWrite();
  }

  v5 = [*(a1 + 32) personaVolumeUUIDToDaemonContainerMap];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)setBundleIdentifiers:(id)identifiers forPersonaUniqueString:(id)string error:(id *)error
{
  identifiersCopy = identifiers;
  stringCopy = string;
  sharedManager = [getUMUserManagerClass() sharedManager];
  v16 = 0;
  v10 = [sharedManager setBundleIdentifiers:identifiersCopy forPersonaWithPersonaUniqueString:stringCopy withError:&v16];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    v13 = _CreateAndLogError("[MIUserManagement setBundleIdentifiers:forPersonaUniqueString:error:]", 376, @"MIInstallerErrorDomain", 4, v11, 0, @"Failed to associate apps with persona %@ : %@", v12, identifiersCopy);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v11 = v13;
  }

  return v10;
}

- (id)bundleIDsAssociatedWithPersonaUniqueString:(id)string error:(id *)error
{
  stringCopy = string;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  internalQueue = [(MIUserManagement *)self internalQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__MIUserManagement_bundleIDsAssociatedWithPersonaUniqueString_error___block_invoke;
  v12[3] = &unk_1E7AE1820;
  v12[4] = self;
  v14 = &v22;
  v8 = stringCopy;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(internalQueue, v12);

  v9 = v17[5];
  if (error && !v9)
  {
    *error = v23[5];
    v9 = v17[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __69__MIUserManagement_bundleIDsAssociatedWithPersonaUniqueString_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _onQueue_refreshPersonaInformationWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) personaAttributesMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    if (v6)
    {
      v8 = [v6 bundleIDs];
      v9 = [v8 copy];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = _CreateAndLogError("[MIUserManagement bundleIDsAssociatedWithPersonaUniqueString:error:]_block_invoke", 402, @"MIInstallerErrorDomain", 4, *(*(*(a1 + 48) + 8) + 40), 0, @"Failed to find persona %@ when checking associated bundleIDs for it", v7, *(a1 + 40));
      v13 = *(*(a1 + 48) + 8);
      v8 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }
}

@end