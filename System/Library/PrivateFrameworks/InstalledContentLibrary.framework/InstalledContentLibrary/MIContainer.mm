@interface MIContainer
+ (BOOL)removeContainers:(id)containers waitForDeletion:(BOOL)deletion error:(id *)error;
+ (id)_allContainersForIdentifier:(id)identifier persona:(id)persona options:(unint64_t)options error:(id *)error;
+ (id)_bundleContainerForIdentifier:(id)identifier forPersona:(id)persona error:(id *)error;
+ (id)containerWithIdentifier:(id)identifier forPersona:(id)persona ofContentClass:(unint64_t)class createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error;
+ (id)containersForIdentifier:(id)identifier groupContainerIdentifier:(id)containerIdentifier ofContentClass:(unint64_t)class forPersona:(id)persona fetchTransient:(BOOL)transient createIfNeeded:(BOOL)needed error:(id *)error;
+ (id)containersWithClass:(unint64_t)class error:(id *)error;
+ (id)containersWithClass:(unint64_t)class personaUniqueString:(id)string error:(id *)error;
+ (id)groupContainerURLsForBundleIdentifier:(id)identifier forPersona:(id)persona error:(id *)error;
+ (id)tempContainerWithIdentifier:(id)identifier forPersona:(id)persona ofContentClass:(unint64_t)class error:(id *)error;
- (BOOL)_deriveContainerStatusWithError:(id *)error;
- (BOOL)_doInitWithContainer:(id)container error:(id *)error;
- (BOOL)_isStagedUpdateContainer:(BOOL *)container withError:(id *)error;
- (BOOL)_replaceExistingContainer:(id)container replacementReason:(unint64_t)reason waitForDeletion:(BOOL)deletion error:(id *)error;
- (BOOL)_setContainer:(id)container error:(id *)error;
- (BOOL)clearStagedUpdateContainerStatusWithError:(id *)error;
- (BOOL)isNew;
- (BOOL)isTransient;
- (BOOL)makeContainerLiveReplacingContainer:(id)container reason:(unint64_t)reason waitForDeletion:(BOOL)deletion withError:(id *)error;
- (BOOL)markContainerAsStagedUpdateWithError:(id *)error;
- (BOOL)purgeContentWithError:(id *)error;
- (BOOL)recreateDefaultStructureWithError:(id *)error;
- (BOOL)regenerateDirectoryUUIDWithError:(id *)error;
- (BOOL)removeUnderlyingContainerWaitingForDeletion:(BOOL)deletion error:(id *)error;
- (BOOL)setInfoValue:(id)value forKey:(id)key error:(id *)error;
- (MIContainer)initWithContainer:(id)container error:(id *)error;
- (MIContainer)initWithContainerURL:(id)l;
- (MIContainer)initWithToken:(id)token options:(unint64_t)options error:(id *)error;
- (NSString)identifier;
- (NSString)personaUniqueString;
- (NSURL)containerURL;
- (id)description;
- (id)infoValueForKey:(id)key error:(id *)error;
- (unint64_t)containerClass;
- (unint64_t)diskUsage;
- (void)dealloc;
@end

@implementation MIContainer

- (MIContainer)initWithContainerURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MIContainer;
  v6 = [(MIContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerURL, l);
  }

  return v7;
}

