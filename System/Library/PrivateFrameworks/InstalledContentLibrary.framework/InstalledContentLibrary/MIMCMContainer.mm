@interface MIMCMContainer
+ (BOOL)deleteContainers:(id)containers waitForDeletion:(BOOL)deletion error:(id *)error;
+ (id)_allContainersForIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers contentClass:(unint64_t)class forPersona:(id)persona transient:(BOOL)transient create:(BOOL)create error:(id *)error;
+ (id)_containerForIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona transient:(BOOL)transient create:(BOOL)create error:(id *)error;
+ (id)_enumeratorWithContainerClass:(unint64_t)class forPersona:(id)persona isTransient:(BOOL)transient identifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers create:(BOOL)create usingBlock:(id)block;
+ (id)containerForIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona create:(BOOL)create error:(id *)error;
+ (id)containersForBundleIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona create:(BOOL)create fetchTransient:(BOOL)transient error:(id *)error;
+ (id)containersForContentClass:(unint64_t)class forPersona:(id)persona fetchTransient:(BOOL)transient error:(id *)error;
+ (id)containersForGroupIdentifier:(id)identifier forPersona:(id)persona create:(BOOL)create fetchTransient:(BOOL)transient error:(id *)error;
+ (id)daemonContainerForIdentifier:(id)identifier personaUniqueString:(id)string error:(id *)error;
+ (id)defaultDirectoriesForContainerType:(unint64_t)type error:(id *)error;
+ (id)enumerateContainersWithClass:(unint64_t)class forPersona:(id)persona isTransient:(BOOL)transient identifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers usingBlock:(id)block;
+ (id)transientContainerForIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona create:(BOOL)create error:(id *)error;
+ (void)_performWithLaunchPersona:(id)persona;
- (BOOL)_doInitWithContainer:(container_object_s *)container error:(id *)error;
- (BOOL)_refreshContainerMetadataWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)purgeContentWithError:(id *)error;
- (BOOL)reclaimDiskSpaceWithError:(id *)error;
- (BOOL)recreateDefaultStructureWithError:(id *)error;
- (BOOL)regenerateDirectoryUUIDWithError:(id *)error;
- (BOOL)replaceExistingContainer:(id)container error:(id *)error;
- (BOOL)setInfoValue:(id)value forKey:(id)key error:(id *)error;
- (MIMCMContainer)initWithContainer:(container_object_s *)container error:(id *)error;
- (MIMCMContainer)initWithSerializedContainer:(id)container matchingWithOptions:(unint64_t)options error:(id *)error;
- (id)description;
- (id)infoValueForKey:(id)key error:(id *)error;
- (id)serializedContainerRepresentation;
- (int64_t)transferOwnershipOfSandboxExtensionToCaller;
- (void)dealloc;
@end

@implementation MIMCMContainer

- (BOOL)_doInitWithContainer:(container_object_s *)container error:(id *)error
{
  v34 = 0;
  self->_containerClass = container_get_class();
  identifier = container_get_identifier();
  if (identifier)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:identifier];
    v9 = self->_identifier;
    self->_identifier = v8;

    self->_mcmContainer = container_copy_object();
    persona_unique_string = container_get_persona_unique_string();
    if (persona_unique_string)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
      personaUniqueString = self->_personaUniqueString;
      self->_personaUniqueString = v11;
    }

    v33 = 0;
    v13 = [(MIMCMContainer *)self _refreshContainerMetadataWithError:&v33];
    v14 = v33;
    if (v13)
    {
      self->_isNew = container_is_new();
      [(MIMCMContainer *)self mcmContainer];
      is_transient = container_is_transient();
      if (is_transient == 1)
      {
        self->_isTransient = v34;
        self->_sandboxToken = -1;
        if (self->_containerClass != 10)
        {
LABEL_26:
          v20 = 1;
          goto LABEL_27;
        }

        v16 = container_copy_sandbox_token();
        if (!v16)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            [MIMCMContainer _doInitWithContainer:error:];
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            MOLogWrite();
          }

          goto LABEL_26;
        }

        v17 = v16;
        v18 = sandbox_extension_consume();
        free(v17);
        if ((v18 & 0x8000000000000000) == 0)
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            path = [(NSURL *)self->_containerURL path];
            MOLogWrite();
          }

          self->_sandboxToken = v18;
          goto LABEL_26;
        }

        v28 = __error();
        v29 = *v28;
        strerror(*v28);
        v25 = _CreateAndLogError("[MIMCMContainer _doInitWithContainer:error:]", 161, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to consume daemon container sandbox token: %d (%s)", v30, v29);
      }

      else
      {
        v21 = is_transient;
        error_description = container_get_error_description();
        v24 = "(container_get_error_description returned NULL)";
        if (error_description)
        {
          v24 = error_description;
        }

        v25 = _CreateError("[MIMCMContainer _doInitWithContainer:error:]", 145, @"MIContainerManagerErrorDomain", v21, 0, 0, @"%s", v23, v24);
      }

      v26 = v25;

      v14 = v26;
      if (!error)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = _CreateAndLogError("[MIMCMContainer _doInitWithContainer:error:]", 125, @"MIContainerManagerErrorDomain", 18, 0, 0, @"Failed to get identifier for the container", v7, v31);
  }

  if (!error)
  {
LABEL_20:
    v20 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v19 = v14;
  v20 = 0;
  *error = v14;
LABEL_27:

  return v20;
}

