@interface FBSSceneIdentityToken
+ (FBSSceneIdentityToken)tokenWithHostEndpoint:(id)endpoint workspace:(id)workspace identifier:(id)identifier;
+ (FBSSceneIdentityToken)tokenWithHostPID:(int)d directEndpointTarget:(id)target workspace:(id)workspace identifier:(id)identifier;
+ (FBSSceneIdentityToken)tokenWithHostPID:(int)d viewServiceSessionIdentifier:(id)identifier;
+ (id)pseudoTokenWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (FBSSceneIdentityToken)init;
- (FBSSceneIdentityToken)initWithBSXPCCoder:(id)coder;
- (FBSSceneIdentityToken)initWithCoder:(id)coder;
- (FBSSceneIdentityToken)initWithXPCDictionary:(id)dictionary;
- (id)_initWithHost:(void *)host endpoint:(void *)endpoint target:(void *)target workspace:(void *)workspace identifier:;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSSceneIdentityToken

- (FBSSceneIdentityToken)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSSceneIdentityToken"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSSceneIdentityToken.m";
    v16 = 1024;
    v17 = 43;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

+ (FBSSceneIdentityToken)tokenWithHostPID:(int)d viewServiceSessionIdentifier:(id)identifier
{
  v4 = *&d;
  identifierCopy = identifier;
  if (v4 <= 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:v4 viewServiceSessionIdentifier:a2];
  }

  v7 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v7)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 viewServiceSessionIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 viewServiceSessionIdentifier:?];
  }

  v8 = [[FBSSceneIdentityToken alloc] _initWithHost:v4 endpoint:0 target:0 workspace:0 identifier:v7];

  return v8;
}

+ (FBSSceneIdentityToken)tokenWithHostEndpoint:(id)endpoint workspace:(id)workspace identifier:(id)identifier
{
  endpointCopy = endpoint;
  workspaceCopy = workspace;
  identifierCopy = identifier;
  v11 = endpointCopy;
  NSClassFromString(&cfstr_Bsserviceconne.isa);
  if (!v11)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  v12 = +[FBSWorkspaceServiceSpecification identifier];
  service = [v11 service];
  v14 = [v12 isEqualToString:service];

  if ((v14 & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:v11 workspace:a2 identifier:?];
  }

  v15 = workspaceCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  v16 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  [(FBSSceneIdentityToken *)v16 tokenWithHostEndpoint:v11 workspace:v15 identifier:&v18];
  return v18;
}

+ (FBSSceneIdentityToken)tokenWithHostPID:(int)d directEndpointTarget:(id)target workspace:(id)workspace identifier:(id)identifier
{
  v8 = *&d;
  targetCopy = target;
  workspaceCopy = workspace;
  identifierCopy = identifier;
  if (v8 <= 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:v8 directEndpointTarget:a2 workspace:? identifier:?];
  }

  v13 = identifierCopy;
  v14 = targetCopy;
  NSClassFromString(&cfstr_Rbsprocessiden.isa);
  if (!v14)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  v15 = workspaceCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  v16 = v13;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  [(FBSSceneIdentityToken *)v16 tokenWithHostPID:v8 directEndpointTarget:v14 workspace:v15 identifier:&v18];
  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (self->_host == v6->_host)
    {
      BSEqualObjects();
    }

    v7 = 0;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    if (self->_host >= 1)
    {
      xpc_dictionary_set_int64(dictionaryCopy, [@"h" UTF8String], self->_host);
    }

    if (self->_endpoint)
    {
      [@"e" UTF8String];
      BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    }

    target = self->_target;
    if (target)
    {
      [(RBSProcessIdentity *)target bs_secureEncoded];
      objc_claimAutoreleasedReturnValue();
      [@"t" UTF8String];
      BSSerializeDataToXPCDictionaryWithKey();
    }

    if (self->_workspace)
    {
      [@"w" UTF8String];
      BSSerializeStringToXPCDictionaryWithKey();
    }

    [@"i" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8 = coderCopy;
  if (self->_host >= 1)
  {
    [coderCopy encodeInt64:? forKey:?];
    coderCopy = v8;
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v8 encodeObject:endpoint forKey:@"e"];
    coderCopy = v8;
  }

  target = self->_target;
  if (target)
  {
    [v8 encodeObject:target forKey:@"t"];
    coderCopy = v8;
  }

  workspace = self->_workspace;
  if (workspace)
  {
    [v8 encodeObject:workspace forKey:@"w"];
    coderCopy = v8;
  }

  [coderCopy encodeObject:self->_identifier forKey:@"i"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = coderCopy;
  if (self->_host >= 1)
  {
    [coderCopy encodeInt64:? forKey:?];
    coderCopy = v8;
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v8 encodeObject:endpoint forKey:@"e"];
    coderCopy = v8;
  }

  target = self->_target;
  if (target)
  {
    [v8 encodeObject:target forKey:@"t"];
    coderCopy = v8;
  }

  workspace = self->_workspace;
  if (workspace)
  {
    [v8 encodeObject:workspace forKey:@"w"];
    coderCopy = v8;
  }

  [coderCopy encodeObject:self->_identifier forKey:@"i"];
}

