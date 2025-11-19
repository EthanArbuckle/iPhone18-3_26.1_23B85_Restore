@interface MIContainer
+ (BOOL)removeContainers:(id)a3 waitForDeletion:(BOOL)a4 error:(id *)a5;
+ (id)_allContainersForIdentifier:(id)a3 persona:(id)a4 options:(unint64_t)a5 error:(id *)a6;
+ (id)_bundleContainerForIdentifier:(id)a3 forPersona:(id)a4 error:(id *)a5;
+ (id)containerWithIdentifier:(id)a3 forPersona:(id)a4 ofContentClass:(unint64_t)a5 createIfNeeded:(BOOL)a6 created:(BOOL *)a7 error:(id *)a8;
+ (id)containersForIdentifier:(id)a3 groupContainerIdentifier:(id)a4 ofContentClass:(unint64_t)a5 forPersona:(id)a6 fetchTransient:(BOOL)a7 createIfNeeded:(BOOL)a8 error:(id *)a9;
+ (id)containersWithClass:(unint64_t)a3 error:(id *)a4;
+ (id)containersWithClass:(unint64_t)a3 personaUniqueString:(id)a4 error:(id *)a5;
+ (id)groupContainerURLsForBundleIdentifier:(id)a3 forPersona:(id)a4 error:(id *)a5;
+ (id)tempContainerWithIdentifier:(id)a3 forPersona:(id)a4 ofContentClass:(unint64_t)a5 error:(id *)a6;
- (BOOL)_deriveContainerStatusWithError:(id *)a3;
- (BOOL)_doInitWithContainer:(id)a3 error:(id *)a4;
- (BOOL)_isStagedUpdateContainer:(BOOL *)a3 withError:(id *)a4;
- (BOOL)_replaceExistingContainer:(id)a3 replacementReason:(unint64_t)a4 waitForDeletion:(BOOL)a5 error:(id *)a6;
- (BOOL)_setContainer:(id)a3 error:(id *)a4;
- (BOOL)clearStagedUpdateContainerStatusWithError:(id *)a3;
- (BOOL)isNew;
- (BOOL)isTransient;
- (BOOL)makeContainerLiveReplacingContainer:(id)a3 reason:(unint64_t)a4 waitForDeletion:(BOOL)a5 withError:(id *)a6;
- (BOOL)markContainerAsStagedUpdateWithError:(id *)a3;
- (BOOL)purgeContentWithError:(id *)a3;
- (BOOL)recreateDefaultStructureWithError:(id *)a3;
- (BOOL)regenerateDirectoryUUIDWithError:(id *)a3;
- (BOOL)removeUnderlyingContainerWaitingForDeletion:(BOOL)a3 error:(id *)a4;
- (BOOL)setInfoValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (MIContainer)initWithContainer:(id)a3 error:(id *)a4;
- (MIContainer)initWithContainerURL:(id)a3;
- (MIContainer)initWithToken:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (NSString)identifier;
- (NSString)personaUniqueString;
- (NSURL)containerURL;
- (id)description;
- (id)infoValueForKey:(id)a3 error:(id *)a4;
- (unint64_t)containerClass;
- (unint64_t)diskUsage;
- (void)dealloc;
@end

@implementation MIContainer

- (MIContainer)initWithContainerURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MIContainer;
  v6 = [(MIContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerURL, a3);
  }

  return v7;
}