- (MIMCMContainer)initWithContainer:(container_object_s *)container error:(id *)error
{
  v10.receiver = self;
  v10.super_class = MIMCMContainer;
  v6 = [(MIMCMContainer *)&v10 init];
  v7 = v6;
  if (v6 && ![(MIMCMContainer *)v6 _doInitWithContainer:container error:error])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (MIMCMContainer)initWithSerializedContainer:(id)container matchingWithOptions:(unint64_t)options error:(id *)error
{
  containerCopy = container;
  v43.receiver = self;
  v43.super_class = MIMCMContainer;
  last_error = 0;
  v8 = [(MIMCMContainer *)&v43 init];
  if (!v8)
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_24;
  }

  [containerCopy bytes];
  [containerCopy length];
  v9 = container_serialize_copy_deserialized_reference();
  if (!v9)
  {
    if (last_error)
    {
      v14 = MICopyUnlocalizedDescriptionForContainerExtendedError();
      type = container_error_get_type();
      posix_errno = container_error_get_posix_errno();
      if (posix_errno)
      {
        v17 = *MEMORY[0x1E696A798];
        v18 = posix_errno;
        v19 = strerror(posix_errno);
        v21 = _CreateError("[MIMCMContainer initWithSerializedContainer:matchingWithOptions:error:]", 210, v17, v18, 0, 0, @"Underlying errno set by container manager is %s", v20, v19);
      }

      else
      {
        v21 = 0;
      }

      v33 = _ErrorDict();
      v13 = _CreateError("[MIMCMContainer initWithSerializedContainer:matchingWithOptions:error:]", 210, @"MIContainerManagerErrorDomain", type, v21, v33, @"%@", v34, v14);

      container_error_free();
    }

    else
    {
      error_description = container_get_error_description();
      v32 = "(container_get_error_description returned NULL)";
      if (error_description)
      {
        v32 = error_description;
      }

      v13 = _CreateError("[MIMCMContainer initWithSerializedContainer:matchingWithOptions:error:]", 213, @"MIContainerManagerErrorDomain", 21, 0, 0, @"%s", v31, v32);
    }

    v10 = 0;
    goto LABEL_23;
  }

  v10 = v9;
  container_query_create_from_container();
  container_query_operation_set_flags();
  single_result = container_query_get_single_result();
  if (!single_result)
  {
    last_error = container_query_get_last_error();
    if (last_error)
    {
      v22 = MICopyUnlocalizedDescriptionForContainerExtendedError();
      v23 = container_error_get_type();
      v24 = container_error_get_posix_errno();
      if (v24)
      {
        v25 = *MEMORY[0x1E696A798];
        v26 = v24;
        v27 = strerror(v24);
        v29 = _CreateError("[MIMCMContainer initWithSerializedContainer:matchingWithOptions:error:]", 227, v25, v26, 0, 0, @"Underlying errno set by container manager is %s", v28, v27);
      }

      else
      {
        v29 = 0;
      }

      v38 = _ErrorDict();
      v13 = _CreateError("[MIMCMContainer initWithSerializedContainer:matchingWithOptions:error:]", 227, @"MIContainerManagerErrorDomain", v23, v29, v38, @"%@", v39, v22);
    }

    else
    {
      v35 = container_get_error_description();
      v37 = "(container_get_error_description returned NULL)";
      if (v35)
      {
        v37 = v35;
      }

      v13 = _CreateError("[MIMCMContainer initWithSerializedContainer:matchingWithOptions:error:]", 229, @"MIContainerManagerErrorDomain", 21, 0, 0, @"%s", v36, v37);
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v42 = 0;
  v12 = [(MIMCMContainer *)v8 _doInitWithContainer:single_result error:&v42];
  v13 = v42;
LABEL_24:
  MEMORY[0x1B2732F60](v10);
  container_query_free();
  if (error && !v12)
  {
    v40 = v13;
    *error = v13;
  }

  return v8;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  path = [*(self + 16) path];
  v4 = 136315650;
  v5 = "[MIMCMContainer dealloc]";
  v6 = 2048;
  v7 = a2;
  v8 = 2112;
  v9 = path;
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Failed to release sandbox token %lld for container %@", &v4, 0x20u);
}

- (id)serializedContainerRepresentation
{
  [(MIMCMContainer *)self mcmContainer];
  v2 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:container_serialize_copy_serialized_reference() length:0 freeWhenDone:1];

  return v2;
}

- (int64_t)transferOwnershipOfSandboxExtensionToCaller
{
  sandboxToken = self->_sandboxToken;
  self->_sandboxToken = -1;
  return sandboxToken;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(MIMCMContainer *)self mcmContainer];
  v5 = _RawContainerDescription();
  personaUniqueString = [(MIMCMContainer *)self personaUniqueString];
  containerURL = [(MIMCMContainer *)self containerURL];
  path = [containerURL path];
  v9 = [v3 stringWithFormat:@"<%@ container=%@ persona=%@ path=%@>", v4, v5, personaUniqueString, path];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    is_equal = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(MIMCMContainer *)self mcmContainer];
      [(MIMCMContainer *)v5 mcmContainer];

      is_equal = container_is_equal();
    }

    else
    {
      is_equal = 0;
    }
  }

  return is_equal;
}

