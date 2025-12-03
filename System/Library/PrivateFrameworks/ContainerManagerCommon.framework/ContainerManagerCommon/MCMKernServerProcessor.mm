@interface MCMKernServerProcessor
- (MCMKernServerProcessor)initWithCodeSignatureID:(id)d containerID:(id)iD applicationID:(id)applicationID proc_user_id:(unsigned int)proc_user_id persona_id:(unsigned int)persona_id containerTypeFromSB:(unsigned int)b;
- (NSString)applicationID;
- (NSString)codeSignatureID;
- (NSString)containerID;
- (NSString)identifier;
- (NSURL)dataContainerURL;
- (int)processRequest;
- (unsigned)containerTypeFromSB;
- (unsigned)persona_id;
- (unsigned)proc_user_id;
- (unsigned)replyStatus;
- (void)setDataContainerURL:(id)l;
- (void)setIdentifier:(id)identifier;
- (void)setReplyStatus:(unsigned int)status;
@end

@implementation MCMKernServerProcessor

- (NSString)codeSignatureID
{
  result = self->_codeSignatureID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)processRequest
{
  v76 = *MEMORY[0x1E69E9840];
  codeSignatureID = [(MCMKernServerProcessor *)self codeSignatureID];
  [(MCMKernServerProcessor *)self setIdentifier:codeSignatureID];

  containerID = [(MCMKernServerProcessor *)self containerID];

  if (containerID)
  {
    containerID2 = [(MCMKernServerProcessor *)self containerID];
    [(MCMKernServerProcessor *)self setIdentifier:containerID2];
  }

  v52 = 1;
  userIdentityCache = [gContainerCache userIdentityCache];
  multiuser_flags[0] = 0;
  v7 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v7, multiuser_flags) && (multiuser_flags[0] & 0x80000000) != 0)
  {
    v8 = [MCMPOSIXUser posixUserWithUID:[(MCMKernServerProcessor *)self proc_user_id]];
    v9 = [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:v8];

    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  memset(&multiuser_flags[1], 0, 32);
  multiuser_flags[0] = 1;
  if ([(MCMKernServerProcessor *)self persona_id]== -1)
  {
    goto LABEL_13;
  }

  [(MCMKernServerProcessor *)self persona_id];
  if ((kpersona_info() & 0x80000000) != 0)
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      persona_id = [(MCMKernServerProcessor *)self persona_id];
      v15 = "Could not look up info for persona id %u";
      v16 = buf;
      goto LABEL_56;
    }

LABEL_30:

    v9 = 0;
    containerID3 = 0;
    metadataMinimal = 0;
    v10 = 0;
    v23 = 4;
    goto LABEL_54;
  }

  if (multiuser_flags[2] == 5 || multiuser_flags[2] == 2)
  {
    userIdentityForPersonalPersona = [userIdentityCache userIdentityWithPersonaID:{-[MCMKernServerProcessor persona_id](self, "persona_id")}];
  }

  else
  {
LABEL_13:
    userIdentityForPersonalPersona = [userIdentityCache userIdentityForPersonalPersona];
  }

  v9 = userIdentityForPersonalPersona;
  if (!userIdentityForPersonalPersona)
  {
LABEL_15:
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      persona_id2 = [(MCMKernServerProcessor *)self persona_id];
      multiuser_flags[0] = 67109120;
      multiuser_flags[1] = persona_id2;
      v15 = "Unable to find user identity for persona id %u";
      v16 = multiuser_flags;
LABEL_56:
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v15, v16, 8u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

LABEL_6:
  v10 = [MCMClientConnection privilegedClientConnectionWithUserIdentity:v9 kernel:1];
  codeSignatureID2 = [(MCMKernServerProcessor *)self codeSignatureID];
  if (codeSignatureID2)
  {
  }

  else
  {
    containerID3 = [(MCMKernServerProcessor *)self containerID];

    if (!containerID3)
    {
      metadataMinimal = 0;
LABEL_53:
      v23 = 0;
      goto LABEL_54;
    }
  }

  v18 = gCodeSigningMapping;
  identifier = [(MCMKernServerProcessor *)self identifier];
  v20 = [v18 dataContainerTypeForIdentifier:identifier];

  if (v20 > 0xB || ((1 << v20) & 0xED4) == 0)
  {
    if ([(MCMKernServerProcessor *)self containerTypeFromSB]== 1)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(MCMKernServerProcessor *)self identifier];
      containerTypeFromSB = [(MCMKernServerProcessor *)self containerTypeFromSB];
      multiuser_flags[0] = 138412802;
      *&multiuser_flags[1] = identifier2;
      LOWORD(multiuser_flags[3]) = 1024;
      *(&multiuser_flags[3] + 2) = containerTypeFromSB;
      HIWORD(multiuser_flags[4]) = 2048;
      *&multiuser_flags[5] = v20;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid data container class for %@: SB Type: %u, falling back to class: %llu", multiuser_flags, 0x1Cu);
    }

    goto LABEL_37;
  }

  if ([(MCMKernServerProcessor *)self containerTypeFromSB]== 1 && v20 != 4)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      containerTypeFromSB2 = [(MCMKernServerProcessor *)self containerTypeFromSB];
      multiuser_flags[0] = 67109376;
      multiuser_flags[1] = containerTypeFromSB2;
      LOWORD(multiuser_flags[2]) = 2048;
      *(&multiuser_flags[2] + 2) = v20;
      _os_log_debug_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEBUG, "SB Type: %u, MI Type: %llu.  Declaring this a plugin", multiuser_flags, 0x12u);
    }

    v20 = 4;