- (BOOL)_deriveContainerStatusWithError:(id *)a3
{
  if ([(MIContainer *)self isTransient])
  {
    v5 = 0;
    self->_status = 2;
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v14 = 0;
  v6 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v14];
  v7 = v14;
  v5 = v7;
  if (v6)
  {
    v8 = 3;
LABEL_9:
    self->_status = v8;

    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_8:

    v5 = 0;
    v8 = 1;
    goto LABEL_9;
  }

  v9 = [v7 domain];
  if ([v9 isEqualToString:@"MIContainerManagerErrorDomain"])
  {
    v10 = [v5 code];

    if (v10 == 24)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  if (a3)
  {
    v13 = v5;
    v11 = 0;
    *a3 = v5;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (BOOL)_doInitWithContainer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v7 = a3;
  objc_storeStrong(&self->_rawContainer, v5);
  v17 = 0;
  LODWORD(v5) = [(MIContainer *)self _deriveContainerStatusWithError:&v17];
  v8 = v17;
  v9 = v8;
  if (!v5)
  {
    v11 = v8;
    goto LABEL_6;
  }

  if ([(MIContainer *)self isTransient])
  {
    v16 = 0;
    v15 = v9;
    v10 = [(MIContainer *)self _isStagedUpdateContainer:&v16 withError:&v15];
    v11 = v15;

    if (v10)
    {
      [(MIContainer *)self setIsStagedContainer:v16];
      v12 = 1;
LABEL_10:
      v9 = v11;
      goto LABEL_11;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_6:
    if (a4)
    {
      v13 = v11;
      v12 = 0;
      *a4 = v11;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_10;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (MIContainer)initWithContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MIContainer;
  v7 = [(MIContainer *)&v16 init];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v15 = 0;
  v9 = [(MIContainer *)v7 _doInitWithContainer:v6 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
LABEL_6:
    v13 = v8;
    goto LABEL_7;
  }

  if (a4)
  {
    v12 = v10;
    v13 = 0;
    *a4 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_7:

  return v13;
}

- (MIContainer)initWithToken:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v30.receiver = self;
  v30.super_class = MIContainer;
  v9 = [(MIContainer *)&v30 init];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [v8 containerURL];
  if (!v10)
  {
    v14 = ~(v6 << 16);
    v15 = [MIMCMContainer alloc];
    v16 = [v8 serializedContainerRepresentation];
    v29 = 0;
    v17 = [(MIMCMContainer *)v15 initWithSerializedContainer:v16 matchingWithOptions:*&v14 & 0x30000 error:&v29];
    v18 = v29;

    if (v17)
    {
      v27 = a5;
      v20 = [(MIMCMContainer *)v17 personaUniqueString];
      v21 = [v8 personaUniqueString];
      v22 = [(MIMCMContainer *)v17 identifier];
      v23 = [v8 identifier];
      if (![v23 isEqualToString:v22] || v21 && v20 && (objc_msgSend(v21, "isEqualToString:", v20) & 1) == 0)
      {
        v11 = _CreateAndLogError("[MIContainer initWithToken:options:error:]", 181, @"MIInstallerErrorDomain", 186, v18, 0, @"Deserialized container object had identity %@/%@ but the token was for %@/%@", v24, v22);
        v26 = 0;
      }

      else
      {
        v28 = v18;
        v26 = [(MIContainer *)v9 _doInitWithContainer:v17 error:&v28];
        v11 = v28;
      }

      a5 = v27;
      if (v26)
      {
        goto LABEL_4;
      }

      if (v27)
      {
LABEL_17:
        v25 = v11;
        v12 = 0;
        *a5 = v11;
        goto LABEL_7;
      }
    }

    else
    {
      v11 = _CreateAndLogError("[MIContainer initWithToken:options:error:]", 171, @"MIInstallerErrorDomain", 186, v18, 0, @"Failed to serialize container data %@", v19, v8);

      if (a5)
      {
        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&v9->_containerURL, v10);
  v11 = 0;
LABEL_4:

LABEL_6:
  v12 = v9;
LABEL_7:

  return v12;
}

- (void)dealloc
{
  v3 = [(MIContainer *)self rawContainer];

  if (v3)
  {
    v4 = +[MITestManager sharedInstance];
    v5 = [v4 testFlagsAreSet:64];

    v6 = [(MIContainer *)self containerClass];
    if ([(MIContainer *)self isTransient]&& ![(MIContainer *)self isStagedContainer]&& (v6 == 14 || v6 == 1) && (v5 & 1) == 0)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v9 = self;
        MOLogWrite();
      }

      v12 = 0;
      v8 = [(MIContainer *)self removeUnderlyingContainerWaitingForDeletion:0 error:&v12, v9];
      v7 = v12;
      if (!v8 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v9 = [(MIContainer *)self identifier];
        v10 = v7;
        MOLogWrite();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v11.receiver = self;
  v11.super_class = MIContainer;
  [(MIContainer *)&v11 dealloc:v9];
}

- (NSString)identifier
{
  v2 = [(MIContainer *)self rawContainer];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)personaUniqueString
{
  v2 = [(MIContainer *)self rawContainer];
  v3 = [v2 personaUniqueString];

  return v3;
}

- (unint64_t)containerClass
{
  v2 = [(MIContainer *)self rawContainer];
  v3 = [v2 containerClass];

  return v3;
}

- (BOOL)isTransient
{
  v2 = [(MIContainer *)self rawContainer];
  v3 = [v2 isTransient];

  return v3;
}

- (BOOL)isNew
{
  v2 = [(MIContainer *)self rawContainer];
  v3 = [v2 isNew];

  return v3;
}

- (NSURL)containerURL
{
  containerURL = self->_containerURL;
  if (containerURL)
  {
    v3 = containerURL;
  }

  else
  {
    v4 = [(MIContainer *)self rawContainer];
    v3 = [v4 containerURL];
  }

  return v3;
}

- (BOOL)_setContainer:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(MIContainer *)self rawContainer];
  v9 = [v8 isEqual:v7];

  if ((v9 & 1) == 0)
  {
    if (!v7)
    {
      [(MIContainer *)self setContainerURL:0];
      goto LABEL_8;
    }

    v11 = [v7 containerClass];
    if (v11 == [(MIContainer *)self containerClass])
    {
      v12 = [v7 identifier];
      v13 = [(MIContainer *)self identifier];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {

        objc_storeStrong(&self->_rawContainer, a3);
LABEL_8:
        v16 = 0;
        v10 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v16 = _CreateAndLogError("[MIContainer _setContainer:error:]", 289, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set container with mismatched identifier %@ on %@", v15, v12);

      if (!a4)
      {
LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      [(MIContainer *)self containerClass];
      v16 = _CreateAndLogError("[MIContainer _setContainer:error:]", 283, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set container %@ with content class %llu on %@ which represents a container with class %llu", v17, v7);
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    v18 = v16;
    v10 = 0;
    *a4 = v16;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

- (BOOL)removeUnderlyingContainerWaitingForDeletion:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = [(MIContainer *)self rawContainer];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v16 = 0;
  v9 = [MIMCMContainer deleteContainers:v8 waitForDeletion:v5 error:&v16];
  v10 = v16;

  if (!v9)
  {
    v11 = [(MIContainer *)self rawContainer];
    v13 = _CreateAndLogError("[MIContainer removeUnderlyingContainerWaitingForDeletion:error:]", 316, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to delete container_object_t for %@", v12, v11);

    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }

    v10 = v13;
  }

  return v9;
}

- (BOOL)_replaceExistingContainer:(id)a3 replacementReason:(unint64_t)a4 waitForDeletion:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v29[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(MIContainer *)self identifier];
  v12 = [(MIContainer *)self containerClass];
  v13 = [(MIContainer *)self rawContainer];
  v14 = [v10 rawContainer];

  v27 = 0;
  v15 = [v13 replaceExistingContainer:v14 error:&v27];
  v16 = v27;

  if (v15)
  {
    if (v7)
    {
      v17 = [(MIContainer *)self rawContainer];
      v26 = 0;
      v18 = [v17 reclaimDiskSpaceWithError:&v26];
      v19 = v26;

      if ((v18 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        MOLogWrite();
      }

      v20 = v18 ^ 1u;
    }

    else
    {
      v20 = 0;
    }

    if (a4 == 1 && v12 == 1)
    {
      v28[0] = *MEMORY[0x1E695E4F0];
      v28[1] = @"MobileInstallationDemotionCompleteErrorOccurred";
      v29[0] = v11;
      v22 = [MEMORY[0x1E696AD98] numberWithBool:v20];
      v29[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      v24 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v24 postNotificationName:@"MobileInstallationDemotionCompleteNotification" object:0 userInfo:v23 options:3];

      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }
    }
  }

  else if (a6)
  {
    v21 = v16;
    *a6 = v16;
  }

  return v15;
}

+ (id)containersForIdentifier:(id)a3 groupContainerIdentifier:(id)a4 ofContentClass:(unint64_t)a5 forPersona:(id)a6 fetchTransient:(BOOL)a7 createIfNeeded:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v10 = a7;
  v58 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v48 = objc_opt_new();
  v46 = (v14 | v15) != 0;
  if (v14 | v15)
  {
    if (v14)
    {
      v55 = 0;
      v18 = &v55;
      v19 = [MIMCMContainer containersForBundleIdentifier:v14 contentClass:a5 forPersona:v16 create:v9 fetchTransient:v10 error:&v55];
    }

    else
    {
      if (!v15)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v54 = 0;
      v18 = &v54;
      v19 = [MIMCMContainer containersForGroupIdentifier:v15 forPersona:v16 create:v9 fetchTransient:v10 error:&v54];
    }
  }

  else
  {
    v56 = 0;
    v18 = &v56;
    v19 = [MIMCMContainer containersForContentClass:a5 forPersona:v16 fetchTransient:v10 error:&v56];
  }

  v20 = v19;
  v21 = *v18;
  v22 = v21;
  if (!v20)
  {
LABEL_31:
    v25 = _CreateAndLogError("+[MIContainer containersForIdentifier:groupContainerIdentifier:ofContentClass:forPersona:fetchTransient:createIfNeeded:error:]", 388, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to retrieve any containers for identifier: %@ groupIdentifier: %@ container type: %llu persona: %@", v17, v14);

    obj = 0;
    v35 = 0;
    goto LABEL_32;
  }

  v43 = v16;
  v44 = v15;
  v45 = v14;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v20;
  v23 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = 0;
    v27 = *v51;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v51 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v50 + 1) + 8 * i);
        v30 = objc_alloc(objc_opt_class());
        v49 = 0;
        v31 = [v30 initWithContainer:v29 error:&v49];
        v32 = v49;
        v33 = v32;
        if (v31)
        {
          [v48 addObject:v31];
        }

        else
        {
          v34 = v32;

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v41 = v29;
            v42 = v34;
            MOLogWrite();
          }

          if (v46)
          {

            v35 = 0;
            v25 = v34;
            goto LABEL_29;
          }

          ++v26;
          v25 = v34;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if ([obj count] || !v25)
  {
    v35 = [v48 copy];
  }

  else
  {
    v37 = _CreateAndLogError("+[MIContainer containersForIdentifier:groupContainerIdentifier:ofContentClass:forPersona:fetchTransient:createIfNeeded:error:]", 410, @"MIInstallerErrorDomain", 4, v25, 0, @"Failed to construct MIContainer object for all %llu containers last error is underlying error", v36, v26);;

    v35 = 0;
    v25 = v37;
  }

LABEL_29:
  v15 = v44;
  v14 = v45;
  v16 = v43;
LABEL_32:
  if (a9 && !v35)
  {
    v38 = v25;
    *a9 = v25;
  }

  v39 = v35;

  return v35;
}

+ (id)groupContainerURLsForBundleIdentifier:(id)a3 forPersona:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = 0;
  v8 = [MIMCMContainer containersForBundleIdentifier:v7 contentClass:7 forPersona:a4 create:1 fetchTransient:0 error:&v33];
  v9 = v33;
  v11 = v9;
  if (!v8)
  {
    v22 = _CreateAndLogError("+[MIContainer groupContainerURLsForBundleIdentifier:forPersona:error:]", 433, @"MIInstallerErrorDomain", 4, v9, 0, @"Failed to retrieve any shared data containers for %@", v10, v7);

    v21 = 0;
    v12 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v26 = v9;
  v28 = v7;
  v12 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v8;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 identifier];
        v20 = [v18 containerURL];
        if (v20)
        {
          [v12 setObject:v20 forKeyedSubscript:v19];
        }

        else if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v25 = v19;
          MOLogWrite();
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  v21 = [v12 copy];
  v7 = v28;
  v22 = v26;
  v8 = v27;
  if (a5)
  {
LABEL_17:
    if (!v21)
    {
      v23 = v22;
      *a5 = v22;
    }
  }

LABEL_19:

  return v21;
}

+ (id)tempContainerWithIdentifier:(id)a3 forPersona:(id)a4 ofContentClass:(unint64_t)a5 error:(id *)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v29 = 0;
  v11 = [MIMCMContainer transientContainerForIdentifier:v9 contentClass:a5 forPersona:v10 create:1 error:&v29];
  v12 = v29;
  if (!v11)
  {
    goto LABEL_14;
  }

  if ([v11 isNew])
  {
    goto LABEL_3;
  }

  v25 = a6;
  v30[0] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v28 = v12;
  v17 = [MIMCMContainer deleteContainers:v16 waitForDeletion:0 error:&v28];
  v14 = v28;

  if (v17)
  {
    v27 = v14;
    v19 = [MIMCMContainer transientContainerForIdentifier:v9 contentClass:a5 forPersona:v10 create:1 error:&v27];
    v12 = v27;

    a6 = v25;
    if (v19)
    {
      if ([v19 isNew])
      {
        v11 = v19;
LABEL_3:
        v26 = v12;
        v13 = [objc_alloc(objc_opt_class()) initWithContainer:v11 error:&v26];
        v14 = v26;

        if (v13)
        {
          v12 = v14;
          goto LABEL_17;
        }

        v22 = _CreateAndLogError("+[MIContainer tempContainerWithIdentifier:forPersona:ofContentClass:error:]", 489, @"MIInstallerErrorDomain", 4, v14, 0, @"Failed to create MIContainer instance for %@", v15, v11);
        goto LABEL_13;
      }

      v22 = _CreateAndLogError("+[MIContainer tempContainerWithIdentifier:forPersona:ofContentClass:error:]", 482, @"MIInstallerErrorDomain", 4, 0, 0, @"Unexpectedly received existing container %@ when request was to create a new container for %@", v21, v19);
      v14 = v12;
      v11 = v19;
    }

    else
    {
      v22 = _CreateAndLogError("+[MIContainer tempContainerWithIdentifier:forPersona:ofContentClass:error:]", 478, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to create container for %@", v20, v9);
      v11 = 0;
      v14 = v12;
    }
  }

  else
  {
    v22 = _CreateAndLogError("+[MIContainer tempContainerWithIdentifier:forPersona:ofContentClass:error:]", 472, @"MIInstallerErrorDomain", 4, v14, 0, @"Failed to delete existing transient container for %@", v18, v9);
    a6 = v25;
  }

LABEL_13:

  v12 = v22;
LABEL_14:
  if (a6)
  {
    v23 = v12;
    v13 = 0;
    *a6 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

+ (id)containerWithIdentifier:(id)a3 forPersona:(id)a4 ofContentClass:(unint64_t)a5 createIfNeeded:(BOOL)a6 created:(BOOL *)a7 error:(id *)a8
{
  v9 = a6;
  v36[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v35 = 0;
  v14 = [MIMCMContainer containerForIdentifier:v12 contentClass:a5 forPersona:v13 create:v9 error:&v35];
  v15 = v35;
  v17 = v15;
  if (!v14)
  {
    if (!v9)
    {
      v21 = [v15 domain];
      if ([v21 isEqualToString:@"MIContainerManagerErrorDomain"])
      {
        v22 = [v17 code];

        if (v22 == 21)
        {
          LOBYTE(v18) = 0;
          v19 = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v25 = _CreateAndLogError("+[MIContainer containerWithIdentifier:forPersona:ofContentClass:createIfNeeded:created:error:]", 514, @"MIInstallerErrorDomain", 4, v17, 0, @"Failed to find container of class %llu with identity %@/%@", v16, a5);
    goto LABEL_27;
  }

  v18 = [v14 isNew];
  v34 = v17;
  v19 = [objc_alloc(objc_opt_class()) initWithContainer:v14 error:&v34];
  v20 = v34;

  if (v19)
  {
    v17 = v20;
    goto LABEL_17;
  }

  v23 = objc_opt_class();
  v25 = _CreateAndLogError("+[MIContainer containerWithIdentifier:forPersona:ofContentClass:createIfNeeded:created:error:]", 522, @"MIInstallerErrorDomain", 4, v20, 0, @"Failed to create %@ instance for %@", v24, v23);

  if (v18)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v31 = v14;
      MOLogWrite();
    }

    v36[0] = v14;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:{1, v31, v14}];
    v33 = 0;
    v27 = [MIMCMContainer deleteContainers:v26 waitForDeletion:0 error:&v33];
    v17 = v33;

    if (!v27 && (!gLogHandle || *(gLogHandle + 44) >= 5))
    {
      MOLogWrite();
    }

LABEL_27:
    v28 = a8;

    v19 = 0;
    v17 = v25;
    LOBYTE(v18) = v14 != 0;
    if (!a7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = 0;
  v17 = v25;
LABEL_17:
  v28 = a8;
  if (a7)
  {
LABEL_18:
    *a7 = v18;
  }

LABEL_19:
  if (v28 && !v19)
  {
    v29 = v17;
    *v28 = v17;
  }

  return v19;
}

+ (BOOL)removeContainers:(id)a3 waitForDeletion:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) rawContainer];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = [MIMCMContainer deleteContainers:v15 waitForDeletion:v6 error:a5];

  return v16;
}

+ (id)containersWithClass:(unint64_t)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v7 = [objc_opt_class() containersWithClass:a3 personaUniqueString:v6 error:a4];

  return v7;
}

+ (id)containersWithClass:(unint64_t)a3 personaUniqueString:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [objc_opt_class() containersForIdentifier:0 groupContainerIdentifier:0 ofContentClass:a3 forPersona:v7 fetchTransient:0 createIfNeeded:0 error:a5];

  return v8;
}

- (BOOL)recreateDefaultStructureWithError:(id *)a3
{
  v5 = [(MIContainer *)self rawContainer];
  v13 = 0;
  v6 = [v5 recreateDefaultStructureWithError:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    v8 = [(MIContainer *)self rawContainer];
    v10 = _CreateAndLogError("[MIContainer recreateDefaultStructureWithError:]", 573, @"MIInstallerErrorDomain", 4, v7, 0, @"Failed to recreate structure for %@", v9, v8);

    if (a3)
    {
      v11 = v10;
      *a3 = v10;
    }

    v7 = v10;
  }

  return v6;
}

- (BOOL)makeContainerLiveReplacingContainer:(id)a3 reason:(unint64_t)a4 waitForDeletion:(BOOL)a5 withError:(id *)a6
{
  v7 = a5;
  v11 = a3;
  if (!v11 && a4 != 3)
  {
    _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 593, @"MIInstallerErrorDomain", 4, 0, 0, @"Existing container was nil but replacement reason was not NewContainer; given %ld", v10, a4);
    v12 = LABEL_4:;
    v13 = 0;
    goto LABEL_5;
  }

  v16 = [(MIContainer *)self status];
  if (v16 == 1)
  {
    [(MIContainer *)self recreateDefaultStructureWithError:0];
    v12 = 0;
    v13 = 0;
LABEL_48:
    v15 = 1;
    goto LABEL_49;
  }

  if (v16 != 3)
  {
    if (v16 != 2)
    {
      v42 = [(MIContainer *)self status];
      _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 664, @"MIInstallerErrorDomain", 4, 0, 0, @"Unknown container status: %lu", v29, v42);
      goto LABEL_4;
    }

    v17 = [(MIContainer *)self identifier];
    v18 = [(MIContainer *)self containerClass];
    v52 = 0;
    v19 = [(MIContainer *)self _replaceExistingContainer:v11 replacementReason:a4 waitForDeletion:v7 error:&v52];
    v20 = v52;
    v21 = v20;
    if (v19)
    {
      v13 = 0;
      v22 = v20;
      goto LABEL_12;
    }

    v31 = [v20 domain];
    if ([v31 isEqualToString:@"MIContainerManagerErrorDomain"])
    {
      v32 = [v21 code];

      if (v32 == 27)
      {

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v41 = self;
          MOLogWrite();
        }

        v51 = 0;
        v34 = [(MIContainer *)self removeUnderlyingContainerWaitingForDeletion:0 error:&v51, v41];
        v35 = v51;
        if (!v34)
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v43 = self;
            v44 = v35;
            MOLogWrite();
          }

          v35 = 0;
        }

        v50 = v35;
        v13 = [MIMCMContainer containerForIdentifier:v17 contentClass:v18 forPersona:0 create:0 error:&v50, v43, v44];
        v21 = v50;

        if (v13)
        {
          v49 = v21;
          v37 = [(MIContainer *)self _setContainer:v13 error:&v49];
          v22 = v49;

          if (v37)
          {
LABEL_12:
            v48 = v22;
            v23 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v48];
            v12 = v48;

            if (v23)
            {
              if (gLogHandle)
              {
                v24 = 3;
                if (*(gLogHandle + 44) > 4)
                {
                  goto LABEL_46;
                }

LABEL_47:
                self->_status = v24;

                goto LABEL_48;
              }

              v24 = 3;
            }

            else
            {
              if (gLogHandle)
              {
                v24 = 1;
                if (*(gLogHandle + 44) > 4)
                {
                  goto LABEL_46;
                }

                goto LABEL_47;
              }

              v24 = 1;
            }

LABEL_46:
            v39 = [(MIContainer *)self containerURL];
            v46 = [v39 path];
            MOLogWrite();

            goto LABEL_47;
          }

          v12 = _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 624, @"MIInstallerErrorDomain", 22, v22, 0, @"Failed to set container after fetching existing container found when making container live for %@", v38, v17);
          v21 = v22;
        }

        else
        {
          v12 = _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 619, @"MIInstallerErrorDomain", 22, v21, 0, @"Failed to get existing container when replacement found the live container was already present for %@", v36, v17);
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

    v12 = _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 628, @"MIInstallerErrorDomain", 22, v21, 0, @"Failed to make staged container live %@", v33, self);
    v13 = 0;
LABEL_40:

LABEL_5:
    if (a6)
    {
      v14 = v12;
      v15 = 0;
      *a6 = v12;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_49;
  }

  v47 = 0;
  v25 = [(MIContainer *)self setInfoValue:0 forKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v47];
  v12 = v47;
  if (!v25)
  {
    v30 = _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 646, @"MIInstallerErrorDomain", 22, v12, 0, @"Failed to make safe harbor container live %@", v26, self);

    v13 = 0;
    v12 = v30;
    goto LABEL_5;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v27 = [(MIContainer *)self identifier];
    v28 = [(MIContainer *)self containerURL];
    v45 = [v28 path];
    MOLogWrite();
  }

  v13 = 0;
  v15 = 1;
  self->_status = 1;
LABEL_49:

  return v15;
}

- (BOOL)setInfoValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MIContainer *)self rawContainer];
  v17 = 0;
  v11 = [v10 setInfoValue:v8 forKey:v9 error:&v17];
  v12 = v17;

  if ((v11 & 1) == 0)
  {
    v14 = _CreateAndLogError("[MIContainer setInfoValue:forKey:error:]", 688, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to set value %@ for key %@ for container %@", v13, v8);

    if (a5)
    {
      v15 = v14;
      *a5 = v14;
    }

    v12 = v14;
  }

  return v11;
}