- (BOOL)_refreshContainerMetadataWithError:(id *)error
{
  [(MIMCMContainer *)self mcmContainer];
  path = container_get_path();
  if (path)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
    v7 = 0;
    v8 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = _RawContainerDescription();
    v7 = _CreateAndLogError("_ContainerURL", 90, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to fetch container URL from %@", v10, v9);
  }

  v11 = v7;

  v6 = 0;
  v8 = v7;
LABEL_6:
  v12 = v8;
  containerURL = self->_containerURL;
  self->_containerURL = v6;

  if (self->_containerURL)
  {
    [(MIMCMContainer *)self mcmContainer];
    is_transient = container_is_transient();
    if (is_transient == 1)
    {
      self->_isTransient = 0;
      v15 = 1;
      goto LABEL_15;
    }

    v16 = is_transient;
    error_description = container_get_error_description();
    v19 = "(container_get_error_description returned NULL)";
    if (error_description)
    {
      v19 = error_description;
    }

    v20 = _CreateError("[MIMCMContainer _refreshContainerMetadataWithError:]", 317, @"MIContainerManagerErrorDomain", v16, 0, 0, @"%s", v18, v19);

    v12 = v20;
  }

  if (error)
  {
    v21 = v12;
    v15 = 0;
    *error = v12;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (BOOL)reclaimDiskSpaceWithError:(id *)error
{
  v4 = container_operation_delete_reclaim_disk_space();
  if (v4)
  {
    v5 = MICopyUnlocalizedDescriptionForContainerExtendedError();
    type = container_error_get_type();
    posix_errno = container_error_get_posix_errno();
    if (posix_errno)
    {
      v8 = *MEMORY[0x1E696A798];
      v9 = posix_errno;
      v10 = strerror(posix_errno);
      v12 = _CreateError("[MIMCMContainer reclaimDiskSpaceWithError:]", 338, v8, v9, 0, 0, @"Underlying errno set by container manager is %s", v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v14 = _ErrorDict();
    v13 = _CreateError("[MIMCMContainer reclaimDiskSpaceWithError:]", 338, @"MIContainerManagerErrorDomain", type, v12, v14, @"%@", v15, v5);

    container_error_free();
    if (error)
    {
      v16 = v13;
      *error = v13;
    }
  }

  else
  {
    container_error_free();
    v13 = 0;
  }

  return v4 == 0;
}

- (BOOL)regenerateDirectoryUUIDWithError:(id *)error
{
  [(MIMCMContainer *)self mcmContainer];
  v5 = container_regenerate_uuid();
  if (v5 == 1)
  {
    v13 = 0;
    v6 = [(MIMCMContainer *)self _refreshContainerMetadataWithError:&v13];
    v7 = v13;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = v5;
  error_description = container_get_error_description();
  v11 = "(container_get_error_description returned NULL)";
  if (error_description)
  {
    v11 = error_description;
  }

  v7 = _CreateError("[MIMCMContainer regenerateDirectoryUUIDWithError:]", 360, @"MIContainerManagerErrorDomain", v8, 0, 0, @"%s", v10, v11);
  v6 = 0;
  if (error)
  {
LABEL_7:
    if (!v6)
    {
      v7 = v7;
      *error = v7;
    }
  }

LABEL_9:

  return v6;
}

- (BOOL)purgeContentWithError:(id *)error
{
  [(MIMCMContainer *)self mcmContainer];
  v5 = container_delete_all_container_content();
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    identifier = [(MIMCMContainer *)self identifier];
    v6 = _CreateAndLogError("[MIMCMContainer purgeContentWithError:]", 400, @"MIContainerManagerErrorDomain", v5, 0, 0, @"Failed to wipe container for identifier %@", v8, identifier);

    if (error)
    {
      v9 = v6;
      *error = v6;
    }
  }

  return v5 == 1;
}

- (BOOL)replaceExistingContainer:(id)container error:(id *)error
{
  containerCopy = container;
  if ([(MIMCMContainer *)self containerClass]== 1)
  {
    v7 = +[MITestManager sharedInstance];
    if ([v7 testFlagsAreSet:64])
    {
      isTransient = [(MIMCMContainer *)self isTransient];

      if (isTransient)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          identifier = [(MIMCMContainer *)self identifier];
          MOLogWrite();
        }

        exit(1);
      }
    }

    else
    {
    }
  }

  [containerCopy mcmContainer];
  [(MIMCMContainer *)self mcmContainer];
  v9 = container_replace();
  if (v9 == 1)
  {
    [(MIMCMContainer *)self setIsTransient:0];
    v18 = 0;
    v10 = [(MIMCMContainer *)self _refreshContainerMetadataWithError:&v18];
    v11 = v18;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v12 = v9;
  error_description = container_get_error_description();
  v15 = "(container_get_error_description returned NULL)";
  if (error_description)
  {
    v15 = error_description;
  }

  v11 = _CreateError("[MIMCMContainer replaceExistingContainer:error:]", 429, @"MIContainerManagerErrorDomain", v12, 0, 0, @"%s", v14, v15);
  v10 = 0;
  if (error)
  {
LABEL_15:
    if (!v10)
    {
      v11 = v11;
      *error = v11;
    }
  }

LABEL_17:

  return v10;
}

- (BOOL)setInfoValue:(id)value forKey:(id)key error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  [(MIMCMContainer *)self mcmContainer];
  [keyCopy UTF8String];

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  v11 = container_set_info_value();

  if (v11 == 1)
  {
    v12 = 0;
  }

  else
  {
    error_description = container_get_error_description();
    v15 = "(container_get_error_description returned NULL)";
    if (error_description)
    {
      v15 = error_description;
    }

    v12 = _CreateError("[MIMCMContainer setInfoValue:forKey:error:]", 459, @"MIContainerManagerErrorDomain", v11, 0, 0, @"%s", v14, v15);
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  return v11 == 1;
}

- (id)infoValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  [(MIMCMContainer *)self mcmContainer];
  [keyCopy UTF8String];
  v7 = container_get_info_value_for_key();
  if (v7)
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject();
    if (v8)
    {
      v10 = v8;
      v11 = 0;
      goto LABEL_11;
    }

    v15 = _CreateAndLogError("[MIMCMContainer infoValueForKey:error:]", 485, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to retrieve value for key %@ from the underlying xpc object", v9, keyCopy);
  }

  else
  {
    error_description = container_get_error_description();
    v14 = "(container_get_error_description returned NULL)";
    if (error_description)
    {
      v14 = error_description;
    }

    v15 = _CreateError("[MIMCMContainer infoValueForKey:error:]", 479, @"MIContainerManagerErrorDomain", 24, 0, 0, @"%s", v13, v14);
  }

  v11 = v15;
  if (error)
  {
    v16 = v15;
    v10 = 0;
    *error = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (BOOL)recreateDefaultStructureWithError:(id *)error
{
  [(MIMCMContainer *)self mcmContainer];
  v4 = container_recreate_structure();
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    error_description = container_get_error_description();
    v8 = "(container_get_error_description returned NULL)";
    if (error_description)
    {
      v8 = error_description;
    }

    v5 = _CreateError("[MIMCMContainer recreateDefaultStructureWithError:]", 504, @"MIContainerManagerErrorDomain", v4, 0, 0, @"%s", v7, v8);
    if (error)
    {
      v5 = v5;
      *error = v5;
    }
  }

  return v4 == 1;
}

+ (id)_enumeratorWithContainerClass:(unint64_t)class forPersona:(id)persona isTransient:(BOOL)transient identifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers create:(BOOL)create usingBlock:(id)block
{
  v60 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  identifiersCopy = identifiers;
  groupIdentifiersCopy = groupIdentifiers;
  blockCopy = block;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__5;
  v56 = __Block_byref_object_dispose__5;
  v57 = 0;
  if (!container_query_create())
  {
    v36 = _CreateAndLogError("+[MIMCMContainer _enumeratorWithContainerClass:forPersona:isTransient:identifiers:groupIdentifiers:create:usingBlock:]", 526, @"MIContainerManagerErrorDomain", 110, 0, 0, @"Failed to create container query for querying containers for identifier: %@ groupIdentifiers: %@ containerType: %llu", v14, identifiersCopy);
LABEL_29:
    v39 = v53[5];
    v53[5] = v36;

    goto LABEL_30;
  }

  container_query_operation_set_flags();
  container_query_set_transient();
  container_query_set_class();
  container_query_set_include_other_owners();
  if (groupIdentifiersCopy)
  {
    v15 = xpc_array_create(0, 0);
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v48 = 0u;
    v16 = groupIdentifiersCopy;
    v17 = [v16 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v17)
    {
      v18 = *v49;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = xpc_string_create([*(*(&v48 + 1) + 8 * i) UTF8String]);
          xpc_array_append_value(v15, v20);
        }

        v17 = [v16 countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v17);
    }

    container_query_set_group_identifiers();
  }

  if (identifiersCopy)
  {
    v21 = xpc_array_create(0, 0);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = identifiersCopy;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v23)
    {
      v24 = *v45;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = xpc_string_create([*(*(&v44 + 1) + 8 * j) UTF8String]);
          xpc_array_append_value(v21, v26);
        }

        v23 = [v22 countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v23);
    }

    container_query_set_identifiers();
  }

  if (personaCopy)
  {
    v27 = personaCopy;
    [personaCopy UTF8String];
    container_query_set_persona_unique_string();
  }

  v43 = blockCopy;
  iterate_results_sync = container_query_iterate_results_sync();

  if (!((v53[5] != 0) | iterate_results_sync & 1) && container_query_get_last_error())
  {
    v29 = MICopyUnlocalizedDescriptionForContainerExtendedError();
    type = container_error_get_type();
    posix_errno = container_error_get_posix_errno();
    v32 = posix_errno;
    if (posix_errno)
    {
      v33 = strerror(posix_errno);
      v35 = _CreateError("+[MIMCMContainer _enumeratorWithContainerClass:forPersona:isTransient:identifiers:groupIdentifiers:create:usingBlock:]", 588, *MEMORY[0x1E696A798], v32, 0, 0, @"Underlying errno set by container manager is %s", v34, v33);
    }

    else
    {
      v35 = 0;
    }

    v37 = _ErrorDict();
    v36 = _CreateError("+[MIMCMContainer _enumeratorWithContainerClass:forPersona:isTransient:identifiers:groupIdentifiers:create:usingBlock:]", 588, @"MIContainerManagerErrorDomain", type, v35, v37, @"%@", v38, v29);

    goto LABEL_29;
  }

LABEL_30:
  container_query_free();
  v40 = v53[5];
  _Block_object_dispose(&v52, 8);

  return v40;
}