- (id)_initWithHost:(void *)host endpoint:(void *)endpoint target:(void *)target workspace:(void *)workspace identifier:
{
  hostCopy = host;
  endpointCopy = endpoint;
  targetCopy = target;
  workspaceCopy = workspace;
  if (!self)
  {
    goto LABEL_43;
  }

  if (a2 < 1)
  {
    selfCopy = self;
    if (a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v71 handleFailureInMethod:a2 object:? file:? lineNumber:? description:?];

      if (hostCopy)
      {
LABEL_18:
        objc_opt_class();
        OUTLINED_FUNCTION_5_3();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_19;
        }
      }
    }

    else if (hostCopy)
    {
      goto LABEL_18;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_4_1();
    [v73 handleFailureInMethod:hostCopy object:? file:? lineNumber:? description:?];

LABEL_19:
    v28 = +[FBSWorkspaceServiceSpecification identifier];
    service = [hostCopy service];
    v30 = [v28 isEqualToString:service];

    if (v30)
    {
      if (!endpointCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v75 handleFailureInMethod:hostCopy object:? file:? lineNumber:? description:?];

      if (!endpointCopy)
      {
        goto LABEL_21;
      }
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_4_1();
    [v77 handleFailureInMethod:endpointCopy object:? file:? lineNumber:? description:?];

LABEL_21:
    if (!targetCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v63 handleFailureInMethod:targetCopy object:? file:? lineNumber:? description:?];
    }

    v86 = a2;
    if (!workspaceCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v65 handleFailureInMethod:workspaceCopy object:? file:? lineNumber:? description:?];
    }

    v31 = MEMORY[0x1E696AEC0];
    targetDescription = [hostCopy targetDescription];
    v32 = MEMORY[0x1E696AB08];
    v33 = targetCopy;
    uRLHostAllowedCharacterSet = [v32 URLHostAllowedCharacterSet];
    v35 = [v33 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

    if ([v35 isEqualToString:v33])
    {
      v36 = v33;
    }

    else
    {
      v36 = v35;
    }

    v37 = v36;

    v38 = MEMORY[0x1E696AB08];
    v39 = workspaceCopy;
    uRLHostAllowedCharacterSet2 = [v38 URLHostAllowedCharacterSet];
    a2 = [v39 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet2];

    if ([a2 isEqualToString:v39])
    {
      v41 = v39;
    }

    else
    {
      v41 = a2;
    }

    v42 = v41;

    v27 = [v31 stringWithFormat:@"%@/%@:%@", targetDescription, v37, v42];

    self = selfCopy;
    LODWORD(a2) = v86;
    goto LABEL_40;
  }

  if (endpointCopy)
  {
    if (hostCopy)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_3_3();
      [v67 handleFailureInMethod:hostCopy object:? file:? lineNumber:? description:?];

      if (targetCopy)
      {
LABEL_6:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_7;
        }
      }
    }

    else if (targetCopy)
    {
      goto LABEL_6;
    }

    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_3_3();
    [v69 handleFailureInMethod:targetCopy object:? file:? lineNumber:? description:?];

LABEL_7:
    v85 = a2;
    if (!workspaceCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_3_3();
      [v61 handleFailureInMethod:workspaceCopy object:? file:? lineNumber:? description:?];
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = MEMORY[0x1E696AB08];
    v17 = targetCopy;
    uRLHostAllowedCharacterSet3 = [v16 URLHostAllowedCharacterSet];
    v19 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet3];

    if ([v19 isEqualToString:v17])
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    targetDescription = v20;

    v22 = MEMORY[0x1E696AB08];
    a2 = workspaceCopy;
    uRLHostAllowedCharacterSet4 = [v22 URLHostAllowedCharacterSet];
    v24 = [a2 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet4];

    if ([v24 isEqualToString:a2])
    {
      v25 = a2;
    }

    else
    {
      v25 = v24;
    }

    v26 = v25;

    LODWORD(a2) = v85;
    v27 = [v15 stringWithFormat:@"%i->%@/%@:%@", v85, endpointCopy, targetDescription, v26];

    goto LABEL_40;
  }

  if (!hostCopy)
  {
    if (!targetCopy)
    {
      goto LABEL_34;
    }

LABEL_54:
    currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_3_3();
    [v81 handleFailureInMethod:targetCopy object:? file:? lineNumber:? description:?];

    if (!workspaceCopy)
    {
      goto LABEL_55;
    }

    goto LABEL_35;
  }

  currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_3();
  [v79 handleFailureInMethod:hostCopy object:? file:? lineNumber:? description:?];

  if (targetCopy)
  {
    goto LABEL_54;
  }