- (id)infoValueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIContainer *)self rawContainer];
  v8 = [(MIContainer *)self isTransient];
  v9 = [v7 identifier];
  v10 = [v7 containerClass];
  v11 = [v7 personaUniqueString];
  if (v8)
  {
    v22 = 0;
    v12 = &v22;
    v13 = [MIMCMContainer transientContainerForIdentifier:v9 contentClass:v10 forPersona:v11 create:0 error:&v22];
  }

  else
  {
    v21 = 0;
    v12 = &v21;
    v13 = [MIMCMContainer containerForIdentifier:v9 contentClass:v10 forPersona:v11 create:0 error:&v21];
  }

  v14 = v13;
  v15 = *v12;

  if (v14)
  {
    v20 = v15;
    v16 = [v14 infoValueForKey:v6 error:&v20];
    v17 = v20;

    v15 = v17;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
    v18 = v15;
    *a4 = v15;
  }

LABEL_10:

  return v16;
}

- (BOOL)regenerateDirectoryUUIDWithError:(id *)a3
{
  v4 = [(MIContainer *)self rawContainer];
  v9 = 0;
  v5 = [v4 regenerateDirectoryUUIDWithError:&v9];
  v6 = v9;

  if (a3 && (v5 & 1) == 0)
  {
    v7 = v6;
    *a3 = v6;
  }

  return v5;
}