- (BOOL)_deriveContainerStatusWithError:(id *)error
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

  domain = [v7 domain];
  if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
  {
    code = [v5 code];

    if (code == 24)
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

  if (error)
  {
    v13 = v5;
    v11 = 0;
    *error = v5;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (BOOL)_doInitWithContainer:(id)container error:(id *)error
{
  containerCopy = container;
  containerCopy2 = container;
  objc_storeStrong(&self->_rawContainer, containerCopy);
  v17 = 0;
  LODWORD(containerCopy) = [(MIContainer *)self _deriveContainerStatusWithError:&v17];
  v8 = v17;
  v9 = v8;
  if (!containerCopy)
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
    if (error)
    {
      v13 = v11;
      v12 = 0;
      *error = v11;
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

- (MIContainer)initWithContainer:(id)container error:(id *)error
{
  containerCopy = container;
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
  v9 = [(MIContainer *)v7 _doInitWithContainer:containerCopy error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
LABEL_6:
    v13 = v8;
    goto LABEL_7;
  }

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

LABEL_7:

  return v13;
}

- (MIContainer)initWithToken:(id)token options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  tokenCopy = token;
  v30.receiver = self;
  v30.super_class = MIContainer;
  v9 = [(MIContainer *)&v30 init];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_6;
  }

  containerURL = [tokenCopy containerURL];
  if (!containerURL)
  {
    v14 = ~(optionsCopy << 16);
    v15 = [MIMCMContainer alloc];
    serializedContainerRepresentation = [tokenCopy serializedContainerRepresentation];
    v29 = 0;
    v17 = [(MIMCMContainer *)v15 initWithSerializedContainer:serializedContainerRepresentation matchingWithOptions:*&v14 & 0x30000 error:&v29];
    v18 = v29;

    if (v17)
    {
      errorCopy = error;
      personaUniqueString = [(MIMCMContainer *)v17 personaUniqueString];
      personaUniqueString2 = [tokenCopy personaUniqueString];
      identifier = [(MIMCMContainer *)v17 identifier];
      identifier2 = [tokenCopy identifier];
      if (![identifier2 isEqualToString:identifier] || personaUniqueString2 && personaUniqueString && (objc_msgSend(personaUniqueString2, "isEqualToString:", personaUniqueString) & 1) == 0)
      {
        v11 = _CreateAndLogError("[MIContainer initWithToken:options:error:]", 181, @"MIInstallerErrorDomain", 186, v18, 0, @"Deserialized container object had identity %@/%@ but the token was for %@/%@", v24, identifier);
        v26 = 0;
      }

      else
      {
        v28 = v18;
        v26 = [(MIContainer *)v9 _doInitWithContainer:v17 error:&v28];
        v11 = v28;
      }

      error = errorCopy;
      if (v26)
      {
        goto LABEL_4;
      }

      if (errorCopy)
      {
LABEL_17:
        v25 = v11;
        v12 = 0;
        *error = v11;
        goto LABEL_7;
      }
    }

    else
    {
      v11 = _CreateAndLogError("[MIContainer initWithToken:options:error:]", 171, @"MIInstallerErrorDomain", 186, v18, 0, @"Failed to serialize container data %@", v19, tokenCopy);

      if (error)
      {
        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&v9->_containerURL, containerURL);
  v11 = 0;
LABEL_4:

LABEL_6:
  v12 = v9;
LABEL_7:

  return v12;
}

- (void)dealloc
{
  rawContainer = [(MIContainer *)self rawContainer];

  if (rawContainer)
  {
    v4 = +[MITestManager sharedInstance];
    v5 = [v4 testFlagsAreSet:64];

    containerClass = [(MIContainer *)self containerClass];
    if ([(MIContainer *)self isTransient]&& ![(MIContainer *)self isStagedContainer]&& (containerClass == 14 || containerClass == 1) && (v5 & 1) == 0)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        selfCopy = self;
        MOLogWrite();
      }

      v12 = 0;
      selfCopy = [(MIContainer *)self removeUnderlyingContainerWaitingForDeletion:0 error:&v12, selfCopy];
      v7 = v12;
      if (!selfCopy && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        selfCopy = [(MIContainer *)self identifier];
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
  [(MIContainer *)&v11 dealloc:selfCopy];
}

- (NSString)identifier
{
  rawContainer = [(MIContainer *)self rawContainer];
  identifier = [rawContainer identifier];

  return identifier;
}

- (NSString)personaUniqueString
{
  rawContainer = [(MIContainer *)self rawContainer];
  personaUniqueString = [rawContainer personaUniqueString];

  return personaUniqueString;
}

- (unint64_t)containerClass
{
  rawContainer = [(MIContainer *)self rawContainer];
  containerClass = [rawContainer containerClass];

  return containerClass;
}

- (BOOL)isTransient
{
  rawContainer = [(MIContainer *)self rawContainer];
  isTransient = [rawContainer isTransient];

  return isTransient;
}

- (BOOL)isNew
{
  rawContainer = [(MIContainer *)self rawContainer];
  isNew = [rawContainer isNew];

  return isNew;
}

- (NSURL)containerURL
{
  containerURL = self->_containerURL;
  if (containerURL)
  {
    containerURL = containerURL;
  }

  else
  {
    rawContainer = [(MIContainer *)self rawContainer];
    containerURL = [rawContainer containerURL];
  }

  return containerURL;
}

- (BOOL)_setContainer:(id)container error:(id *)error
{
  containerCopy = container;
  rawContainer = [(MIContainer *)self rawContainer];
  v9 = [rawContainer isEqual:containerCopy];

  if ((v9 & 1) == 0)
  {
    if (!containerCopy)
    {
      [(MIContainer *)self setContainerURL:0];
      goto LABEL_8;
    }

    containerClass = [containerCopy containerClass];
    if (containerClass == [(MIContainer *)self containerClass])
    {
      identifier = [containerCopy identifier];
      identifier2 = [(MIContainer *)self identifier];
      v14 = [identifier isEqualToString:identifier2];

      if (v14)
      {

        objc_storeStrong(&self->_rawContainer, container);
LABEL_8:
        v16 = 0;
        v10 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v16 = _CreateAndLogError("[MIContainer _setContainer:error:]", 289, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set container with mismatched identifier %@ on %@", v15, identifier);

      if (!error)
      {
LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      [(MIContainer *)self containerClass];
      v16 = _CreateAndLogError("[MIContainer _setContainer:error:]", 283, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to set container %@ with content class %llu on %@ which represents a container with class %llu", v17, containerCopy);
      if (!error)
      {
        goto LABEL_12;
      }
    }

    v18 = v16;
    v10 = 0;
    *error = v16;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

- (BOOL)removeUnderlyingContainerWaitingForDeletion:(BOOL)deletion error:(id *)error
{
  deletionCopy = deletion;
  v17[1] = *MEMORY[0x1E69E9840];
  rawContainer = [(MIContainer *)self rawContainer];
  v17[0] = rawContainer;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v16 = 0;
  v9 = [MIMCMContainer deleteContainers:v8 waitForDeletion:deletionCopy error:&v16];
  v10 = v16;

  if (!v9)
  {
    rawContainer2 = [(MIContainer *)self rawContainer];
    v13 = _CreateAndLogError("[MIContainer removeUnderlyingContainerWaitingForDeletion:error:]", 316, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to delete container_object_t for %@", v12, rawContainer2);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v10 = v13;
  }

  return v9;
}

- (BOOL)_replaceExistingContainer:(id)container replacementReason:(unint64_t)reason waitForDeletion:(BOOL)deletion error:(id *)error
{
  deletionCopy = deletion;
  v29[2] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  identifier = [(MIContainer *)self identifier];
  containerClass = [(MIContainer *)self containerClass];
  rawContainer = [(MIContainer *)self rawContainer];
  rawContainer2 = [containerCopy rawContainer];

  v27 = 0;
  v15 = [rawContainer replaceExistingContainer:rawContainer2 error:&v27];
  v16 = v27;

  if (v15)
  {
    if (deletionCopy)
    {
      rawContainer3 = [(MIContainer *)self rawContainer];
      v26 = 0;
      v18 = [rawContainer3 reclaimDiskSpaceWithError:&v26];
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

    if (reason == 1 && containerClass == 1)
    {
      v28[0] = *MEMORY[0x1E695E4F0];
      v28[1] = @"MobileInstallationDemotionCompleteErrorOccurred";
      v29[0] = identifier;
      v22 = [MEMORY[0x1E696AD98] numberWithBool:v20];
      v29[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
      [defaultCenter postNotificationName:@"MobileInstallationDemotionCompleteNotification" object:0 userInfo:v23 options:3];

      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }
    }
  }

  else if (error)
  {
    v21 = v16;
    *error = v16;
  }

  return v15;
}

+ (id)containersForIdentifier:(id)identifier groupContainerIdentifier:(id)containerIdentifier ofContentClass:(unint64_t)class forPersona:(id)persona fetchTransient:(BOOL)transient createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  transientCopy = transient;
  v58 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  personaCopy = persona;
  v48 = objc_opt_new();
  v46 = (identifierCopy | containerIdentifierCopy) != 0;
  if (identifierCopy | containerIdentifierCopy)
  {
    if (identifierCopy)
    {
      v55 = 0;
      v18 = &v55;
      v19 = [MIMCMContainer containersForBundleIdentifier:identifierCopy contentClass:class forPersona:personaCopy create:neededCopy fetchTransient:transientCopy error:&v55];
    }

    else
    {
      if (!containerIdentifierCopy)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v54 = 0;
      v18 = &v54;
      v19 = [MIMCMContainer containersForGroupIdentifier:containerIdentifierCopy forPersona:personaCopy create:neededCopy fetchTransient:transientCopy error:&v54];
    }
  }

  else
  {
    v56 = 0;
    v18 = &v56;
    v19 = [MIMCMContainer containersForContentClass:class forPersona:personaCopy fetchTransient:transientCopy error:&v56];
  }

  v20 = v19;
  v21 = *v18;
  v22 = v21;
  if (!v20)
  {
LABEL_31:
    v25 = _CreateAndLogError("+[MIContainer containersForIdentifier:groupContainerIdentifier:ofContentClass:forPersona:fetchTransient:createIfNeeded:error:]", 388, @"MIInstallerErrorDomain", 4, v22, 0, @"Failed to retrieve any containers for identifier: %@ groupIdentifier: %@ container type: %llu persona: %@", v17, identifierCopy);

    obj = 0;
    v35 = 0;
    goto LABEL_32;
  }

  v43 = personaCopy;
  v44 = containerIdentifierCopy;
  v45 = identifierCopy;

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
  containerIdentifierCopy = v44;
  identifierCopy = v45;
  personaCopy = v43;
LABEL_32:
  if (error && !v35)
  {
    v38 = v25;
    *error = v25;
  }

  v39 = v35;

  return v35;
}

+ (id)groupContainerURLsForBundleIdentifier:(id)identifier forPersona:(id)persona error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v33 = 0;
  v8 = [MIMCMContainer containersForBundleIdentifier:identifierCopy contentClass:7 forPersona:persona create:1 fetchTransient:0 error:&v33];
  v9 = v33;
  v11 = v9;
  if (!v8)
  {
    v22 = _CreateAndLogError("+[MIContainer groupContainerURLsForBundleIdentifier:forPersona:error:]", 433, @"MIInstallerErrorDomain", 4, v9, 0, @"Failed to retrieve any shared data containers for %@", v10, identifierCopy);

    v21 = 0;
    v12 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v26 = v9;
  v28 = identifierCopy;
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
        identifier = [v18 identifier];
        containerURL = [v18 containerURL];
        if (containerURL)
        {
          [v12 setObject:containerURL forKeyedSubscript:identifier];
        }

        else if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v25 = identifier;
          MOLogWrite();
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  v21 = [v12 copy];
  identifierCopy = v28;
  v22 = v26;
  v8 = v27;
  if (error)
  {
LABEL_17:
    if (!v21)
    {
      v23 = v22;
      *error = v22;
    }
  }

LABEL_19:

  return v21;
}

+ (id)tempContainerWithIdentifier:(id)identifier forPersona:(id)persona ofContentClass:(unint64_t)class error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  personaCopy = persona;
  v29 = 0;
  v11 = [MIMCMContainer transientContainerForIdentifier:identifierCopy contentClass:class forPersona:personaCopy create:1 error:&v29];
  v12 = v29;
  if (!v11)
  {
    goto LABEL_14;
  }

  if ([v11 isNew])
  {
    goto LABEL_3;
  }

  errorCopy = error;
  v30[0] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v28 = v12;
  v17 = [MIMCMContainer deleteContainers:v16 waitForDeletion:0 error:&v28];
  v14 = v28;

  if (v17)
  {
    v27 = v14;
    v19 = [MIMCMContainer transientContainerForIdentifier:identifierCopy contentClass:class forPersona:personaCopy create:1 error:&v27];
    v12 = v27;

    error = errorCopy;
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
      v22 = _CreateAndLogError("+[MIContainer tempContainerWithIdentifier:forPersona:ofContentClass:error:]", 478, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to create container for %@", v20, identifierCopy);
      v11 = 0;
      v14 = v12;
    }
  }

  else
  {
    v22 = _CreateAndLogError("+[MIContainer tempContainerWithIdentifier:forPersona:ofContentClass:error:]", 472, @"MIInstallerErrorDomain", 4, v14, 0, @"Failed to delete existing transient container for %@", v18, identifierCopy);
    error = errorCopy;
  }

LABEL_13:

  v12 = v22;
LABEL_14:
  if (error)
  {
    v23 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

+ (id)containerWithIdentifier:(id)identifier forPersona:(id)persona ofContentClass:(unint64_t)class createIfNeeded:(BOOL)needed created:(BOOL *)created error:(id *)error
{
  neededCopy = needed;
  v36[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  personaCopy = persona;
  v35 = 0;
  v14 = [MIMCMContainer containerForIdentifier:identifierCopy contentClass:class forPersona:personaCopy create:neededCopy error:&v35];
  v15 = v35;
  v17 = v15;
  if (!v14)
  {
    if (!neededCopy)
    {
      domain = [v15 domain];
      if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
      {
        code = [v17 code];

        if (code == 21)
        {
          LOBYTE(isNew) = 0;
          v19 = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v25 = _CreateAndLogError("+[MIContainer containerWithIdentifier:forPersona:ofContentClass:createIfNeeded:created:error:]", 514, @"MIInstallerErrorDomain", 4, v17, 0, @"Failed to find container of class %llu with identity %@/%@", v16, class);
    goto LABEL_27;
  }

  isNew = [v14 isNew];
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

  if (isNew)
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
    errorCopy2 = error;

    v19 = 0;
    v17 = v25;
    LOBYTE(isNew) = v14 != 0;
    if (!created)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = 0;
  v17 = v25;
LABEL_17:
  errorCopy2 = error;
  if (created)
  {
LABEL_18:
    *created = isNew;
  }

LABEL_19:
  if (errorCopy2 && !v19)
  {
    v29 = v17;
    *errorCopy2 = v17;
  }

  return v19;
}

+ (BOOL)removeContainers:(id)containers waitForDeletion:(BOOL)deletion error:(id *)error
{
  deletionCopy = deletion;
  v23 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = containersCopy;
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

        rawContainer = [*(*(&v18 + 1) + 8 * v13) rawContainer];
        [v8 addObject:rawContainer];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = [MIMCMContainer deleteContainers:v15 waitForDeletion:deletionCopy error:error];

  return v16;
}

+ (id)containersWithClass:(unint64_t)class error:(id *)error
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v7 = [objc_opt_class() containersWithClass:class personaUniqueString:v6 error:error];

  return v7;
}

+ (id)containersWithClass:(unint64_t)class personaUniqueString:(id)string error:(id *)error
{
  stringCopy = string;
  v8 = [objc_opt_class() containersForIdentifier:0 groupContainerIdentifier:0 ofContentClass:class forPersona:stringCopy fetchTransient:0 createIfNeeded:0 error:error];

  return v8;
}

- (BOOL)recreateDefaultStructureWithError:(id *)error
{
  rawContainer = [(MIContainer *)self rawContainer];
  v13 = 0;
  v6 = [rawContainer recreateDefaultStructureWithError:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    rawContainer2 = [(MIContainer *)self rawContainer];
    v10 = _CreateAndLogError("[MIContainer recreateDefaultStructureWithError:]", 573, @"MIInstallerErrorDomain", 4, v7, 0, @"Failed to recreate structure for %@", v9, rawContainer2);

    if (error)
    {
      v11 = v10;
      *error = v10;
    }

    v7 = v10;
  }

  return v6;
}

- (BOOL)makeContainerLiveReplacingContainer:(id)container reason:(unint64_t)reason waitForDeletion:(BOOL)deletion withError:(id *)error
{
  deletionCopy = deletion;
  containerCopy = container;
  if (!containerCopy && reason != 3)
  {
    _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 593, @"MIInstallerErrorDomain", 4, 0, 0, @"Existing container was nil but replacement reason was not NewContainer; given %ld", v10, reason);
    v12 = LABEL_4:;
    v13 = 0;
    goto LABEL_5;
  }

  status = [(MIContainer *)self status];
  if (status == 1)
  {
    [(MIContainer *)self recreateDefaultStructureWithError:0];
    v12 = 0;
    v13 = 0;
LABEL_48:
    v15 = 1;
    goto LABEL_49;
  }

  if (status != 3)
  {
    if (status != 2)
    {
      status2 = [(MIContainer *)self status];
      _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 664, @"MIInstallerErrorDomain", 4, 0, 0, @"Unknown container status: %lu", v29, status2);
      goto LABEL_4;
    }

    identifier = [(MIContainer *)self identifier];
    containerClass = [(MIContainer *)self containerClass];
    v52 = 0;
    v19 = [(MIContainer *)self _replaceExistingContainer:containerCopy replacementReason:reason waitForDeletion:deletionCopy error:&v52];
    v20 = v52;
    v21 = v20;
    if (v19)
    {
      v13 = 0;
      v22 = v20;
      goto LABEL_12;
    }

    domain = [v20 domain];
    if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
    {
      code = [v21 code];

      if (code == 27)
      {

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          selfCopy = self;
          MOLogWrite();
        }

        v51 = 0;
        selfCopy = [(MIContainer *)self removeUnderlyingContainerWaitingForDeletion:0 error:&v51, selfCopy];
        v35 = v51;
        if (!selfCopy)
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            selfCopy2 = self;
            v44 = v35;
            MOLogWrite();
          }

          v35 = 0;
        }

        v50 = v35;
        v13 = [MIMCMContainer containerForIdentifier:identifier contentClass:containerClass forPersona:0 create:0 error:&v50, selfCopy2, v44];
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
            containerURL = [(MIContainer *)self containerURL];
            path = [containerURL path];
            MOLogWrite();

            goto LABEL_47;
          }

          v12 = _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 624, @"MIInstallerErrorDomain", 22, v22, 0, @"Failed to set container after fetching existing container found when making container live for %@", v38, identifier);
          v21 = v22;
        }

        else
        {
          v12 = _CreateAndLogError("[MIContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 619, @"MIInstallerErrorDomain", 22, v21, 0, @"Failed to get existing container when replacement found the live container was already present for %@", v36, identifier);
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
    if (error)
    {
      v14 = v12;
      v15 = 0;
      *error = v12;
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
    identifier2 = [(MIContainer *)self identifier];
    containerURL2 = [(MIContainer *)self containerURL];
    path2 = [containerURL2 path];
    MOLogWrite();
  }

  v13 = 0;
  v15 = 1;
  self->_status = 1;
LABEL_49:

  return v15;
}

- (BOOL)setInfoValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  rawContainer = [(MIContainer *)self rawContainer];
  v17 = 0;
  v11 = [rawContainer setInfoValue:valueCopy forKey:keyCopy error:&v17];
  v12 = v17;

  if ((v11 & 1) == 0)
  {
    v14 = _CreateAndLogError("[MIContainer setInfoValue:forKey:error:]", 688, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to set value %@ for key %@ for container %@", v13, valueCopy);

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    v12 = v14;
  }

  return v11;
}

- (id)infoValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  rawContainer = [(MIContainer *)self rawContainer];
  isTransient = [(MIContainer *)self isTransient];
  identifier = [rawContainer identifier];
  containerClass = [rawContainer containerClass];
  personaUniqueString = [rawContainer personaUniqueString];
  if (isTransient)
  {
    v22 = 0;
    v12 = &v22;
    v13 = [MIMCMContainer transientContainerForIdentifier:identifier contentClass:containerClass forPersona:personaUniqueString create:0 error:&v22];
  }

  else
  {
    v21 = 0;
    v12 = &v21;
    v13 = [MIMCMContainer containerForIdentifier:identifier contentClass:containerClass forPersona:personaUniqueString create:0 error:&v21];
  }

  v14 = v13;
  v15 = *v12;

  if (v14)
  {
    v20 = v15;
    v16 = [v14 infoValueForKey:keyCopy error:&v20];
    v17 = v20;

    v15 = v17;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
    v18 = v15;
    *error = v15;
  }

LABEL_10:

  return v16;
}

- (BOOL)regenerateDirectoryUUIDWithError:(id *)error
{
  rawContainer = [(MIContainer *)self rawContainer];
  v9 = 0;
  v5 = [rawContainer regenerateDirectoryUUIDWithError:&v9];
  v6 = v9;

  if (error && (v5 & 1) == 0)
  {
    v7 = v6;
    *error = v6;
  }

  return v5;
}

- (BOOL)purgeContentWithError:(id *)error
{
  containerClass = [(MIContainer *)self containerClass];
  if (containerClass > 7 || ((1 << containerClass) & 0x94) == 0)
  {
    identifier = [(MIContainer *)self identifier];
    v9 = _CreateAndLogError("[MIContainer purgeContentWithError:]", 753, @"MIInstallerErrorDomain", 4, 0, 0, @"Container for identifier %@ is not a data container found class %ld.", v11, identifier);;

    v8 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    rawContainer = [(MIContainer *)self rawContainer];
    v14 = 0;
    v8 = [rawContainer purgeContentWithError:&v14];
    v9 = v14;

    if (!error)
    {
      goto LABEL_10;
    }
  }

  if ((v8 & 1) == 0)
  {
    v12 = v9;
    *error = v9;
  }

LABEL_10:

  return v8;
}

- (unint64_t)diskUsage
{
  rawContainer = [(MIContainer *)self rawContainer];
  diskUsage = [rawContainer diskUsage];

  return diskUsage;
}

+ (id)_bundleContainerForIdentifier:(id)identifier forPersona:(id)persona error:(id *)error
{
  identifierCopy = identifier;
  v15 = 0;
  v7 = [MIBundleContainer privateAppBundleContainerWithIdentifier:identifierCopy createIfNeeded:0 created:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    goto LABEL_10;
  }

  domain = [v8 domain];
  if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
  {
    code = [v9 code];

    if (code == 21)
    {

      v14 = 0;
      v7 = [MIBundleContainer appBundleContainerWithIdentifier:identifierCopy createIfNeeded:0 created:0 error:&v14];
      v9 = v14;
      if (!error)
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
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v7)
  {
    v12 = v9;
    *error = v9;
  }

LABEL_10:

  return v7;
}

+ (id)_allContainersForIdentifier:(id)identifier persona:(id)persona options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v70 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  personaCopy = persona;
  v12 = objc_opt_new();
  v58 = objc_opt_new();
  if ((optionsCopy & 0xB) == 0)
  {
    v18 = v12;
    goto LABEL_72;
  }

  v13 = +[MIGlobalConfiguration sharedInstance];
  primaryPersonaString = [v13 primaryPersonaString];
  v67 = 0;
  v15 = [self _bundleContainerForIdentifier:identifierCopy forPersona:primaryPersonaString error:&v67];
  v16 = v67;

  if (!v15)
  {
    domain = [v16 domain];
    if ([domain isEqualToString:@"MIContainerManagerErrorDomain"])
    {
      v20 = v16;
      code = [v16 code];

      if (code != 21)
      {
        bundle = 0;
        v29 = 0;
        goto LABEL_68;
      }

      if ((optionsCopy & 4) == 0)
      {

        v57 = 0;
        goto LABEL_15;
      }

      v16 = _CreateAndLogError("+[MIContainer _allContainersForIdentifier:persona:options:error:]", 840, @"MIInstallerErrorDomain", 26, 0, 0, @"No bundle container found for identifier %@", v22, identifierCopy);
    }

    else
    {
    }

    bundle = 0;
    v29 = 0;
    goto LABEL_68;
  }

  v57 = v16;
  bundle = [v15 bundle];
  if (optionsCopy)
  {
    [v12 addObject:v15];
  }

  if (bundle)
  {
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_15:
  if ((optionsCopy & 0xA) != 0)
  {
    v23 = +[MIGlobalConfiguration sharedInstance];
    systemAppBundleIDToInfoMap = [v23 systemAppBundleIDToInfoMap];

    internalAppBundleIDToInfoMap = [systemAppBundleIDToInfoMap objectForKeyedSubscript:identifierCopy];
    if (!internalAppBundleIDToInfoMap)
    {
      v26 = +[MIGlobalConfiguration sharedInstance];
      internalAppBundleIDToInfoMap = [v26 internalAppBundleIDToInfoMap];

      v27 = [internalAppBundleIDToInfoMap objectForKeyedSubscript:identifierCopy];
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v30 = MIDiskImageManagerProxy();
        v28 = [v30 appInfoForBundleID:identifierCopy onAttachedEntityType:1];

        if (!v28)
        {
          v31 = MIDiskImageManagerProxy();
          v28 = [v31 appInfoForBundleID:identifierCopy onAttachedEntityType:2];

          if (!v28)
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              v50 = identifierCopy;
              MOLogWrite();
            }

            bundle = 0;
LABEL_38:

            if ((optionsCopy & 2) == 0)
            {
LABEL_7:
              if (!bundle)
              {
                goto LABEL_8;
              }

              goto LABEL_42;
            }

LABEL_39:
            v33 = [(MIContainer *)MIDataContainer containersForIdentifier:identifierCopy groupContainerIdentifier:0 ofContentClass:2 forPersona:personaCopy fetchTransient:0 createIfNeeded:0 error:0, v51];
            if (v33)
            {
              [v12 addObjectsFromArray:v33];
            }

            if (!bundle)
            {
LABEL_8:
              if ((optionsCopy & 8) == 0)
              {
                goto LABEL_67;
              }

LABEL_57:
              v54 = bundle;
              v56 = v15;
              errorCopy = error;
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

                    v47 = [(MIContainer *)MIGroupContainer containersForIdentifier:*(*(&v59 + 1) + 8 * i) groupContainerIdentifier:0 ofContentClass:7 forPersona:personaCopy fetchTransient:0 createIfNeeded:0 error:0];
                    if (v47)
                    {
                      [v12 addObjectsFromArray:v47];
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v59 objects:v68 count:16];
                }

                while (v44);
              }

              error = errorCopy;
              bundle = v54;
              v15 = v56;
              goto LABEL_67;
            }

LABEL_42:
            if ((optionsCopy & 0xA) == 0)
            {
              goto LABEL_67;
            }

            v55 = v15;
            errorCopy2 = error;
            if ((optionsCopy & 8) != 0)
            {
              [v58 addObject:identifierCopy];
            }

            v53 = bundle;
            v34 = [bundle appExtensionBundlesPerformingPlatformValidation:0 withError:{0, v50}];
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

                  identifier = [*(*(&v63 + 1) + 8 * j) identifier];
                  v40 = [(MIContainer *)MIPluginDataContainer containersForIdentifier:identifier groupContainerIdentifier:0 ofContentClass:4 forPersona:personaCopy fetchTransient:0 createIfNeeded:0 error:0];
                  if (v40)
                  {
                    [v12 addObjectsFromArray:v40];
                  }

                  if ((optionsCopy & 8) != 0)
                  {
                    [v58 addObject:identifier];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v63 objects:v69 count:16];
              }

              while (v36);
            }

            error = errorCopy2;
            bundle = v53;
            v15 = v55;
            if ((optionsCopy & 8) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_57;
          }
        }
      }

      internalAppBundleIDToInfoMap = v28;
    }

    v32 = [internalAppBundleIDToInfoMap objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
    if (v32)
    {
      bundle = [(MIBundle *)MIExecutableBundle bundleForURL:v32 error:0];
      if (bundle)
      {
LABEL_37:

        goto LABEL_38;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_36:
        bundle = 0;
        goto LABEL_37;
      }

      v50 = identifierCopy;
      v51 = v32;
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_36;
      }

      v50 = identifierCopy;
    }

    MOLogWrite();
    goto LABEL_36;
  }

  bundle = 0;
LABEL_67:
  v29 = [v12 copy];
  v16 = v57;
LABEL_68:
  if (error && !v29)
  {
    v48 = v16;
    *error = v16;
  }

  v18 = v29;

LABEL_72:

  return v18;
}

- (BOOL)markContainerAsStagedUpdateWithError:(id *)error
{
  if (![(MIContainer *)self isTransient])
  {
    v7 = _CreateAndLogError("[MIContainer markContainerAsStagedUpdateWithError:]", 953, @"MIInstallerErrorDomain", 4, 0, 0, @"Non transient container can't be marked as a staged container", v5, v14);
    if (!error)
    {
LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }

LABEL_5:
    v9 = v7;
    v8 = 0;
    *error = v7;
    goto LABEL_8;
  }

  v15 = 0;
  v6 = [(MIContainer *)self setInfoValue:MEMORY[0x1E695E118] forKey:@"com.apple.MobileContainerManager.StagedUpdateContainer" error:&v15];
  v7 = v15;
  if (!v6)
  {
    identifier = [(MIContainer *)self identifier];
    v12 = _CreateAndLogError("[MIContainer markContainerAsStagedUpdateWithError:]", 958, @"MIInstallerErrorDomain", 4, v7, 0, @"Failed to set staged update container attribute for identifier %@ ", v11, identifier);

    v7 = v12;
    if (!error)
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

- (BOOL)clearStagedUpdateContainerStatusWithError:(id *)error
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
    identifier = [(MIContainer *)self identifier];
    v9 = _CreateAndLogError("[MIContainer clearStagedUpdateContainerStatusWithError:]", 979, @"MIInstallerErrorDomain", 4, v6, 0, @"Failed to clear staged update container attribute for identifier %@ ", v8, identifier);

    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v6 = v9;
  }

  return v5;
}

- (BOOL)_isStagedUpdateContainer:(BOOL *)container withError:(id *)error
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
      bOOLValue = [v10 BOOLValue];
      if (!container)
      {
LABEL_12:
        v15 = 1;
        goto LABEL_18;
      }

LABEL_11:
      *container = bOOLValue;
      goto LABEL_12;
    }

    _CreateAndLogError("[MIContainer _isStagedUpdateContainer:withError:]", 1011, @"MIInstallerErrorDomain", 4, 0, 0, @"Value of key %@ on %@ was not a number", v14, @"com.apple.MobileContainerManager.StagedUpdateContainer");
    v8 = domain = v8;
    goto LABEL_14;
  }

  domain = [v7 domain];
  if (![domain isEqualToString:@"MIContainerManagerErrorDomain"])
  {
LABEL_14:

    goto LABEL_15;
  }

  code = [v8 code];

  if (code == 24)
  {

    v10 = 0;
    bOOLValue = 0;
    v8 = 0;
    if (!container)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_15:
  if (error)
  {
    v16 = v8;
    v10 = 0;
    v15 = 0;
    *error = v8;
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
  status = [(MIContainer *)self status];
  rawContainer = [(MIContainer *)self rawContainer];
  v7 = [v3 stringWithFormat:@"<%@ status:%lu container:%@>", v4, status, rawContainer];

  return v7;
}

@end