LABEL_37:

    goto LABEL_38;
  }

  if (![(MCMKernServerProcessor *)self containerTypeFromSB]&& v20 != 2)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      multiuser_flags[0] = 134217984;
      *&multiuser_flags[1] = v20;
      _os_log_debug_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEBUG, "SB type is app, but MI type is %llu", multiuser_flags, 0xCu);
    }

    goto LABEL_37;
  }

LABEL_38:
  posixUser = [v9 posixUser];
  v25 = [MCMContainerClassPath posixOwnerForContainerClass:v20 user:posixUser];

  LODWORD(posixUser) = [(MCMKernServerProcessor *)self proc_user_id];
  if (posixUser != [v25 UID])
  {
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      proc_user_id = [(MCMKernServerProcessor *)self proc_user_id];
      v45 = [v25 UID];
      multiuser_flags[0] = 67109376;
      multiuser_flags[1] = proc_user_id;
      LOWORD(multiuser_flags[2]) = 1024;
      *(&multiuser_flags[2] + 2) = v45;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Invalid UID from kernel: %u, expected: %u", multiuser_flags, 0xEu);
    }
  }

  v27 = containermanager_copy_global_configuration();
  staticConfig = [v27 staticConfig];
  v29 = [staticConfig configForContainerClass:v20];

  identifier3 = [(MCMKernServerProcessor *)self identifier];
  v31 = [MCMContainerIdentity containerIdentityWithUserIdentity:v9 identifier:identifier3 containerConfig:v29 platform:dyld_get_active_platform() userIdentityCache:userIdentityCache error:&v52];

  if (v31)
  {
    v49 = v25;
    v50 = v9;
    v32 = userIdentityCache;
    v33 = v10;
    context = [v10 context];
    containerFactory = [context containerFactory];
    v51 = 0;
    v36 = 1;
    v37 = [containerFactory containerForContainerIdentity:v31 createIfNecessary:1 error:&v51];
    containerID3 = v51;

    metadataMinimal = [v37 metadataMinimal];

    userIdentityCache = v32;
    v10 = v33;
    if (metadataMinimal)
    {
      v25 = v49;
      v9 = v50;
      goto LABEL_50;
    }

    v25 = v49;
    v9 = v50;
  }

  else
  {
    containerID3 = 0;
  }

  v38 = container_log_handle_for_category();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    multiuser_flags[0] = 134218242;
    *&multiuser_flags[1] = v52;
    LOWORD(multiuser_flags[3]) = 2112;
    *(&multiuser_flags[3] + 2) = containerID3;
    _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "createOrLookupContainerForUser: Failed with error: (%llu) %@", multiuser_flags, 0x16u);
  }

  v36 = 0;
  metadataMinimal = 0;
LABEL_50:

  v23 = 0;
  if (v36 && metadataMinimal)
  {
    [metadataMinimal containerPath];
    v40 = v39 = v10;
    containerDataURL = [v40 containerDataURL];
    [(MCMKernServerProcessor *)self setDataContainerURL:containerDataURL];

    v10 = v39;
    goto LABEL_53;
  }

LABEL_54:

  v42 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NSString)containerID
{
  result = self->_containerID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)persona_id
{
  result = self->_persona_id;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)containerTypeFromSB
{
  result = self->_containerTypeFromSB;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)replyStatus
{
  result = self->_replyStatus;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)dataContainerURL
{
  result = self->_dataContainerURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)proc_user_id
{
  result = self->_proc_user_id;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setReplyStatus:(unsigned int)status
{
  v4 = *MEMORY[0x1E69E9840];
  self->_replyStatus = status;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setDataContainerURL:(id)l
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_dataContainerURL = &self->_dataContainerURL;

  objc_storeStrong(p_dataContainerURL, l);
}

- (void)setIdentifier:(id)identifier
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_identifier = &self->_identifier;

  objc_storeStrong(p_identifier, identifier);
}

- (NSString)applicationID
{
  result = self->_applicationID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMKernServerProcessor)initWithCodeSignatureID:(id)d containerID:(id)iD applicationID:(id)applicationID proc_user_id:(unsigned int)proc_user_id persona_id:(unsigned int)persona_id containerTypeFromSB:(unsigned int)b
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  applicationIDCopy = applicationID;
  v24.receiver = self;
  v24.super_class = MCMKernServerProcessor;
  v18 = [(MCMKernServerProcessor *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_codeSignatureID, d);
    objc_storeStrong(&v19->_containerID, iD);
    objc_storeStrong(&v19->_applicationID, applicationID);
    v19->_proc_user_id = proc_user_id;
    v19->_persona_id = persona_id;
    v19->_containerTypeFromSB = b;
    identifier = v19->_identifier;
    v19->_identifier = 0;

    dataContainerURL = v19->_dataContainerURL;
    v19->_dataContainerURL = 0;

    v19->_replyStatus = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

@end