- (BOOL)purgeContentWithError:(id *)a3
{
  v5 = [(MIContainer *)self containerClass];
  if (v5 > 7 || ((1 << v5) & 0x94) == 0)
  {
    v10 = [(MIContainer *)self identifier];
    v9 = _CreateAndLogError("[MIContainer purgeContentWithError:]", 753, @"MIInstallerErrorDomain", 4, 0, 0, @"Container for identifier %@ is not a data container found class %ld.", v11, v10);;

    v8 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [(MIContainer *)self rawContainer];
    v14 = 0;
    v8 = [v7 purgeContentWithError:&v14];
    v9 = v14;

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if ((v8 & 1) == 0)
  {
    v12 = v9;
    *a3 = v9;
  }

LABEL_10:

  return v8;
}

- (unint64_t)diskUsage
{
  v2 = [(MIContainer *)self rawContainer];
  v3 = [v2 diskUsage];

  return v3;
}

+ (id)_bundleContainerForIdentifier:(id)a3 forPersona:(id)a4 error:(id *)a5
{
  v6 = a3;
  v15 = 0;
  v7 = [MIBundleContainer privateAppBundleContainerWithIdentifier:v6 createIfNeeded:0 created:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    goto LABEL_10;
  }

  v10 = [v8 domain];
  if ([v10 isEqualToString:@"MIContainerManagerErrorDomain"])
  {
    v11 = [v9 code];

    if (v11 == 21)
    {

      v14 = 0;
      v7 = [MIBundleContainer appBundleContainerWithIdentifier:v6 createIfNeeded:0 created:0 error:&v14];
      v9 = v14;
      if (!a5)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = 0;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v7)
  {
    v12 = v9;
    *a5 = v9;
  }

LABEL_10:

  return v7;
}

+ (id)_allContainersForIdentifier:(id)a3 persona:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v70 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = objc_opt_new();
  v58 = objc_opt_new();
  if ((v7 & 0xB) == 0)
  {
    v18 = v12;
    goto LABEL_72;
  }

  v13 = +[MIGlobalConfiguration sharedInstance];
  v14 = [v13 primaryPersonaString];
  v67 = 0;
  v15 = [a1 _bundleContainerForIdentifier:v10 forPersona:v14 error:&v67];
  v16 = v67;

  if (!v15)
  {
    v19 = [v16 domain];
    if ([v19 isEqualToString:@"MIContainerManagerErrorDomain"])
    {
      v20 = v16;
      v21 = [v16 code];

      if (v21 != 21)
      {
        v17 = 0;
        v29 = 0;
        goto LABEL_68;
      }

      if ((v7 & 4) == 0)
      {

        v57 = 0;
        goto LABEL_15;
      }

      v16 = _CreateAndLogError("+[MIContainer _allContainersForIdentifier:persona:options:error:]", 840, @"MIInstallerErrorDomain", 26, 0, 0, @"No bundle container found for identifier %@", v22, v10);
    }

    else
    {
    }

    v17 = 0;
    v29 = 0;
    goto LABEL_68;
  }

  v57 = v16;
  v17 = [v15 bundle];
  if (v7)
  {
    [v12 addObject:v15];
  }

  if (v17)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_15:
  if ((v7 & 0xA) != 0)
  {
    v23 = +[MIGlobalConfiguration sharedInstance];
    v24 = [v23 systemAppBundleIDToInfoMap];

    v25 = [v24 objectForKeyedSubscript:v10];
    if (!v25)
    {
      v26 = +[MIGlobalConfiguration sharedInstance];
      v25 = [v26 internalAppBundleIDToInfoMap];

      v27 = [v25 objectForKeyedSubscript:v10];
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v30 = MIDiskImageManagerProxy();
        v28 = [v30 appInfoForBundleID:v10 onAttachedEntityType:1];

        if (!v28)
        {
          v31 = MIDiskImageManagerProxy();
          v28 = [v31 appInfoForBundleID:v10 onAttachedEntityType:2];

          if (!v28)
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              v50 = v10;
              MOLogWrite();
            }

            v17 = 0;
LABEL_38:

            if ((v7 & 2) == 0)
            {
LABEL_7:
              if (!v17)
              {
                goto LABEL_8;
              }

              goto LABEL_42;
            }

LABEL_39:
            v33 = [(MIContainer *)MIDataContainer containersForIdentifier:v10 groupContainerIdentifier:0 ofContentClass:2 forPersona:v11 fetchTransient:0 createIfNeeded:0 error:0, v51];
            if (v33)
            {
              [v12 addObjectsFromArray:v33];
            }

            if (!v17)
            {
LABEL_8:
              if ((v7 & 8) == 0)
              {
                goto LABEL_67;
              }

LABEL_57:
              v54 = v17;
              v56 = v15;
              v41 = a6;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v42 = v58;
              v43 = [v42 countByEnumeratingWithState:&v59 objects:v68 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v60;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v60 != v45)
                    {
                      objc_enumerationMutation(v42);
                    }

                    v47 = [(MIContainer *)MIGroupContainer containersForIdentifier:*(*(&v59 + 1) + 8 * i) groupContainerIdentifier:0 ofContentClass:7 forPersona:v11 fetchTransient:0 createIfNeeded:0 error:0];
                    if (v47)
                    {
                      [v12 addObjectsFromArray:v47];
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v59 objects:v68 count:16];
                }

                while (v44);
              }

              a6 = v41;
              v17 = v54;
              v15 = v56;
              goto LABEL_67;
            }

LABEL_42:
            if ((v7 & 0xA) == 0)
            {
              goto LABEL_67;
            }

            v55 = v15;
            v52 = a6;
            if ((v7 & 8) != 0)
            {
              [v58 addObject:v10];
            }

            v53 = v17;
            v34 = [v17 appExtensionBundlesPerformingPlatformValidation:0 withError:{0, v50}];
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v35 = [v34 countByEnumeratingWithState:&v63 objects:v69 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v64;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v64 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [*(*(&v63 + 1) + 8 * j) identifier];
                  v40 = [(MIContainer *)MIPluginDataContainer containersForIdentifier:v39 groupContainerIdentifier:0 ofContentClass:4 forPersona:v11 fetchTransient:0 createIfNeeded:0 error:0];
                  if (v40)
                  {
                    [v12 addObjectsFromArray:v40];
                  }

                  if ((v7 & 8) != 0)
                  {
                    [v58 addObject:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v63 objects:v69 count:16];
              }

              while (v36);
            }

            a6 = v52;
            v17 = v53;
            v15 = v55;
            if ((v7 & 8) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_57;
          }
        }
      }

      v25 = v28;
    }

    v32 = [v25 objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
    if (v32)
    {
      v17 = [(MIBundle *)MIExecutableBundle bundleForURL:v32 error:0];
      if (v17)
      {
LABEL_37:

        goto LABEL_38;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_36:
        v17 = 0;
        goto LABEL_37;
      }

      v50 = v10;
      v51 = v32;
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_36;
      }

      v50 = v10;
    }

    MOLogWrite();
    goto LABEL_36;
  }

  v17 = 0;