LABEL_34:
  if (!workspaceCopy)
  {
LABEL_55:
    currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_3_3();
    [v83 handleFailureInMethod:workspaceCopy object:? file:? lineNumber:? description:?];

    goto LABEL_36;
  }

LABEL_35:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_36:
  v43 = MEMORY[0x1E696AEC0];
  v44 = MEMORY[0x1E696AB08];
  v45 = workspaceCopy;
  uRLHostAllowedCharacterSet5 = [v44 URLHostAllowedCharacterSet];
  v47 = [v45 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet5];

  if ([v47 isEqualToString:v45])
  {
    v48 = v45;
  }

  else
  {
    v48 = v47;
  }

  targetDescription = v48;

  v27 = [v43 stringWithFormat:@"%i/view-service:%@", a2, targetDescription];
LABEL_40:

  v87.receiver = self;
  v87.super_class = FBSSceneIdentityToken;
  v49 = objc_msgSendSuper2(&v87, sel_init);
  v50 = v49;
  if (v49)
  {
    v49[12] = a2;
    v51 = [hostCopy copy];
    v52 = *(v50 + 1);
    *(v50 + 1) = v51;

    v53 = [endpointCopy copy];
    v54 = *(v50 + 2);
    *(v50 + 2) = v53;

    v55 = [targetCopy copy];
    v56 = *(v50 + 3);
    *(v50 + 3) = v55;

    v57 = [workspaceCopy copy];
    v58 = *(v50 + 4);
    *(v50 + 4) = v57;

    objc_storeStrong(v50 + 5, v27);
  }

  self = v50;

LABEL_43:
  return self;
}

+ (id)pseudoTokenWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [FBSSceneIdentityToken alloc];
  v5 = getpid();
  v6 = [(FBSSceneIdentityToken *)v4 _initWithHost:v5 endpoint:0 target:0 workspace:0 identifier:identifierCopy];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = MEMORY[0x1E696AB08];
    v10 = *(v6 + 12);
    v11 = identifierCopy;
    uRLHostAllowedCharacterSet = [v9 URLHostAllowedCharacterSet];
    v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

    if ([v13 isEqualToString:v11])
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;

    v16 = [v8 stringWithFormat:@"%i/psuedo:%@", v10, v15];

    v17 = v7[5];
    v7[5] = v16;
  }

  return v7;
}

- (FBSSceneIdentityToken)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"t" UTF8String];
  OUTLINED_FUNCTION_5_3();
  BSDeserializeDataFromXPCDictionaryWithKey();
}

- (FBSSceneIdentityToken)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeInt64ForKey:@"h"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v6 = [coderCopy decodeStringForKey:@"w"];
  v7 = [coderCopy decodeStringForKey:@"i"];

  v8 = OUTLINED_FUNCTION_6_0();
  return v8;
}

- (FBSSceneIdentityToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeInt64ForKey:@"h"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"w"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];

  v8 = OUTLINED_FUNCTION_6_0();
  return v8;
}

+ (void)tokenWithHostPID:(char *)a1 viewServiceSessionIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 viewServiceSessionIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(uint64_t)a1 viewServiceSessionIdentifier:(char *)a2 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid host pid : %i"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(uint64_t)a1 workspace:(char *)a2 identifier:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endpoint specified the wrong service : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)tokenWithHostEndpoint:(void *)a3 workspace:(void *)a4 identifier:.cold.5(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [[FBSSceneIdentityToken alloc] _initWithHost:a2 endpoint:0 target:a3 workspace:a1 identifier:?];
  *a4 = v8;

  return v8;
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:RBSProcessIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)tokenWithHostPID:(void *)a3 directEndpointTarget:(void *)a4 workspace:(void *)a5 identifier:.cold.4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = [[FBSSceneIdentityToken alloc] _initWithHost:a2 endpoint:0 target:a3 workspace:a4 identifier:a1];
  *a5 = v10;

  return v10;
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(uint64_t)a1 directEndpointTarget:(char *)a2 workspace:identifier:.cold.8(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid host pid : %i"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end