uint64_t __118__MIMCMContainer__enumeratorWithContainerClass_forPersona_isTransient_identifiers_groupIdentifiers_create_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [objc_alloc(objc_opt_class()) initWithContainer:a2 error:&v11];
  v6 = v11;
  v7 = v11;
  if (v5)
  {
    v8 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v10 = _RawContainerDescription();
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

+ (id)enumerateContainersWithClass:(unint64_t)class forPersona:(id)persona isTransient:(BOOL)transient identifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers usingBlock:(id)block
{
  transientCopy = transient;
  blockCopy = block;
  groupIdentifiersCopy = groupIdentifiers;
  identifiersCopy = identifiers;
  personaCopy = persona;
  v17 = [objc_opt_class() _enumeratorWithContainerClass:class forPersona:personaCopy isTransient:transientCopy identifiers:identifiersCopy groupIdentifiers:groupIdentifiersCopy create:0 usingBlock:blockCopy];

  return v17;
}

+ (id)_allContainersForIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers contentClass:(unint64_t)class forPersona:(id)persona transient:(BOOL)transient create:(BOOL)create error:(id *)error
{
  createCopy = create;
  transientCopy = transient;
  identifiersCopy = identifiers;
  groupIdentifiersCopy = groupIdentifiers;
  personaCopy = persona;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = objc_opt_new();
  v17 = objc_opt_class();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __111__MIMCMContainer__allContainersForIdentifiers_groupIdentifiers_contentClass_forPersona_transient_create_error___block_invoke;
  v23[3] = &unk_1E7AE1C30;
  v23[4] = &v24;
  v18 = [v17 _enumeratorWithContainerClass:class forPersona:personaCopy isTransient:transientCopy identifiers:identifiersCopy groupIdentifiers:groupIdentifiersCopy create:createCopy usingBlock:v23];
  if (v18)
  {
    v19 = v25[5];
    v25[5] = 0;

    if (error)
    {
      v20 = v18;
      *error = v18;
    }
  }

  v21 = [v25[5] copy];

  _Block_object_dispose(&v24, 8);

  return v21;
}

+ (id)_containerForIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona transient:(BOOL)transient create:(BOOL)create error:(id *)error
{
  identifierCopy = identifier;
  personaCopy = persona;
  if (!personaCopy && gLogHandle && *(gLogHandle + 44) >= 7)
  {
    MOLogWrite();
  }

  if (!container_query_create())
  {
    v16 = _CreateAndLogError("+[MIMCMContainer _containerForIdentifier:contentClass:forPersona:transient:create:error:]", 633, @"MIContainerManagerErrorDomain", 110, 0, 0, @"Failed to create container query for querying containers for identifier %@", v14, identifierCopy);
    goto LABEL_9;
  }

  container_query_operation_set_flags();
  container_query_set_class();
  container_query_set_transient();
  container_query_set_include_other_owners();
  v15 = xpc_string_create([identifierCopy UTF8String]);
  if (class == 7)
  {
    container_query_set_group_identifiers();
  }

  else
  {
    container_query_set_identifiers();
  }

  if (personaCopy)
  {
    [personaCopy UTF8String];
    container_query_set_persona_unique_string();
  }

  single_result = container_query_get_single_result();
  if (!single_result)
  {
    if (container_query_get_last_error())
    {
      v20 = MICopyUnlocalizedDescriptionForContainerExtendedError();
      type = container_error_get_type();
      posix_errno = container_error_get_posix_errno();
      if (posix_errno)
      {
        v23 = *MEMORY[0x1E696A798];
        v24 = posix_errno;
        v25 = strerror(posix_errno);
        v27 = _CreateError("+[MIMCMContainer _containerForIdentifier:contentClass:forPersona:transient:create:error:]", 665, v23, v24, 0, 0, @"Underlying errno set by container manager is %s", v26, v25);
      }

      else
      {
        v27 = 0;
      }

      v28 = _ErrorDict();
      v17 = _CreateError("+[MIMCMContainer _containerForIdentifier:contentClass:forPersona:transient:create:error:]", 665, @"MIContainerManagerErrorDomain", type, v27, v28, @"%@", v29, v20);

      goto LABEL_22;
    }

    if (create)
    {
      v19 = 0;
      v17 = 0;
      goto LABEL_23;
    }

    error_description = container_get_error_description();
    v34 = "(container_get_error_description returned NULL)";
    if (error_description)
    {
      v34 = error_description;
    }

    v16 = _CreateError("+[MIMCMContainer _containerForIdentifier:contentClass:forPersona:transient:create:error:]", 667, @"MIContainerManagerErrorDomain", 21, 0, 0, @"%s", v33, v34);
LABEL_9:
    v17 = v16;
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v35 = 0;
  v19 = [objc_alloc(objc_opt_class()) initWithContainer:single_result error:&v35];
  v17 = v35;
LABEL_23:
  if (error && !v19)
  {
    v30 = v17;
    *error = v17;
  }

  container_query_free();

  return v19;
}

+ (id)containersForContentClass:(unint64_t)class forPersona:(id)persona fetchTransient:(BOOL)transient error:(id *)error
{
  transientCopy = transient;
  personaCopy = persona;
  v10 = [objc_opt_class() _allContainersForIdentifiers:0 groupIdentifiers:0 contentClass:class forPersona:personaCopy transient:transientCopy create:0 error:error];

  return v10;
}

+ (id)containersForGroupIdentifier:(id)identifier forPersona:(id)persona create:(BOOL)create fetchTransient:(BOOL)transient error:(id *)error
{
  createCopy = create;
  v16[1] = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  identifierCopy = identifier;
  v12 = objc_opt_class();
  v16[0] = identifierCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  v14 = [v12 _allContainersForIdentifiers:0 groupIdentifiers:v13 contentClass:7 forPersona:personaCopy transient:0 create:createCopy error:error];

  return v14;
}

+ (id)containersForBundleIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona create:(BOOL)create fetchTransient:(BOOL)transient error:(id *)error
{
  transientCopy = transient;
  createCopy = create;
  v19[1] = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  identifierCopy = identifier;
  v15 = objc_opt_class();
  v19[0] = identifierCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  v17 = [v15 _allContainersForIdentifiers:v16 groupIdentifiers:0 contentClass:class forPersona:personaCopy transient:transientCopy create:createCopy error:error];

  return v17;
}

+ (id)containerForIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona create:(BOOL)create error:(id *)error
{
  createCopy = create;
  personaCopy = persona;
  identifierCopy = identifier;
  v13 = [objc_opt_class() _containerForIdentifier:identifierCopy contentClass:class forPersona:personaCopy transient:0 create:createCopy error:error];

  return v13;
}

+ (id)transientContainerForIdentifier:(id)identifier contentClass:(unint64_t)class forPersona:(id)persona create:(BOOL)create error:(id *)error
{
  createCopy = create;
  personaCopy = persona;
  identifierCopy = identifier;
  v13 = [objc_opt_class() _containerForIdentifier:identifierCopy contentClass:class forPersona:personaCopy transient:1 create:createCopy error:error];

  return v13;
}

+ (BOOL)deleteContainers:(id)containers waitForDeletion:(BOOL)deletion error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  v38 = 0;
  v39 = 0;
  v8 = malloc_type_calloc([containersCopy count], 8uLL, 0x2004093837F09uLL);
  if (!v8)
  {
    v17 = @"MIInstallerErrorDomain";
    v18 = @"Failed to allocate memory for deleting containers";
    v19 = 721;
    v20 = 4;
    goto LABEL_12;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = containersCopy;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v8[v12++] = [*(*(&v34 + 1) + 8 * i) mcmContainer];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v11);
  }

  if (!container_operation_delete_array())
  {
    if (v38)
    {
      v22 = MICopyUnlocalizedDescriptionForContainerExtendedError();
      type = container_error_get_type();
      posix_errno = container_error_get_posix_errno();
      if (posix_errno)
      {
        v25 = *MEMORY[0x1E696A798];
        v26 = posix_errno;
        v27 = strerror(posix_errno);
        v29 = _CreateError("+[MIMCMContainer deleteContainers:waitForDeletion:error:]", 737, v25, v26, 0, 0, @"Underlying errno set by container manager is %s", v28, v27);
      }

      else
      {
        v29 = 0;
      }

      v30 = _ErrorDict();
      v15 = _CreateError("+[MIMCMContainer deleteContainers:waitForDeletion:error:]", 737, @"MIContainerManagerErrorDomain", type, v29, v30, @"%@", v31, v22);

      container_error_free();
      if (!error)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v17 = @"MIContainerManagerErrorDomain";
    v18 = @"container_operation_delete_array returned NULL but did not set an error";
    v19 = 740;
    v20 = 38;
LABEL_12:
    v15 = _CreateAndLogError("+[MIMCMContainer deleteContainers:waitForDeletion:error:]", v19, v17, v20, 0, 0, v18, v7, v33);
    if (!error)
    {
LABEL_20:
      v16 = 0;
      goto LABEL_21;
    }

LABEL_13:
    v21 = v15;
    v16 = 0;
    *error = v15;
    goto LABEL_21;
  }

  container_free_array_of_containers();
  v15 = 0;
  v16 = 1;
LABEL_21:
  free(v8);

  return v16;
}

+ (id)defaultDirectoriesForContainerType:(unint64_t)type error:(id *)error
{
  v6 = container_subdirectories_for_class();
  if (v6)
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject();
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
      v10 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v10 = _CreateAndLogError("+[MIMCMContainer defaultDirectoriesForContainerType:error:]", 772, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to retrieve container subdirectories for class %llu", v7, type);
  }

  else
  {
    error_description = container_get_error_description();
    v13 = "(container_get_error_description returned NULL)";
    if (error_description)
    {
      v13 = error_description;
    }

    v10 = _CreateError("+[MIMCMContainer defaultDirectoriesForContainerType:error:]", 766, @"MIContainerManagerErrorDomain", 1, 0, 0, @"%s", v12, v13);
    v8 = 0;
  }

  v9 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v9)
  {
    v14 = v10;
    *error = v10;
  }

LABEL_12:
  v15 = v9;

  return v15;
}