LABEL_67:
  v29 = [v12 copy];
  v16 = v57;
LABEL_68:
  if (a6 && !v29)
  {
    v48 = v16;
    *a6 = v16;
  }

  v18 = v29;

LABEL_72:

  return v18;
}

- (BOOL)markContainerAsStagedUpdateWithError:(id *)a3
{
  if (![(MIContainer *)self isTransient])
  {
    v7 = _CreateAndLogError("[MIContainer markContainerAsStagedUpdateWithError:]", 953, @"MIInstallerErrorDomain", 4, 0, 0, @"Non transient container can't be marked as a staged container", v5, v14);
    if (!a3)
    {
LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }

LABEL_5:
    v9 = v7;
    v8 = 0;
    *a3 = v7;
    goto LABEL_8;
  }

  v15 = 0;
  v6 = [(MIContainer *)self setInfoValue:MEMORY[0x1E695E118] forKey:@"com.apple.MobileContainerManager.StagedUpdateContainer" error:&v15];
  v7 = v15;
  if (!v6)
  {
    v10 = [(MIContainer *)self identifier];
    v12 = _CreateAndLogError("[MIContainer markContainerAsStagedUpdateWithError:]", 958, @"MIInstallerErrorDomain", 4, v7, 0, @"Failed to set staged update container attribute for identifier %@ ", v11, v10);

    v7 = v12;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v8 = 1;
  [(MIContainer *)self setIsStagedContainer:1];
LABEL_8:

  return v8;
}

- (BOOL)clearStagedUpdateContainerStatusWithError:(id *)a3
{
  v12 = 0;
  v5 = [(MIContainer *)self setInfoValue:0 forKey:@"com.apple.MobileContainerManager.StagedUpdateContainer" error:&v12];
  v6 = v12;
  if (v5)
  {
    [(MIContainer *)self setIsStagedContainer:0];
  }

  else
  {
    v7 = [(MIContainer *)self identifier];
    v9 = _CreateAndLogError("[MIContainer clearStagedUpdateContainerStatusWithError:]", 979, @"MIInstallerErrorDomain", 4, v6, 0, @"Failed to clear staged update container attribute for identifier %@ ", v8, v7);

    if (a3)
    {
      v10 = v9;
      *a3 = v9;
    }

    v6 = v9;
  }

  return v5;
}

- (BOOL)_isStagedUpdateContainer:(BOOL *)a3 withError:(id *)a4
{
  v18 = 0;
  v6 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileContainerManager.StagedUpdateContainer" error:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    objc_opt_class();
    v9 = v6;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v13 = [v10 BOOLValue];
      if (!a3)
      {
LABEL_12:
        v15 = 1;
        goto LABEL_18;
      }

LABEL_11:
      *a3 = v13;
      goto LABEL_12;
    }

    _CreateAndLogError("[MIContainer _isStagedUpdateContainer:withError:]", 1011, @"MIInstallerErrorDomain", 4, 0, 0, @"Value of key %@ on %@ was not a number", v14, @"com.apple.MobileContainerManager.StagedUpdateContainer");
    v8 = v11 = v8;
    goto LABEL_14;
  }

  v11 = [v7 domain];
  if (![v11 isEqualToString:@"MIContainerManagerErrorDomain"])
  {
LABEL_14:

    goto LABEL_15;
  }

  v12 = [v8 code];

  if (v12 == 24)
  {

    v10 = 0;
    v13 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_15:
  if (a4)
  {
    v16 = v8;
    v10 = 0;
    v15 = 0;
    *a4 = v8;
  }

  else
  {
    v10 = 0;
    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MIContainer *)self status];
  v6 = [(MIContainer *)self rawContainer];
  v7 = [v3 stringWithFormat:@"<%@ status:%lu container:%@>", v4, v5, v6];

  return v7;
}

@end