+ (void)_performWithLaunchPersona:(id)persona
{
  personaCopy = persona;
  voucher_adopt();
  personaCopy[2](personaCopy);

  v4 = voucher_adopt();
}

+ (id)daemonContainerForIdentifier:(id)identifier personaUniqueString:(id)string error:(id *)error
{
  identifierCopy = identifier;
  stringCopy = string;
  if (!stringCopy)
  {
    stringCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__MIMCMContainer_daemonContainerForIdentifier_personaUniqueString_error___block_invoke;
  v15[3] = &unk_1E7AE1C58;
  v18 = &v27;
  selfCopy = self;
  v10 = identifierCopy;
  v16 = v10;
  v11 = stringCopy;
  v17 = v11;
  v19 = &v21;
  [self _performWithLaunchPersona:v15];
  v12 = v28[5];
  if (error && !v12)
  {
    *error = v22[5];
    v12 = v28[5];
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

void __73__MIMCMContainer_daemonContainerForIdentifier_personaUniqueString_error___block_invoke(void *a1)
{
  v2 = a1[8];
  v3 = a1[4];
  v4 = a1[5];
  v11 = 0;
  v5 = [v2 containerForIdentifier:v3 contentClass:10 forPersona:v4 create:1 error:&v11];
  v6 = v11;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)_doInitWithContainer:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 136315138;
  v1 = "[MIMCMContainer _doInitWithContainer:error:]";
  _os_log_fault_impl(&dword_1B16A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: container_copy_sandbox_token returned NULL!", &v0, 0xCu);
}

@end